port module Routing.API exposing (Conn, Route(..), main, requestPort, responsePort, router)

import AWS.CognitoIdentityProvider as CIP
import AWS.Core.Credentials exposing (Credentials)
import AWS.Core.Decode
import AWS.Core.Http
import AWS.Core.Service exposing (Service)
import Codec exposing (Codec)
import Http exposing (Error(..))
import Json.Encode as Encode
import Refined
import Serverless
import Serverless.Conn exposing (config, jsonBody, method, respond, route, textBody)
import Serverless.Conn.Request exposing (Method(..))
import Serverless.Conn.Response exposing (Status)
import Task
import Task.Extra
import Url
import Url.Parser exposing ((</>), map, oneOf, s, string, top)



-- Serverless program


main : Serverless.Program Config () Route Msg
main =
    Serverless.httpApi
        { configDecoder = Codec.decoder configCodec
        , initialModel = ()
        , update = update
        , requestPort = requestPort
        , responsePort = responsePort
        , interopPorts = Serverless.noPorts
        , parseRoute = routeParser
        , endpoint = router
        }


type alias Conn =
    Serverless.Conn.Conn Config () Route


port requestPort : Serverless.RequestPort msg


port responsePort : Serverless.ResponsePort msg



-- Configuration


type alias Config =
    { accessKeyId : String
    , secretAccessKey : String
    , sessionToken : Maybe String
    , awsRegion : String
    }


configCodec : Codec Config
configCodec =
    Codec.object Config
        |> Codec.field "accessKeyId" .accessKeyId Codec.string
        |> Codec.field "secretAccessKey" .secretAccessKey Codec.string
        |> Codec.optionalField "sessionToken" .sessionToken Codec.string
        |> Codec.field "region" .awsRegion Codec.string
        |> Codec.buildObject



-- Routing


type Route
    = ListUserPools


routeParser : Url.Url -> Maybe Route
routeParser =
    oneOf
        [ map ListUserPools top
        ]
        |> Url.Parser.parse


router : Conn -> ( Conn, Cmd Msg )
router conn =
    case ( method conn, route conn ) of
        ( GET, ListUserPools ) ->
            ( conn, listUserPools (config conn) )

        _ ->
            respond ( 405, textBody "Method not allowed" ) conn



-- AWS Services


credentials : Config -> Credentials
credentials config =
    let
        creds =
            AWS.Core.Credentials.fromAccessKeys
                config.accessKeyId
                config.secretAccessKey
    in
    case config.sessionToken of
        Nothing ->
            creds

        Just sessionToken ->
            AWS.Core.Credentials.setSessionToken sessionToken creds


cipService : Config -> Service
cipService config =
    CIP.service config.awsRegion


listUserPools : Config -> Cmd Msg
listUserPools config =
    let
        maxResultsRes =
            Refined.build CIP.poolQueryLimitType 20
                |> Result.mapError (Refined.errorToString CIP.poolQueryLimitType)
    in
    case maxResultsRes of
        Ok maxResults ->
            CIP.listUserPools
                { nextToken = Nothing
                , maxResults = maxResults
                }
                |> AWS.Core.Http.send (cipService config) (credentials config)
                |> Task.attempt ListUserPoolsResponse

        Err err ->
            Error err |> Task.Extra.message



-- Side effects


type Msg
    = ListUserPoolsResponse (Result Http.Error CIP.ListUserPoolsResponse)
    | Error String


update : Msg -> Conn -> ( Conn, Cmd Msg )
update msg conn =
    case msg of
        ListUserPoolsResponse res ->
            case res of
                Err err ->
                    respond (httpErrorToResponse err) conn

                Ok response ->
                    respond ( 200, response |> Codec.encoder CIP.listUserPoolsResponseCodec |> jsonBody ) conn

        Error err ->
            respond ( 500, textBody err ) conn



-- HTTP Helpers


httpErrorToResponse err =
    case err of
        BadUrl url ->
            ( 500, textBody "Bad URL" )

        Timeout ->
            ( 504, textBody "Timeout" )

        NetworkError ->
            ( 500, textBody "Network Error" )

        BadStatus status ->
            ( status, "Bad Status " ++ String.fromInt status |> textBody )

        BadBody val ->
            ( 500, textBody val )
