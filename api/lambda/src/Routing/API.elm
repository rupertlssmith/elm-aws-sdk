port module Routing.API exposing (Conn, Route(..), main, requestPort, responsePort, router)

import AWS.CognitoIdentityProvider
import Json.Encode as Encode
import Serverless
import Serverless.Conn exposing (jsonBody, method, respond, route, textBody)
import Serverless.Conn.Request exposing (Method(..))
import Url
import Url.Parser exposing ((</>), map, oneOf, s, string, top)



-- Serverless program


main : Serverless.Program () () Route Msg
main =
    Serverless.httpApi
        { configDecoder = Serverless.noConfig
        , initialModel = ()
        , update = update
        , requestPort = requestPort
        , responsePort = responsePort
        , interopPorts = Serverless.noPorts
        , parseRoute = routeParser
        , endpoint = router
        }


type alias Conn =
    Serverless.Conn.Conn () () Route


port requestPort : Serverless.RequestPort msg


port responsePort : Serverless.ResponsePort msg



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
            ( conn, listUserPools )

        _ ->
            respond ( 405, textBody "Method not allowed" ) conn


listUserPools : Cmd Msg
listUserPools =
    Cmd.none



-- Side effects


type Msg
    = ListUserPoolsResponse


update : Msg -> Conn -> ( Conn, Cmd Msg )
update msg conn =
    case msg of
        ListUserPoolsResponse ->
            respond ( 200, jsonBody <| Encode.string "userPools" ) conn
