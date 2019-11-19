module AWS.Athena exposing (service)

import AWS.Core.Decode
import AWS.Core.Http
import AWS.Core.Service
import Codec exposing (Codec)
import Enum exposing (Enum)
import Json.Decode exposing (Decoder)
import Json.Encode exposing (Value)
import Refined exposing (IntError, Refined, StringError)


{-| Configuration for this service. -}
service : AWS.Core.Service.Service
service =
    let
        optionsFn =
            AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "AmazonAthena"
    in
    AWS.Core.Service.defineGlobal "athena" "2017-05-18" AWS.Core.Service.json AWS.Core.Service.signV4 optionsFn


{-| AWS Endpoint. -}
updateWorkGroup : UpdateWorkGroupInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateWorkGroupOutput)
updateWorkGroup req =
    let
        jsonBody =
            req |> Codec.encoder updateWorkGroupInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "UpdateWorkGroup"
                (AWS.Core.Decode.ResultDecoder "UpdateWorkGroupOutput" (Codec.decoder updateWorkGroupOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
untagResource : UntagResourceInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UntagResourceOutput)
untagResource req =
    let
        jsonBody =
            req |> Codec.encoder untagResourceInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "UntagResource"
                (AWS.Core.Decode.ResultDecoder "UntagResourceOutput" (Codec.decoder untagResourceOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
tagResource : TagResourceInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TagResourceOutput)
tagResource req =
    let
        jsonBody =
            req |> Codec.encoder tagResourceInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "TagResource"
                (AWS.Core.Decode.ResultDecoder "TagResourceOutput" (Codec.decoder tagResourceOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
stopQueryExecution :
    StopQueryExecutionInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StopQueryExecutionOutput)
stopQueryExecution req =
    let
        jsonBody =
            req |> Codec.encoder stopQueryExecutionInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "StopQueryExecution"
                (AWS.Core.Decode.ResultDecoder "StopQueryExecutionOutput" (Codec.decoder stopQueryExecutionOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
startQueryExecution :
    StartQueryExecutionInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartQueryExecutionOutput)
startQueryExecution req =
    let
        jsonBody =
            req |> Codec.encoder startQueryExecutionInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "StartQueryExecution"
                (AWS.Core.Decode.ResultDecoder
                    "StartQueryExecutionOutput"
                    (Codec.decoder startQueryExecutionOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listWorkGroups : ListWorkGroupsInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListWorkGroupsOutput)
listWorkGroups req =
    let
        jsonBody =
            req |> Codec.encoder listWorkGroupsInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListWorkGroups"
                (AWS.Core.Decode.ResultDecoder "ListWorkGroupsOutput" (Codec.decoder listWorkGroupsOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listTagsForResource :
    ListTagsForResourceInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTagsForResourceOutput)
listTagsForResource req =
    let
        jsonBody =
            req |> Codec.encoder listTagsForResourceInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListTagsForResource"
                (AWS.Core.Decode.ResultDecoder
                    "ListTagsForResourceOutput"
                    (Codec.decoder listTagsForResourceOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listQueryExecutions :
    ListQueryExecutionsInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListQueryExecutionsOutput)
listQueryExecutions req =
    let
        jsonBody =
            req |> Codec.encoder listQueryExecutionsInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListQueryExecutions"
                (AWS.Core.Decode.ResultDecoder
                    "ListQueryExecutionsOutput"
                    (Codec.decoder listQueryExecutionsOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listNamedQueries :
    ListNamedQueriesInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListNamedQueriesOutput)
listNamedQueries req =
    let
        jsonBody =
            req |> Codec.encoder listNamedQueriesInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListNamedQueries"
                (AWS.Core.Decode.ResultDecoder "ListNamedQueriesOutput" (Codec.decoder listNamedQueriesOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getWorkGroup : GetWorkGroupInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetWorkGroupOutput)
getWorkGroup req =
    let
        jsonBody =
            req |> Codec.encoder getWorkGroupInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetWorkGroup"
                (AWS.Core.Decode.ResultDecoder "GetWorkGroupOutput" (Codec.decoder getWorkGroupOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getQueryResults : GetQueryResultsInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetQueryResultsOutput)
getQueryResults req =
    let
        jsonBody =
            req |> Codec.encoder getQueryResultsInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetQueryResults"
                (AWS.Core.Decode.ResultDecoder "GetQueryResultsOutput" (Codec.decoder getQueryResultsOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getQueryExecution :
    GetQueryExecutionInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetQueryExecutionOutput)
getQueryExecution req =
    let
        jsonBody =
            req |> Codec.encoder getQueryExecutionInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetQueryExecution"
                (AWS.Core.Decode.ResultDecoder "GetQueryExecutionOutput" (Codec.decoder getQueryExecutionOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getNamedQuery : GetNamedQueryInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetNamedQueryOutput)
getNamedQuery req =
    let
        jsonBody =
            req |> Codec.encoder getNamedQueryInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetNamedQuery"
                (AWS.Core.Decode.ResultDecoder "GetNamedQueryOutput" (Codec.decoder getNamedQueryOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteWorkGroup : DeleteWorkGroupInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteWorkGroupOutput)
deleteWorkGroup req =
    let
        jsonBody =
            req |> Codec.encoder deleteWorkGroupInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DeleteWorkGroup"
                (AWS.Core.Decode.ResultDecoder "DeleteWorkGroupOutput" (Codec.decoder deleteWorkGroupOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteNamedQuery :
    DeleteNamedQueryInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteNamedQueryOutput)
deleteNamedQuery req =
    let
        jsonBody =
            req |> Codec.encoder deleteNamedQueryInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DeleteNamedQuery"
                (AWS.Core.Decode.ResultDecoder "DeleteNamedQueryOutput" (Codec.decoder deleteNamedQueryOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createWorkGroup : CreateWorkGroupInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateWorkGroupOutput)
createWorkGroup req =
    let
        jsonBody =
            req |> Codec.encoder createWorkGroupInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateWorkGroup"
                (AWS.Core.Decode.ResultDecoder "CreateWorkGroupOutput" (Codec.decoder createWorkGroupOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createNamedQuery :
    CreateNamedQueryInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateNamedQueryOutput)
createNamedQuery req =
    let
        jsonBody =
            req |> Codec.encoder createNamedQueryInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateNamedQuery"
                (AWS.Core.Decode.ResultDecoder "CreateNamedQueryOutput" (Codec.decoder createNamedQueryOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
batchGetQueryExecution :
    BatchGetQueryExecutionInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchGetQueryExecutionOutput)
batchGetQueryExecution req =
    let
        jsonBody =
            req |> Codec.encoder batchGetQueryExecutionInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "BatchGetQueryExecution"
                (AWS.Core.Decode.ResultDecoder
                    "BatchGetQueryExecutionOutput"
                    (Codec.decoder batchGetQueryExecutionOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
batchGetNamedQuery :
    BatchGetNamedQueryInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchGetNamedQueryOutput)
batchGetNamedQuery req =
    let
        jsonBody =
            req |> Codec.encoder batchGetNamedQueryInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "BatchGetNamedQuery"
                (AWS.Core.Decode.ResultDecoder "BatchGetNamedQueryOutput" (Codec.decoder batchGetNamedQueryOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


type AmazonResourceName
    = AmazonResourceName String


amazonResourceName : Refined String AmazonResourceName StringError
amazonResourceName =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 1011) |> Result.map AmazonResourceName

        unboxFn (AmazonResourceName val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias BatchGetNamedQueryInput =
    { namedQueryIds : NamedQueryIdList }


type alias BatchGetNamedQueryOutput =
    { unprocessedNamedQueryIds : UnprocessedNamedQueryIdList, namedQueries : NamedQueryList }


type alias BatchGetQueryExecutionInput =
    { queryExecutionIds : QueryExecutionIdList }


type alias BatchGetQueryExecutionOutput =
    { unprocessedQueryExecutionIds : UnprocessedQueryExecutionIdList, queryExecutions : QueryExecutionList }


type alias Boolean =
    Bool


type alias BoxedBoolean =
    Bool


type alias BytesScannedCutoffValue =
    Int


type alias ColumnInfo =
    { type_ : String
    , tableName : String
    , schemaName : String
    , scale : Int
    , precision : Int
    , nullable : ColumnNullable
    , name : String
    , label : String
    , catalogName : String
    , caseSensitive : Bool
    }


type alias ColumnInfoList =
    List ColumnInfo


type ColumnNullable
    = ColumnNullableNotNull
    | ColumnNullableNullable
    | ColumnNullableUnknown


columnNullable : Enum ColumnNullable
columnNullable =
    Enum.define
        [ ColumnNullableNotNull, ColumnNullableNullable, ColumnNullableUnknown ]
        (\val ->
            case val of
                ColumnNullableNotNull ->
                    "NOT_NULL"

                ColumnNullableNullable ->
                    "NULLABLE"

                ColumnNullableUnknown ->
                    "UNKNOWN"
        )


type alias CreateNamedQueryInput =
    { workGroup : WorkGroupName
    , queryString : QueryString
    , name : NameString
    , description : DescriptionString
    , database : DatabaseString
    , clientRequestToken : IdempotencyToken
    }


type alias CreateNamedQueryOutput =
    { namedQueryId : String }


type alias CreateWorkGroupInput =
    { tags : TagList
    , name : WorkGroupName
    , description : WorkGroupDescriptionString
    , configuration : WorkGroupConfiguration
    }


type alias CreateWorkGroupOutput =
    {}


type DatabaseString
    = DatabaseString String


databaseString : Refined String DatabaseString StringError
databaseString =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 255) |> Result.map DatabaseString

        unboxFn (DatabaseString val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias Date =
    String


type alias Datum =
    { varCharValue : String }


type alias DeleteNamedQueryInput =
    { namedQueryId : String }


type alias DeleteNamedQueryOutput =
    {}


type alias DeleteWorkGroupInput =
    { workGroup : WorkGroupName, recursiveDeleteOption : Bool }


type alias DeleteWorkGroupOutput =
    {}


type DescriptionString
    = DescriptionString String


descriptionString : Refined String DescriptionString StringError
descriptionString =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 1024) |> Result.map DescriptionString

        unboxFn (DescriptionString val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias EncryptionConfiguration =
    { kmsKey : String, encryptionOption : EncryptionOption }


type EncryptionOption
    = EncryptionOptionSseS3
    | EncryptionOptionSseKms
    | EncryptionOptionCseKms


encryptionOption : Enum EncryptionOption
encryptionOption =
    Enum.define
        [ EncryptionOptionSseS3, EncryptionOptionSseKms, EncryptionOptionCseKms ]
        (\val ->
            case val of
                EncryptionOptionSseS3 ->
                    "SSE_S3"

                EncryptionOptionSseKms ->
                    "SSE_KMS"

                EncryptionOptionCseKms ->
                    "CSE_KMS"
        )


type ErrorCode
    = ErrorCode String


errorCode : Refined String ErrorCode StringError
errorCode =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 256) |> Result.map ErrorCode

        unboxFn (ErrorCode val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias ErrorMessage =
    String


type alias GetNamedQueryInput =
    { namedQueryId : String }


type alias GetNamedQueryOutput =
    { namedQuery : NamedQuery }


type alias GetQueryExecutionInput =
    { queryExecutionId : String }


type alias GetQueryExecutionOutput =
    { queryExecution : QueryExecution }


type alias GetQueryResultsInput =
    { queryExecutionId : String, nextToken : Token, maxResults : MaxQueryResults }


type alias GetQueryResultsOutput =
    { updateCount : Int, resultSet : ResultSet, nextToken : Token }


type alias GetWorkGroupInput =
    { workGroup : WorkGroupName }


type alias GetWorkGroupOutput =
    { workGroup : WorkGroup }


type IdempotencyToken
    = IdempotencyToken String


idempotencyToken : Refined String IdempotencyToken StringError
idempotencyToken =
    let
        guardFn val =
            Refined.minLength 32 val |> Result.andThen (Refined.maxLength 128) |> Result.map IdempotencyToken

        unboxFn (IdempotencyToken val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias Integer =
    Int


type alias ListNamedQueriesInput =
    { workGroup : WorkGroupName, nextToken : Token, maxResults : MaxNamedQueriesCount }


type alias ListNamedQueriesOutput =
    { nextToken : Token, namedQueryIds : NamedQueryIdList }


type alias ListQueryExecutionsInput =
    { workGroup : WorkGroupName, nextToken : Token, maxResults : MaxQueryExecutionsCount }


type alias ListQueryExecutionsOutput =
    { queryExecutionIds : QueryExecutionIdList, nextToken : Token }


type alias ListTagsForResourceInput =
    { resourceArn : AmazonResourceName, nextToken : Token, maxResults : MaxTagsCount }


type alias ListTagsForResourceOutput =
    { tags : TagList, nextToken : Token }


type alias ListWorkGroupsInput =
    { nextToken : Token, maxResults : MaxWorkGroupsCount }


type alias ListWorkGroupsOutput =
    { workGroups : WorkGroupsList, nextToken : Token }


type alias Long =
    Int


type MaxNamedQueriesCount
    = MaxNamedQueriesCount Int


maxNamedQueriesCount : Refined Int MaxNamedQueriesCount IntError
maxNamedQueriesCount =
    let
        guardFn val =
            Refined.gt 0 val |> Result.andThen (Refined.lt 50) |> Result.map MaxNamedQueriesCount

        unboxFn (MaxNamedQueriesCount val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type MaxQueryExecutionsCount
    = MaxQueryExecutionsCount Int


maxQueryExecutionsCount : Refined Int MaxQueryExecutionsCount IntError
maxQueryExecutionsCount =
    let
        guardFn val =
            Refined.gt 0 val |> Result.andThen (Refined.lt 50) |> Result.map MaxQueryExecutionsCount

        unboxFn (MaxQueryExecutionsCount val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type MaxQueryResults
    = MaxQueryResults Int


maxQueryResults : Refined Int MaxQueryResults IntError
maxQueryResults =
    let
        guardFn val =
            Refined.gt 0 val |> Result.andThen (Refined.lt 1000) |> Result.map MaxQueryResults

        unboxFn (MaxQueryResults val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type MaxTagsCount
    = MaxTagsCount Int


maxTagsCount : Refined Int MaxTagsCount IntError
maxTagsCount =
    let
        guardFn val =
            Refined.gt 75 val |> Result.map MaxTagsCount

        unboxFn (MaxTagsCount val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type MaxWorkGroupsCount
    = MaxWorkGroupsCount Int


maxWorkGroupsCount : Refined Int MaxWorkGroupsCount IntError
maxWorkGroupsCount =
    let
        guardFn val =
            Refined.gt 1 val |> Result.andThen (Refined.lt 50) |> Result.map MaxWorkGroupsCount

        unboxFn (MaxWorkGroupsCount val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type NameString
    = NameString String


nameString : Refined String NameString StringError
nameString =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 128) |> Result.map NameString

        unboxFn (NameString val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias NamedQuery =
    { workGroup : WorkGroupName
    , queryString : QueryString
    , namedQueryId : String
    , name : NameString
    , description : DescriptionString
    , database : DatabaseString
    }


type alias NamedQueryId =
    String


type alias NamedQueryIdList =
    List String


type alias NamedQueryList =
    List NamedQuery


type alias QueryExecution =
    { workGroup : WorkGroupName
    , status : QueryExecutionStatus
    , statistics : QueryExecutionStatistics
    , statementType : StatementType
    , resultConfiguration : ResultConfiguration
    , queryExecutionId : String
    , queryExecutionContext : QueryExecutionContext
    , query : QueryString
    }


type alias QueryExecutionContext =
    { database : DatabaseString }


type alias QueryExecutionId =
    String


type alias QueryExecutionIdList =
    List String


type alias QueryExecutionList =
    List QueryExecution


type QueryExecutionState
    = QueryExecutionStateQueued
    | QueryExecutionStateRunning
    | QueryExecutionStateSucceeded
    | QueryExecutionStateFailed
    | QueryExecutionStateCancelled


queryExecutionState : Enum QueryExecutionState
queryExecutionState =
    Enum.define
        [ QueryExecutionStateQueued
        , QueryExecutionStateRunning
        , QueryExecutionStateSucceeded
        , QueryExecutionStateFailed
        , QueryExecutionStateCancelled
        ]
        (\val ->
            case val of
                QueryExecutionStateQueued ->
                    "QUEUED"

                QueryExecutionStateRunning ->
                    "RUNNING"

                QueryExecutionStateSucceeded ->
                    "SUCCEEDED"

                QueryExecutionStateFailed ->
                    "FAILED"

                QueryExecutionStateCancelled ->
                    "CANCELLED"
        )


type alias QueryExecutionStatistics =
    { engineExecutionTimeInMillis : Int, dataScannedInBytes : Int }


type alias QueryExecutionStatus =
    { submissionDateTime : Date, stateChangeReason : String, state : QueryExecutionState, completionDateTime : Date }


type QueryString
    = QueryString String


queryString : Refined String QueryString StringError
queryString =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 262144) |> Result.map QueryString

        unboxFn (QueryString val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias ResultConfiguration =
    { outputLocation : String, encryptionConfiguration : EncryptionConfiguration }


type alias ResultConfigurationUpdates =
    { removeOutputLocation : Bool
    , removeEncryptionConfiguration : Bool
    , outputLocation : String
    , encryptionConfiguration : EncryptionConfiguration
    }


type alias ResultSet =
    { rows : RowList, resultSetMetadata : ResultSetMetadata }


type alias ResultSetMetadata =
    { columnInfo : ColumnInfoList }


type alias Row =
    { data : DatumList }


type alias RowList =
    List Row


type alias StartQueryExecutionInput =
    { workGroup : WorkGroupName
    , resultConfiguration : ResultConfiguration
    , queryString : QueryString
    , queryExecutionContext : QueryExecutionContext
    , clientRequestToken : IdempotencyToken
    }


type alias StartQueryExecutionOutput =
    { queryExecutionId : String }


type StatementType
    = StatementTypeDdl
    | StatementTypeDml
    | StatementTypeUtility


statementType : Enum StatementType
statementType =
    Enum.define
        [ StatementTypeDdl, StatementTypeDml, StatementTypeUtility ]
        (\val ->
            case val of
                StatementTypeDdl ->
                    "DDL"

                StatementTypeDml ->
                    "DML"

                StatementTypeUtility ->
                    "UTILITY"
        )


type alias StopQueryExecutionInput =
    { queryExecutionId : String }


type alias StopQueryExecutionOutput =
    {}


type alias String_ =
    String


type alias Tag =
    { value : TagValue, key : TagKey }


type TagKey
    = TagKey String


tagKey : Refined String TagKey StringError
tagKey =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 128) |> Result.map TagKey

        unboxFn (TagKey val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias TagKeyList =
    List TagKey


type alias TagList =
    List Tag


type alias TagResourceInput =
    { tags : TagList, resourceArn : AmazonResourceName }


type alias TagResourceOutput =
    {}


type TagValue
    = TagValue String


tagValue : Refined String TagValue StringError
tagValue =
    let
        guardFn val =
            Refined.minLength 0 val |> Result.andThen (Refined.maxLength 256) |> Result.map TagValue

        unboxFn (TagValue val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type Token
    = Token String


token : Refined String Token StringError
token =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 1024) |> Result.map Token

        unboxFn (Token val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias UnprocessedNamedQueryId =
    { namedQueryId : String, errorMessage : String, errorCode : ErrorCode }


type alias UnprocessedNamedQueryIdList =
    List UnprocessedNamedQueryId


type alias UnprocessedQueryExecutionId =
    { queryExecutionId : String, errorMessage : String, errorCode : ErrorCode }


type alias UnprocessedQueryExecutionIdList =
    List UnprocessedQueryExecutionId


type alias UntagResourceInput =
    { tagKeys : TagKeyList, resourceArn : AmazonResourceName }


type alias UntagResourceOutput =
    {}


type alias UpdateWorkGroupInput =
    { workGroup : WorkGroupName
    , state : WorkGroupState
    , description : WorkGroupDescriptionString
    , configurationUpdates : WorkGroupConfigurationUpdates
    }


type alias UpdateWorkGroupOutput =
    {}


type alias WorkGroup =
    { state : WorkGroupState
    , name : WorkGroupName
    , description : WorkGroupDescriptionString
    , creationTime : Date
    , configuration : WorkGroupConfiguration
    }


type alias WorkGroupConfiguration =
    { resultConfiguration : ResultConfiguration
    , publishCloudWatchMetricsEnabled : Bool
    , enforceWorkGroupConfiguration : Bool
    , bytesScannedCutoffPerQuery : Int
    }


type alias WorkGroupConfigurationUpdates =
    { resultConfigurationUpdates : ResultConfigurationUpdates
    , removeBytesScannedCutoffPerQuery : Bool
    , publishCloudWatchMetricsEnabled : Bool
    , enforceWorkGroupConfiguration : Bool
    , bytesScannedCutoffPerQuery : Int
    }


type WorkGroupDescriptionString
    = WorkGroupDescriptionString String


workGroupDescriptionString : Refined String WorkGroupDescriptionString StringError
workGroupDescriptionString =
    let
        guardFn val =
            Refined.minLength 0 val |> Result.andThen (Refined.maxLength 1024) |> Result.map WorkGroupDescriptionString

        unboxFn (WorkGroupDescriptionString val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type WorkGroupName
    = WorkGroupName String


workGroupName : Refined String WorkGroupName StringError
workGroupName =
    let
        guardFn val =
            Refined.regexMatch "[a-zA-z0-9._-]{1,128}" val |> Result.map WorkGroupName

        unboxFn (WorkGroupName val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type WorkGroupState
    = WorkGroupStateEnabled
    | WorkGroupStateDisabled


workGroupState : Enum WorkGroupState
workGroupState =
    Enum.define
        [ WorkGroupStateEnabled, WorkGroupStateDisabled ]
        (\val ->
            case val of
                WorkGroupStateEnabled ->
                    "ENABLED"

                WorkGroupStateDisabled ->
                    "DISABLED"
        )


type alias WorkGroupSummary =
    { state : WorkGroupState, name : WorkGroupName, description : WorkGroupDescriptionString, creationTime : Date }


type alias WorkGroupsList =
    List WorkGroupSummary


type alias DatumList =
    List Datum


type alias DatumString =
    String


{-| Codec for DatumString. -}
datumStringCodec : Codec DatumString
datumStringCodec =
    Codec.string


{-| Codec for DatumList. -}
datumListCodec : Codec DatumList
datumListCodec =
    Codec.list datumCodec


{-| Codec for WorkGroupsList. -}
workGroupsListCodec : Codec WorkGroupsList
workGroupsListCodec =
    Codec.list workGroupSummaryCodec


{-| Codec for WorkGroupSummary. -}
workGroupSummaryCodec : Codec WorkGroupSummary
workGroupSummaryCodec =
    Codec.object WorkGroupSummary
        |> Codec.field "State" .state workGroupStateCodec
        |> Codec.field "Name" .name workGroupNameCodec
        |> Codec.field "Description" .description workGroupDescriptionStringCodec
        |> Codec.field "CreationTime" .creationTime dateCodec
        |> Codec.buildObject


{-| Codec for WorkGroupState. -}
workGroupStateCodec : Codec WorkGroupState
workGroupStateCodec =
    Codec.build (Enum.encoder workGroupState) (Enum.decoder workGroupState)


{-| Codec for WorkGroupName. -}
workGroupNameCodec : Codec WorkGroupName
workGroupNameCodec =
    Codec.build (Refined.encoder workGroupName) (Refined.decoder workGroupName)


{-| Codec for WorkGroupDescriptionString. -}
workGroupDescriptionStringCodec : Codec WorkGroupDescriptionString
workGroupDescriptionStringCodec =
    Codec.build (Refined.encoder workGroupDescriptionString) (Refined.decoder workGroupDescriptionString)


{-| Codec for WorkGroupConfigurationUpdates. -}
workGroupConfigurationUpdatesCodec : Codec WorkGroupConfigurationUpdates
workGroupConfigurationUpdatesCodec =
    Codec.object WorkGroupConfigurationUpdates
        |> Codec.field "ResultConfigurationUpdates" .resultConfigurationUpdates resultConfigurationUpdatesCodec
        |> Codec.field "RemoveBytesScannedCutoffPerQuery" .removeBytesScannedCutoffPerQuery Codec.bool
        |> Codec.field "PublishCloudWatchMetricsEnabled" .publishCloudWatchMetricsEnabled Codec.bool
        |> Codec.field "EnforceWorkGroupConfiguration" .enforceWorkGroupConfiguration Codec.bool
        |> Codec.field "BytesScannedCutoffPerQuery" .bytesScannedCutoffPerQuery Codec.int
        |> Codec.buildObject


{-| Codec for WorkGroupConfiguration. -}
workGroupConfigurationCodec : Codec WorkGroupConfiguration
workGroupConfigurationCodec =
    Codec.object WorkGroupConfiguration
        |> Codec.field "ResultConfiguration" .resultConfiguration resultConfigurationCodec
        |> Codec.field "PublishCloudWatchMetricsEnabled" .publishCloudWatchMetricsEnabled Codec.bool
        |> Codec.field "EnforceWorkGroupConfiguration" .enforceWorkGroupConfiguration Codec.bool
        |> Codec.field "BytesScannedCutoffPerQuery" .bytesScannedCutoffPerQuery Codec.int
        |> Codec.buildObject


{-| Codec for WorkGroup. -}
workGroupCodec : Codec WorkGroup
workGroupCodec =
    Codec.object WorkGroup
        |> Codec.field "State" .state workGroupStateCodec
        |> Codec.field "Name" .name workGroupNameCodec
        |> Codec.field "Description" .description workGroupDescriptionStringCodec
        |> Codec.field "CreationTime" .creationTime dateCodec
        |> Codec.field "Configuration" .configuration workGroupConfigurationCodec
        |> Codec.buildObject


{-| Codec for UpdateWorkGroupOutput. -}
updateWorkGroupOutputCodec : Codec UpdateWorkGroupOutput
updateWorkGroupOutputCodec =
    Codec.object UpdateWorkGroupOutput |> Codec.buildObject


{-| Codec for UpdateWorkGroupInput. -}
updateWorkGroupInputCodec : Codec UpdateWorkGroupInput
updateWorkGroupInputCodec =
    Codec.object UpdateWorkGroupInput
        |> Codec.field "WorkGroup" .workGroup workGroupNameCodec
        |> Codec.field "State" .state workGroupStateCodec
        |> Codec.field "Description" .description workGroupDescriptionStringCodec
        |> Codec.field "ConfigurationUpdates" .configurationUpdates workGroupConfigurationUpdatesCodec
        |> Codec.buildObject


{-| Codec for UntagResourceOutput. -}
untagResourceOutputCodec : Codec UntagResourceOutput
untagResourceOutputCodec =
    Codec.object UntagResourceOutput |> Codec.buildObject


{-| Codec for UntagResourceInput. -}
untagResourceInputCodec : Codec UntagResourceInput
untagResourceInputCodec =
    Codec.object UntagResourceInput
        |> Codec.field "TagKeys" .tagKeys tagKeyListCodec
        |> Codec.field "ResourceARN" .resourceArn amazonResourceNameCodec
        |> Codec.buildObject


{-| Codec for UnprocessedQueryExecutionIdList. -}
unprocessedQueryExecutionIdListCodec : Codec UnprocessedQueryExecutionIdList
unprocessedQueryExecutionIdListCodec =
    Codec.list unprocessedQueryExecutionIdCodec


{-| Codec for UnprocessedQueryExecutionId. -}
unprocessedQueryExecutionIdCodec : Codec UnprocessedQueryExecutionId
unprocessedQueryExecutionIdCodec =
    Codec.object UnprocessedQueryExecutionId
        |> Codec.field "QueryExecutionId" .queryExecutionId Codec.string
        |> Codec.field "ErrorMessage" .errorMessage Codec.string
        |> Codec.field "ErrorCode" .errorCode errorCodeCodec
        |> Codec.buildObject


{-| Codec for UnprocessedNamedQueryIdList. -}
unprocessedNamedQueryIdListCodec : Codec UnprocessedNamedQueryIdList
unprocessedNamedQueryIdListCodec =
    Codec.list unprocessedNamedQueryIdCodec


{-| Codec for UnprocessedNamedQueryId. -}
unprocessedNamedQueryIdCodec : Codec UnprocessedNamedQueryId
unprocessedNamedQueryIdCodec =
    Codec.object UnprocessedNamedQueryId
        |> Codec.field "NamedQueryId" .namedQueryId Codec.string
        |> Codec.field "ErrorMessage" .errorMessage Codec.string
        |> Codec.field "ErrorCode" .errorCode errorCodeCodec
        |> Codec.buildObject


{-| Codec for Token. -}
tokenCodec : Codec Token
tokenCodec =
    Codec.build (Refined.encoder token) (Refined.decoder token)


{-| Codec for TagValue. -}
tagValueCodec : Codec TagValue
tagValueCodec =
    Codec.build (Refined.encoder tagValue) (Refined.decoder tagValue)


{-| Codec for TagResourceOutput. -}
tagResourceOutputCodec : Codec TagResourceOutput
tagResourceOutputCodec =
    Codec.object TagResourceOutput |> Codec.buildObject


{-| Codec for TagResourceInput. -}
tagResourceInputCodec : Codec TagResourceInput
tagResourceInputCodec =
    Codec.object TagResourceInput
        |> Codec.field "Tags" .tags tagListCodec
        |> Codec.field "ResourceARN" .resourceArn amazonResourceNameCodec
        |> Codec.buildObject


{-| Codec for TagList. -}
tagListCodec : Codec TagList
tagListCodec =
    Codec.list tagCodec


{-| Codec for TagKeyList. -}
tagKeyListCodec : Codec TagKeyList
tagKeyListCodec =
    Codec.list tagKeyCodec


{-| Codec for TagKey. -}
tagKeyCodec : Codec TagKey
tagKeyCodec =
    Codec.build (Refined.encoder tagKey) (Refined.decoder tagKey)


{-| Codec for Tag. -}
tagCodec : Codec Tag
tagCodec =
    Codec.object Tag
        |> Codec.field "Value" .value tagValueCodec
        |> Codec.field "Key" .key tagKeyCodec
        |> Codec.buildObject


{-| Codec for String_. -}
stringCodec : Codec String_
stringCodec =
    Codec.string


{-| Codec for StopQueryExecutionOutput. -}
stopQueryExecutionOutputCodec : Codec StopQueryExecutionOutput
stopQueryExecutionOutputCodec =
    Codec.object StopQueryExecutionOutput |> Codec.buildObject


{-| Codec for StopQueryExecutionInput. -}
stopQueryExecutionInputCodec : Codec StopQueryExecutionInput
stopQueryExecutionInputCodec =
    Codec.object StopQueryExecutionInput
        |> Codec.field "QueryExecutionId" .queryExecutionId Codec.string
        |> Codec.buildObject


{-| Codec for StatementType. -}
statementTypeCodec : Codec StatementType
statementTypeCodec =
    Codec.build (Enum.encoder statementType) (Enum.decoder statementType)


{-| Codec for StartQueryExecutionOutput. -}
startQueryExecutionOutputCodec : Codec StartQueryExecutionOutput
startQueryExecutionOutputCodec =
    Codec.object StartQueryExecutionOutput
        |> Codec.field "QueryExecutionId" .queryExecutionId Codec.string
        |> Codec.buildObject


{-| Codec for StartQueryExecutionInput. -}
startQueryExecutionInputCodec : Codec StartQueryExecutionInput
startQueryExecutionInputCodec =
    Codec.object StartQueryExecutionInput
        |> Codec.field "WorkGroup" .workGroup workGroupNameCodec
        |> Codec.field "ResultConfiguration" .resultConfiguration resultConfigurationCodec
        |> Codec.field "QueryString" .queryString queryStringCodec
        |> Codec.field "QueryExecutionContext" .queryExecutionContext queryExecutionContextCodec
        |> Codec.field "ClientRequestToken" .clientRequestToken idempotencyTokenCodec
        |> Codec.buildObject


{-| Codec for RowList. -}
rowListCodec : Codec RowList
rowListCodec =
    Codec.list rowCodec


{-| Codec for Row. -}
rowCodec : Codec Row
rowCodec =
    Codec.object Row |> Codec.field "Data" .data datumListCodec |> Codec.buildObject


{-| Codec for ResultSetMetadata. -}
resultSetMetadataCodec : Codec ResultSetMetadata
resultSetMetadataCodec =
    Codec.object ResultSetMetadata |> Codec.field "ColumnInfo" .columnInfo columnInfoListCodec |> Codec.buildObject


{-| Codec for ResultSet. -}
resultSetCodec : Codec ResultSet
resultSetCodec =
    Codec.object ResultSet
        |> Codec.field "Rows" .rows rowListCodec
        |> Codec.field "ResultSetMetadata" .resultSetMetadata resultSetMetadataCodec
        |> Codec.buildObject


{-| Codec for ResultConfigurationUpdates. -}
resultConfigurationUpdatesCodec : Codec ResultConfigurationUpdates
resultConfigurationUpdatesCodec =
    Codec.object ResultConfigurationUpdates
        |> Codec.field "RemoveOutputLocation" .removeOutputLocation Codec.bool
        |> Codec.field "RemoveEncryptionConfiguration" .removeEncryptionConfiguration Codec.bool
        |> Codec.field "OutputLocation" .outputLocation Codec.string
        |> Codec.field "EncryptionConfiguration" .encryptionConfiguration encryptionConfigurationCodec
        |> Codec.buildObject


{-| Codec for ResultConfiguration. -}
resultConfigurationCodec : Codec ResultConfiguration
resultConfigurationCodec =
    Codec.object ResultConfiguration
        |> Codec.field "OutputLocation" .outputLocation Codec.string
        |> Codec.field "EncryptionConfiguration" .encryptionConfiguration encryptionConfigurationCodec
        |> Codec.buildObject


{-| Codec for QueryString. -}
queryStringCodec : Codec QueryString
queryStringCodec =
    Codec.build (Refined.encoder queryString) (Refined.decoder queryString)


{-| Codec for QueryExecutionStatus. -}
queryExecutionStatusCodec : Codec QueryExecutionStatus
queryExecutionStatusCodec =
    Codec.object QueryExecutionStatus
        |> Codec.field "SubmissionDateTime" .submissionDateTime dateCodec
        |> Codec.field "StateChangeReason" .stateChangeReason Codec.string
        |> Codec.field "State" .state queryExecutionStateCodec
        |> Codec.field "CompletionDateTime" .completionDateTime dateCodec
        |> Codec.buildObject


{-| Codec for QueryExecutionStatistics. -}
queryExecutionStatisticsCodec : Codec QueryExecutionStatistics
queryExecutionStatisticsCodec =
    Codec.object QueryExecutionStatistics
        |> Codec.field "EngineExecutionTimeInMillis" .engineExecutionTimeInMillis Codec.int
        |> Codec.field "DataScannedInBytes" .dataScannedInBytes Codec.int
        |> Codec.buildObject


{-| Codec for QueryExecutionState. -}
queryExecutionStateCodec : Codec QueryExecutionState
queryExecutionStateCodec =
    Codec.build (Enum.encoder queryExecutionState) (Enum.decoder queryExecutionState)


{-| Codec for QueryExecutionList. -}
queryExecutionListCodec : Codec QueryExecutionList
queryExecutionListCodec =
    Codec.list queryExecutionCodec


{-| Codec for QueryExecutionIdList. -}
queryExecutionIdListCodec : Codec QueryExecutionIdList
queryExecutionIdListCodec =
    Codec.list Codec.string


{-| Codec for QueryExecutionId. -}
queryExecutionIdCodec : Codec QueryExecutionId
queryExecutionIdCodec =
    Codec.string


{-| Codec for QueryExecutionContext. -}
queryExecutionContextCodec : Codec QueryExecutionContext
queryExecutionContextCodec =
    Codec.object QueryExecutionContext |> Codec.field "Database" .database databaseStringCodec |> Codec.buildObject


{-| Codec for QueryExecution. -}
queryExecutionCodec : Codec QueryExecution
queryExecutionCodec =
    Codec.object QueryExecution
        |> Codec.field "WorkGroup" .workGroup workGroupNameCodec
        |> Codec.field "Status" .status queryExecutionStatusCodec
        |> Codec.field "Statistics" .statistics queryExecutionStatisticsCodec
        |> Codec.field "StatementType" .statementType statementTypeCodec
        |> Codec.field "ResultConfiguration" .resultConfiguration resultConfigurationCodec
        |> Codec.field "QueryExecutionId" .queryExecutionId Codec.string
        |> Codec.field "QueryExecutionContext" .queryExecutionContext queryExecutionContextCodec
        |> Codec.field "Query" .query queryStringCodec
        |> Codec.buildObject


{-| Codec for NamedQueryList. -}
namedQueryListCodec : Codec NamedQueryList
namedQueryListCodec =
    Codec.list namedQueryCodec


{-| Codec for NamedQueryIdList. -}
namedQueryIdListCodec : Codec NamedQueryIdList
namedQueryIdListCodec =
    Codec.list Codec.string


{-| Codec for NamedQueryId. -}
namedQueryIdCodec : Codec NamedQueryId
namedQueryIdCodec =
    Codec.string


{-| Codec for NamedQuery. -}
namedQueryCodec : Codec NamedQuery
namedQueryCodec =
    Codec.object NamedQuery
        |> Codec.field "WorkGroup" .workGroup workGroupNameCodec
        |> Codec.field "QueryString" .queryString queryStringCodec
        |> Codec.field "NamedQueryId" .namedQueryId Codec.string
        |> Codec.field "Name" .name nameStringCodec
        |> Codec.field "Description" .description descriptionStringCodec
        |> Codec.field "Database" .database databaseStringCodec
        |> Codec.buildObject


{-| Codec for NameString. -}
nameStringCodec : Codec NameString
nameStringCodec =
    Codec.build (Refined.encoder nameString) (Refined.decoder nameString)


{-| Codec for MaxWorkGroupsCount. -}
maxWorkGroupsCountCodec : Codec MaxWorkGroupsCount
maxWorkGroupsCountCodec =
    Codec.build (Refined.encoder maxWorkGroupsCount) (Refined.decoder maxWorkGroupsCount)


{-| Codec for MaxTagsCount. -}
maxTagsCountCodec : Codec MaxTagsCount
maxTagsCountCodec =
    Codec.build (Refined.encoder maxTagsCount) (Refined.decoder maxTagsCount)


{-| Codec for MaxQueryResults. -}
maxQueryResultsCodec : Codec MaxQueryResults
maxQueryResultsCodec =
    Codec.build (Refined.encoder maxQueryResults) (Refined.decoder maxQueryResults)


{-| Codec for MaxQueryExecutionsCount. -}
maxQueryExecutionsCountCodec : Codec MaxQueryExecutionsCount
maxQueryExecutionsCountCodec =
    Codec.build (Refined.encoder maxQueryExecutionsCount) (Refined.decoder maxQueryExecutionsCount)


{-| Codec for MaxNamedQueriesCount. -}
maxNamedQueriesCountCodec : Codec MaxNamedQueriesCount
maxNamedQueriesCountCodec =
    Codec.build (Refined.encoder maxNamedQueriesCount) (Refined.decoder maxNamedQueriesCount)


{-| Codec for Long. -}
longCodec : Codec Long
longCodec =
    Codec.int


{-| Codec for ListWorkGroupsOutput. -}
listWorkGroupsOutputCodec : Codec ListWorkGroupsOutput
listWorkGroupsOutputCodec =
    Codec.object ListWorkGroupsOutput
        |> Codec.field "WorkGroups" .workGroups workGroupsListCodec
        |> Codec.field "NextToken" .nextToken tokenCodec
        |> Codec.buildObject


{-| Codec for ListWorkGroupsInput. -}
listWorkGroupsInputCodec : Codec ListWorkGroupsInput
listWorkGroupsInputCodec =
    Codec.object ListWorkGroupsInput
        |> Codec.field "NextToken" .nextToken tokenCodec
        |> Codec.field "MaxResults" .maxResults maxWorkGroupsCountCodec
        |> Codec.buildObject


{-| Codec for ListTagsForResourceOutput. -}
listTagsForResourceOutputCodec : Codec ListTagsForResourceOutput
listTagsForResourceOutputCodec =
    Codec.object ListTagsForResourceOutput
        |> Codec.field "Tags" .tags tagListCodec
        |> Codec.field "NextToken" .nextToken tokenCodec
        |> Codec.buildObject


{-| Codec for ListTagsForResourceInput. -}
listTagsForResourceInputCodec : Codec ListTagsForResourceInput
listTagsForResourceInputCodec =
    Codec.object ListTagsForResourceInput
        |> Codec.field "ResourceARN" .resourceArn amazonResourceNameCodec
        |> Codec.field "NextToken" .nextToken tokenCodec
        |> Codec.field "MaxResults" .maxResults maxTagsCountCodec
        |> Codec.buildObject


{-| Codec for ListQueryExecutionsOutput. -}
listQueryExecutionsOutputCodec : Codec ListQueryExecutionsOutput
listQueryExecutionsOutputCodec =
    Codec.object ListQueryExecutionsOutput
        |> Codec.field "QueryExecutionIds" .queryExecutionIds queryExecutionIdListCodec
        |> Codec.field "NextToken" .nextToken tokenCodec
        |> Codec.buildObject


{-| Codec for ListQueryExecutionsInput. -}
listQueryExecutionsInputCodec : Codec ListQueryExecutionsInput
listQueryExecutionsInputCodec =
    Codec.object ListQueryExecutionsInput
        |> Codec.field "WorkGroup" .workGroup workGroupNameCodec
        |> Codec.field "NextToken" .nextToken tokenCodec
        |> Codec.field "MaxResults" .maxResults maxQueryExecutionsCountCodec
        |> Codec.buildObject


{-| Codec for ListNamedQueriesOutput. -}
listNamedQueriesOutputCodec : Codec ListNamedQueriesOutput
listNamedQueriesOutputCodec =
    Codec.object ListNamedQueriesOutput
        |> Codec.field "NextToken" .nextToken tokenCodec
        |> Codec.field "NamedQueryIds" .namedQueryIds namedQueryIdListCodec
        |> Codec.buildObject


{-| Codec for ListNamedQueriesInput. -}
listNamedQueriesInputCodec : Codec ListNamedQueriesInput
listNamedQueriesInputCodec =
    Codec.object ListNamedQueriesInput
        |> Codec.field "WorkGroup" .workGroup workGroupNameCodec
        |> Codec.field "NextToken" .nextToken tokenCodec
        |> Codec.field "MaxResults" .maxResults maxNamedQueriesCountCodec
        |> Codec.buildObject


{-| Codec for Integer. -}
integerCodec : Codec Integer
integerCodec =
    Codec.int


{-| Codec for IdempotencyToken. -}
idempotencyTokenCodec : Codec IdempotencyToken
idempotencyTokenCodec =
    Codec.build (Refined.encoder idempotencyToken) (Refined.decoder idempotencyToken)


{-| Codec for GetWorkGroupOutput. -}
getWorkGroupOutputCodec : Codec GetWorkGroupOutput
getWorkGroupOutputCodec =
    Codec.object GetWorkGroupOutput |> Codec.field "WorkGroup" .workGroup workGroupCodec |> Codec.buildObject


{-| Codec for GetWorkGroupInput. -}
getWorkGroupInputCodec : Codec GetWorkGroupInput
getWorkGroupInputCodec =
    Codec.object GetWorkGroupInput |> Codec.field "WorkGroup" .workGroup workGroupNameCodec |> Codec.buildObject


{-| Codec for GetQueryResultsOutput. -}
getQueryResultsOutputCodec : Codec GetQueryResultsOutput
getQueryResultsOutputCodec =
    Codec.object GetQueryResultsOutput
        |> Codec.field "UpdateCount" .updateCount Codec.int
        |> Codec.field "ResultSet" .resultSet resultSetCodec
        |> Codec.field "NextToken" .nextToken tokenCodec
        |> Codec.buildObject


{-| Codec for GetQueryResultsInput. -}
getQueryResultsInputCodec : Codec GetQueryResultsInput
getQueryResultsInputCodec =
    Codec.object GetQueryResultsInput
        |> Codec.field "QueryExecutionId" .queryExecutionId Codec.string
        |> Codec.field "NextToken" .nextToken tokenCodec
        |> Codec.field "MaxResults" .maxResults maxQueryResultsCodec
        |> Codec.buildObject


{-| Codec for GetQueryExecutionOutput. -}
getQueryExecutionOutputCodec : Codec GetQueryExecutionOutput
getQueryExecutionOutputCodec =
    Codec.object GetQueryExecutionOutput
        |> Codec.field "QueryExecution" .queryExecution queryExecutionCodec
        |> Codec.buildObject


{-| Codec for GetQueryExecutionInput. -}
getQueryExecutionInputCodec : Codec GetQueryExecutionInput
getQueryExecutionInputCodec =
    Codec.object GetQueryExecutionInput
        |> Codec.field "QueryExecutionId" .queryExecutionId Codec.string
        |> Codec.buildObject


{-| Codec for GetNamedQueryOutput. -}
getNamedQueryOutputCodec : Codec GetNamedQueryOutput
getNamedQueryOutputCodec =
    Codec.object GetNamedQueryOutput |> Codec.field "NamedQuery" .namedQuery namedQueryCodec |> Codec.buildObject


{-| Codec for GetNamedQueryInput. -}
getNamedQueryInputCodec : Codec GetNamedQueryInput
getNamedQueryInputCodec =
    Codec.object GetNamedQueryInput |> Codec.field "NamedQueryId" .namedQueryId Codec.string |> Codec.buildObject


{-| Codec for ErrorMessage. -}
errorMessageCodec : Codec ErrorMessage
errorMessageCodec =
    Codec.string


{-| Codec for ErrorCode. -}
errorCodeCodec : Codec ErrorCode
errorCodeCodec =
    Codec.build (Refined.encoder errorCode) (Refined.decoder errorCode)


{-| Codec for EncryptionOption. -}
encryptionOptionCodec : Codec EncryptionOption
encryptionOptionCodec =
    Codec.build (Enum.encoder encryptionOption) (Enum.decoder encryptionOption)


{-| Codec for EncryptionConfiguration. -}
encryptionConfigurationCodec : Codec EncryptionConfiguration
encryptionConfigurationCodec =
    Codec.object EncryptionConfiguration
        |> Codec.field "KmsKey" .kmsKey Codec.string
        |> Codec.field "EncryptionOption" .encryptionOption encryptionOptionCodec
        |> Codec.buildObject


{-| Codec for DescriptionString. -}
descriptionStringCodec : Codec DescriptionString
descriptionStringCodec =
    Codec.build (Refined.encoder descriptionString) (Refined.decoder descriptionString)


{-| Codec for DeleteWorkGroupOutput. -}
deleteWorkGroupOutputCodec : Codec DeleteWorkGroupOutput
deleteWorkGroupOutputCodec =
    Codec.object DeleteWorkGroupOutput |> Codec.buildObject


{-| Codec for DeleteWorkGroupInput. -}
deleteWorkGroupInputCodec : Codec DeleteWorkGroupInput
deleteWorkGroupInputCodec =
    Codec.object DeleteWorkGroupInput
        |> Codec.field "WorkGroup" .workGroup workGroupNameCodec
        |> Codec.field "RecursiveDeleteOption" .recursiveDeleteOption Codec.bool
        |> Codec.buildObject


{-| Codec for DeleteNamedQueryOutput. -}
deleteNamedQueryOutputCodec : Codec DeleteNamedQueryOutput
deleteNamedQueryOutputCodec =
    Codec.object DeleteNamedQueryOutput |> Codec.buildObject


{-| Codec for DeleteNamedQueryInput. -}
deleteNamedQueryInputCodec : Codec DeleteNamedQueryInput
deleteNamedQueryInputCodec =
    Codec.object DeleteNamedQueryInput |> Codec.field "NamedQueryId" .namedQueryId Codec.string |> Codec.buildObject


{-| Codec for Datum. -}
datumCodec : Codec Datum
datumCodec =
    Codec.object Datum |> Codec.field "VarCharValue" .varCharValue Codec.string |> Codec.buildObject


{-| Codec for Date. -}
dateCodec : Codec Date
dateCodec =
    Codec.string


{-| Codec for DatabaseString. -}
databaseStringCodec : Codec DatabaseString
databaseStringCodec =
    Codec.build (Refined.encoder databaseString) (Refined.decoder databaseString)


{-| Codec for CreateWorkGroupOutput. -}
createWorkGroupOutputCodec : Codec CreateWorkGroupOutput
createWorkGroupOutputCodec =
    Codec.object CreateWorkGroupOutput |> Codec.buildObject


{-| Codec for CreateWorkGroupInput. -}
createWorkGroupInputCodec : Codec CreateWorkGroupInput
createWorkGroupInputCodec =
    Codec.object CreateWorkGroupInput
        |> Codec.field "Tags" .tags tagListCodec
        |> Codec.field "Name" .name workGroupNameCodec
        |> Codec.field "Description" .description workGroupDescriptionStringCodec
        |> Codec.field "Configuration" .configuration workGroupConfigurationCodec
        |> Codec.buildObject


{-| Codec for CreateNamedQueryOutput. -}
createNamedQueryOutputCodec : Codec CreateNamedQueryOutput
createNamedQueryOutputCodec =
    Codec.object CreateNamedQueryOutput |> Codec.field "NamedQueryId" .namedQueryId Codec.string |> Codec.buildObject


{-| Codec for CreateNamedQueryInput. -}
createNamedQueryInputCodec : Codec CreateNamedQueryInput
createNamedQueryInputCodec =
    Codec.object CreateNamedQueryInput
        |> Codec.field "WorkGroup" .workGroup workGroupNameCodec
        |> Codec.field "QueryString" .queryString queryStringCodec
        |> Codec.field "Name" .name nameStringCodec
        |> Codec.field "Description" .description descriptionStringCodec
        |> Codec.field "Database" .database databaseStringCodec
        |> Codec.field "ClientRequestToken" .clientRequestToken idempotencyTokenCodec
        |> Codec.buildObject


{-| Codec for ColumnNullable. -}
columnNullableCodec : Codec ColumnNullable
columnNullableCodec =
    Codec.build (Enum.encoder columnNullable) (Enum.decoder columnNullable)


{-| Codec for ColumnInfoList. -}
columnInfoListCodec : Codec ColumnInfoList
columnInfoListCodec =
    Codec.list columnInfoCodec


{-| Codec for ColumnInfo. -}
columnInfoCodec : Codec ColumnInfo
columnInfoCodec =
    Codec.object ColumnInfo
        |> Codec.field "Type" .type_ Codec.string
        |> Codec.field "TableName" .tableName Codec.string
        |> Codec.field "SchemaName" .schemaName Codec.string
        |> Codec.field "Scale" .scale Codec.int
        |> Codec.field "Precision" .precision Codec.int
        |> Codec.field "Nullable" .nullable columnNullableCodec
        |> Codec.field "Name" .name Codec.string
        |> Codec.field "Label" .label Codec.string
        |> Codec.field "CatalogName" .catalogName Codec.string
        |> Codec.field "CaseSensitive" .caseSensitive Codec.bool
        |> Codec.buildObject


{-| Codec for BytesScannedCutoffValue. -}
bytesScannedCutoffValueCodec : Codec BytesScannedCutoffValue
bytesScannedCutoffValueCodec =
    Codec.int


{-| Codec for BoxedBoolean. -}
boxedBooleanCodec : Codec BoxedBoolean
boxedBooleanCodec =
    Codec.bool


{-| Codec for Boolean. -}
booleanCodec : Codec Boolean
booleanCodec =
    Codec.bool


{-| Codec for BatchGetQueryExecutionOutput. -}
batchGetQueryExecutionOutputCodec : Codec BatchGetQueryExecutionOutput
batchGetQueryExecutionOutputCodec =
    Codec.object BatchGetQueryExecutionOutput
        |> Codec.field "UnprocessedQueryExecutionIds" .unprocessedQueryExecutionIds unprocessedQueryExecutionIdListCodec
        |> Codec.field "QueryExecutions" .queryExecutions queryExecutionListCodec
        |> Codec.buildObject


{-| Codec for BatchGetQueryExecutionInput. -}
batchGetQueryExecutionInputCodec : Codec BatchGetQueryExecutionInput
batchGetQueryExecutionInputCodec =
    Codec.object BatchGetQueryExecutionInput
        |> Codec.field "QueryExecutionIds" .queryExecutionIds queryExecutionIdListCodec
        |> Codec.buildObject


{-| Codec for BatchGetNamedQueryOutput. -}
batchGetNamedQueryOutputCodec : Codec BatchGetNamedQueryOutput
batchGetNamedQueryOutputCodec =
    Codec.object BatchGetNamedQueryOutput
        |> Codec.field "UnprocessedNamedQueryIds" .unprocessedNamedQueryIds unprocessedNamedQueryIdListCodec
        |> Codec.field "NamedQueries" .namedQueries namedQueryListCodec
        |> Codec.buildObject


{-| Codec for BatchGetNamedQueryInput. -}
batchGetNamedQueryInputCodec : Codec BatchGetNamedQueryInput
batchGetNamedQueryInputCodec =
    Codec.object BatchGetNamedQueryInput
        |> Codec.field "NamedQueryIds" .namedQueryIds namedQueryIdListCodec
        |> Codec.buildObject


{-| Codec for AmazonResourceName. -}
amazonResourceNameCodec : Codec AmazonResourceName
amazonResourceNameCodec =
    Codec.build (Refined.encoder amazonResourceName) (Refined.decoder amazonResourceName)
