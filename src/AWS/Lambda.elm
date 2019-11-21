module AWS.Lambda exposing (service)

import AWS.Core.Decode
import AWS.Core.Http
import AWS.Core.Service
import Codec exposing (Codec)
import Dict exposing (Dict)
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
            identity
    in
    AWS.Core.Service.defineGlobal "lambda" "2015-03-31" AWS.Core.Service.rest-json AWS.Core.Service.signV4 optionsFn


{-| AWS Endpoint. -}
updateFunctionConfiguration :
    UpdateFunctionConfigurationRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper FunctionConfiguration)
updateFunctionConfiguration req =
    let
        jsonBody =
            req |> Codec.encoder updateFunctionConfigurationRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "UpdateFunctionConfiguration"
                (AWS.Core.Decode.ResultDecoder "FunctionConfiguration" (Codec.decoder functionConfigurationCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.PUT "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
updateFunctionCode :
    UpdateFunctionCodeRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper FunctionConfiguration)
updateFunctionCode req =
    let
        jsonBody =
            req |> Codec.encoder updateFunctionCodeRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "UpdateFunctionCode"
                (AWS.Core.Decode.ResultDecoder "FunctionConfiguration" (Codec.decoder functionConfigurationCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.PUT "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
updateEventSourceMapping :
    UpdateEventSourceMappingRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper EventSourceMappingConfiguration)
updateEventSourceMapping req =
    let
        jsonBody =
            req |> Codec.encoder updateEventSourceMappingRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "UpdateEventSourceMapping"
                (AWS.Core.Decode.ResultDecoder
                    "EventSourceMappingConfiguration"
                    (Codec.decoder eventSourceMappingConfigurationCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.PUT "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
updateAlias : UpdateAliasRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AliasConfiguration)
updateAlias req =
    let
        jsonBody =
            req |> Codec.encoder updateAliasRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "UpdateAlias"
                (AWS.Core.Decode.ResultDecoder "AliasConfiguration" (Codec.decoder aliasConfigurationCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.PUT "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
untagResource : UntagResourceRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
untagResource req =
    let
        jsonBody =
            req |> Codec.encoder untagResourceRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "UntagResource" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.DELETE "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
tagResource : TagResourceRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
tagResource req =
    let
        jsonBody =
            req |> Codec.encoder tagResourceRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "TagResource" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
removePermission : RemovePermissionRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
removePermission req =
    let
        jsonBody =
            req |> Codec.encoder removePermissionRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "RemovePermission" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.DELETE "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
removeLayerVersionPermission :
    RemoveLayerVersionPermissionRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
removeLayerVersionPermission req =
    let
        jsonBody =
            req |> Codec.encoder removeLayerVersionPermissionRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "RemoveLayerVersionPermission" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.DELETE "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
putFunctionConcurrency :
    PutFunctionConcurrencyRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper Concurrency)
putFunctionConcurrency req =
    let
        jsonBody =
            req |> Codec.encoder putFunctionConcurrencyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "PutFunctionConcurrency"
                (AWS.Core.Decode.ResultDecoder "Concurrency" (Codec.decoder concurrencyCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.PUT "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
publishVersion : PublishVersionRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper FunctionConfiguration)
publishVersion req =
    let
        jsonBody =
            req |> Codec.encoder publishVersionRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "PublishVersion"
                (AWS.Core.Decode.ResultDecoder "FunctionConfiguration" (Codec.decoder functionConfigurationCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
publishLayerVersion :
    PublishLayerVersionRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PublishLayerVersionResponse)
publishLayerVersion req =
    let
        jsonBody =
            req |> Codec.encoder publishLayerVersionRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "PublishLayerVersion"
                (AWS.Core.Decode.ResultDecoder
                    "PublishLayerVersionResponse"
                    (Codec.decoder publishLayerVersionResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listVersionsByFunction :
    ListVersionsByFunctionRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListVersionsByFunctionResponse)
listVersionsByFunction req =
    let
        jsonBody =
            req |> Codec.encoder listVersionsByFunctionRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListVersionsByFunction"
                (AWS.Core.Decode.ResultDecoder
                    "ListVersionsByFunctionResponse"
                    (Codec.decoder listVersionsByFunctionResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listTags : ListTagsRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTagsResponse)
listTags req =
    let
        jsonBody =
            req |> Codec.encoder listTagsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListTags"
                (AWS.Core.Decode.ResultDecoder "ListTagsResponse" (Codec.decoder listTagsResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listLayers : ListLayersRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListLayersResponse)
listLayers req =
    let
        jsonBody =
            req |> Codec.encoder listLayersRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListLayers"
                (AWS.Core.Decode.ResultDecoder "ListLayersResponse" (Codec.decoder listLayersResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listLayerVersions :
    ListLayerVersionsRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListLayerVersionsResponse)
listLayerVersions req =
    let
        jsonBody =
            req |> Codec.encoder listLayerVersionsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListLayerVersions"
                (AWS.Core.Decode.ResultDecoder
                    "ListLayerVersionsResponse"
                    (Codec.decoder listLayerVersionsResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listFunctions : ListFunctionsRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListFunctionsResponse)
listFunctions req =
    let
        jsonBody =
            req |> Codec.encoder listFunctionsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListFunctions"
                (AWS.Core.Decode.ResultDecoder "ListFunctionsResponse" (Codec.decoder listFunctionsResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listEventSourceMappings :
    ListEventSourceMappingsRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListEventSourceMappingsResponse)
listEventSourceMappings req =
    let
        jsonBody =
            req |> Codec.encoder listEventSourceMappingsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListEventSourceMappings"
                (AWS.Core.Decode.ResultDecoder
                    "ListEventSourceMappingsResponse"
                    (Codec.decoder listEventSourceMappingsResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listAliases : ListAliasesRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListAliasesResponse)
listAliases req =
    let
        jsonBody =
            req |> Codec.encoder listAliasesRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListAliases"
                (AWS.Core.Decode.ResultDecoder "ListAliasesResponse" (Codec.decoder listAliasesResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
invokeAsync : InvokeAsyncRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper InvokeAsyncResponse)
invokeAsync req =
    let
        jsonBody =
            req |> Codec.encoder invokeAsyncRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "InvokeAsync"
                (AWS.Core.Decode.ResultDecoder "InvokeAsyncResponse" (Codec.decoder invokeAsyncResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
invoke : InvocationRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper InvocationResponse)
invoke req =
    let
        jsonBody =
            req |> Codec.encoder invocationRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "Invoke"
                (AWS.Core.Decode.ResultDecoder "InvocationResponse" (Codec.decoder invocationResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getPolicy : GetPolicyRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetPolicyResponse)
getPolicy req =
    let
        jsonBody =
            req |> Codec.encoder getPolicyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetPolicy"
                (AWS.Core.Decode.ResultDecoder "GetPolicyResponse" (Codec.decoder getPolicyResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getLayerVersionPolicy :
    GetLayerVersionPolicyRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetLayerVersionPolicyResponse)
getLayerVersionPolicy req =
    let
        jsonBody =
            req |> Codec.encoder getLayerVersionPolicyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetLayerVersionPolicy"
                (AWS.Core.Decode.ResultDecoder
                    "GetLayerVersionPolicyResponse"
                    (Codec.decoder getLayerVersionPolicyResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getLayerVersionByArn :
    GetLayerVersionByArnRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetLayerVersionResponse)
getLayerVersionByArn req =
    let
        jsonBody =
            req |> Codec.encoder getLayerVersionByArnRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetLayerVersionByArn"
                (AWS.Core.Decode.ResultDecoder "GetLayerVersionResponse" (Codec.decoder getLayerVersionResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getLayerVersion :
    GetLayerVersionRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetLayerVersionResponse)
getLayerVersion req =
    let
        jsonBody =
            req |> Codec.encoder getLayerVersionRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetLayerVersion"
                (AWS.Core.Decode.ResultDecoder "GetLayerVersionResponse" (Codec.decoder getLayerVersionResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getFunctionConfiguration :
    GetFunctionConfigurationRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper FunctionConfiguration)
getFunctionConfiguration req =
    let
        jsonBody =
            req |> Codec.encoder getFunctionConfigurationRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetFunctionConfiguration"
                (AWS.Core.Decode.ResultDecoder "FunctionConfiguration" (Codec.decoder functionConfigurationCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getFunction : GetFunctionRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetFunctionResponse)
getFunction req =
    let
        jsonBody =
            req |> Codec.encoder getFunctionRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetFunction"
                (AWS.Core.Decode.ResultDecoder "GetFunctionResponse" (Codec.decoder getFunctionResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getEventSourceMapping :
    GetEventSourceMappingRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper EventSourceMappingConfiguration)
getEventSourceMapping req =
    let
        jsonBody =
            req |> Codec.encoder getEventSourceMappingRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetEventSourceMapping"
                (AWS.Core.Decode.ResultDecoder
                    "EventSourceMappingConfiguration"
                    (Codec.decoder eventSourceMappingConfigurationCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getAlias : GetAliasRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AliasConfiguration)
getAlias req =
    let
        jsonBody =
            req |> Codec.encoder getAliasRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetAlias"
                (AWS.Core.Decode.ResultDecoder "AliasConfiguration" (Codec.decoder aliasConfigurationCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getAccountSettings :
    GetAccountSettingsRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetAccountSettingsResponse)
getAccountSettings req =
    let
        jsonBody =
            req |> Codec.encoder getAccountSettingsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetAccountSettings"
                (AWS.Core.Decode.ResultDecoder
                    "GetAccountSettingsResponse"
                    (Codec.decoder getAccountSettingsResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteLayerVersion : DeleteLayerVersionRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteLayerVersion req =
    let
        jsonBody =
            req |> Codec.encoder deleteLayerVersionRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteLayerVersion" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.DELETE "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteFunctionConcurrency :
    DeleteFunctionConcurrencyRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteFunctionConcurrency req =
    let
        jsonBody =
            req |> Codec.encoder deleteFunctionConcurrencyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteFunctionConcurrency" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.DELETE "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteFunction : DeleteFunctionRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteFunction req =
    let
        jsonBody =
            req |> Codec.encoder deleteFunctionRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteFunction" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.DELETE "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteEventSourceMapping :
    DeleteEventSourceMappingRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper EventSourceMappingConfiguration)
deleteEventSourceMapping req =
    let
        jsonBody =
            req |> Codec.encoder deleteEventSourceMappingRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DeleteEventSourceMapping"
                (AWS.Core.Decode.ResultDecoder
                    "EventSourceMappingConfiguration"
                    (Codec.decoder eventSourceMappingConfigurationCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.DELETE "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteAlias : DeleteAliasRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteAlias req =
    let
        jsonBody =
            req |> Codec.encoder deleteAliasRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteAlias" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.DELETE "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createFunction : CreateFunctionRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper FunctionConfiguration)
createFunction req =
    let
        jsonBody =
            req |> Codec.encoder createFunctionRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateFunction"
                (AWS.Core.Decode.ResultDecoder "FunctionConfiguration" (Codec.decoder functionConfigurationCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createEventSourceMapping :
    CreateEventSourceMappingRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper EventSourceMappingConfiguration)
createEventSourceMapping req =
    let
        jsonBody =
            req |> Codec.encoder createEventSourceMappingRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateEventSourceMapping"
                (AWS.Core.Decode.ResultDecoder
                    "EventSourceMappingConfiguration"
                    (Codec.decoder eventSourceMappingConfigurationCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createAlias : CreateAliasRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AliasConfiguration)
createAlias req =
    let
        jsonBody =
            req |> Codec.encoder createAliasRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateAlias"
                (AWS.Core.Decode.ResultDecoder "AliasConfiguration" (Codec.decoder aliasConfigurationCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
addPermission : AddPermissionRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AddPermissionResponse)
addPermission req =
    let
        jsonBody =
            req |> Codec.encoder addPermissionRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "AddPermission"
                (AWS.Core.Decode.ResultDecoder "AddPermissionResponse" (Codec.decoder addPermissionResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
addLayerVersionPermission :
    AddLayerVersionPermissionRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AddLayerVersionPermissionResponse)
addLayerVersionPermission req =
    let
        jsonBody =
            req |> Codec.encoder addLayerVersionPermissionRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "AddLayerVersionPermission"
                (AWS.Core.Decode.ResultDecoder
                    "AddLayerVersionPermissionResponse"
                    (Codec.decoder addLayerVersionPermissionResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


type alias AccountLimit =
    { unreservedConcurrentExecutions : UnreservedConcurrentExecutions
    , totalCodeSize : Int
    , concurrentExecutions : Int
    , codeSizeZipped : Int
    , codeSizeUnzipped : Int
    }


type alias AccountUsage =
    { totalCodeSize : Int, functionCount : Int }


type Action
    = Action String


action : Refined String Action StringError
action =
    let
        guardFn val =
            Refined.regexMatch "(lambda:[*]|lambda:[a-zA-Z]+|[*])" val |> Result.map Action

        unboxFn (Action val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias AddLayerVersionPermissionRequest =
    { versionNumber : Int
    , statementId : StatementId
    , revisionId : String
    , principal : LayerPermissionAllowedPrincipal
    , organizationId : OrganizationId
    , layerName : LayerName
    , action : LayerPermissionAllowedAction
    }


type alias AddLayerVersionPermissionResponse =
    { statement : String, revisionId : String }


type alias AddPermissionRequest =
    { statementId : StatementId
    , sourceArn : Arn
    , sourceAccount : SourceOwner
    , revisionId : String
    , qualifier : Qualifier
    , principal : Principal
    , functionName : FunctionName
    , eventSourceToken : EventSourceToken
    , action : Action
    }


type alias AddPermissionResponse =
    { statement : String }


type AdditionalVersion
    = AdditionalVersion String


additionalVersion : Refined String AdditionalVersion StringError
additionalVersion =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 1024)
                |> Result.andThen (Refined.regexMatch "[0-9]+")
                |> Result.map AdditionalVersion

        unboxFn (AdditionalVersion val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias AdditionalVersionWeights =
    Dict.Refined.Dict String AdditionalVersion Float


type Alias
    = Alias String


alias_ : Refined String Alias StringError
alias_ =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 128)
                |> Result.andThen (Refined.regexMatch "(?!^[0-9]+$)([a-zA-Z0-9-_]+)")
                |> Result.map Alias

        unboxFn (Alias val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias AliasConfiguration =
    { routingConfig : AliasRoutingConfiguration
    , revisionId : String
    , name : Alias
    , functionVersion : Version
    , description : Description
    , aliasArn : FunctionArn
    }


type alias AliasList =
    List AliasConfiguration


type alias AliasRoutingConfiguration =
    { additionalVersionWeights : AdditionalVersionWeights }


type Arn
    = Arn String


arn : Refined String Arn StringError
arn =
    let
        guardFn val =
            Refined.regexMatch
                "arn:(aws[a-zA-Z0-9-]*):([a-zA-Z0-9\\-])+:([a-z]{2}(-gov)?-[a-z]+-\\d{1})?:(\\d{12})?:(.*)"
                val
                |> Result.map Arn

        unboxFn (Arn val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type BatchSize
    = BatchSize Int


batchSize : Refined Int BatchSize IntError
batchSize =
    let
        guardFn val =
            Refined.gt 1 val |> Result.andThen (Refined.lt 10000) |> Result.map BatchSize

        unboxFn (BatchSize val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type alias Blob =
    String


type alias BlobStream =
    String


type alias Boolean =
    Bool


type alias CompatibleRuntimes =
    List Runtime


type alias Concurrency =
    { reservedConcurrentExecutions : ReservedConcurrentExecutions }


type alias CreateAliasRequest =
    { routingConfig : AliasRoutingConfiguration
    , name : Alias
    , functionVersion : Version
    , functionName : FunctionName
    , description : Description
    }


type alias CreateEventSourceMappingRequest =
    { startingPositionTimestamp : Date
    , startingPosition : EventSourcePosition
    , functionName : FunctionName
    , eventSourceArn : Arn
    , enabled : Bool
    , batchSize : BatchSize
    }


type alias CreateFunctionRequest =
    { vpcConfig : VpcConfig
    , tracingConfig : TracingConfig
    , timeout : Timeout
    , tags : Tags
    , runtime : Runtime
    , role : RoleArn
    , publish : Bool
    , memorySize : MemorySize
    , layers : LayerList
    , kmskeyArn : KmskeyArn
    , handler : Handler
    , functionName : FunctionName
    , environment : Environment
    , description : Description
    , deadLetterConfig : DeadLetterConfig
    , code : FunctionCode
    }


type alias Date =
    String


type alias DeadLetterConfig =
    { targetArn : ResourceArn }


type alias DeleteAliasRequest =
    { name : Alias, functionName : FunctionName }


type alias DeleteEventSourceMappingRequest =
    { uuid : String }


type alias DeleteFunctionConcurrencyRequest =
    { functionName : FunctionName }


type alias DeleteFunctionRequest =
    { qualifier : Qualifier, functionName : FunctionName }


type alias DeleteLayerVersionRequest =
    { versionNumber : Int, layerName : LayerName }


type Description
    = Description String


description : Refined String Description StringError
description =
    let
        guardFn val =
            Refined.minLength 0 val |> Result.andThen (Refined.maxLength 256) |> Result.map Description

        unboxFn (Description val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias Enabled =
    Bool


type alias Environment =
    { variables : EnvironmentVariables }


type alias EnvironmentError =
    { message : String, errorCode : String }


type alias EnvironmentResponse =
    { variables : EnvironmentVariables, error : EnvironmentError }


type EnvironmentVariableName
    = EnvironmentVariableName String


environmentVariableName : Refined String EnvironmentVariableName StringError
environmentVariableName =
    let
        guardFn val =
            Refined.regexMatch "[a-zA-Z]([a-zA-Z0-9_])+" val |> Result.map EnvironmentVariableName

        unboxFn (EnvironmentVariableName val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias EnvironmentVariableValue =
    String


type alias EnvironmentVariables =
    Dict.Refined.Dict String EnvironmentVariableName String


type alias EventSourceMappingConfiguration =
    { uuid : String
    , stateTransitionReason : String
    , state : String
    , lastProcessingResult : String
    , lastModified : Date
    , functionArn : FunctionArn
    , eventSourceArn : Arn
    , batchSize : BatchSize
    }


type alias EventSourceMappingsList =
    List EventSourceMappingConfiguration


type EventSourcePosition
    = EventSourcePositionTrimHorizon
    | EventSourcePositionLatest
    | EventSourcePositionAtTimestamp


eventSourcePosition : Enum EventSourcePosition
eventSourcePosition =
    Enum.define
        [ EventSourcePositionTrimHorizon, EventSourcePositionLatest, EventSourcePositionAtTimestamp ]
        (\val ->
            case val of
                EventSourcePositionTrimHorizon ->
                    "TRIM_HORIZON"

                EventSourcePositionLatest ->
                    "LATEST"

                EventSourcePositionAtTimestamp ->
                    "AT_TIMESTAMP"
        )


type EventSourceToken
    = EventSourceToken String


eventSourceToken : Refined String EventSourceToken StringError
eventSourceToken =
    let
        guardFn val =
            Refined.minLength 0 val
                |> Result.andThen (Refined.maxLength 256)
                |> Result.andThen (Refined.regexMatch "[a-zA-Z0-9._\\-]+")
                |> Result.map EventSourceToken

        unboxFn (EventSourceToken val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type FunctionArn
    = FunctionArn String


functionArn : Refined String FunctionArn StringError
functionArn =
    let
        guardFn val =
            Refined.regexMatch
                "arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?"
                val
                |> Result.map FunctionArn

        unboxFn (FunctionArn val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias FunctionCode =
    { zipFile : String, s3ObjectVersion : S3ObjectVersion, s3Key : S3Key, s3Bucket : S3Bucket }


type alias FunctionCodeLocation =
    { repositoryType : String, location : String }


type alias FunctionConfiguration =
    { vpcConfig : VpcConfigResponse
    , version : Version
    , tracingConfig : TracingConfigResponse
    , timeout : Timeout
    , runtime : Runtime
    , role : RoleArn
    , revisionId : String
    , memorySize : MemorySize
    , masterArn : FunctionArn
    , layers : LayersReferenceList
    , lastModified : String
    , kmskeyArn : KmskeyArn
    , handler : Handler
    , functionName : NamespacedFunctionName
    , functionArn : NameSpacedFunctionArn
    , environment : EnvironmentResponse
    , description : Description
    , deadLetterConfig : DeadLetterConfig
    , codeSize : Int
    , codeSha256 : String
    }


type alias FunctionList =
    List FunctionConfiguration


type FunctionName
    = FunctionName String


functionName : Refined String FunctionName StringError
functionName =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 140)
                |> Result.andThen
                    (Refined.regexMatch
                        "(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?"
                    )
                |> Result.map FunctionName

        unboxFn (FunctionName val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type FunctionVersion
    = FunctionVersionAll


functionVersion : Enum FunctionVersion
functionVersion =
    Enum.define
        [ FunctionVersionAll ]
        (\val ->
            case val of
                FunctionVersionAll ->
                    "ALL"
        )


type alias GetAccountSettingsRequest =
    {}


type alias GetAccountSettingsResponse =
    { accountUsage : AccountUsage, accountLimit : AccountLimit }


type alias GetAliasRequest =
    { name : Alias, functionName : FunctionName }


type alias GetEventSourceMappingRequest =
    { uuid : String }


type alias GetFunctionConfigurationRequest =
    { qualifier : Qualifier, functionName : NamespacedFunctionName }


type alias GetFunctionRequest =
    { qualifier : Qualifier, functionName : NamespacedFunctionName }


type alias GetFunctionResponse =
    { tags : Tags, configuration : FunctionConfiguration, concurrency : Concurrency, code : FunctionCodeLocation }


type alias GetLayerVersionByArnRequest =
    { arn : LayerVersionArn }


type alias GetLayerVersionPolicyRequest =
    { versionNumber : Int, layerName : LayerName }


type alias GetLayerVersionPolicyResponse =
    { revisionId : String, policy : String }


type alias GetLayerVersionRequest =
    { versionNumber : Int, layerName : LayerName }


type alias GetLayerVersionResponse =
    { version : Int
    , licenseInfo : LicenseInfo
    , layerVersionArn : LayerVersionArn
    , layerArn : LayerArn
    , description : Description
    , createdDate : String
    , content : LayerVersionContentOutput
    , compatibleRuntimes : CompatibleRuntimes
    }


type alias GetPolicyRequest =
    { qualifier : Qualifier, functionName : NamespacedFunctionName }


type alias GetPolicyResponse =
    { revisionId : String, policy : String }


type Handler
    = Handler String


handler : Refined String Handler StringError
handler =
    let
        guardFn val =
            Refined.maxLength 128 val |> Result.andThen (Refined.regexMatch "[^\\s]+") |> Result.map Handler

        unboxFn (Handler val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias HttpStatus =
    Int


type alias Integer =
    Int


type alias InvocationRequest =
    { qualifier : Qualifier
    , payload : String
    , logType : LogType
    , invocationType : InvocationType
    , functionName : NamespacedFunctionName
    , clientContext : String
    }


type alias InvocationResponse =
    { statusCode : Int, payload : String, logResult : String, functionError : String, executedVersion : Version }


type InvocationType
    = InvocationTypeEvent
    | InvocationTypeRequestResponse
    | InvocationTypeDryRun


invocationType : Enum InvocationType
invocationType =
    Enum.define
        [ InvocationTypeEvent, InvocationTypeRequestResponse, InvocationTypeDryRun ]
        (\val ->
            case val of
                InvocationTypeEvent ->
                    "Event"

                InvocationTypeRequestResponse ->
                    "RequestResponse"

                InvocationTypeDryRun ->
                    "DryRun"
        )


type alias InvokeAsyncRequest =
    { invokeArgs : String, functionName : NamespacedFunctionName }


type alias InvokeAsyncResponse =
    { status : Int }


type KmskeyArn
    = KmskeyArn String


kmskeyArn : Refined String KmskeyArn StringError
kmskeyArn =
    let
        guardFn val =
            Refined.regexMatch "(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()" val |> Result.map KmskeyArn

        unboxFn (KmskeyArn val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias Layer =
    { codeSize : Int, arn : LayerVersionArn }


type LayerArn
    = LayerArn String


layerArn : Refined String LayerArn StringError
layerArn =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 140)
                |> Result.andThen
                    (Refined.regexMatch "arn:[a-zA-Z0-9-]+:lambda:[a-zA-Z0-9-]+:\\d{12}:layer:[a-zA-Z0-9-_]+")
                |> Result.map LayerArn

        unboxFn (LayerArn val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias LayerList =
    List LayerVersionArn


type LayerName
    = LayerName String


layerName : Refined String LayerName StringError
layerName =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 140)
                |> Result.andThen
                    (Refined.regexMatch
                        "(arn:[a-zA-Z0-9-]+:lambda:[a-zA-Z0-9-]+:\\d{12}:layer:[a-zA-Z0-9-_]+)|[a-zA-Z0-9-_]+"
                    )
                |> Result.map LayerName

        unboxFn (LayerName val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type LayerPermissionAllowedAction
    = LayerPermissionAllowedAction String


layerPermissionAllowedAction : Refined String LayerPermissionAllowedAction StringError
layerPermissionAllowedAction =
    let
        guardFn val =
            Refined.regexMatch "lambda:GetLayerVersion" val |> Result.map LayerPermissionAllowedAction

        unboxFn (LayerPermissionAllowedAction val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type LayerPermissionAllowedPrincipal
    = LayerPermissionAllowedPrincipal String


layerPermissionAllowedPrincipal : Refined String LayerPermissionAllowedPrincipal StringError
layerPermissionAllowedPrincipal =
    let
        guardFn val =
            Refined.regexMatch "\\d{12}|\\*|arn:(aws[a-zA-Z-]*):iam::\\d{12}:root" val
                |> Result.map LayerPermissionAllowedPrincipal

        unboxFn (LayerPermissionAllowedPrincipal val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type LayerVersionArn
    = LayerVersionArn String


layerVersionArn : Refined String LayerVersionArn StringError
layerVersionArn =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 140)
                |> Result.andThen
                    (Refined.regexMatch "arn:[a-zA-Z0-9-]+:lambda:[a-zA-Z0-9-]+:\\d{12}:layer:[a-zA-Z0-9-_]+:[0-9]+")
                |> Result.map LayerVersionArn

        unboxFn (LayerVersionArn val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias LayerVersionContentInput =
    { zipFile : String, s3ObjectVersion : S3ObjectVersion, s3Key : S3Key, s3Bucket : S3Bucket }


type alias LayerVersionContentOutput =
    { location : String, codeSize : Int, codeSha256 : String }


type alias LayerVersionNumber =
    Int


type alias LayerVersionsList =
    List LayerVersionsListItem


type alias LayerVersionsListItem =
    { version : Int
    , licenseInfo : LicenseInfo
    , layerVersionArn : LayerVersionArn
    , description : Description
    , createdDate : String
    , compatibleRuntimes : CompatibleRuntimes
    }


type alias LayersList =
    List LayersListItem


type alias LayersListItem =
    { layerName : LayerName, layerArn : LayerArn, latestMatchingVersion : LayerVersionsListItem }


type alias LayersReferenceList =
    List Layer


type LicenseInfo
    = LicenseInfo String


licenseInfo : Refined String LicenseInfo StringError
licenseInfo =
    let
        guardFn val =
            Refined.maxLength 512 val |> Result.map LicenseInfo

        unboxFn (LicenseInfo val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias ListAliasesRequest =
    { maxItems : MaxListItems, marker : String, functionVersion : Version, functionName : FunctionName }


type alias ListAliasesResponse =
    { nextMarker : String, aliases : AliasList }


type alias ListEventSourceMappingsRequest =
    { maxItems : MaxListItems, marker : String, functionName : FunctionName, eventSourceArn : Arn }


type alias ListEventSourceMappingsResponse =
    { nextMarker : String, eventSourceMappings : EventSourceMappingsList }


type alias ListFunctionsRequest =
    { maxItems : MaxListItems, masterRegion : MasterRegion, marker : String, functionVersion : FunctionVersion }


type alias ListFunctionsResponse =
    { nextMarker : String, functions : FunctionList }


type alias ListLayerVersionsRequest =
    { maxItems : MaxLayerListItems, marker : String, layerName : LayerName, compatibleRuntime : Runtime }


type alias ListLayerVersionsResponse =
    { nextMarker : String, layerVersions : LayerVersionsList }


type alias ListLayersRequest =
    { maxItems : MaxLayerListItems, marker : String, compatibleRuntime : Runtime }


type alias ListLayersResponse =
    { nextMarker : String, layers : LayersList }


type alias ListTagsRequest =
    { resource : FunctionArn }


type alias ListTagsResponse =
    { tags : Tags }


type alias ListVersionsByFunctionRequest =
    { maxItems : MaxListItems, marker : String, functionName : NamespacedFunctionName }


type alias ListVersionsByFunctionResponse =
    { versions : FunctionList, nextMarker : String }


type LogType
    = LogTypeNone
    | LogTypeTail


logType : Enum LogType
logType =
    Enum.define
        [ LogTypeNone, LogTypeTail ]
        (\val ->
            case val of
                LogTypeNone ->
                    "None"

                LogTypeTail ->
                    "Tail"
        )


type alias Long =
    Int


type MasterRegion
    = MasterRegion String


masterRegion : Refined String MasterRegion StringError
masterRegion =
    let
        guardFn val =
            Refined.regexMatch "ALL|[a-z]{2}(-gov)?-[a-z]+-\\d{1}" val |> Result.map MasterRegion

        unboxFn (MasterRegion val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type MaxLayerListItems
    = MaxLayerListItems Int


maxLayerListItems : Refined Int MaxLayerListItems IntError
maxLayerListItems =
    let
        guardFn val =
            Refined.gt 1 val |> Result.andThen (Refined.lt 50) |> Result.map MaxLayerListItems

        unboxFn (MaxLayerListItems val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type MaxListItems
    = MaxListItems Int


maxListItems : Refined Int MaxListItems IntError
maxListItems =
    let
        guardFn val =
            Refined.gt 1 val |> Result.andThen (Refined.lt 10000) |> Result.map MaxListItems

        unboxFn (MaxListItems val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type MemorySize
    = MemorySize Int


memorySize : Refined Int MemorySize IntError
memorySize =
    let
        guardFn val =
            Refined.gt 128 val |> Result.andThen (Refined.lt 3008) |> Result.map MemorySize

        unboxFn (MemorySize val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type NameSpacedFunctionArn
    = NameSpacedFunctionArn String


nameSpacedFunctionArn : Refined String NameSpacedFunctionArn StringError
nameSpacedFunctionArn =
    let
        guardFn val =
            Refined.regexMatch
                "arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_\\.]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?"
                val
                |> Result.map NameSpacedFunctionArn

        unboxFn (NameSpacedFunctionArn val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type NamespacedFunctionName
    = NamespacedFunctionName String


namespacedFunctionName : Refined String NamespacedFunctionName StringError
namespacedFunctionName =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 170)
                |> Result.andThen
                    (Refined.regexMatch
                        "(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_\\.]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?"
                    )
                |> Result.map NamespacedFunctionName

        unboxFn (NamespacedFunctionName val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type NamespacedStatementId
    = NamespacedStatementId String


namespacedStatementId : Refined String NamespacedStatementId StringError
namespacedStatementId =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 100)
                |> Result.andThen (Refined.regexMatch "([a-zA-Z0-9-_.]+)")
                |> Result.map NamespacedStatementId

        unboxFn (NamespacedStatementId val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type OrganizationId
    = OrganizationId String


organizationId : Refined String OrganizationId StringError
organizationId =
    let
        guardFn val =
            Refined.regexMatch "o-[a-z0-9]{10,32}" val |> Result.map OrganizationId

        unboxFn (OrganizationId val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type Principal
    = Principal String


principal : Refined String Principal StringError
principal =
    let
        guardFn val =
            Refined.regexMatch ".*" val |> Result.map Principal

        unboxFn (Principal val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias PublishLayerVersionRequest =
    { licenseInfo : LicenseInfo
    , layerName : LayerName
    , description : Description
    , content : LayerVersionContentInput
    , compatibleRuntimes : CompatibleRuntimes
    }


type alias PublishLayerVersionResponse =
    { version : Int
    , licenseInfo : LicenseInfo
    , layerVersionArn : LayerVersionArn
    , layerArn : LayerArn
    , description : Description
    , createdDate : String
    , content : LayerVersionContentOutput
    , compatibleRuntimes : CompatibleRuntimes
    }


type alias PublishVersionRequest =
    { revisionId : String, functionName : FunctionName, description : Description, codeSha256 : String }


type alias PutFunctionConcurrencyRequest =
    { reservedConcurrentExecutions : ReservedConcurrentExecutions, functionName : FunctionName }


type Qualifier
    = Qualifier String


qualifier : Refined String Qualifier StringError
qualifier =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 128)
                |> Result.andThen (Refined.regexMatch "(|[a-zA-Z0-9$_-]+)")
                |> Result.map Qualifier

        unboxFn (Qualifier val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias RemoveLayerVersionPermissionRequest =
    { versionNumber : Int, statementId : StatementId, revisionId : String, layerName : LayerName }


type alias RemovePermissionRequest =
    { statementId : NamespacedStatementId, revisionId : String, qualifier : Qualifier, functionName : FunctionName }


type ReservedConcurrentExecutions
    = ReservedConcurrentExecutions Int


reservedConcurrentExecutions : Refined Int ReservedConcurrentExecutions IntError
reservedConcurrentExecutions =
    let
        guardFn val =
            Refined.gt 0 val |> Result.map ReservedConcurrentExecutions

        unboxFn (ReservedConcurrentExecutions val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type ResourceArn
    = ResourceArn String


resourceArn : Refined String ResourceArn StringError
resourceArn =
    let
        guardFn val =
            Refined.regexMatch "(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()" val |> Result.map ResourceArn

        unboxFn (ResourceArn val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type RoleArn
    = RoleArn String


roleArn : Refined String RoleArn StringError
roleArn =
    let
        guardFn val =
            Refined.regexMatch "arn:(aws[a-zA-Z-]*)?:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+" val
                |> Result.map RoleArn

        unboxFn (RoleArn val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type Runtime
    = RuntimeNodejs
    | RuntimeNodejs43
    | RuntimeNodejs610
    | RuntimeNodejs810
    | RuntimeNodejs10X
    | RuntimeJava8
    | RuntimePython27
    | RuntimePython36
    | RuntimePython37
    | RuntimeDotnetcore10
    | RuntimeDotnetcore20
    | RuntimeDotnetcore21
    | RuntimeNodejs43Edge
    | RuntimeGo1X
    | RuntimeRuby25
    | RuntimeProvided


runtime : Enum Runtime
runtime =
    Enum.define
        [ RuntimeNodejs
        , RuntimeNodejs43
        , RuntimeNodejs610
        , RuntimeNodejs810
        , RuntimeNodejs10X
        , RuntimeJava8
        , RuntimePython27
        , RuntimePython36
        , RuntimePython37
        , RuntimeDotnetcore10
        , RuntimeDotnetcore20
        , RuntimeDotnetcore21
        , RuntimeNodejs43Edge
        , RuntimeGo1X
        , RuntimeRuby25
        , RuntimeProvided
        ]
        (\val ->
            case val of
                RuntimeNodejs ->
                    "nodejs"

                RuntimeNodejs43 ->
                    "nodejs4.3"

                RuntimeNodejs610 ->
                    "nodejs6.10"

                RuntimeNodejs810 ->
                    "nodejs8.10"

                RuntimeNodejs10X ->
                    "nodejs10.x"

                RuntimeJava8 ->
                    "java8"

                RuntimePython27 ->
                    "python2.7"

                RuntimePython36 ->
                    "python3.6"

                RuntimePython37 ->
                    "python3.7"

                RuntimeDotnetcore10 ->
                    "dotnetcore1.0"

                RuntimeDotnetcore20 ->
                    "dotnetcore2.0"

                RuntimeDotnetcore21 ->
                    "dotnetcore2.1"

                RuntimeNodejs43Edge ->
                    "nodejs4.3-edge"

                RuntimeGo1X ->
                    "go1.x"

                RuntimeRuby25 ->
                    "ruby2.5"

                RuntimeProvided ->
                    "provided"
        )


type S3Bucket
    = S3Bucket String


s3Bucket : Refined String S3Bucket StringError
s3Bucket =
    let
        guardFn val =
            Refined.minLength 3 val
                |> Result.andThen (Refined.maxLength 63)
                |> Result.andThen (Refined.regexMatch "^[0-9A-Za-z\\.\\-_]*(?<!\\.)$")
                |> Result.map S3Bucket

        unboxFn (S3Bucket val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type S3Key
    = S3Key String


s3Key : Refined String S3Key StringError
s3Key =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 1024) |> Result.map S3Key

        unboxFn (S3Key val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type S3ObjectVersion
    = S3ObjectVersion String


s3ObjectVersion : Refined String S3ObjectVersion StringError
s3ObjectVersion =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 1024) |> Result.map S3ObjectVersion

        unboxFn (S3ObjectVersion val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias SecurityGroupId =
    String


type alias SecurityGroupIds =
    List String


type alias SensitiveString =
    String


type SourceOwner
    = SourceOwner String


sourceOwner : Refined String SourceOwner StringError
sourceOwner =
    let
        guardFn val =
            Refined.regexMatch "\\d{12}" val |> Result.map SourceOwner

        unboxFn (SourceOwner val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type StatementId
    = StatementId String


statementId : Refined String StatementId StringError
statementId =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 100)
                |> Result.andThen (Refined.regexMatch "([a-zA-Z0-9-_]+)")
                |> Result.map StatementId

        unboxFn (StatementId val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias String_ =
    String


type alias SubnetId =
    String


type alias SubnetIds =
    List String


type alias TagKey =
    String


type alias TagKeyList =
    List String


type alias TagResourceRequest =
    { tags : Tags, resource : FunctionArn }


type alias TagValue =
    String


type alias Tags =
    Dict String String


type Timeout
    = Timeout Int


timeout : Refined Int Timeout IntError
timeout =
    let
        guardFn val =
            Refined.gt 1 val |> Result.map Timeout

        unboxFn (Timeout val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type alias Timestamp =
    String


type alias TracingConfig =
    { mode : TracingMode }


type alias TracingConfigResponse =
    { mode : TracingMode }


type TracingMode
    = TracingModeActive
    | TracingModePassThrough


tracingMode : Enum TracingMode
tracingMode =
    Enum.define
        [ TracingModeActive, TracingModePassThrough ]
        (\val ->
            case val of
                TracingModeActive ->
                    "Active"

                TracingModePassThrough ->
                    "PassThrough"
        )


type UnreservedConcurrentExecutions
    = UnreservedConcurrentExecutions Int


unreservedConcurrentExecutions : Refined Int UnreservedConcurrentExecutions IntError
unreservedConcurrentExecutions =
    let
        guardFn val =
            Refined.gt 0 val |> Result.map UnreservedConcurrentExecutions

        unboxFn (UnreservedConcurrentExecutions val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type alias UntagResourceRequest =
    { tagKeys : TagKeyList, resource : FunctionArn }


type alias UpdateAliasRequest =
    { routingConfig : AliasRoutingConfiguration
    , revisionId : String
    , name : Alias
    , functionVersion : Version
    , functionName : FunctionName
    , description : Description
    }


type alias UpdateEventSourceMappingRequest =
    { uuid : String, functionName : FunctionName, enabled : Bool, batchSize : BatchSize }


type alias UpdateFunctionCodeRequest =
    { zipFile : String
    , s3ObjectVersion : S3ObjectVersion
    , s3Key : S3Key
    , s3Bucket : S3Bucket
    , revisionId : String
    , publish : Bool
    , functionName : FunctionName
    , dryRun : Bool
    }


type alias UpdateFunctionConfigurationRequest =
    { vpcConfig : VpcConfig
    , tracingConfig : TracingConfig
    , timeout : Timeout
    , runtime : Runtime
    , role : RoleArn
    , revisionId : String
    , memorySize : MemorySize
    , layers : LayerList
    , kmskeyArn : KmskeyArn
    , handler : Handler
    , functionName : FunctionName
    , environment : Environment
    , description : Description
    , deadLetterConfig : DeadLetterConfig
    }


type Version
    = Version String


version : Refined String Version StringError
version =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 1024)
                |> Result.andThen (Refined.regexMatch "(\\$LATEST|[0-9]+)")
                |> Result.map Version

        unboxFn (Version val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias VpcConfig =
    { subnetIds : SubnetIds, securityGroupIds : SecurityGroupIds }


type alias VpcConfigResponse =
    { vpcId : String, subnetIds : SubnetIds, securityGroupIds : SecurityGroupIds }


type alias VpcId =
    String


type alias Weight =
    Float


{-| Codec for Weight. -}
weightCodec : Codec Weight
weightCodec =
    Codec.float


{-| Codec for VpcId. -}
vpcIdCodec : Codec VpcId
vpcIdCodec =
    Codec.string


{-| Codec for VpcConfigResponse. -}
vpcConfigResponseCodec : Codec VpcConfigResponse
vpcConfigResponseCodec =
    Codec.object VpcConfigResponse
        |> Codec.field "VpcId" .vpcId Codec.string
        |> Codec.field "SubnetIds" .subnetIds subnetIdsCodec
        |> Codec.field "SecurityGroupIds" .securityGroupIds securityGroupIdsCodec
        |> Codec.buildObject


{-| Codec for VpcConfig. -}
vpcConfigCodec : Codec VpcConfig
vpcConfigCodec =
    Codec.object VpcConfig
        |> Codec.field "SubnetIds" .subnetIds subnetIdsCodec
        |> Codec.field "SecurityGroupIds" .securityGroupIds securityGroupIdsCodec
        |> Codec.buildObject


{-| Codec for Version. -}
versionCodec : Codec Version
versionCodec =
    Codec.build (Refined.encoder version) (Refined.decoder version)


{-| Codec for UpdateFunctionConfigurationRequest. -}
updateFunctionConfigurationRequestCodec : Codec UpdateFunctionConfigurationRequest
updateFunctionConfigurationRequestCodec =
    Codec.object UpdateFunctionConfigurationRequest
        |> Codec.field "VpcConfig" .vpcConfig vpcConfigCodec
        |> Codec.field "TracingConfig" .tracingConfig tracingConfigCodec
        |> Codec.field "Timeout" .timeout timeoutCodec
        |> Codec.field "Runtime" .runtime runtimeCodec
        |> Codec.field "Role" .role roleArnCodec
        |> Codec.field "RevisionId" .revisionId Codec.string
        |> Codec.field "MemorySize" .memorySize memorySizeCodec
        |> Codec.field "Layers" .layers layerListCodec
        |> Codec.field "KMSKeyArn" .kmskeyArn kmskeyArnCodec
        |> Codec.field "Handler" .handler handlerCodec
        |> Codec.field "FunctionName" .functionName functionNameCodec
        |> Codec.field "Environment" .environment environmentCodec
        |> Codec.field "Description" .description descriptionCodec
        |> Codec.field "DeadLetterConfig" .deadLetterConfig deadLetterConfigCodec
        |> Codec.buildObject


{-| Codec for UpdateFunctionCodeRequest. -}
updateFunctionCodeRequestCodec : Codec UpdateFunctionCodeRequest
updateFunctionCodeRequestCodec =
    Codec.object UpdateFunctionCodeRequest
        |> Codec.field "ZipFile" .zipFile Codec.string
        |> Codec.field "S3ObjectVersion" .s3ObjectVersion s3ObjectVersionCodec
        |> Codec.field "S3Key" .s3Key s3KeyCodec
        |> Codec.field "S3Bucket" .s3Bucket s3BucketCodec
        |> Codec.field "RevisionId" .revisionId Codec.string
        |> Codec.field "Publish" .publish Codec.bool
        |> Codec.field "FunctionName" .functionName functionNameCodec
        |> Codec.field "DryRun" .dryRun Codec.bool
        |> Codec.buildObject


{-| Codec for UpdateEventSourceMappingRequest. -}
updateEventSourceMappingRequestCodec : Codec UpdateEventSourceMappingRequest
updateEventSourceMappingRequestCodec =
    Codec.object UpdateEventSourceMappingRequest
        |> Codec.field "UUID" .uuid Codec.string
        |> Codec.field "FunctionName" .functionName functionNameCodec
        |> Codec.field "Enabled" .enabled Codec.bool
        |> Codec.field "BatchSize" .batchSize batchSizeCodec
        |> Codec.buildObject


{-| Codec for UpdateAliasRequest. -}
updateAliasRequestCodec : Codec UpdateAliasRequest
updateAliasRequestCodec =
    Codec.object UpdateAliasRequest
        |> Codec.field "RoutingConfig" .routingConfig aliasRoutingConfigurationCodec
        |> Codec.field "RevisionId" .revisionId Codec.string
        |> Codec.field "Name" .name aliasCodec
        |> Codec.field "FunctionVersion" .functionVersion versionCodec
        |> Codec.field "FunctionName" .functionName functionNameCodec
        |> Codec.field "Description" .description descriptionCodec
        |> Codec.buildObject


{-| Codec for UntagResourceRequest. -}
untagResourceRequestCodec : Codec UntagResourceRequest
untagResourceRequestCodec =
    Codec.object UntagResourceRequest
        |> Codec.field "TagKeys" .tagKeys tagKeyListCodec
        |> Codec.field "Resource" .resource functionArnCodec
        |> Codec.buildObject


{-| Codec for UnreservedConcurrentExecutions. -}
unreservedConcurrentExecutionsCodec : Codec UnreservedConcurrentExecutions
unreservedConcurrentExecutionsCodec =
    Codec.build (Refined.encoder unreservedConcurrentExecutions) (Refined.decoder unreservedConcurrentExecutions)


{-| Codec for TracingMode. -}
tracingModeCodec : Codec TracingMode
tracingModeCodec =
    Codec.build (Enum.encoder tracingMode) (Enum.decoder tracingMode)


{-| Codec for TracingConfigResponse. -}
tracingConfigResponseCodec : Codec TracingConfigResponse
tracingConfigResponseCodec =
    Codec.object TracingConfigResponse |> Codec.field "Mode" .mode tracingModeCodec |> Codec.buildObject


{-| Codec for TracingConfig. -}
tracingConfigCodec : Codec TracingConfig
tracingConfigCodec =
    Codec.object TracingConfig |> Codec.field "Mode" .mode tracingModeCodec |> Codec.buildObject


{-| Codec for Timestamp. -}
timestampCodec : Codec Timestamp
timestampCodec =
    Codec.string


{-| Codec for Timeout. -}
timeoutCodec : Codec Timeout
timeoutCodec =
    Codec.build (Refined.encoder timeout) (Refined.decoder timeout)


{-| Codec for Tags. -}
tagsCodec : Codec Tags
tagsCodec =
    Codec.dict Codec.string


{-| Codec for TagValue. -}
tagValueCodec : Codec TagValue
tagValueCodec =
    Codec.string


{-| Codec for TagResourceRequest. -}
tagResourceRequestCodec : Codec TagResourceRequest
tagResourceRequestCodec =
    Codec.object TagResourceRequest
        |> Codec.field "Tags" .tags tagsCodec
        |> Codec.field "Resource" .resource functionArnCodec
        |> Codec.buildObject


{-| Codec for TagKeyList. -}
tagKeyListCodec : Codec TagKeyList
tagKeyListCodec =
    Codec.list Codec.string


{-| Codec for TagKey. -}
tagKeyCodec : Codec TagKey
tagKeyCodec =
    Codec.string


{-| Codec for SubnetIds. -}
subnetIdsCodec : Codec SubnetIds
subnetIdsCodec =
    Codec.list Codec.string


{-| Codec for SubnetId. -}
subnetIdCodec : Codec SubnetId
subnetIdCodec =
    Codec.string


{-| Codec for String_. -}
stringCodec : Codec String_
stringCodec =
    Codec.string


{-| Codec for StatementId. -}
statementIdCodec : Codec StatementId
statementIdCodec =
    Codec.build (Refined.encoder statementId) (Refined.decoder statementId)


{-| Codec for SourceOwner. -}
sourceOwnerCodec : Codec SourceOwner
sourceOwnerCodec =
    Codec.build (Refined.encoder sourceOwner) (Refined.decoder sourceOwner)


{-| Codec for SensitiveString. -}
sensitiveStringCodec : Codec SensitiveString
sensitiveStringCodec =
    Codec.string


{-| Codec for SecurityGroupIds. -}
securityGroupIdsCodec : Codec SecurityGroupIds
securityGroupIdsCodec =
    Codec.list Codec.string


{-| Codec for SecurityGroupId. -}
securityGroupIdCodec : Codec SecurityGroupId
securityGroupIdCodec =
    Codec.string


{-| Codec for S3ObjectVersion. -}
s3ObjectVersionCodec : Codec S3ObjectVersion
s3ObjectVersionCodec =
    Codec.build (Refined.encoder s3ObjectVersion) (Refined.decoder s3ObjectVersion)


{-| Codec for S3Key. -}
s3KeyCodec : Codec S3Key
s3KeyCodec =
    Codec.build (Refined.encoder s3Key) (Refined.decoder s3Key)


{-| Codec for S3Bucket. -}
s3BucketCodec : Codec S3Bucket
s3BucketCodec =
    Codec.build (Refined.encoder s3Bucket) (Refined.decoder s3Bucket)


{-| Codec for Runtime. -}
runtimeCodec : Codec Runtime
runtimeCodec =
    Codec.build (Enum.encoder runtime) (Enum.decoder runtime)


{-| Codec for RoleArn. -}
roleArnCodec : Codec RoleArn
roleArnCodec =
    Codec.build (Refined.encoder roleArn) (Refined.decoder roleArn)


{-| Codec for ResourceArn. -}
resourceArnCodec : Codec ResourceArn
resourceArnCodec =
    Codec.build (Refined.encoder resourceArn) (Refined.decoder resourceArn)


{-| Codec for ReservedConcurrentExecutions. -}
reservedConcurrentExecutionsCodec : Codec ReservedConcurrentExecutions
reservedConcurrentExecutionsCodec =
    Codec.build (Refined.encoder reservedConcurrentExecutions) (Refined.decoder reservedConcurrentExecutions)


{-| Codec for RemovePermissionRequest. -}
removePermissionRequestCodec : Codec RemovePermissionRequest
removePermissionRequestCodec =
    Codec.object RemovePermissionRequest
        |> Codec.field "StatementId" .statementId namespacedStatementIdCodec
        |> Codec.field "RevisionId" .revisionId Codec.string
        |> Codec.field "Qualifier" .qualifier qualifierCodec
        |> Codec.field "FunctionName" .functionName functionNameCodec
        |> Codec.buildObject


{-| Codec for RemoveLayerVersionPermissionRequest. -}
removeLayerVersionPermissionRequestCodec : Codec RemoveLayerVersionPermissionRequest
removeLayerVersionPermissionRequestCodec =
    Codec.object RemoveLayerVersionPermissionRequest
        |> Codec.field "VersionNumber" .versionNumber Codec.int
        |> Codec.field "StatementId" .statementId statementIdCodec
        |> Codec.field "RevisionId" .revisionId Codec.string
        |> Codec.field "LayerName" .layerName layerNameCodec
        |> Codec.buildObject


{-| Codec for Qualifier. -}
qualifierCodec : Codec Qualifier
qualifierCodec =
    Codec.build (Refined.encoder qualifier) (Refined.decoder qualifier)


{-| Codec for PutFunctionConcurrencyRequest. -}
putFunctionConcurrencyRequestCodec : Codec PutFunctionConcurrencyRequest
putFunctionConcurrencyRequestCodec =
    Codec.object PutFunctionConcurrencyRequest
        |> Codec.field "ReservedConcurrentExecutions" .reservedConcurrentExecutions reservedConcurrentExecutionsCodec
        |> Codec.field "FunctionName" .functionName functionNameCodec
        |> Codec.buildObject


{-| Codec for PublishVersionRequest. -}
publishVersionRequestCodec : Codec PublishVersionRequest
publishVersionRequestCodec =
    Codec.object PublishVersionRequest
        |> Codec.field "RevisionId" .revisionId Codec.string
        |> Codec.field "FunctionName" .functionName functionNameCodec
        |> Codec.field "Description" .description descriptionCodec
        |> Codec.field "CodeSha256" .codeSha256 Codec.string
        |> Codec.buildObject


{-| Codec for PublishLayerVersionResponse. -}
publishLayerVersionResponseCodec : Codec PublishLayerVersionResponse
publishLayerVersionResponseCodec =
    Codec.object PublishLayerVersionResponse
        |> Codec.field "Version" .version Codec.int
        |> Codec.field "LicenseInfo" .licenseInfo licenseInfoCodec
        |> Codec.field "LayerVersionArn" .layerVersionArn layerVersionArnCodec
        |> Codec.field "LayerArn" .layerArn layerArnCodec
        |> Codec.field "Description" .description descriptionCodec
        |> Codec.field "CreatedDate" .createdDate Codec.string
        |> Codec.field "Content" .content layerVersionContentOutputCodec
        |> Codec.field "CompatibleRuntimes" .compatibleRuntimes compatibleRuntimesCodec
        |> Codec.buildObject


{-| Codec for PublishLayerVersionRequest. -}
publishLayerVersionRequestCodec : Codec PublishLayerVersionRequest
publishLayerVersionRequestCodec =
    Codec.object PublishLayerVersionRequest
        |> Codec.field "LicenseInfo" .licenseInfo licenseInfoCodec
        |> Codec.field "LayerName" .layerName layerNameCodec
        |> Codec.field "Description" .description descriptionCodec
        |> Codec.field "Content" .content layerVersionContentInputCodec
        |> Codec.field "CompatibleRuntimes" .compatibleRuntimes compatibleRuntimesCodec
        |> Codec.buildObject


{-| Codec for Principal. -}
principalCodec : Codec Principal
principalCodec =
    Codec.build (Refined.encoder principal) (Refined.decoder principal)


{-| Codec for OrganizationId. -}
organizationIdCodec : Codec OrganizationId
organizationIdCodec =
    Codec.build (Refined.encoder organizationId) (Refined.decoder organizationId)


{-| Codec for NamespacedStatementId. -}
namespacedStatementIdCodec : Codec NamespacedStatementId
namespacedStatementIdCodec =
    Codec.build (Refined.encoder namespacedStatementId) (Refined.decoder namespacedStatementId)


{-| Codec for NamespacedFunctionName. -}
namespacedFunctionNameCodec : Codec NamespacedFunctionName
namespacedFunctionNameCodec =
    Codec.build (Refined.encoder namespacedFunctionName) (Refined.decoder namespacedFunctionName)


{-| Codec for NameSpacedFunctionArn. -}
nameSpacedFunctionArnCodec : Codec NameSpacedFunctionArn
nameSpacedFunctionArnCodec =
    Codec.build (Refined.encoder nameSpacedFunctionArn) (Refined.decoder nameSpacedFunctionArn)


{-| Codec for MemorySize. -}
memorySizeCodec : Codec MemorySize
memorySizeCodec =
    Codec.build (Refined.encoder memorySize) (Refined.decoder memorySize)


{-| Codec for MaxListItems. -}
maxListItemsCodec : Codec MaxListItems
maxListItemsCodec =
    Codec.build (Refined.encoder maxListItems) (Refined.decoder maxListItems)


{-| Codec for MaxLayerListItems. -}
maxLayerListItemsCodec : Codec MaxLayerListItems
maxLayerListItemsCodec =
    Codec.build (Refined.encoder maxLayerListItems) (Refined.decoder maxLayerListItems)


{-| Codec for MasterRegion. -}
masterRegionCodec : Codec MasterRegion
masterRegionCodec =
    Codec.build (Refined.encoder masterRegion) (Refined.decoder masterRegion)


{-| Codec for Long. -}
longCodec : Codec Long
longCodec =
    Codec.int


{-| Codec for LogType. -}
logTypeCodec : Codec LogType
logTypeCodec =
    Codec.build (Enum.encoder logType) (Enum.decoder logType)


{-| Codec for ListVersionsByFunctionResponse. -}
listVersionsByFunctionResponseCodec : Codec ListVersionsByFunctionResponse
listVersionsByFunctionResponseCodec =
    Codec.object ListVersionsByFunctionResponse
        |> Codec.field "Versions" .versions functionListCodec
        |> Codec.field "NextMarker" .nextMarker Codec.string
        |> Codec.buildObject


{-| Codec for ListVersionsByFunctionRequest. -}
listVersionsByFunctionRequestCodec : Codec ListVersionsByFunctionRequest
listVersionsByFunctionRequestCodec =
    Codec.object ListVersionsByFunctionRequest
        |> Codec.field "MaxItems" .maxItems maxListItemsCodec
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "FunctionName" .functionName namespacedFunctionNameCodec
        |> Codec.buildObject


{-| Codec for ListTagsResponse. -}
listTagsResponseCodec : Codec ListTagsResponse
listTagsResponseCodec =
    Codec.object ListTagsResponse |> Codec.field "Tags" .tags tagsCodec |> Codec.buildObject


{-| Codec for ListTagsRequest. -}
listTagsRequestCodec : Codec ListTagsRequest
listTagsRequestCodec =
    Codec.object ListTagsRequest |> Codec.field "Resource" .resource functionArnCodec |> Codec.buildObject


{-| Codec for ListLayersResponse. -}
listLayersResponseCodec : Codec ListLayersResponse
listLayersResponseCodec =
    Codec.object ListLayersResponse
        |> Codec.field "NextMarker" .nextMarker Codec.string
        |> Codec.field "Layers" .layers layersListCodec
        |> Codec.buildObject


{-| Codec for ListLayersRequest. -}
listLayersRequestCodec : Codec ListLayersRequest
listLayersRequestCodec =
    Codec.object ListLayersRequest
        |> Codec.field "MaxItems" .maxItems maxLayerListItemsCodec
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "CompatibleRuntime" .compatibleRuntime runtimeCodec
        |> Codec.buildObject


{-| Codec for ListLayerVersionsResponse. -}
listLayerVersionsResponseCodec : Codec ListLayerVersionsResponse
listLayerVersionsResponseCodec =
    Codec.object ListLayerVersionsResponse
        |> Codec.field "NextMarker" .nextMarker Codec.string
        |> Codec.field "LayerVersions" .layerVersions layerVersionsListCodec
        |> Codec.buildObject


{-| Codec for ListLayerVersionsRequest. -}
listLayerVersionsRequestCodec : Codec ListLayerVersionsRequest
listLayerVersionsRequestCodec =
    Codec.object ListLayerVersionsRequest
        |> Codec.field "MaxItems" .maxItems maxLayerListItemsCodec
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "LayerName" .layerName layerNameCodec
        |> Codec.field "CompatibleRuntime" .compatibleRuntime runtimeCodec
        |> Codec.buildObject


{-| Codec for ListFunctionsResponse. -}
listFunctionsResponseCodec : Codec ListFunctionsResponse
listFunctionsResponseCodec =
    Codec.object ListFunctionsResponse
        |> Codec.field "NextMarker" .nextMarker Codec.string
        |> Codec.field "Functions" .functions functionListCodec
        |> Codec.buildObject


{-| Codec for ListFunctionsRequest. -}
listFunctionsRequestCodec : Codec ListFunctionsRequest
listFunctionsRequestCodec =
    Codec.object ListFunctionsRequest
        |> Codec.field "MaxItems" .maxItems maxListItemsCodec
        |> Codec.field "MasterRegion" .masterRegion masterRegionCodec
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "FunctionVersion" .functionVersion functionVersionCodec
        |> Codec.buildObject


{-| Codec for ListEventSourceMappingsResponse. -}
listEventSourceMappingsResponseCodec : Codec ListEventSourceMappingsResponse
listEventSourceMappingsResponseCodec =
    Codec.object ListEventSourceMappingsResponse
        |> Codec.field "NextMarker" .nextMarker Codec.string
        |> Codec.field "EventSourceMappings" .eventSourceMappings eventSourceMappingsListCodec
        |> Codec.buildObject


{-| Codec for ListEventSourceMappingsRequest. -}
listEventSourceMappingsRequestCodec : Codec ListEventSourceMappingsRequest
listEventSourceMappingsRequestCodec =
    Codec.object ListEventSourceMappingsRequest
        |> Codec.field "MaxItems" .maxItems maxListItemsCodec
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "FunctionName" .functionName functionNameCodec
        |> Codec.field "EventSourceArn" .eventSourceArn arnCodec
        |> Codec.buildObject


{-| Codec for ListAliasesResponse. -}
listAliasesResponseCodec : Codec ListAliasesResponse
listAliasesResponseCodec =
    Codec.object ListAliasesResponse
        |> Codec.field "NextMarker" .nextMarker Codec.string
        |> Codec.field "Aliases" .aliases aliasListCodec
        |> Codec.buildObject


{-| Codec for ListAliasesRequest. -}
listAliasesRequestCodec : Codec ListAliasesRequest
listAliasesRequestCodec =
    Codec.object ListAliasesRequest
        |> Codec.field "MaxItems" .maxItems maxListItemsCodec
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "FunctionVersion" .functionVersion versionCodec
        |> Codec.field "FunctionName" .functionName functionNameCodec
        |> Codec.buildObject


{-| Codec for LicenseInfo. -}
licenseInfoCodec : Codec LicenseInfo
licenseInfoCodec =
    Codec.build (Refined.encoder licenseInfo) (Refined.decoder licenseInfo)


{-| Codec for LayersReferenceList. -}
layersReferenceListCodec : Codec LayersReferenceList
layersReferenceListCodec =
    Codec.list layerCodec


{-| Codec for LayersListItem. -}
layersListItemCodec : Codec LayersListItem
layersListItemCodec =
    Codec.object LayersListItem
        |> Codec.field "LayerName" .layerName layerNameCodec
        |> Codec.field "LayerArn" .layerArn layerArnCodec
        |> Codec.field "LatestMatchingVersion" .latestMatchingVersion layerVersionsListItemCodec
        |> Codec.buildObject


{-| Codec for LayersList. -}
layersListCodec : Codec LayersList
layersListCodec =
    Codec.list layersListItemCodec


{-| Codec for LayerVersionsListItem. -}
layerVersionsListItemCodec : Codec LayerVersionsListItem
layerVersionsListItemCodec =
    Codec.object LayerVersionsListItem
        |> Codec.field "Version" .version Codec.int
        |> Codec.field "LicenseInfo" .licenseInfo licenseInfoCodec
        |> Codec.field "LayerVersionArn" .layerVersionArn layerVersionArnCodec
        |> Codec.field "Description" .description descriptionCodec
        |> Codec.field "CreatedDate" .createdDate Codec.string
        |> Codec.field "CompatibleRuntimes" .compatibleRuntimes compatibleRuntimesCodec
        |> Codec.buildObject


{-| Codec for LayerVersionsList. -}
layerVersionsListCodec : Codec LayerVersionsList
layerVersionsListCodec =
    Codec.list layerVersionsListItemCodec


{-| Codec for LayerVersionNumber. -}
layerVersionNumberCodec : Codec LayerVersionNumber
layerVersionNumberCodec =
    Codec.int


{-| Codec for LayerVersionContentOutput. -}
layerVersionContentOutputCodec : Codec LayerVersionContentOutput
layerVersionContentOutputCodec =
    Codec.object LayerVersionContentOutput
        |> Codec.field "Location" .location Codec.string
        |> Codec.field "CodeSize" .codeSize Codec.int
        |> Codec.field "CodeSha256" .codeSha256 Codec.string
        |> Codec.buildObject


{-| Codec for LayerVersionContentInput. -}
layerVersionContentInputCodec : Codec LayerVersionContentInput
layerVersionContentInputCodec =
    Codec.object LayerVersionContentInput
        |> Codec.field "ZipFile" .zipFile Codec.string
        |> Codec.field "S3ObjectVersion" .s3ObjectVersion s3ObjectVersionCodec
        |> Codec.field "S3Key" .s3Key s3KeyCodec
        |> Codec.field "S3Bucket" .s3Bucket s3BucketCodec
        |> Codec.buildObject


{-| Codec for LayerVersionArn. -}
layerVersionArnCodec : Codec LayerVersionArn
layerVersionArnCodec =
    Codec.build (Refined.encoder layerVersionArn) (Refined.decoder layerVersionArn)


{-| Codec for LayerPermissionAllowedPrincipal. -}
layerPermissionAllowedPrincipalCodec : Codec LayerPermissionAllowedPrincipal
layerPermissionAllowedPrincipalCodec =
    Codec.build (Refined.encoder layerPermissionAllowedPrincipal) (Refined.decoder layerPermissionAllowedPrincipal)


{-| Codec for LayerPermissionAllowedAction. -}
layerPermissionAllowedActionCodec : Codec LayerPermissionAllowedAction
layerPermissionAllowedActionCodec =
    Codec.build (Refined.encoder layerPermissionAllowedAction) (Refined.decoder layerPermissionAllowedAction)


{-| Codec for LayerName. -}
layerNameCodec : Codec LayerName
layerNameCodec =
    Codec.build (Refined.encoder layerName) (Refined.decoder layerName)


{-| Codec for LayerList. -}
layerListCodec : Codec LayerList
layerListCodec =
    Codec.list layerVersionArnCodec


{-| Codec for LayerArn. -}
layerArnCodec : Codec LayerArn
layerArnCodec =
    Codec.build (Refined.encoder layerArn) (Refined.decoder layerArn)


{-| Codec for Layer. -}
layerCodec : Codec Layer
layerCodec =
    Codec.object Layer
        |> Codec.field "CodeSize" .codeSize Codec.int
        |> Codec.field "Arn" .arn layerVersionArnCodec
        |> Codec.buildObject


{-| Codec for KmskeyArn. -}
kmskeyArnCodec : Codec KmskeyArn
kmskeyArnCodec =
    Codec.build (Refined.encoder kmskeyArn) (Refined.decoder kmskeyArn)


{-| Codec for InvokeAsyncResponse. -}
invokeAsyncResponseCodec : Codec InvokeAsyncResponse
invokeAsyncResponseCodec =
    Codec.object InvokeAsyncResponse |> Codec.field "Status" .status Codec.int |> Codec.buildObject


{-| Codec for InvokeAsyncRequest. -}
invokeAsyncRequestCodec : Codec InvokeAsyncRequest
invokeAsyncRequestCodec =
    Codec.object InvokeAsyncRequest
        |> Codec.field "InvokeArgs" .invokeArgs Codec.string
        |> Codec.field "FunctionName" .functionName namespacedFunctionNameCodec
        |> Codec.buildObject


{-| Codec for InvocationType. -}
invocationTypeCodec : Codec InvocationType
invocationTypeCodec =
    Codec.build (Enum.encoder invocationType) (Enum.decoder invocationType)


{-| Codec for InvocationResponse. -}
invocationResponseCodec : Codec InvocationResponse
invocationResponseCodec =
    Codec.object InvocationResponse
        |> Codec.field "StatusCode" .statusCode Codec.int
        |> Codec.field "Payload" .payload Codec.string
        |> Codec.field "LogResult" .logResult Codec.string
        |> Codec.field "FunctionError" .functionError Codec.string
        |> Codec.field "ExecutedVersion" .executedVersion versionCodec
        |> Codec.buildObject


{-| Codec for InvocationRequest. -}
invocationRequestCodec : Codec InvocationRequest
invocationRequestCodec =
    Codec.object InvocationRequest
        |> Codec.field "Qualifier" .qualifier qualifierCodec
        |> Codec.field "Payload" .payload Codec.string
        |> Codec.field "LogType" .logType logTypeCodec
        |> Codec.field "InvocationType" .invocationType invocationTypeCodec
        |> Codec.field "FunctionName" .functionName namespacedFunctionNameCodec
        |> Codec.field "ClientContext" .clientContext Codec.string
        |> Codec.buildObject


{-| Codec for Integer. -}
integerCodec : Codec Integer
integerCodec =
    Codec.int


{-| Codec for HttpStatus. -}
httpStatusCodec : Codec HttpStatus
httpStatusCodec =
    Codec.int


{-| Codec for Handler. -}
handlerCodec : Codec Handler
handlerCodec =
    Codec.build (Refined.encoder handler) (Refined.decoder handler)


{-| Codec for GetPolicyResponse. -}
getPolicyResponseCodec : Codec GetPolicyResponse
getPolicyResponseCodec =
    Codec.object GetPolicyResponse
        |> Codec.field "RevisionId" .revisionId Codec.string
        |> Codec.field "Policy" .policy Codec.string
        |> Codec.buildObject


{-| Codec for GetPolicyRequest. -}
getPolicyRequestCodec : Codec GetPolicyRequest
getPolicyRequestCodec =
    Codec.object GetPolicyRequest
        |> Codec.field "Qualifier" .qualifier qualifierCodec
        |> Codec.field "FunctionName" .functionName namespacedFunctionNameCodec
        |> Codec.buildObject


{-| Codec for GetLayerVersionResponse. -}
getLayerVersionResponseCodec : Codec GetLayerVersionResponse
getLayerVersionResponseCodec =
    Codec.object GetLayerVersionResponse
        |> Codec.field "Version" .version Codec.int
        |> Codec.field "LicenseInfo" .licenseInfo licenseInfoCodec
        |> Codec.field "LayerVersionArn" .layerVersionArn layerVersionArnCodec
        |> Codec.field "LayerArn" .layerArn layerArnCodec
        |> Codec.field "Description" .description descriptionCodec
        |> Codec.field "CreatedDate" .createdDate Codec.string
        |> Codec.field "Content" .content layerVersionContentOutputCodec
        |> Codec.field "CompatibleRuntimes" .compatibleRuntimes compatibleRuntimesCodec
        |> Codec.buildObject


{-| Codec for GetLayerVersionRequest. -}
getLayerVersionRequestCodec : Codec GetLayerVersionRequest
getLayerVersionRequestCodec =
    Codec.object GetLayerVersionRequest
        |> Codec.field "VersionNumber" .versionNumber Codec.int
        |> Codec.field "LayerName" .layerName layerNameCodec
        |> Codec.buildObject


{-| Codec for GetLayerVersionPolicyResponse. -}
getLayerVersionPolicyResponseCodec : Codec GetLayerVersionPolicyResponse
getLayerVersionPolicyResponseCodec =
    Codec.object GetLayerVersionPolicyResponse
        |> Codec.field "RevisionId" .revisionId Codec.string
        |> Codec.field "Policy" .policy Codec.string
        |> Codec.buildObject


{-| Codec for GetLayerVersionPolicyRequest. -}
getLayerVersionPolicyRequestCodec : Codec GetLayerVersionPolicyRequest
getLayerVersionPolicyRequestCodec =
    Codec.object GetLayerVersionPolicyRequest
        |> Codec.field "VersionNumber" .versionNumber Codec.int
        |> Codec.field "LayerName" .layerName layerNameCodec
        |> Codec.buildObject


{-| Codec for GetLayerVersionByArnRequest. -}
getLayerVersionByArnRequestCodec : Codec GetLayerVersionByArnRequest
getLayerVersionByArnRequestCodec =
    Codec.object GetLayerVersionByArnRequest |> Codec.field "Arn" .arn layerVersionArnCodec |> Codec.buildObject


{-| Codec for GetFunctionResponse. -}
getFunctionResponseCodec : Codec GetFunctionResponse
getFunctionResponseCodec =
    Codec.object GetFunctionResponse
        |> Codec.field "Tags" .tags tagsCodec
        |> Codec.field "Configuration" .configuration functionConfigurationCodec
        |> Codec.field "Concurrency" .concurrency concurrencyCodec
        |> Codec.field "Code" .code functionCodeLocationCodec
        |> Codec.buildObject


{-| Codec for GetFunctionRequest. -}
getFunctionRequestCodec : Codec GetFunctionRequest
getFunctionRequestCodec =
    Codec.object GetFunctionRequest
        |> Codec.field "Qualifier" .qualifier qualifierCodec
        |> Codec.field "FunctionName" .functionName namespacedFunctionNameCodec
        |> Codec.buildObject


{-| Codec for GetFunctionConfigurationRequest. -}
getFunctionConfigurationRequestCodec : Codec GetFunctionConfigurationRequest
getFunctionConfigurationRequestCodec =
    Codec.object GetFunctionConfigurationRequest
        |> Codec.field "Qualifier" .qualifier qualifierCodec
        |> Codec.field "FunctionName" .functionName namespacedFunctionNameCodec
        |> Codec.buildObject


{-| Codec for GetEventSourceMappingRequest. -}
getEventSourceMappingRequestCodec : Codec GetEventSourceMappingRequest
getEventSourceMappingRequestCodec =
    Codec.object GetEventSourceMappingRequest |> Codec.field "UUID" .uuid Codec.string |> Codec.buildObject


{-| Codec for GetAliasRequest. -}
getAliasRequestCodec : Codec GetAliasRequest
getAliasRequestCodec =
    Codec.object GetAliasRequest
        |> Codec.field "Name" .name aliasCodec
        |> Codec.field "FunctionName" .functionName functionNameCodec
        |> Codec.buildObject


{-| Codec for GetAccountSettingsResponse. -}
getAccountSettingsResponseCodec : Codec GetAccountSettingsResponse
getAccountSettingsResponseCodec =
    Codec.object GetAccountSettingsResponse
        |> Codec.field "AccountUsage" .accountUsage accountUsageCodec
        |> Codec.field "AccountLimit" .accountLimit accountLimitCodec
        |> Codec.buildObject


{-| Codec for GetAccountSettingsRequest. -}
getAccountSettingsRequestCodec : Codec GetAccountSettingsRequest
getAccountSettingsRequestCodec =
    Codec.object GetAccountSettingsRequest |> Codec.buildObject


{-| Codec for FunctionVersion. -}
functionVersionCodec : Codec FunctionVersion
functionVersionCodec =
    Codec.build (Enum.encoder functionVersion) (Enum.decoder functionVersion)


{-| Codec for FunctionName. -}
functionNameCodec : Codec FunctionName
functionNameCodec =
    Codec.build (Refined.encoder functionName) (Refined.decoder functionName)


{-| Codec for FunctionList. -}
functionListCodec : Codec FunctionList
functionListCodec =
    Codec.list functionConfigurationCodec


{-| Codec for FunctionConfiguration. -}
functionConfigurationCodec : Codec FunctionConfiguration
functionConfigurationCodec =
    Codec.object FunctionConfiguration
        |> Codec.field "VpcConfig" .vpcConfig vpcConfigResponseCodec
        |> Codec.field "Version" .version versionCodec
        |> Codec.field "TracingConfig" .tracingConfig tracingConfigResponseCodec
        |> Codec.field "Timeout" .timeout timeoutCodec
        |> Codec.field "Runtime" .runtime runtimeCodec
        |> Codec.field "Role" .role roleArnCodec
        |> Codec.field "RevisionId" .revisionId Codec.string
        |> Codec.field "MemorySize" .memorySize memorySizeCodec
        |> Codec.field "MasterArn" .masterArn functionArnCodec
        |> Codec.field "Layers" .layers layersReferenceListCodec
        |> Codec.field "LastModified" .lastModified Codec.string
        |> Codec.field "KMSKeyArn" .kmskeyArn kmskeyArnCodec
        |> Codec.field "Handler" .handler handlerCodec
        |> Codec.field "FunctionName" .functionName namespacedFunctionNameCodec
        |> Codec.field "FunctionArn" .functionArn nameSpacedFunctionArnCodec
        |> Codec.field "Environment" .environment environmentResponseCodec
        |> Codec.field "Description" .description descriptionCodec
        |> Codec.field "DeadLetterConfig" .deadLetterConfig deadLetterConfigCodec
        |> Codec.field "CodeSize" .codeSize Codec.int
        |> Codec.field "CodeSha256" .codeSha256 Codec.string
        |> Codec.buildObject


{-| Codec for FunctionCodeLocation. -}
functionCodeLocationCodec : Codec FunctionCodeLocation
functionCodeLocationCodec =
    Codec.object FunctionCodeLocation
        |> Codec.field "RepositoryType" .repositoryType Codec.string
        |> Codec.field "Location" .location Codec.string
        |> Codec.buildObject


{-| Codec for FunctionCode. -}
functionCodeCodec : Codec FunctionCode
functionCodeCodec =
    Codec.object FunctionCode
        |> Codec.field "ZipFile" .zipFile Codec.string
        |> Codec.field "S3ObjectVersion" .s3ObjectVersion s3ObjectVersionCodec
        |> Codec.field "S3Key" .s3Key s3KeyCodec
        |> Codec.field "S3Bucket" .s3Bucket s3BucketCodec
        |> Codec.buildObject


{-| Codec for FunctionArn. -}
functionArnCodec : Codec FunctionArn
functionArnCodec =
    Codec.build (Refined.encoder functionArn) (Refined.decoder functionArn)


{-| Codec for EventSourceToken. -}
eventSourceTokenCodec : Codec EventSourceToken
eventSourceTokenCodec =
    Codec.build (Refined.encoder eventSourceToken) (Refined.decoder eventSourceToken)


{-| Codec for EventSourcePosition. -}
eventSourcePositionCodec : Codec EventSourcePosition
eventSourcePositionCodec =
    Codec.build (Enum.encoder eventSourcePosition) (Enum.decoder eventSourcePosition)


{-| Codec for EventSourceMappingsList. -}
eventSourceMappingsListCodec : Codec EventSourceMappingsList
eventSourceMappingsListCodec =
    Codec.list eventSourceMappingConfigurationCodec


{-| Codec for EventSourceMappingConfiguration. -}
eventSourceMappingConfigurationCodec : Codec EventSourceMappingConfiguration
eventSourceMappingConfigurationCodec =
    Codec.object EventSourceMappingConfiguration
        |> Codec.field "UUID" .uuid Codec.string
        |> Codec.field "StateTransitionReason" .stateTransitionReason Codec.string
        |> Codec.field "State" .state Codec.string
        |> Codec.field "LastProcessingResult" .lastProcessingResult Codec.string
        |> Codec.field "LastModified" .lastModified dateCodec
        |> Codec.field "FunctionArn" .functionArn functionArnCodec
        |> Codec.field "EventSourceArn" .eventSourceArn arnCodec
        |> Codec.field "BatchSize" .batchSize batchSizeCodec
        |> Codec.buildObject


{-| Codec for EnvironmentVariables. -}
environmentVariablesCodec : Codec EnvironmentVariables
environmentVariablesCodec =
    Codec.build
        (Refined.dictEncoder environmentVariableName (Codec.encoder Codec.string))
        (Refined.dictDecoder environmentVariableName (Codec.decoder Codec.string))


{-| Codec for EnvironmentVariableValue. -}
environmentVariableValueCodec : Codec EnvironmentVariableValue
environmentVariableValueCodec =
    Codec.string


{-| Codec for EnvironmentVariableName. -}
environmentVariableNameCodec : Codec EnvironmentVariableName
environmentVariableNameCodec =
    Codec.build (Refined.encoder environmentVariableName) (Refined.decoder environmentVariableName)


{-| Codec for EnvironmentResponse. -}
environmentResponseCodec : Codec EnvironmentResponse
environmentResponseCodec =
    Codec.object EnvironmentResponse
        |> Codec.field "Variables" .variables environmentVariablesCodec
        |> Codec.field "Error" .error environmentErrorCodec
        |> Codec.buildObject


{-| Codec for EnvironmentError. -}
environmentErrorCodec : Codec EnvironmentError
environmentErrorCodec =
    Codec.object EnvironmentError
        |> Codec.field "Message" .message Codec.string
        |> Codec.field "ErrorCode" .errorCode Codec.string
        |> Codec.buildObject


{-| Codec for Environment. -}
environmentCodec : Codec Environment
environmentCodec =
    Codec.object Environment |> Codec.field "Variables" .variables environmentVariablesCodec |> Codec.buildObject


{-| Codec for Enabled. -}
enabledCodec : Codec Enabled
enabledCodec =
    Codec.bool


{-| Codec for Description. -}
descriptionCodec : Codec Description
descriptionCodec =
    Codec.build (Refined.encoder description) (Refined.decoder description)


{-| Codec for DeleteLayerVersionRequest. -}
deleteLayerVersionRequestCodec : Codec DeleteLayerVersionRequest
deleteLayerVersionRequestCodec =
    Codec.object DeleteLayerVersionRequest
        |> Codec.field "VersionNumber" .versionNumber Codec.int
        |> Codec.field "LayerName" .layerName layerNameCodec
        |> Codec.buildObject


{-| Codec for DeleteFunctionRequest. -}
deleteFunctionRequestCodec : Codec DeleteFunctionRequest
deleteFunctionRequestCodec =
    Codec.object DeleteFunctionRequest
        |> Codec.field "Qualifier" .qualifier qualifierCodec
        |> Codec.field "FunctionName" .functionName functionNameCodec
        |> Codec.buildObject


{-| Codec for DeleteFunctionConcurrencyRequest. -}
deleteFunctionConcurrencyRequestCodec : Codec DeleteFunctionConcurrencyRequest
deleteFunctionConcurrencyRequestCodec =
    Codec.object DeleteFunctionConcurrencyRequest
        |> Codec.field "FunctionName" .functionName functionNameCodec
        |> Codec.buildObject


{-| Codec for DeleteEventSourceMappingRequest. -}
deleteEventSourceMappingRequestCodec : Codec DeleteEventSourceMappingRequest
deleteEventSourceMappingRequestCodec =
    Codec.object DeleteEventSourceMappingRequest |> Codec.field "UUID" .uuid Codec.string |> Codec.buildObject


{-| Codec for DeleteAliasRequest. -}
deleteAliasRequestCodec : Codec DeleteAliasRequest
deleteAliasRequestCodec =
    Codec.object DeleteAliasRequest
        |> Codec.field "Name" .name aliasCodec
        |> Codec.field "FunctionName" .functionName functionNameCodec
        |> Codec.buildObject


{-| Codec for DeadLetterConfig. -}
deadLetterConfigCodec : Codec DeadLetterConfig
deadLetterConfigCodec =
    Codec.object DeadLetterConfig |> Codec.field "TargetArn" .targetArn resourceArnCodec |> Codec.buildObject


{-| Codec for Date. -}
dateCodec : Codec Date
dateCodec =
    Codec.string


{-| Codec for CreateFunctionRequest. -}
createFunctionRequestCodec : Codec CreateFunctionRequest
createFunctionRequestCodec =
    Codec.object CreateFunctionRequest
        |> Codec.field "VpcConfig" .vpcConfig vpcConfigCodec
        |> Codec.field "TracingConfig" .tracingConfig tracingConfigCodec
        |> Codec.field "Timeout" .timeout timeoutCodec
        |> Codec.field "Tags" .tags tagsCodec
        |> Codec.field "Runtime" .runtime runtimeCodec
        |> Codec.field "Role" .role roleArnCodec
        |> Codec.field "Publish" .publish Codec.bool
        |> Codec.field "MemorySize" .memorySize memorySizeCodec
        |> Codec.field "Layers" .layers layerListCodec
        |> Codec.field "KMSKeyArn" .kmskeyArn kmskeyArnCodec
        |> Codec.field "Handler" .handler handlerCodec
        |> Codec.field "FunctionName" .functionName functionNameCodec
        |> Codec.field "Environment" .environment environmentCodec
        |> Codec.field "Description" .description descriptionCodec
        |> Codec.field "DeadLetterConfig" .deadLetterConfig deadLetterConfigCodec
        |> Codec.field "Code" .code functionCodeCodec
        |> Codec.buildObject


{-| Codec for CreateEventSourceMappingRequest. -}
createEventSourceMappingRequestCodec : Codec CreateEventSourceMappingRequest
createEventSourceMappingRequestCodec =
    Codec.object CreateEventSourceMappingRequest
        |> Codec.field "StartingPositionTimestamp" .startingPositionTimestamp dateCodec
        |> Codec.field "StartingPosition" .startingPosition eventSourcePositionCodec
        |> Codec.field "FunctionName" .functionName functionNameCodec
        |> Codec.field "EventSourceArn" .eventSourceArn arnCodec
        |> Codec.field "Enabled" .enabled Codec.bool
        |> Codec.field "BatchSize" .batchSize batchSizeCodec
        |> Codec.buildObject


{-| Codec for CreateAliasRequest. -}
createAliasRequestCodec : Codec CreateAliasRequest
createAliasRequestCodec =
    Codec.object CreateAliasRequest
        |> Codec.field "RoutingConfig" .routingConfig aliasRoutingConfigurationCodec
        |> Codec.field "Name" .name aliasCodec
        |> Codec.field "FunctionVersion" .functionVersion versionCodec
        |> Codec.field "FunctionName" .functionName functionNameCodec
        |> Codec.field "Description" .description descriptionCodec
        |> Codec.buildObject


{-| Codec for Concurrency. -}
concurrencyCodec : Codec Concurrency
concurrencyCodec =
    Codec.object Concurrency
        |> Codec.field "ReservedConcurrentExecutions" .reservedConcurrentExecutions reservedConcurrentExecutionsCodec
        |> Codec.buildObject


{-| Codec for CompatibleRuntimes. -}
compatibleRuntimesCodec : Codec CompatibleRuntimes
compatibleRuntimesCodec =
    Codec.list runtimeCodec


{-| Codec for Boolean. -}
booleanCodec : Codec Boolean
booleanCodec =
    Codec.bool


{-| Codec for BlobStream. -}
blobStreamCodec : Codec BlobStream
blobStreamCodec =
    Codec.string


{-| Codec for Blob. -}
blobCodec : Codec Blob
blobCodec =
    Codec.string


{-| Codec for BatchSize. -}
batchSizeCodec : Codec BatchSize
batchSizeCodec =
    Codec.build (Refined.encoder batchSize) (Refined.decoder batchSize)


{-| Codec for Arn. -}
arnCodec : Codec Arn
arnCodec =
    Codec.build (Refined.encoder arn) (Refined.decoder arn)


{-| Codec for AliasRoutingConfiguration. -}
aliasRoutingConfigurationCodec : Codec AliasRoutingConfiguration
aliasRoutingConfigurationCodec =
    Codec.object AliasRoutingConfiguration
        |> Codec.field "AdditionalVersionWeights" .additionalVersionWeights additionalVersionWeightsCodec
        |> Codec.buildObject


{-| Codec for AliasList. -}
aliasListCodec : Codec AliasList
aliasListCodec =
    Codec.list aliasConfigurationCodec


{-| Codec for AliasConfiguration. -}
aliasConfigurationCodec : Codec AliasConfiguration
aliasConfigurationCodec =
    Codec.object AliasConfiguration
        |> Codec.field "RoutingConfig" .routingConfig aliasRoutingConfigurationCodec
        |> Codec.field "RevisionId" .revisionId Codec.string
        |> Codec.field "Name" .name aliasCodec
        |> Codec.field "FunctionVersion" .functionVersion versionCodec
        |> Codec.field "Description" .description descriptionCodec
        |> Codec.field "AliasArn" .aliasArn functionArnCodec
        |> Codec.buildObject


{-| Codec for Alias. -}
aliasCodec : Codec Alias
aliasCodec =
    Codec.build (Refined.encoder alias_) (Refined.decoder alias_)


{-| Codec for AdditionalVersionWeights. -}
additionalVersionWeightsCodec : Codec AdditionalVersionWeights
additionalVersionWeightsCodec =
    Codec.build
        (Refined.dictEncoder additionalVersion (Codec.encoder Codec.float))
        (Refined.dictDecoder additionalVersion (Codec.decoder Codec.float))


{-| Codec for AdditionalVersion. -}
additionalVersionCodec : Codec AdditionalVersion
additionalVersionCodec =
    Codec.build (Refined.encoder additionalVersion) (Refined.decoder additionalVersion)


{-| Codec for AddPermissionResponse. -}
addPermissionResponseCodec : Codec AddPermissionResponse
addPermissionResponseCodec =
    Codec.object AddPermissionResponse |> Codec.field "Statement" .statement Codec.string |> Codec.buildObject


{-| Codec for AddPermissionRequest. -}
addPermissionRequestCodec : Codec AddPermissionRequest
addPermissionRequestCodec =
    Codec.object AddPermissionRequest
        |> Codec.field "StatementId" .statementId statementIdCodec
        |> Codec.field "SourceArn" .sourceArn arnCodec
        |> Codec.field "SourceAccount" .sourceAccount sourceOwnerCodec
        |> Codec.field "RevisionId" .revisionId Codec.string
        |> Codec.field "Qualifier" .qualifier qualifierCodec
        |> Codec.field "Principal" .principal principalCodec
        |> Codec.field "FunctionName" .functionName functionNameCodec
        |> Codec.field "EventSourceToken" .eventSourceToken eventSourceTokenCodec
        |> Codec.field "Action" .action actionCodec
        |> Codec.buildObject


{-| Codec for AddLayerVersionPermissionResponse. -}
addLayerVersionPermissionResponseCodec : Codec AddLayerVersionPermissionResponse
addLayerVersionPermissionResponseCodec =
    Codec.object AddLayerVersionPermissionResponse
        |> Codec.field "Statement" .statement Codec.string
        |> Codec.field "RevisionId" .revisionId Codec.string
        |> Codec.buildObject


{-| Codec for AddLayerVersionPermissionRequest. -}
addLayerVersionPermissionRequestCodec : Codec AddLayerVersionPermissionRequest
addLayerVersionPermissionRequestCodec =
    Codec.object AddLayerVersionPermissionRequest
        |> Codec.field "VersionNumber" .versionNumber Codec.int
        |> Codec.field "StatementId" .statementId statementIdCodec
        |> Codec.field "RevisionId" .revisionId Codec.string
        |> Codec.field "Principal" .principal layerPermissionAllowedPrincipalCodec
        |> Codec.field "OrganizationId" .organizationId organizationIdCodec
        |> Codec.field "LayerName" .layerName layerNameCodec
        |> Codec.field "Action" .action layerPermissionAllowedActionCodec
        |> Codec.buildObject


{-| Codec for Action. -}
actionCodec : Codec Action
actionCodec =
    Codec.build (Refined.encoder action) (Refined.decoder action)


{-| Codec for AccountUsage. -}
accountUsageCodec : Codec AccountUsage
accountUsageCodec =
    Codec.object AccountUsage
        |> Codec.field "TotalCodeSize" .totalCodeSize Codec.int
        |> Codec.field "FunctionCount" .functionCount Codec.int
        |> Codec.buildObject


{-| Codec for AccountLimit. -}
accountLimitCodec : Codec AccountLimit
accountLimitCodec =
    Codec.object AccountLimit
        |> Codec.field
            "UnreservedConcurrentExecutions"
            .unreservedConcurrentExecutions
            unreservedConcurrentExecutionsCodec
        |> Codec.field "TotalCodeSize" .totalCodeSize Codec.int
        |> Codec.field "ConcurrentExecutions" .concurrentExecutions Codec.int
        |> Codec.field "CodeSizeZipped" .codeSizeZipped Codec.int
        |> Codec.field "CodeSizeUnzipped" .codeSizeUnzipped Codec.int
        |> Codec.buildObject
