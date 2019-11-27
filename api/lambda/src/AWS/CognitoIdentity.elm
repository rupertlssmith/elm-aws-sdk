module AWS.CognitoIdentity exposing (service)

import AWS.Core.Decode
import AWS.Core.Http
import AWS.Core.Service
import Codec exposing (Codec)
import Dict.Refined
import Enum exposing (Enum)
import Json.Decode exposing (Decoder)
import Json.Encode exposing (Value)
import Refined exposing (IntError, Refined, StringError)


{-| Configuration for this service. -}
service : AWS.Core.Service.Service
service =
    let
        optionsFn =
            AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "AWSCognitoIdentityService"
    in
    AWS.Core.Service.defineGlobal
        "cognito-identity"
        "2014-06-30"
        AWS.Core.Service.JSON
        AWS.Core.Service.SignV4
        optionsFn


{-| AWS Endpoint. -}
updateIdentityPool : IdentityPool -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper IdentityPool)
updateIdentityPool req =
    let
        jsonBody =
            req |> Codec.encoder identityPoolCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "UpdateIdentityPool"
                (AWS.Core.Decode.ResultDecoder "IdentityPool" (Codec.decoder identityPoolCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
untagResource : UntagResourceInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UntagResourceResponse)
untagResource req =
    let
        jsonBody =
            req |> Codec.encoder untagResourceInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "UntagResource"
                (AWS.Core.Decode.ResultDecoder "UntagResourceResponse" (Codec.decoder untagResourceResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
unlinkIdentity : UnlinkIdentityInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
unlinkIdentity req =
    let
        jsonBody =
            req |> Codec.encoder unlinkIdentityInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "UnlinkIdentity" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
unlinkDeveloperIdentity : UnlinkDeveloperIdentityInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
unlinkDeveloperIdentity req =
    let
        jsonBody =
            req |> Codec.encoder unlinkDeveloperIdentityInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "UnlinkDeveloperIdentity" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
tagResource : TagResourceInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TagResourceResponse)
tagResource req =
    let
        jsonBody =
            req |> Codec.encoder tagResourceInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "TagResource"
                (AWS.Core.Decode.ResultDecoder "TagResourceResponse" (Codec.decoder tagResourceResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
setIdentityPoolRoles : SetIdentityPoolRolesInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
setIdentityPoolRoles req =
    let
        jsonBody =
            req |> Codec.encoder setIdentityPoolRolesInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "SetIdentityPoolRoles" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
mergeDeveloperIdentities :
    MergeDeveloperIdentitiesInput
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper MergeDeveloperIdentitiesResponse)
mergeDeveloperIdentities req =
    let
        jsonBody =
            req |> Codec.encoder mergeDeveloperIdentitiesInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "MergeDeveloperIdentities"
                (AWS.Core.Decode.ResultDecoder
                    "MergeDeveloperIdentitiesResponse"
                    (Codec.decoder mergeDeveloperIdentitiesResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
lookupDeveloperIdentity :
    LookupDeveloperIdentityInput
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper LookupDeveloperIdentityResponse)
lookupDeveloperIdentity req =
    let
        jsonBody =
            req |> Codec.encoder lookupDeveloperIdentityInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "LookupDeveloperIdentity"
                (AWS.Core.Decode.ResultDecoder
                    "LookupDeveloperIdentityResponse"
                    (Codec.decoder lookupDeveloperIdentityResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listTagsForResource :
    ListTagsForResourceInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTagsForResourceResponse)
listTagsForResource req =
    let
        jsonBody =
            req |> Codec.encoder listTagsForResourceInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListTagsForResource"
                (AWS.Core.Decode.ResultDecoder
                    "ListTagsForResourceResponse"
                    (Codec.decoder listTagsForResourceResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listIdentityPools :
    ListIdentityPoolsInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListIdentityPoolsResponse)
listIdentityPools req =
    let
        jsonBody =
            req |> Codec.encoder listIdentityPoolsInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListIdentityPools"
                (AWS.Core.Decode.ResultDecoder
                    "ListIdentityPoolsResponse"
                    (Codec.decoder listIdentityPoolsResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listIdentities : ListIdentitiesInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListIdentitiesResponse)
listIdentities req =
    let
        jsonBody =
            req |> Codec.encoder listIdentitiesInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListIdentities"
                (AWS.Core.Decode.ResultDecoder "ListIdentitiesResponse" (Codec.decoder listIdentitiesResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getOpenIdTokenForDeveloperIdentity :
    GetOpenIdTokenForDeveloperIdentityInput
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetOpenIdTokenForDeveloperIdentityResponse)
getOpenIdTokenForDeveloperIdentity req =
    let
        jsonBody =
            req |> Codec.encoder getOpenIdTokenForDeveloperIdentityInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetOpenIdTokenForDeveloperIdentity"
                (AWS.Core.Decode.ResultDecoder
                    "GetOpenIdTokenForDeveloperIdentityResponse"
                    (Codec.decoder getOpenIdTokenForDeveloperIdentityResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getOpenIdToken : GetOpenIdTokenInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetOpenIdTokenResponse)
getOpenIdToken req =
    let
        jsonBody =
            req |> Codec.encoder getOpenIdTokenInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetOpenIdToken"
                (AWS.Core.Decode.ResultDecoder "GetOpenIdTokenResponse" (Codec.decoder getOpenIdTokenResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getIdentityPoolRoles :
    GetIdentityPoolRolesInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetIdentityPoolRolesResponse)
getIdentityPoolRoles req =
    let
        jsonBody =
            req |> Codec.encoder getIdentityPoolRolesInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetIdentityPoolRoles"
                (AWS.Core.Decode.ResultDecoder
                    "GetIdentityPoolRolesResponse"
                    (Codec.decoder getIdentityPoolRolesResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getId : GetIdInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetIdResponse)
getId req =
    let
        jsonBody =
            req |> Codec.encoder getIdInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetId"
                (AWS.Core.Decode.ResultDecoder "GetIdResponse" (Codec.decoder getIdResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getCredentialsForIdentity :
    GetCredentialsForIdentityInput
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetCredentialsForIdentityResponse)
getCredentialsForIdentity req =
    let
        jsonBody =
            req |> Codec.encoder getCredentialsForIdentityInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetCredentialsForIdentity"
                (AWS.Core.Decode.ResultDecoder
                    "GetCredentialsForIdentityResponse"
                    (Codec.decoder getCredentialsForIdentityResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeIdentityPool : DescribeIdentityPoolInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper IdentityPool)
describeIdentityPool req =
    let
        jsonBody =
            req |> Codec.encoder describeIdentityPoolInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeIdentityPool"
                (AWS.Core.Decode.ResultDecoder "IdentityPool" (Codec.decoder identityPoolCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeIdentity : DescribeIdentityInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper IdentityDescription)
describeIdentity req =
    let
        jsonBody =
            req |> Codec.encoder describeIdentityInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeIdentity"
                (AWS.Core.Decode.ResultDecoder "IdentityDescription" (Codec.decoder identityDescriptionCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteIdentityPool : DeleteIdentityPoolInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteIdentityPool req =
    let
        jsonBody =
            req |> Codec.encoder deleteIdentityPoolInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteIdentityPool" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteIdentities :
    DeleteIdentitiesInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteIdentitiesResponse)
deleteIdentities req =
    let
        jsonBody =
            req |> Codec.encoder deleteIdentitiesInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DeleteIdentities"
                (AWS.Core.Decode.ResultDecoder "DeleteIdentitiesResponse" (Codec.decoder deleteIdentitiesResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createIdentityPool : CreateIdentityPoolInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper IdentityPool)
createIdentityPool req =
    let
        jsonBody =
            req |> Codec.encoder createIdentityPoolInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateIdentityPool"
                (AWS.Core.Decode.ResultDecoder "IdentityPool" (Codec.decoder identityPoolCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


type Arnstring
    = Arnstring String


arnstring : Refined String Arnstring StringError
arnstring =
    let
        guardFn val =
            Refined.minLength 20 val |> Result.andThen (Refined.maxLength 2048) |> Result.map Arnstring

        unboxFn (Arnstring val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias AccessKeyString =
    String


type AccountId
    = AccountId String


accountId : Refined String AccountId StringError
accountId =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 15)
                |> Result.andThen (Refined.regexMatch "\\d+")
                |> Result.map AccountId

        unboxFn (AccountId val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type AmbiguousRoleResolutionType
    = AmbiguousRoleResolutionTypeAuthenticatedRole
    | AmbiguousRoleResolutionTypeDeny


ambiguousRoleResolutionType : Enum AmbiguousRoleResolutionType
ambiguousRoleResolutionType =
    Enum.define
        [ AmbiguousRoleResolutionTypeAuthenticatedRole, AmbiguousRoleResolutionTypeDeny ]
        (\val ->
            case val of
                AmbiguousRoleResolutionTypeAuthenticatedRole ->
                    "AuthenticatedRole"

                AmbiguousRoleResolutionTypeDeny ->
                    "Deny"
        )


type ClaimName
    = ClaimName String


claimName : Refined String ClaimName StringError
claimName =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 64)
                |> Result.andThen (Refined.regexMatch "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")
                |> Result.map ClaimName

        unboxFn (ClaimName val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type ClaimValue
    = ClaimValue String


claimValue : Refined String ClaimValue StringError
claimValue =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 128) |> Result.map ClaimValue

        unboxFn (ClaimValue val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias CognitoIdentityProvider =
    { serverSideTokenCheck : Bool
    , providerName : CognitoIdentityProviderName
    , clientId : CognitoIdentityProviderClientId
    }


type CognitoIdentityProviderClientId
    = CognitoIdentityProviderClientId String


cognitoIdentityProviderClientId : Refined String CognitoIdentityProviderClientId StringError
cognitoIdentityProviderClientId =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 128)
                |> Result.andThen (Refined.regexMatch "[\\w_]+")
                |> Result.map CognitoIdentityProviderClientId

        unboxFn (CognitoIdentityProviderClientId val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias CognitoIdentityProviderList =
    List CognitoIdentityProvider


type CognitoIdentityProviderName
    = CognitoIdentityProviderName String


cognitoIdentityProviderName : Refined String CognitoIdentityProviderName StringError
cognitoIdentityProviderName =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 128)
                |> Result.andThen (Refined.regexMatch "[\\w._:/-]+")
                |> Result.map CognitoIdentityProviderName

        unboxFn (CognitoIdentityProviderName val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias CognitoIdentityProviderTokenCheck =
    Bool


type alias CreateIdentityPoolInput =
    { supportedLoginProviders : IdentityProviders
    , samlProviderArns : SamlproviderList
    , openIdConnectProviderArns : OidcproviderList
    , identityPoolTags : IdentityPoolTagsType
    , identityPoolName : IdentityPoolName
    , developerProviderName : DeveloperProviderName
    , cognitoIdentityProviders : CognitoIdentityProviderList
    , allowUnauthenticatedIdentities : Bool
    }


type alias Credentials =
    { sessionToken : String, secretKey : String, expiration : DateType, accessKeyId : String }


type alias DateType =
    String


type alias DeleteIdentitiesInput =
    { identityIdsToDelete : IdentityIdList }


type alias DeleteIdentitiesResponse =
    { unprocessedIdentityIds : UnprocessedIdentityIdList }


type alias DeleteIdentityPoolInput =
    { identityPoolId : IdentityPoolId }


type alias DescribeIdentityInput =
    { identityId : IdentityId }


type alias DescribeIdentityPoolInput =
    { identityPoolId : IdentityPoolId }


type DeveloperProviderName
    = DeveloperProviderName String


developerProviderName : Refined String DeveloperProviderName StringError
developerProviderName =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 128)
                |> Result.andThen (Refined.regexMatch "[\\w._-]+")
                |> Result.map DeveloperProviderName

        unboxFn (DeveloperProviderName val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type DeveloperUserIdentifier
    = DeveloperUserIdentifier String


developerUserIdentifier : Refined String DeveloperUserIdentifier StringError
developerUserIdentifier =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 1024) |> Result.map DeveloperUserIdentifier

        unboxFn (DeveloperUserIdentifier val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias DeveloperUserIdentifierList =
    List DeveloperUserIdentifier


type ErrorCode
    = ErrorCodeAccessDenied
    | ErrorCodeInternalServerError


errorCode : Enum ErrorCode
errorCode =
    Enum.define
        [ ErrorCodeAccessDenied, ErrorCodeInternalServerError ]
        (\val ->
            case val of
                ErrorCodeAccessDenied ->
                    "AccessDenied"

                ErrorCodeInternalServerError ->
                    "InternalServerError"
        )


type alias GetCredentialsForIdentityInput =
    { logins : LoginsMap, identityId : IdentityId, customRoleArn : Arnstring }


type alias GetCredentialsForIdentityResponse =
    { identityId : IdentityId, credentials : Credentials }


type alias GetIdInput =
    { logins : LoginsMap, identityPoolId : IdentityPoolId, accountId : AccountId }


type alias GetIdResponse =
    { identityId : IdentityId }


type alias GetIdentityPoolRolesInput =
    { identityPoolId : IdentityPoolId }


type alias GetIdentityPoolRolesResponse =
    { roles : RolesMap, roleMappings : RoleMappingMap, identityPoolId : IdentityPoolId }


type alias GetOpenIdTokenForDeveloperIdentityInput =
    { tokenDuration : Int, logins : LoginsMap, identityPoolId : IdentityPoolId, identityId : IdentityId }


type alias GetOpenIdTokenForDeveloperIdentityResponse =
    { token : String, identityId : IdentityId }


type alias GetOpenIdTokenInput =
    { logins : LoginsMap, identityId : IdentityId }


type alias GetOpenIdTokenResponse =
    { token : String, identityId : IdentityId }


type alias HideDisabled =
    Bool


type alias IdentitiesList =
    List IdentityDescription


type alias IdentityDescription =
    { logins : LoginsList, lastModifiedDate : DateType, identityId : IdentityId, creationDate : DateType }


type IdentityId
    = IdentityId String


identityId : Refined String IdentityId StringError
identityId =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 55)
                |> Result.andThen (Refined.regexMatch "[\\w-]+:[0-9a-f-]+")
                |> Result.map IdentityId

        unboxFn (IdentityId val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias IdentityIdList =
    List IdentityId


type alias IdentityPool =
    { supportedLoginProviders : IdentityProviders
    , samlProviderArns : SamlproviderList
    , openIdConnectProviderArns : OidcproviderList
    , identityPoolTags : IdentityPoolTagsType
    , identityPoolName : IdentityPoolName
    , identityPoolId : IdentityPoolId
    , developerProviderName : DeveloperProviderName
    , cognitoIdentityProviders : CognitoIdentityProviderList
    , allowUnauthenticatedIdentities : Bool
    }


type IdentityPoolId
    = IdentityPoolId String


identityPoolId : Refined String IdentityPoolId StringError
identityPoolId =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 55)
                |> Result.andThen (Refined.regexMatch "[\\w-]+:[0-9a-f-]+")
                |> Result.map IdentityPoolId

        unboxFn (IdentityPoolId val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type IdentityPoolName
    = IdentityPoolName String


identityPoolName : Refined String IdentityPoolName StringError
identityPoolName =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 128)
                |> Result.andThen (Refined.regexMatch "[\\w ]+")
                |> Result.map IdentityPoolName

        unboxFn (IdentityPoolName val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias IdentityPoolShortDescription =
    { identityPoolName : IdentityPoolName, identityPoolId : IdentityPoolId }


type alias IdentityPoolTagsListType =
    List TagKeysType


type alias IdentityPoolTagsType =
    Dict.Refined.Dict String TagKeysType TagValueType


type alias IdentityPoolUnauthenticated =
    Bool


type alias IdentityPoolsList =
    List IdentityPoolShortDescription


type IdentityProviderId
    = IdentityProviderId String


identityProviderId : Refined String IdentityProviderId StringError
identityProviderId =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 128)
                |> Result.andThen (Refined.regexMatch "[\\w.;_/-]+")
                |> Result.map IdentityProviderId

        unboxFn (IdentityProviderId val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type IdentityProviderName
    = IdentityProviderName String


identityProviderName : Refined String IdentityProviderName StringError
identityProviderName =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 128) |> Result.map IdentityProviderName

        unboxFn (IdentityProviderName val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type IdentityProviderToken
    = IdentityProviderToken String


identityProviderToken : Refined String IdentityProviderToken StringError
identityProviderToken =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 50000) |> Result.map IdentityProviderToken

        unboxFn (IdentityProviderToken val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias IdentityProviders =
    Dict.Refined.Dict String IdentityProviderName IdentityProviderId


type alias ListIdentitiesInput =
    { nextToken : PaginationKey, maxResults : QueryLimit, identityPoolId : IdentityPoolId, hideDisabled : Bool }


type alias ListIdentitiesResponse =
    { nextToken : PaginationKey, identityPoolId : IdentityPoolId, identities : IdentitiesList }


type alias ListIdentityPoolsInput =
    { nextToken : PaginationKey, maxResults : QueryLimit }


type alias ListIdentityPoolsResponse =
    { nextToken : PaginationKey, identityPools : IdentityPoolsList }


type alias ListTagsForResourceInput =
    { resourceArn : Arnstring }


type alias ListTagsForResourceResponse =
    { tags : IdentityPoolTagsType }


type alias LoginsList =
    List IdentityProviderName


type alias LoginsMap =
    Dict.Refined.Dict String IdentityProviderName IdentityProviderToken


type alias LookupDeveloperIdentityInput =
    { nextToken : PaginationKey
    , maxResults : QueryLimit
    , identityPoolId : IdentityPoolId
    , identityId : IdentityId
    , developerUserIdentifier : DeveloperUserIdentifier
    }


type alias LookupDeveloperIdentityResponse =
    { nextToken : PaginationKey, identityId : IdentityId, developerUserIdentifierList : DeveloperUserIdentifierList }


type alias MappingRule =
    { value : ClaimValue, roleArn : Arnstring, matchType : MappingRuleMatchType, claim : ClaimName }


type MappingRuleMatchType
    = MappingRuleMatchTypeEquals
    | MappingRuleMatchTypeContains
    | MappingRuleMatchTypeStartsWith
    | MappingRuleMatchTypeNotEqual


mappingRuleMatchType : Enum MappingRuleMatchType
mappingRuleMatchType =
    Enum.define
        [ MappingRuleMatchTypeEquals
        , MappingRuleMatchTypeContains
        , MappingRuleMatchTypeStartsWith
        , MappingRuleMatchTypeNotEqual
        ]
        (\val ->
            case val of
                MappingRuleMatchTypeEquals ->
                    "Equals"

                MappingRuleMatchTypeContains ->
                    "Contains"

                MappingRuleMatchTypeStartsWith ->
                    "StartsWith"

                MappingRuleMatchTypeNotEqual ->
                    "NotEqual"
        )


type alias MappingRulesList =
    List MappingRule


type alias MergeDeveloperIdentitiesInput =
    { sourceUserIdentifier : DeveloperUserIdentifier
    , identityPoolId : IdentityPoolId
    , developerProviderName : DeveloperProviderName
    , destinationUserIdentifier : DeveloperUserIdentifier
    }


type alias MergeDeveloperIdentitiesResponse =
    { identityId : IdentityId }


type alias OidcproviderList =
    List Arnstring


type alias Oidctoken =
    String


type PaginationKey
    = PaginationKey String


paginationKey : Refined String PaginationKey StringError
paginationKey =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.regexMatch "[\\S]+") |> Result.map PaginationKey

        unboxFn (PaginationKey val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type QueryLimit
    = QueryLimit Int


queryLimit : Refined Int QueryLimit IntError
queryLimit =
    let
        guardFn val =
            Refined.gt 1 val |> Result.andThen (Refined.lt 60) |> Result.map QueryLimit

        unboxFn (QueryLimit val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type alias RoleMapping =
    { type_ : RoleMappingType
    , rulesConfiguration : RulesConfigurationType
    , ambiguousRoleResolution : AmbiguousRoleResolutionType
    }


type alias RoleMappingMap =
    Dict.Refined.Dict String IdentityProviderName RoleMapping


type RoleMappingType
    = RoleMappingTypeToken
    | RoleMappingTypeRules


roleMappingType : Enum RoleMappingType
roleMappingType =
    Enum.define
        [ RoleMappingTypeToken, RoleMappingTypeRules ]
        (\val ->
            case val of
                RoleMappingTypeToken ->
                    "Token"

                RoleMappingTypeRules ->
                    "Rules"
        )


type RoleType
    = RoleType String


roleType : Refined String RoleType StringError
roleType =
    let
        guardFn val =
            Refined.regexMatch "(un)?authenticated" val |> Result.map RoleType

        unboxFn (RoleType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias RolesMap =
    Dict.Refined.Dict String RoleType Arnstring


type alias RulesConfigurationType =
    { rules : MappingRulesList }


type alias SamlproviderList =
    List Arnstring


type alias SecretKeyString =
    String


type alias SessionTokenString =
    String


type alias SetIdentityPoolRolesInput =
    { roles : RolesMap, roleMappings : RoleMappingMap, identityPoolId : IdentityPoolId }


type TagKeysType
    = TagKeysType String


tagKeysType : Refined String TagKeysType StringError
tagKeysType =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 128) |> Result.map TagKeysType

        unboxFn (TagKeysType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias TagResourceInput =
    { tags : IdentityPoolTagsType, resourceArn : Arnstring }


type alias TagResourceResponse =
    {}


type TagValueType
    = TagValueType String


tagValueType : Refined String TagValueType StringError
tagValueType =
    let
        guardFn val =
            Refined.minLength 0 val |> Result.andThen (Refined.maxLength 256) |> Result.map TagValueType

        unboxFn (TagValueType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias TokenDuration =
    Int


type alias UnlinkDeveloperIdentityInput =
    { identityPoolId : IdentityPoolId
    , identityId : IdentityId
    , developerUserIdentifier : DeveloperUserIdentifier
    , developerProviderName : DeveloperProviderName
    }


type alias UnlinkIdentityInput =
    { loginsToRemove : LoginsList, logins : LoginsMap, identityId : IdentityId }


type alias UnprocessedIdentityId =
    { identityId : IdentityId, errorCode : ErrorCode }


type alias UnprocessedIdentityIdList =
    List UnprocessedIdentityId


type alias UntagResourceInput =
    { tagKeys : IdentityPoolTagsListType, resourceArn : Arnstring }


type alias UntagResourceResponse =
    {}


{-| Codec for UntagResourceResponse. -}
untagResourceResponseCodec : Codec UntagResourceResponse
untagResourceResponseCodec =
    Codec.object UntagResourceResponse |> Codec.buildObject


{-| Codec for UntagResourceInput. -}
untagResourceInputCodec : Codec UntagResourceInput
untagResourceInputCodec =
    Codec.object UntagResourceInput
        |> Codec.field "TagKeys" .tagKeys identityPoolTagsListTypeCodec
        |> Codec.field "ResourceArn" .resourceArn arnstringCodec
        |> Codec.buildObject


{-| Codec for UnprocessedIdentityIdList. -}
unprocessedIdentityIdListCodec : Codec UnprocessedIdentityIdList
unprocessedIdentityIdListCodec =
    Codec.list unprocessedIdentityIdCodec


{-| Codec for UnprocessedIdentityId. -}
unprocessedIdentityIdCodec : Codec UnprocessedIdentityId
unprocessedIdentityIdCodec =
    Codec.object UnprocessedIdentityId
        |> Codec.field "IdentityId" .identityId identityIdCodec
        |> Codec.field "ErrorCode" .errorCode errorCodeCodec
        |> Codec.buildObject


{-| Codec for UnlinkIdentityInput. -}
unlinkIdentityInputCodec : Codec UnlinkIdentityInput
unlinkIdentityInputCodec =
    Codec.object UnlinkIdentityInput
        |> Codec.field "LoginsToRemove" .loginsToRemove loginsListCodec
        |> Codec.field "Logins" .logins loginsMapCodec
        |> Codec.field "IdentityId" .identityId identityIdCodec
        |> Codec.buildObject


{-| Codec for UnlinkDeveloperIdentityInput. -}
unlinkDeveloperIdentityInputCodec : Codec UnlinkDeveloperIdentityInput
unlinkDeveloperIdentityInputCodec =
    Codec.object UnlinkDeveloperIdentityInput
        |> Codec.field "IdentityPoolId" .identityPoolId identityPoolIdCodec
        |> Codec.field "IdentityId" .identityId identityIdCodec
        |> Codec.field "DeveloperUserIdentifier" .developerUserIdentifier developerUserIdentifierCodec
        |> Codec.field "DeveloperProviderName" .developerProviderName developerProviderNameCodec
        |> Codec.buildObject


{-| Codec for TokenDuration. -}
tokenDurationCodec : Codec TokenDuration
tokenDurationCodec =
    Codec.int


{-| Codec for TagValueType. -}
tagValueTypeCodec : Codec TagValueType
tagValueTypeCodec =
    Codec.build (Refined.encoder tagValueType) (Refined.decoder tagValueType)


{-| Codec for TagResourceResponse. -}
tagResourceResponseCodec : Codec TagResourceResponse
tagResourceResponseCodec =
    Codec.object TagResourceResponse |> Codec.buildObject


{-| Codec for TagResourceInput. -}
tagResourceInputCodec : Codec TagResourceInput
tagResourceInputCodec =
    Codec.object TagResourceInput
        |> Codec.field "Tags" .tags identityPoolTagsTypeCodec
        |> Codec.field "ResourceArn" .resourceArn arnstringCodec
        |> Codec.buildObject


{-| Codec for TagKeysType. -}
tagKeysTypeCodec : Codec TagKeysType
tagKeysTypeCodec =
    Codec.build (Refined.encoder tagKeysType) (Refined.decoder tagKeysType)


{-| Codec for SetIdentityPoolRolesInput. -}
setIdentityPoolRolesInputCodec : Codec SetIdentityPoolRolesInput
setIdentityPoolRolesInputCodec =
    Codec.object SetIdentityPoolRolesInput
        |> Codec.field "Roles" .roles rolesMapCodec
        |> Codec.field "RoleMappings" .roleMappings roleMappingMapCodec
        |> Codec.field "IdentityPoolId" .identityPoolId identityPoolIdCodec
        |> Codec.buildObject


{-| Codec for SessionTokenString. -}
sessionTokenStringCodec : Codec SessionTokenString
sessionTokenStringCodec =
    Codec.string


{-| Codec for SecretKeyString. -}
secretKeyStringCodec : Codec SecretKeyString
secretKeyStringCodec =
    Codec.string


{-| Codec for SamlproviderList. -}
samlproviderListCodec : Codec SamlproviderList
samlproviderListCodec =
    Codec.list arnstringCodec


{-| Codec for RulesConfigurationType. -}
rulesConfigurationTypeCodec : Codec RulesConfigurationType
rulesConfigurationTypeCodec =
    Codec.object RulesConfigurationType |> Codec.field "Rules" .rules mappingRulesListCodec |> Codec.buildObject


{-| Codec for RolesMap. -}
rolesMapCodec : Codec RolesMap
rolesMapCodec =
    Codec.build
        (Refined.dictEncoder roleType (Codec.encoder arnstringCodec))
        (Refined.dictDecoder roleType (Codec.decoder arnstringCodec))


{-| Codec for RoleType. -}
roleTypeCodec : Codec RoleType
roleTypeCodec =
    Codec.build (Refined.encoder roleType) (Refined.decoder roleType)


{-| Codec for RoleMappingType. -}
roleMappingTypeCodec : Codec RoleMappingType
roleMappingTypeCodec =
    Codec.build (Enum.encoder roleMappingType) (Enum.decoder roleMappingType)


{-| Codec for RoleMappingMap. -}
roleMappingMapCodec : Codec RoleMappingMap
roleMappingMapCodec =
    Codec.build
        (Refined.dictEncoder identityProviderName (Codec.encoder roleMappingCodec))
        (Refined.dictDecoder identityProviderName (Codec.decoder roleMappingCodec))


{-| Codec for RoleMapping. -}
roleMappingCodec : Codec RoleMapping
roleMappingCodec =
    Codec.object RoleMapping
        |> Codec.field "Type" .type_ roleMappingTypeCodec
        |> Codec.field "RulesConfiguration" .rulesConfiguration rulesConfigurationTypeCodec
        |> Codec.field "AmbiguousRoleResolution" .ambiguousRoleResolution ambiguousRoleResolutionTypeCodec
        |> Codec.buildObject


{-| Codec for QueryLimit. -}
queryLimitCodec : Codec QueryLimit
queryLimitCodec =
    Codec.build (Refined.encoder queryLimit) (Refined.decoder queryLimit)


{-| Codec for PaginationKey. -}
paginationKeyCodec : Codec PaginationKey
paginationKeyCodec =
    Codec.build (Refined.encoder paginationKey) (Refined.decoder paginationKey)


{-| Codec for Oidctoken. -}
oidctokenCodec : Codec Oidctoken
oidctokenCodec =
    Codec.string


{-| Codec for OidcproviderList. -}
oidcproviderListCodec : Codec OidcproviderList
oidcproviderListCodec =
    Codec.list arnstringCodec


{-| Codec for MergeDeveloperIdentitiesResponse. -}
mergeDeveloperIdentitiesResponseCodec : Codec MergeDeveloperIdentitiesResponse
mergeDeveloperIdentitiesResponseCodec =
    Codec.object MergeDeveloperIdentitiesResponse
        |> Codec.field "IdentityId" .identityId identityIdCodec
        |> Codec.buildObject


{-| Codec for MergeDeveloperIdentitiesInput. -}
mergeDeveloperIdentitiesInputCodec : Codec MergeDeveloperIdentitiesInput
mergeDeveloperIdentitiesInputCodec =
    Codec.object MergeDeveloperIdentitiesInput
        |> Codec.field "SourceUserIdentifier" .sourceUserIdentifier developerUserIdentifierCodec
        |> Codec.field "IdentityPoolId" .identityPoolId identityPoolIdCodec
        |> Codec.field "DeveloperProviderName" .developerProviderName developerProviderNameCodec
        |> Codec.field "DestinationUserIdentifier" .destinationUserIdentifier developerUserIdentifierCodec
        |> Codec.buildObject


{-| Codec for MappingRulesList. -}
mappingRulesListCodec : Codec MappingRulesList
mappingRulesListCodec =
    Codec.list mappingRuleCodec


{-| Codec for MappingRuleMatchType. -}
mappingRuleMatchTypeCodec : Codec MappingRuleMatchType
mappingRuleMatchTypeCodec =
    Codec.build (Enum.encoder mappingRuleMatchType) (Enum.decoder mappingRuleMatchType)


{-| Codec for MappingRule. -}
mappingRuleCodec : Codec MappingRule
mappingRuleCodec =
    Codec.object MappingRule
        |> Codec.field "Value" .value claimValueCodec
        |> Codec.field "RoleARN" .roleArn arnstringCodec
        |> Codec.field "MatchType" .matchType mappingRuleMatchTypeCodec
        |> Codec.field "Claim" .claim claimNameCodec
        |> Codec.buildObject


{-| Codec for LookupDeveloperIdentityResponse. -}
lookupDeveloperIdentityResponseCodec : Codec LookupDeveloperIdentityResponse
lookupDeveloperIdentityResponseCodec =
    Codec.object LookupDeveloperIdentityResponse
        |> Codec.field "NextToken" .nextToken paginationKeyCodec
        |> Codec.field "IdentityId" .identityId identityIdCodec
        |> Codec.field "DeveloperUserIdentifierList" .developerUserIdentifierList developerUserIdentifierListCodec
        |> Codec.buildObject


{-| Codec for LookupDeveloperIdentityInput. -}
lookupDeveloperIdentityInputCodec : Codec LookupDeveloperIdentityInput
lookupDeveloperIdentityInputCodec =
    Codec.object LookupDeveloperIdentityInput
        |> Codec.field "NextToken" .nextToken paginationKeyCodec
        |> Codec.field "MaxResults" .maxResults queryLimitCodec
        |> Codec.field "IdentityPoolId" .identityPoolId identityPoolIdCodec
        |> Codec.field "IdentityId" .identityId identityIdCodec
        |> Codec.field "DeveloperUserIdentifier" .developerUserIdentifier developerUserIdentifierCodec
        |> Codec.buildObject


{-| Codec for LoginsMap. -}
loginsMapCodec : Codec LoginsMap
loginsMapCodec =
    Codec.build
        (Refined.dictEncoder identityProviderName (Codec.encoder identityProviderTokenCodec))
        (Refined.dictDecoder identityProviderName (Codec.decoder identityProviderTokenCodec))


{-| Codec for LoginsList. -}
loginsListCodec : Codec LoginsList
loginsListCodec =
    Codec.list identityProviderNameCodec


{-| Codec for ListTagsForResourceResponse. -}
listTagsForResourceResponseCodec : Codec ListTagsForResourceResponse
listTagsForResourceResponseCodec =
    Codec.object ListTagsForResourceResponse |> Codec.field "Tags" .tags identityPoolTagsTypeCodec |> Codec.buildObject


{-| Codec for ListTagsForResourceInput. -}
listTagsForResourceInputCodec : Codec ListTagsForResourceInput
listTagsForResourceInputCodec =
    Codec.object ListTagsForResourceInput |> Codec.field "ResourceArn" .resourceArn arnstringCodec |> Codec.buildObject


{-| Codec for ListIdentityPoolsResponse. -}
listIdentityPoolsResponseCodec : Codec ListIdentityPoolsResponse
listIdentityPoolsResponseCodec =
    Codec.object ListIdentityPoolsResponse
        |> Codec.field "NextToken" .nextToken paginationKeyCodec
        |> Codec.field "IdentityPools" .identityPools identityPoolsListCodec
        |> Codec.buildObject


{-| Codec for ListIdentityPoolsInput. -}
listIdentityPoolsInputCodec : Codec ListIdentityPoolsInput
listIdentityPoolsInputCodec =
    Codec.object ListIdentityPoolsInput
        |> Codec.field "NextToken" .nextToken paginationKeyCodec
        |> Codec.field "MaxResults" .maxResults queryLimitCodec
        |> Codec.buildObject


{-| Codec for ListIdentitiesResponse. -}
listIdentitiesResponseCodec : Codec ListIdentitiesResponse
listIdentitiesResponseCodec =
    Codec.object ListIdentitiesResponse
        |> Codec.field "NextToken" .nextToken paginationKeyCodec
        |> Codec.field "IdentityPoolId" .identityPoolId identityPoolIdCodec
        |> Codec.field "Identities" .identities identitiesListCodec
        |> Codec.buildObject


{-| Codec for ListIdentitiesInput. -}
listIdentitiesInputCodec : Codec ListIdentitiesInput
listIdentitiesInputCodec =
    Codec.object ListIdentitiesInput
        |> Codec.field "NextToken" .nextToken paginationKeyCodec
        |> Codec.field "MaxResults" .maxResults queryLimitCodec
        |> Codec.field "IdentityPoolId" .identityPoolId identityPoolIdCodec
        |> Codec.field "HideDisabled" .hideDisabled Codec.bool
        |> Codec.buildObject


{-| Codec for IdentityProviders. -}
identityProvidersCodec : Codec IdentityProviders
identityProvidersCodec =
    Codec.build
        (Refined.dictEncoder identityProviderName (Codec.encoder identityProviderIdCodec))
        (Refined.dictDecoder identityProviderName (Codec.decoder identityProviderIdCodec))


{-| Codec for IdentityProviderToken. -}
identityProviderTokenCodec : Codec IdentityProviderToken
identityProviderTokenCodec =
    Codec.build (Refined.encoder identityProviderToken) (Refined.decoder identityProviderToken)


{-| Codec for IdentityProviderName. -}
identityProviderNameCodec : Codec IdentityProviderName
identityProviderNameCodec =
    Codec.build (Refined.encoder identityProviderName) (Refined.decoder identityProviderName)


{-| Codec for IdentityProviderId. -}
identityProviderIdCodec : Codec IdentityProviderId
identityProviderIdCodec =
    Codec.build (Refined.encoder identityProviderId) (Refined.decoder identityProviderId)


{-| Codec for IdentityPoolsList. -}
identityPoolsListCodec : Codec IdentityPoolsList
identityPoolsListCodec =
    Codec.list identityPoolShortDescriptionCodec


{-| Codec for IdentityPoolUnauthenticated. -}
identityPoolUnauthenticatedCodec : Codec IdentityPoolUnauthenticated
identityPoolUnauthenticatedCodec =
    Codec.bool


{-| Codec for IdentityPoolTagsType. -}
identityPoolTagsTypeCodec : Codec IdentityPoolTagsType
identityPoolTagsTypeCodec =
    Codec.build
        (Refined.dictEncoder tagKeysType (Codec.encoder tagValueTypeCodec))
        (Refined.dictDecoder tagKeysType (Codec.decoder tagValueTypeCodec))


{-| Codec for IdentityPoolTagsListType. -}
identityPoolTagsListTypeCodec : Codec IdentityPoolTagsListType
identityPoolTagsListTypeCodec =
    Codec.list tagKeysTypeCodec


{-| Codec for IdentityPoolShortDescription. -}
identityPoolShortDescriptionCodec : Codec IdentityPoolShortDescription
identityPoolShortDescriptionCodec =
    Codec.object IdentityPoolShortDescription
        |> Codec.field "IdentityPoolName" .identityPoolName identityPoolNameCodec
        |> Codec.field "IdentityPoolId" .identityPoolId identityPoolIdCodec
        |> Codec.buildObject


{-| Codec for IdentityPoolName. -}
identityPoolNameCodec : Codec IdentityPoolName
identityPoolNameCodec =
    Codec.build (Refined.encoder identityPoolName) (Refined.decoder identityPoolName)


{-| Codec for IdentityPoolId. -}
identityPoolIdCodec : Codec IdentityPoolId
identityPoolIdCodec =
    Codec.build (Refined.encoder identityPoolId) (Refined.decoder identityPoolId)


{-| Codec for IdentityPool. -}
identityPoolCodec : Codec IdentityPool
identityPoolCodec =
    Codec.object IdentityPool
        |> Codec.field "SupportedLoginProviders" .supportedLoginProviders identityProvidersCodec
        |> Codec.field "SamlProviderARNs" .samlProviderArns samlproviderListCodec
        |> Codec.field "OpenIdConnectProviderARNs" .openIdConnectProviderArns oidcproviderListCodec
        |> Codec.field "IdentityPoolTags" .identityPoolTags identityPoolTagsTypeCodec
        |> Codec.field "IdentityPoolName" .identityPoolName identityPoolNameCodec
        |> Codec.field "IdentityPoolId" .identityPoolId identityPoolIdCodec
        |> Codec.field "DeveloperProviderName" .developerProviderName developerProviderNameCodec
        |> Codec.field "CognitoIdentityProviders" .cognitoIdentityProviders cognitoIdentityProviderListCodec
        |> Codec.field "AllowUnauthenticatedIdentities" .allowUnauthenticatedIdentities Codec.bool
        |> Codec.buildObject


{-| Codec for IdentityIdList. -}
identityIdListCodec : Codec IdentityIdList
identityIdListCodec =
    Codec.list identityIdCodec


{-| Codec for IdentityId. -}
identityIdCodec : Codec IdentityId
identityIdCodec =
    Codec.build (Refined.encoder identityId) (Refined.decoder identityId)


{-| Codec for IdentityDescription. -}
identityDescriptionCodec : Codec IdentityDescription
identityDescriptionCodec =
    Codec.object IdentityDescription
        |> Codec.field "Logins" .logins loginsListCodec
        |> Codec.field "LastModifiedDate" .lastModifiedDate dateTypeCodec
        |> Codec.field "IdentityId" .identityId identityIdCodec
        |> Codec.field "CreationDate" .creationDate dateTypeCodec
        |> Codec.buildObject


{-| Codec for IdentitiesList. -}
identitiesListCodec : Codec IdentitiesList
identitiesListCodec =
    Codec.list identityDescriptionCodec


{-| Codec for HideDisabled. -}
hideDisabledCodec : Codec HideDisabled
hideDisabledCodec =
    Codec.bool


{-| Codec for GetOpenIdTokenResponse. -}
getOpenIdTokenResponseCodec : Codec GetOpenIdTokenResponse
getOpenIdTokenResponseCodec =
    Codec.object GetOpenIdTokenResponse
        |> Codec.field "Token" .token Codec.string
        |> Codec.field "IdentityId" .identityId identityIdCodec
        |> Codec.buildObject


{-| Codec for GetOpenIdTokenInput. -}
getOpenIdTokenInputCodec : Codec GetOpenIdTokenInput
getOpenIdTokenInputCodec =
    Codec.object GetOpenIdTokenInput
        |> Codec.field "Logins" .logins loginsMapCodec
        |> Codec.field "IdentityId" .identityId identityIdCodec
        |> Codec.buildObject


{-| Codec for GetOpenIdTokenForDeveloperIdentityResponse. -}
getOpenIdTokenForDeveloperIdentityResponseCodec : Codec GetOpenIdTokenForDeveloperIdentityResponse
getOpenIdTokenForDeveloperIdentityResponseCodec =
    Codec.object GetOpenIdTokenForDeveloperIdentityResponse
        |> Codec.field "Token" .token Codec.string
        |> Codec.field "IdentityId" .identityId identityIdCodec
        |> Codec.buildObject


{-| Codec for GetOpenIdTokenForDeveloperIdentityInput. -}
getOpenIdTokenForDeveloperIdentityInputCodec : Codec GetOpenIdTokenForDeveloperIdentityInput
getOpenIdTokenForDeveloperIdentityInputCodec =
    Codec.object GetOpenIdTokenForDeveloperIdentityInput
        |> Codec.field "TokenDuration" .tokenDuration Codec.int
        |> Codec.field "Logins" .logins loginsMapCodec
        |> Codec.field "IdentityPoolId" .identityPoolId identityPoolIdCodec
        |> Codec.field "IdentityId" .identityId identityIdCodec
        |> Codec.buildObject


{-| Codec for GetIdentityPoolRolesResponse. -}
getIdentityPoolRolesResponseCodec : Codec GetIdentityPoolRolesResponse
getIdentityPoolRolesResponseCodec =
    Codec.object GetIdentityPoolRolesResponse
        |> Codec.field "Roles" .roles rolesMapCodec
        |> Codec.field "RoleMappings" .roleMappings roleMappingMapCodec
        |> Codec.field "IdentityPoolId" .identityPoolId identityPoolIdCodec
        |> Codec.buildObject


{-| Codec for GetIdentityPoolRolesInput. -}
getIdentityPoolRolesInputCodec : Codec GetIdentityPoolRolesInput
getIdentityPoolRolesInputCodec =
    Codec.object GetIdentityPoolRolesInput
        |> Codec.field "IdentityPoolId" .identityPoolId identityPoolIdCodec
        |> Codec.buildObject


{-| Codec for GetIdResponse. -}
getIdResponseCodec : Codec GetIdResponse
getIdResponseCodec =
    Codec.object GetIdResponse |> Codec.field "IdentityId" .identityId identityIdCodec |> Codec.buildObject


{-| Codec for GetIdInput. -}
getIdInputCodec : Codec GetIdInput
getIdInputCodec =
    Codec.object GetIdInput
        |> Codec.field "Logins" .logins loginsMapCodec
        |> Codec.field "IdentityPoolId" .identityPoolId identityPoolIdCodec
        |> Codec.field "AccountId" .accountId accountIdCodec
        |> Codec.buildObject


{-| Codec for GetCredentialsForIdentityResponse. -}
getCredentialsForIdentityResponseCodec : Codec GetCredentialsForIdentityResponse
getCredentialsForIdentityResponseCodec =
    Codec.object GetCredentialsForIdentityResponse
        |> Codec.field "IdentityId" .identityId identityIdCodec
        |> Codec.field "Credentials" .credentials credentialsCodec
        |> Codec.buildObject


{-| Codec for GetCredentialsForIdentityInput. -}
getCredentialsForIdentityInputCodec : Codec GetCredentialsForIdentityInput
getCredentialsForIdentityInputCodec =
    Codec.object GetCredentialsForIdentityInput
        |> Codec.field "Logins" .logins loginsMapCodec
        |> Codec.field "IdentityId" .identityId identityIdCodec
        |> Codec.field "CustomRoleArn" .customRoleArn arnstringCodec
        |> Codec.buildObject


{-| Codec for ErrorCode. -}
errorCodeCodec : Codec ErrorCode
errorCodeCodec =
    Codec.build (Enum.encoder errorCode) (Enum.decoder errorCode)


{-| Codec for DeveloperUserIdentifierList. -}
developerUserIdentifierListCodec : Codec DeveloperUserIdentifierList
developerUserIdentifierListCodec =
    Codec.list developerUserIdentifierCodec


{-| Codec for DeveloperUserIdentifier. -}
developerUserIdentifierCodec : Codec DeveloperUserIdentifier
developerUserIdentifierCodec =
    Codec.build (Refined.encoder developerUserIdentifier) (Refined.decoder developerUserIdentifier)


{-| Codec for DeveloperProviderName. -}
developerProviderNameCodec : Codec DeveloperProviderName
developerProviderNameCodec =
    Codec.build (Refined.encoder developerProviderName) (Refined.decoder developerProviderName)


{-| Codec for DescribeIdentityPoolInput. -}
describeIdentityPoolInputCodec : Codec DescribeIdentityPoolInput
describeIdentityPoolInputCodec =
    Codec.object DescribeIdentityPoolInput
        |> Codec.field "IdentityPoolId" .identityPoolId identityPoolIdCodec
        |> Codec.buildObject


{-| Codec for DescribeIdentityInput. -}
describeIdentityInputCodec : Codec DescribeIdentityInput
describeIdentityInputCodec =
    Codec.object DescribeIdentityInput |> Codec.field "IdentityId" .identityId identityIdCodec |> Codec.buildObject


{-| Codec for DeleteIdentityPoolInput. -}
deleteIdentityPoolInputCodec : Codec DeleteIdentityPoolInput
deleteIdentityPoolInputCodec =
    Codec.object DeleteIdentityPoolInput
        |> Codec.field "IdentityPoolId" .identityPoolId identityPoolIdCodec
        |> Codec.buildObject


{-| Codec for DeleteIdentitiesResponse. -}
deleteIdentitiesResponseCodec : Codec DeleteIdentitiesResponse
deleteIdentitiesResponseCodec =
    Codec.object DeleteIdentitiesResponse
        |> Codec.field "UnprocessedIdentityIds" .unprocessedIdentityIds unprocessedIdentityIdListCodec
        |> Codec.buildObject


{-| Codec for DeleteIdentitiesInput. -}
deleteIdentitiesInputCodec : Codec DeleteIdentitiesInput
deleteIdentitiesInputCodec =
    Codec.object DeleteIdentitiesInput
        |> Codec.field "IdentityIdsToDelete" .identityIdsToDelete identityIdListCodec
        |> Codec.buildObject


{-| Codec for DateType. -}
dateTypeCodec : Codec DateType
dateTypeCodec =
    Codec.string


{-| Codec for Credentials. -}
credentialsCodec : Codec Credentials
credentialsCodec =
    Codec.object Credentials
        |> Codec.field "SessionToken" .sessionToken Codec.string
        |> Codec.field "SecretKey" .secretKey Codec.string
        |> Codec.field "Expiration" .expiration dateTypeCodec
        |> Codec.field "AccessKeyId" .accessKeyId Codec.string
        |> Codec.buildObject


{-| Codec for CreateIdentityPoolInput. -}
createIdentityPoolInputCodec : Codec CreateIdentityPoolInput
createIdentityPoolInputCodec =
    Codec.object CreateIdentityPoolInput
        |> Codec.field "SupportedLoginProviders" .supportedLoginProviders identityProvidersCodec
        |> Codec.field "SamlProviderARNs" .samlProviderArns samlproviderListCodec
        |> Codec.field "OpenIdConnectProviderARNs" .openIdConnectProviderArns oidcproviderListCodec
        |> Codec.field "IdentityPoolTags" .identityPoolTags identityPoolTagsTypeCodec
        |> Codec.field "IdentityPoolName" .identityPoolName identityPoolNameCodec
        |> Codec.field "DeveloperProviderName" .developerProviderName developerProviderNameCodec
        |> Codec.field "CognitoIdentityProviders" .cognitoIdentityProviders cognitoIdentityProviderListCodec
        |> Codec.field "AllowUnauthenticatedIdentities" .allowUnauthenticatedIdentities Codec.bool
        |> Codec.buildObject


{-| Codec for CognitoIdentityProviderTokenCheck. -}
cognitoIdentityProviderTokenCheckCodec : Codec CognitoIdentityProviderTokenCheck
cognitoIdentityProviderTokenCheckCodec =
    Codec.bool


{-| Codec for CognitoIdentityProviderName. -}
cognitoIdentityProviderNameCodec : Codec CognitoIdentityProviderName
cognitoIdentityProviderNameCodec =
    Codec.build (Refined.encoder cognitoIdentityProviderName) (Refined.decoder cognitoIdentityProviderName)


{-| Codec for CognitoIdentityProviderList. -}
cognitoIdentityProviderListCodec : Codec CognitoIdentityProviderList
cognitoIdentityProviderListCodec =
    Codec.list cognitoIdentityProviderCodec


{-| Codec for CognitoIdentityProviderClientId. -}
cognitoIdentityProviderClientIdCodec : Codec CognitoIdentityProviderClientId
cognitoIdentityProviderClientIdCodec =
    Codec.build (Refined.encoder cognitoIdentityProviderClientId) (Refined.decoder cognitoIdentityProviderClientId)


{-| Codec for CognitoIdentityProvider. -}
cognitoIdentityProviderCodec : Codec CognitoIdentityProvider
cognitoIdentityProviderCodec =
    Codec.object CognitoIdentityProvider
        |> Codec.field "ServerSideTokenCheck" .serverSideTokenCheck Codec.bool
        |> Codec.field "ProviderName" .providerName cognitoIdentityProviderNameCodec
        |> Codec.field "ClientId" .clientId cognitoIdentityProviderClientIdCodec
        |> Codec.buildObject


{-| Codec for ClaimValue. -}
claimValueCodec : Codec ClaimValue
claimValueCodec =
    Codec.build (Refined.encoder claimValue) (Refined.decoder claimValue)


{-| Codec for ClaimName. -}
claimNameCodec : Codec ClaimName
claimNameCodec =
    Codec.build (Refined.encoder claimName) (Refined.decoder claimName)


{-| Codec for AmbiguousRoleResolutionType. -}
ambiguousRoleResolutionTypeCodec : Codec AmbiguousRoleResolutionType
ambiguousRoleResolutionTypeCodec =
    Codec.build (Enum.encoder ambiguousRoleResolutionType) (Enum.decoder ambiguousRoleResolutionType)


{-| Codec for AccountId. -}
accountIdCodec : Codec AccountId
accountIdCodec =
    Codec.build (Refined.encoder accountId) (Refined.decoder accountId)


{-| Codec for AccessKeyString. -}
accessKeyStringCodec : Codec AccessKeyString
accessKeyStringCodec =
    Codec.string


{-| Codec for Arnstring. -}
arnstringCodec : Codec Arnstring
arnstringCodec =
    Codec.build (Refined.encoder arnstring) (Refined.decoder arnstring)
