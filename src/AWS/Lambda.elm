module AWS.Lambda exposing (service)

import AWS.Core.Decode
import AWS.Core.Http
import AWS.Core.Service
import Codec exposing (Codec)
import Dict exposing (Dict)
import Enum exposing (Enum)
import Guarded exposing (Guarded, IntError, StringError)
import Json.Decode exposing (Decoder)
import Json.Encode exposing (Value)


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


action : Guarded String Action StringError
action =
    let
        guardFn val =
            Guarded.regexMatch "(lambda:[*]|lambda:[a-zA-Z]+|[*])" val |> Result.map Action

        unboxFn (Action val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


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


additionalVersion : Guarded String AdditionalVersion StringError
additionalVersion =
    let
        guardFn val =
            Guarded.minLength 1 val
                |> Result.andThen Guarded.maxLength 1024 |> Result.andThen (Guarded.regexMatch "[0-9]+")
                |> Result.map AdditionalVersion

        unboxFn (AdditionalVersion val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type alias AdditionalVersionWeights =
    Dict AdditionalVersion Float


type Alias
    = Alias String


alias_ : Guarded String Alias StringError
alias_ =
    let
        guardFn val =
            Guarded.minLength 1 val
                |> Result.andThen
                    Guarded.maxLength 128 |> Result.andThen (Guarded.regexMatch "(?!^[0-9]+$)([a-zA-Z0-9-_]+)")
                |> Result.map Alias

        unboxFn (Alias val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


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


arn : Guarded String Arn StringError
arn =
    let
        guardFn val =
            Guarded.regexMatch
                "arn:(aws[a-zA-Z0-9-]*):([a-zA-Z0-9\\-])+:([a-z]{2}(-gov)?-[a-z]+-\\d{1})?:(\\d{12})?:(.*)"
                val
                |> Result.map Arn

        unboxFn (Arn val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type BatchSize
    = BatchSize Int


batchSize : Guarded Int BatchSize IntError
batchSize =
    let
        guardFn val =
            Guarded.gt 1 val |> Result.andThen (Guarded.lt 10000) |> Result.map BatchSize

        unboxFn (BatchSize val) =
            val
    in
    Guarded.make guardFn Json.Decode.int Json.Encode.int Guarded.intErrorToString unboxFn


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


description : Guarded String Description StringError
description =
    let
        guardFn val =
            Guarded.minLength 0 val |> Result.andThen (Guarded.maxLength 256) |> Result.map Description

        unboxFn (Description val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


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


environmentVariableName : Guarded String EnvironmentVariableName StringError
environmentVariableName =
    let
        guardFn val =
            Guarded.regexMatch "[a-zA-Z]([a-zA-Z0-9_])+" val |> Result.map EnvironmentVariableName

        unboxFn (EnvironmentVariableName val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type alias EnvironmentVariableValue =
    String


type alias EnvironmentVariables =
    Dict EnvironmentVariableName String


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
    Enum.make
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


eventSourceToken : Guarded String EventSourceToken StringError
eventSourceToken =
    let
        guardFn val =
            Guarded.minLength 0 val
                |> Result.andThen Guarded.maxLength 256 |> Result.andThen (Guarded.regexMatch "[a-zA-Z0-9._\\-]+")
                |> Result.map EventSourceToken

        unboxFn (EventSourceToken val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type FunctionArn
    = FunctionArn String


functionArn : Guarded String FunctionArn StringError
functionArn =
    let
        guardFn val =
            Guarded.regexMatch
                "arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?"
                val
                |> Result.map FunctionArn

        unboxFn (FunctionArn val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


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


functionName : Guarded String FunctionName StringError
functionName =
    let
        guardFn val =
            Guarded.minLength 1 val
                |> Result.andThen
                    Guarded.maxLength 140
                        |> Result.andThen
                            (Guarded.regexMatch
                                "(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?"
                            )
                |> Result.map FunctionName

        unboxFn (FunctionName val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type FunctionVersion
    = FunctionVersionAll


functionVersion : Enum FunctionVersion
functionVersion =
    Enum.make
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


handler : Guarded String Handler StringError
handler =
    let
        guardFn val =
            Guarded.maxLength 128 val |> Result.andThen (Guarded.regexMatch "[^\\s]+") |> Result.map Handler

        unboxFn (Handler val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type alias HttpStatus =
    Int


type alias Integer =
    Int


type InvocationType
    = InvocationTypeEvent
    | InvocationTypeRequestResponse
    | InvocationTypeDryRun


invocationType : Enum InvocationType
invocationType =
    Enum.make
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


type alias InvokeAsyncResponse =
    { status : Int }


type KmskeyArn
    = KmskeyArn String


kmskeyArn : Guarded String KmskeyArn StringError
kmskeyArn =
    let
        guardFn val =
            Guarded.regexMatch "(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()" val |> Result.map KmskeyArn

        unboxFn (KmskeyArn val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type alias Layer =
    { codeSize : Int, arn : LayerVersionArn }


type LayerArn
    = LayerArn String


layerArn : Guarded String LayerArn StringError
layerArn =
    let
        guardFn val =
            Guarded.minLength 1 val
                |> Result.andThen
                    Guarded.maxLength 140
                        |> Result.andThen
                            (Guarded.regexMatch "arn:[a-zA-Z0-9-]+:lambda:[a-zA-Z0-9-]+:\\d{12}:layer:[a-zA-Z0-9-_]+")
                |> Result.map LayerArn

        unboxFn (LayerArn val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type alias LayerList =
    List LayerVersionArn


type LayerName
    = LayerName String


layerName : Guarded String LayerName StringError
layerName =
    let
        guardFn val =
            Guarded.minLength 1 val
                |> Result.andThen
                    Guarded.maxLength 140
                        |> Result.andThen
                            (Guarded.regexMatch
                                "(arn:[a-zA-Z0-9-]+:lambda:[a-zA-Z0-9-]+:\\d{12}:layer:[a-zA-Z0-9-_]+)|[a-zA-Z0-9-_]+"
                            )
                |> Result.map LayerName

        unboxFn (LayerName val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type LayerPermissionAllowedAction
    = LayerPermissionAllowedAction String


layerPermissionAllowedAction : Guarded String LayerPermissionAllowedAction StringError
layerPermissionAllowedAction =
    let
        guardFn val =
            Guarded.regexMatch "lambda:GetLayerVersion" val |> Result.map LayerPermissionAllowedAction

        unboxFn (LayerPermissionAllowedAction val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type LayerPermissionAllowedPrincipal
    = LayerPermissionAllowedPrincipal String


layerPermissionAllowedPrincipal : Guarded String LayerPermissionAllowedPrincipal StringError
layerPermissionAllowedPrincipal =
    let
        guardFn val =
            Guarded.regexMatch "\\d{12}|\\*|arn:(aws[a-zA-Z-]*):iam::\\d{12}:root" val
                |> Result.map LayerPermissionAllowedPrincipal

        unboxFn (LayerPermissionAllowedPrincipal val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type LayerVersionArn
    = LayerVersionArn String


layerVersionArn : Guarded String LayerVersionArn StringError
layerVersionArn =
    let
        guardFn val =
            Guarded.minLength 1 val
                |> Result.andThen
                    Guarded.maxLength 140
                        |> Result.andThen
                            (Guarded.regexMatch
                                "arn:[a-zA-Z0-9-]+:lambda:[a-zA-Z0-9-]+:\\d{12}:layer:[a-zA-Z0-9-_]+:[0-9]+"
                            )
                |> Result.map LayerVersionArn

        unboxFn (LayerVersionArn val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


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


licenseInfo : Guarded String LicenseInfo StringError
licenseInfo =
    let
        guardFn val =
            Guarded.maxLength 512 val |> Result.map LicenseInfo

        unboxFn (LicenseInfo val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


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
    Enum.make
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


masterRegion : Guarded String MasterRegion StringError
masterRegion =
    let
        guardFn val =
            Guarded.regexMatch "ALL|[a-z]{2}(-gov)?-[a-z]+-\\d{1}" val |> Result.map MasterRegion

        unboxFn (MasterRegion val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type MaxLayerListItems
    = MaxLayerListItems Int


maxLayerListItems : Guarded Int MaxLayerListItems IntError
maxLayerListItems =
    let
        guardFn val =
            Guarded.gt 1 val |> Result.andThen (Guarded.lt 50) |> Result.map MaxLayerListItems

        unboxFn (MaxLayerListItems val) =
            val
    in
    Guarded.make guardFn Json.Decode.int Json.Encode.int Guarded.intErrorToString unboxFn


type MaxListItems
    = MaxListItems Int


maxListItems : Guarded Int MaxListItems IntError
maxListItems =
    let
        guardFn val =
            Guarded.gt 1 val |> Result.andThen (Guarded.lt 10000) |> Result.map MaxListItems

        unboxFn (MaxListItems val) =
            val
    in
    Guarded.make guardFn Json.Decode.int Json.Encode.int Guarded.intErrorToString unboxFn


type MemorySize
    = MemorySize Int


memorySize : Guarded Int MemorySize IntError
memorySize =
    let
        guardFn val =
            Guarded.gt 128 val |> Result.andThen (Guarded.lt 3008) |> Result.map MemorySize

        unboxFn (MemorySize val) =
            val
    in
    Guarded.make guardFn Json.Decode.int Json.Encode.int Guarded.intErrorToString unboxFn


type NameSpacedFunctionArn
    = NameSpacedFunctionArn String


nameSpacedFunctionArn : Guarded String NameSpacedFunctionArn StringError
nameSpacedFunctionArn =
    let
        guardFn val =
            Guarded.regexMatch
                "arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_\\.]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?"
                val
                |> Result.map NameSpacedFunctionArn

        unboxFn (NameSpacedFunctionArn val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type NamespacedFunctionName
    = NamespacedFunctionName String


namespacedFunctionName : Guarded String NamespacedFunctionName StringError
namespacedFunctionName =
    let
        guardFn val =
            Guarded.minLength 1 val
                |> Result.andThen
                    Guarded.maxLength 170
                        |> Result.andThen
                            (Guarded.regexMatch
                                "(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}(-gov)?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_\\.]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?"
                            )
                |> Result.map NamespacedFunctionName

        unboxFn (NamespacedFunctionName val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type NamespacedStatementId
    = NamespacedStatementId String


namespacedStatementId : Guarded String NamespacedStatementId StringError
namespacedStatementId =
    let
        guardFn val =
            Guarded.minLength 1 val
                |> Result.andThen Guarded.maxLength 100 |> Result.andThen (Guarded.regexMatch "([a-zA-Z0-9-_.]+)")
                |> Result.map NamespacedStatementId

        unboxFn (NamespacedStatementId val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type OrganizationId
    = OrganizationId String


organizationId : Guarded String OrganizationId StringError
organizationId =
    let
        guardFn val =
            Guarded.regexMatch "o-[a-z0-9]{10,32}" val |> Result.map OrganizationId

        unboxFn (OrganizationId val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type Principal
    = Principal String


principal : Guarded String Principal StringError
principal =
    let
        guardFn val =
            Guarded.regexMatch ".*" val |> Result.map Principal

        unboxFn (Principal val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


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


qualifier : Guarded String Qualifier StringError
qualifier =
    let
        guardFn val =
            Guarded.minLength 1 val
                |> Result.andThen Guarded.maxLength 128 |> Result.andThen (Guarded.regexMatch "(|[a-zA-Z0-9$_-]+)")
                |> Result.map Qualifier

        unboxFn (Qualifier val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type alias RemoveLayerVersionPermissionRequest =
    { versionNumber : Int, statementId : StatementId, revisionId : String, layerName : LayerName }


type alias RemovePermissionRequest =
    { statementId : NamespacedStatementId, revisionId : String, qualifier : Qualifier, functionName : FunctionName }


type ReservedConcurrentExecutions
    = ReservedConcurrentExecutions Int


reservedConcurrentExecutions : Guarded Int ReservedConcurrentExecutions IntError
reservedConcurrentExecutions =
    let
        guardFn val =
            Guarded.gt 0 val |> Result.map ReservedConcurrentExecutions

        unboxFn (ReservedConcurrentExecutions val) =
            val
    in
    Guarded.make guardFn Json.Decode.int Json.Encode.int Guarded.intErrorToString unboxFn


type ResourceArn
    = ResourceArn String


resourceArn : Guarded String ResourceArn StringError
resourceArn =
    let
        guardFn val =
            Guarded.regexMatch "(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()" val |> Result.map ResourceArn

        unboxFn (ResourceArn val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type RoleArn
    = RoleArn String


roleArn : Guarded String RoleArn StringError
roleArn =
    let
        guardFn val =
            Guarded.regexMatch "arn:(aws[a-zA-Z-]*)?:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+" val
                |> Result.map RoleArn

        unboxFn (RoleArn val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


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
    Enum.make
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


s3Bucket : Guarded String S3Bucket StringError
s3Bucket =
    let
        guardFn val =
            Guarded.minLength 3 val
                |> Result.andThen
                    Guarded.maxLength 63 |> Result.andThen (Guarded.regexMatch "^[0-9A-Za-z\\.\\-_]*(?<!\\.)$")
                |> Result.map S3Bucket

        unboxFn (S3Bucket val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type S3Key
    = S3Key String


s3Key : Guarded String S3Key StringError
s3Key =
    let
        guardFn val =
            Guarded.minLength 1 val |> Result.andThen (Guarded.maxLength 1024) |> Result.map S3Key

        unboxFn (S3Key val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type S3ObjectVersion
    = S3ObjectVersion String


s3ObjectVersion : Guarded String S3ObjectVersion StringError
s3ObjectVersion =
    let
        guardFn val =
            Guarded.minLength 1 val |> Result.andThen (Guarded.maxLength 1024) |> Result.map S3ObjectVersion

        unboxFn (S3ObjectVersion val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type alias SecurityGroupId =
    String


type alias SecurityGroupIds =
    List String


type alias SensitiveString =
    String


type SourceOwner
    = SourceOwner String


sourceOwner : Guarded String SourceOwner StringError
sourceOwner =
    let
        guardFn val =
            Guarded.regexMatch "\\d{12}" val |> Result.map SourceOwner

        unboxFn (SourceOwner val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type StatementId
    = StatementId String


statementId : Guarded String StatementId StringError
statementId =
    let
        guardFn val =
            Guarded.minLength 1 val
                |> Result.andThen Guarded.maxLength 100 |> Result.andThen (Guarded.regexMatch "([a-zA-Z0-9-_]+)")
                |> Result.map StatementId

        unboxFn (StatementId val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


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


timeout : Guarded Int Timeout IntError
timeout =
    let
        guardFn val =
            Guarded.gt 1 val |> Result.map Timeout

        unboxFn (Timeout val) =
            val
    in
    Guarded.make guardFn Json.Decode.int Json.Encode.int Guarded.intErrorToString unboxFn


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
    Enum.make
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


unreservedConcurrentExecutions : Guarded Int UnreservedConcurrentExecutions IntError
unreservedConcurrentExecutions =
    let
        guardFn val =
            Guarded.gt 0 val |> Result.map UnreservedConcurrentExecutions

        unboxFn (UnreservedConcurrentExecutions val) =
            val
    in
    Guarded.make guardFn Json.Decode.int Json.Encode.int Guarded.intErrorToString unboxFn


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


version : Guarded String Version StringError
version =
    let
        guardFn val =
            Guarded.minLength 1 val
                |> Result.andThen Guarded.maxLength 1024 |> Result.andThen (Guarded.regexMatch "(\\$LATEST|[0-9]+)")
                |> Result.map Version

        unboxFn (Version val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


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
    Codec.build (Guarded.encoder version) (Guarded.decoder version)


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
    Codec.build (Guarded.encoder unreservedConcurrentExecutions) (Guarded.decoder unreservedConcurrentExecutions)


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
    Codec.build (Guarded.encoder timeout) (Guarded.decoder timeout)


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
    Codec.build (Guarded.encoder statementId) (Guarded.decoder statementId)


{-| Codec for SourceOwner. -}
sourceOwnerCodec : Codec SourceOwner
sourceOwnerCodec =
    Codec.build (Guarded.encoder sourceOwner) (Guarded.decoder sourceOwner)


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
    Codec.build (Guarded.encoder s3ObjectVersion) (Guarded.decoder s3ObjectVersion)


{-| Codec for S3Key. -}
s3KeyCodec : Codec S3Key
s3KeyCodec =
    Codec.build (Guarded.encoder s3Key) (Guarded.decoder s3Key)


{-| Codec for S3Bucket. -}
s3BucketCodec : Codec S3Bucket
s3BucketCodec =
    Codec.build (Guarded.encoder s3Bucket) (Guarded.decoder s3Bucket)


{-| Codec for Runtime. -}
runtimeCodec : Codec Runtime
runtimeCodec =
    Codec.build (Enum.encoder runtime) (Enum.decoder runtime)


{-| Codec for RoleArn. -}
roleArnCodec : Codec RoleArn
roleArnCodec =
    Codec.build (Guarded.encoder roleArn) (Guarded.decoder roleArn)


{-| Codec for ResourceArn. -}
resourceArnCodec : Codec ResourceArn
resourceArnCodec =
    Codec.build (Guarded.encoder resourceArn) (Guarded.decoder resourceArn)


{-| Codec for ReservedConcurrentExecutions. -}
reservedConcurrentExecutionsCodec : Codec ReservedConcurrentExecutions
reservedConcurrentExecutionsCodec =
    Codec.build (Guarded.encoder reservedConcurrentExecutions) (Guarded.decoder reservedConcurrentExecutions)


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
    Codec.build (Guarded.encoder qualifier) (Guarded.decoder qualifier)


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
    Codec.build (Guarded.encoder principal) (Guarded.decoder principal)


{-| Codec for OrganizationId. -}
organizationIdCodec : Codec OrganizationId
organizationIdCodec =
    Codec.build (Guarded.encoder organizationId) (Guarded.decoder organizationId)


{-| Codec for NamespacedStatementId. -}
namespacedStatementIdCodec : Codec NamespacedStatementId
namespacedStatementIdCodec =
    Codec.build (Guarded.encoder namespacedStatementId) (Guarded.decoder namespacedStatementId)


{-| Codec for NamespacedFunctionName. -}
namespacedFunctionNameCodec : Codec NamespacedFunctionName
namespacedFunctionNameCodec =
    Codec.build (Guarded.encoder namespacedFunctionName) (Guarded.decoder namespacedFunctionName)


{-| Codec for NameSpacedFunctionArn. -}
nameSpacedFunctionArnCodec : Codec NameSpacedFunctionArn
nameSpacedFunctionArnCodec =
    Codec.build (Guarded.encoder nameSpacedFunctionArn) (Guarded.decoder nameSpacedFunctionArn)


{-| Codec for MemorySize. -}
memorySizeCodec : Codec MemorySize
memorySizeCodec =
    Codec.build (Guarded.encoder memorySize) (Guarded.decoder memorySize)


{-| Codec for MaxListItems. -}
maxListItemsCodec : Codec MaxListItems
maxListItemsCodec =
    Codec.build (Guarded.encoder maxListItems) (Guarded.decoder maxListItems)


{-| Codec for MaxLayerListItems. -}
maxLayerListItemsCodec : Codec MaxLayerListItems
maxLayerListItemsCodec =
    Codec.build (Guarded.encoder maxLayerListItems) (Guarded.decoder maxLayerListItems)


{-| Codec for MasterRegion. -}
masterRegionCodec : Codec MasterRegion
masterRegionCodec =
    Codec.build (Guarded.encoder masterRegion) (Guarded.decoder masterRegion)


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
    Codec.build (Guarded.encoder licenseInfo) (Guarded.decoder licenseInfo)


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


{-| Codec for LayerVersionArn. -}
layerVersionArnCodec : Codec LayerVersionArn
layerVersionArnCodec =
    Codec.build (Guarded.encoder layerVersionArn) (Guarded.decoder layerVersionArn)


{-| Codec for LayerPermissionAllowedPrincipal. -}
layerPermissionAllowedPrincipalCodec : Codec LayerPermissionAllowedPrincipal
layerPermissionAllowedPrincipalCodec =
    Codec.build (Guarded.encoder layerPermissionAllowedPrincipal) (Guarded.decoder layerPermissionAllowedPrincipal)


{-| Codec for LayerPermissionAllowedAction. -}
layerPermissionAllowedActionCodec : Codec LayerPermissionAllowedAction
layerPermissionAllowedActionCodec =
    Codec.build (Guarded.encoder layerPermissionAllowedAction) (Guarded.decoder layerPermissionAllowedAction)


{-| Codec for LayerName. -}
layerNameCodec : Codec LayerName
layerNameCodec =
    Codec.build (Guarded.encoder layerName) (Guarded.decoder layerName)


{-| Codec for LayerList. -}
layerListCodec : Codec LayerList
layerListCodec =
    Codec.list layerVersionArnCodec


{-| Codec for LayerArn. -}
layerArnCodec : Codec LayerArn
layerArnCodec =
    Codec.build (Guarded.encoder layerArn) (Guarded.decoder layerArn)


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
    Codec.build (Guarded.encoder kmskeyArn) (Guarded.decoder kmskeyArn)


{-| Codec for InvokeAsyncResponse. -}
invokeAsyncResponseCodec : Codec InvokeAsyncResponse
invokeAsyncResponseCodec =
    Codec.object InvokeAsyncResponse |> Codec.field "Status" .status Codec.int |> Codec.buildObject


{-| Codec for InvocationType. -}
invocationTypeCodec : Codec InvocationType
invocationTypeCodec =
    Codec.build (Enum.encoder invocationType) (Enum.decoder invocationType)


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
    Codec.build (Guarded.encoder handler) (Guarded.decoder handler)


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
    Codec.build (Guarded.encoder functionName) (Guarded.decoder functionName)


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


{-| Codec for FunctionArn. -}
functionArnCodec : Codec FunctionArn
functionArnCodec =
    Codec.build (Guarded.encoder functionArn) (Guarded.decoder functionArn)


{-| Codec for EventSourceToken. -}
eventSourceTokenCodec : Codec EventSourceToken
eventSourceTokenCodec =
    Codec.build (Guarded.encoder eventSourceToken) (Guarded.decoder eventSourceToken)


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
    Codec.dict Codec.string


{-| Codec for EnvironmentVariableValue. -}
environmentVariableValueCodec : Codec EnvironmentVariableValue
environmentVariableValueCodec =
    Codec.string


{-| Codec for EnvironmentVariableName. -}
environmentVariableNameCodec : Codec EnvironmentVariableName
environmentVariableNameCodec =
    Codec.build (Guarded.encoder environmentVariableName) (Guarded.decoder environmentVariableName)


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
    Codec.build (Guarded.encoder description) (Guarded.decoder description)


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


{-| Codec for BatchSize. -}
batchSizeCodec : Codec BatchSize
batchSizeCodec =
    Codec.build (Guarded.encoder batchSize) (Guarded.decoder batchSize)


{-| Codec for Arn. -}
arnCodec : Codec Arn
arnCodec =
    Codec.build (Guarded.encoder arn) (Guarded.decoder arn)


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
    Codec.build (Guarded.encoder alias_) (Guarded.decoder alias_)


{-| Codec for AdditionalVersionWeights. -}
additionalVersionWeightsCodec : Codec AdditionalVersionWeights
additionalVersionWeightsCodec =
    Codec.dict Codec.float


{-| Codec for AdditionalVersion. -}
additionalVersionCodec : Codec AdditionalVersion
additionalVersionCodec =
    Codec.build (Guarded.encoder additionalVersion) (Guarded.decoder additionalVersion)


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
    Codec.build (Guarded.encoder action) (Guarded.decoder action)


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
