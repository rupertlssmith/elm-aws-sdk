module AWS.Athena exposing (service)

import AWS.Core.Decode
import AWS.Core.Http
import AWS.Core.Service
import Codec exposing (Codec)
import Enum exposing (Enum)
import Guarded exposing (Guarded)


{-| Configuration for this service. -}
service : AWS.Core.Service.Service
service =
    AWS.Core.Service.defineGlobal "athena" "2017-05-18" AWS.Core.Service.json AWS.Core.Service.signV4


{-| AWS Endpoint. -}
updateWorkGroup : UpdateWorkGroupInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateWorkGroupOutput)
updateWorkGroup req =
    let
        jsonBody =
            req |> Codec.encoder updateWorkGroupInputCodec |> AWS.Core.Http.jsonBody

        responseDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "UpdateWorkGroup"
                (AWS.Core.Decode.ResultDecoder "UpdateWorkGroupOutput" Codec.decoder updateWorkGroupOutputCodec)
    in
    AWS.Core.Http.request AWS.Core.Http.HTTP "/" jsonBody responseDecoder


{-| AWS Endpoint. -}
untagResource : UntagResourceInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UntagResourceOutput)
untagResource req =
    let
        jsonBody =
            req |> Codec.encoder untagResourceInputCodec |> AWS.Core.Http.jsonBody

        responseDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "UntagResource"
                (AWS.Core.Decode.ResultDecoder "UntagResourceOutput" Codec.decoder untagResourceOutputCodec)
    in
    AWS.Core.Http.request AWS.Core.Http.HTTP "/" jsonBody responseDecoder


{-| AWS Endpoint. -}
tagResource : TagResourceInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TagResourceOutput)
tagResource req =
    let
        jsonBody =
            req |> Codec.encoder tagResourceInputCodec |> AWS.Core.Http.jsonBody

        responseDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "TagResource"
                (AWS.Core.Decode.ResultDecoder "TagResourceOutput" Codec.decoder tagResourceOutputCodec)
    in
    AWS.Core.Http.request AWS.Core.Http.HTTP "/" jsonBody responseDecoder


{-| AWS Endpoint. -}
stopQueryExecution :
    StopQueryExecutionInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StopQueryExecutionOutput)
stopQueryExecution req =
    let
        jsonBody =
            req |> Codec.encoder stopQueryExecutionInputCodec |> AWS.Core.Http.jsonBody

        responseDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "StopQueryExecution"
                (AWS.Core.Decode.ResultDecoder "StopQueryExecutionOutput" Codec.decoder stopQueryExecutionOutputCodec)
    in
    AWS.Core.Http.request AWS.Core.Http.HTTP "/" jsonBody responseDecoder


{-| AWS Endpoint. -}
startQueryExecution :
    StartQueryExecutionInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartQueryExecutionOutput)
startQueryExecution req =
    let
        jsonBody =
            req |> Codec.encoder startQueryExecutionInputCodec |> AWS.Core.Http.jsonBody

        responseDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "StartQueryExecution"
                (AWS.Core.Decode.ResultDecoder "StartQueryExecutionOutput" Codec.decoder startQueryExecutionOutputCodec)
    in
    AWS.Core.Http.request AWS.Core.Http.HTTP "/" jsonBody responseDecoder


{-| AWS Endpoint. -}
listWorkGroups : ListWorkGroupsInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListWorkGroupsOutput)
listWorkGroups req =
    let
        jsonBody =
            req |> Codec.encoder listWorkGroupsInputCodec |> AWS.Core.Http.jsonBody

        responseDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListWorkGroups"
                (AWS.Core.Decode.ResultDecoder "ListWorkGroupsOutput" Codec.decoder listWorkGroupsOutputCodec)
    in
    AWS.Core.Http.request AWS.Core.Http.HTTP "/" jsonBody responseDecoder


{-| AWS Endpoint. -}
listTagsForResource :
    ListTagsForResourceInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTagsForResourceOutput)
listTagsForResource req =
    let
        jsonBody =
            req |> Codec.encoder listTagsForResourceInputCodec |> AWS.Core.Http.jsonBody

        responseDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListTagsForResource"
                (AWS.Core.Decode.ResultDecoder "ListTagsForResourceOutput" Codec.decoder listTagsForResourceOutputCodec)
    in
    AWS.Core.Http.request AWS.Core.Http.HTTP "/" jsonBody responseDecoder


{-| AWS Endpoint. -}
listQueryExecutions :
    ListQueryExecutionsInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListQueryExecutionsOutput)
listQueryExecutions req =
    let
        jsonBody =
            req |> Codec.encoder listQueryExecutionsInputCodec |> AWS.Core.Http.jsonBody

        responseDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListQueryExecutions"
                (AWS.Core.Decode.ResultDecoder "ListQueryExecutionsOutput" Codec.decoder listQueryExecutionsOutputCodec)
    in
    AWS.Core.Http.request AWS.Core.Http.HTTP "/" jsonBody responseDecoder


{-| AWS Endpoint. -}
listNamedQueries :
    ListNamedQueriesInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListNamedQueriesOutput)
listNamedQueries req =
    let
        jsonBody =
            req |> Codec.encoder listNamedQueriesInputCodec |> AWS.Core.Http.jsonBody

        responseDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListNamedQueries"
                (AWS.Core.Decode.ResultDecoder "ListNamedQueriesOutput" Codec.decoder listNamedQueriesOutputCodec)
    in
    AWS.Core.Http.request AWS.Core.Http.HTTP "/" jsonBody responseDecoder


{-| AWS Endpoint. -}
getWorkGroup : GetWorkGroupInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetWorkGroupOutput)
getWorkGroup req =
    let
        jsonBody =
            req |> Codec.encoder getWorkGroupInputCodec |> AWS.Core.Http.jsonBody

        responseDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetWorkGroup"
                (AWS.Core.Decode.ResultDecoder "GetWorkGroupOutput" Codec.decoder getWorkGroupOutputCodec)
    in
    AWS.Core.Http.request AWS.Core.Http.HTTP "/" jsonBody responseDecoder


{-| AWS Endpoint. -}
getQueryResults : GetQueryResultsInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetQueryResultsOutput)
getQueryResults req =
    let
        jsonBody =
            req |> Codec.encoder getQueryResultsInputCodec |> AWS.Core.Http.jsonBody

        responseDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetQueryResults"
                (AWS.Core.Decode.ResultDecoder "GetQueryResultsOutput" Codec.decoder getQueryResultsOutputCodec)
    in
    AWS.Core.Http.request AWS.Core.Http.HTTP "/" jsonBody responseDecoder


{-| AWS Endpoint. -}
getQueryExecution :
    GetQueryExecutionInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetQueryExecutionOutput)
getQueryExecution req =
    let
        jsonBody =
            req |> Codec.encoder getQueryExecutionInputCodec |> AWS.Core.Http.jsonBody

        responseDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetQueryExecution"
                (AWS.Core.Decode.ResultDecoder "GetQueryExecutionOutput" Codec.decoder getQueryExecutionOutputCodec)
    in
    AWS.Core.Http.request AWS.Core.Http.HTTP "/" jsonBody responseDecoder


{-| AWS Endpoint. -}
getNamedQuery : GetNamedQueryInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetNamedQueryOutput)
getNamedQuery req =
    let
        jsonBody =
            req |> Codec.encoder getNamedQueryInputCodec |> AWS.Core.Http.jsonBody

        responseDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetNamedQuery"
                (AWS.Core.Decode.ResultDecoder "GetNamedQueryOutput" Codec.decoder getNamedQueryOutputCodec)
    in
    AWS.Core.Http.request AWS.Core.Http.HTTP "/" jsonBody responseDecoder


{-| AWS Endpoint. -}
deleteWorkGroup : DeleteWorkGroupInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteWorkGroupOutput)
deleteWorkGroup req =
    let
        jsonBody =
            req |> Codec.encoder deleteWorkGroupInputCodec |> AWS.Core.Http.jsonBody

        responseDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DeleteWorkGroup"
                (AWS.Core.Decode.ResultDecoder "DeleteWorkGroupOutput" Codec.decoder deleteWorkGroupOutputCodec)
    in
    AWS.Core.Http.request AWS.Core.Http.HTTP "/" jsonBody responseDecoder


{-| AWS Endpoint. -}
deleteNamedQuery :
    DeleteNamedQueryInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteNamedQueryOutput)
deleteNamedQuery req =
    let
        jsonBody =
            req |> Codec.encoder deleteNamedQueryInputCodec |> AWS.Core.Http.jsonBody

        responseDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DeleteNamedQuery"
                (AWS.Core.Decode.ResultDecoder "DeleteNamedQueryOutput" Codec.decoder deleteNamedQueryOutputCodec)
    in
    AWS.Core.Http.request AWS.Core.Http.HTTP "/" jsonBody responseDecoder


{-| AWS Endpoint. -}
createWorkGroup : CreateWorkGroupInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateWorkGroupOutput)
createWorkGroup req =
    let
        jsonBody =
            req |> Codec.encoder createWorkGroupInputCodec |> AWS.Core.Http.jsonBody

        responseDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateWorkGroup"
                (AWS.Core.Decode.ResultDecoder "CreateWorkGroupOutput" Codec.decoder createWorkGroupOutputCodec)
    in
    AWS.Core.Http.request AWS.Core.Http.HTTP "/" jsonBody responseDecoder


{-| AWS Endpoint. -}
createNamedQuery :
    CreateNamedQueryInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateNamedQueryOutput)
createNamedQuery req =
    let
        jsonBody =
            req |> Codec.encoder createNamedQueryInputCodec |> AWS.Core.Http.jsonBody

        responseDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateNamedQuery"
                (AWS.Core.Decode.ResultDecoder "CreateNamedQueryOutput" Codec.decoder createNamedQueryOutputCodec)
    in
    AWS.Core.Http.request AWS.Core.Http.HTTP "/" jsonBody responseDecoder


{-| AWS Endpoint. -}
batchGetQueryExecution :
    BatchGetQueryExecutionInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchGetQueryExecutionOutput)
batchGetQueryExecution req =
    let
        jsonBody =
            req |> Codec.encoder batchGetQueryExecutionInputCodec |> AWS.Core.Http.jsonBody

        responseDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "BatchGetQueryExecution"
                (AWS.Core.Decode.ResultDecoder
                    "BatchGetQueryExecutionOutput"
                    Codec.decoder batchGetQueryExecutionOutputCodec
                )
    in
    AWS.Core.Http.request AWS.Core.Http.HTTP "/" jsonBody responseDecoder


{-| AWS Endpoint. -}
batchGetNamedQuery :
    BatchGetNamedQueryInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchGetNamedQueryOutput)
batchGetNamedQuery req =
    let
        jsonBody =
            req |> Codec.encoder batchGetNamedQueryInputCodec |> AWS.Core.Http.jsonBody

        responseDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "BatchGetNamedQuery"
                (AWS.Core.Decode.ResultDecoder "BatchGetNamedQueryOutput" Codec.decoder batchGetNamedQueryOutputCodec)
    in
    AWS.Core.Http.request AWS.Core.Http.HTTP "/" jsonBody responseDecoder


type AmazonResourceName
    = AmazonResourceName String


amazonResourceName : Guarded AmazonResourceName
amazonResourceName =
    let
        guardFn val =
            Guarded.minLength 1 val |> Result.andThen (Guarded.maxLength 1011)

        unboxFn (AmazonResourceName val) =
            val
    in
    Guarded.make guardFn Guarded.intErrorToString unboxFn


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
    { type : String
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
    Enum.make
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


databaseString : Guarded DatabaseString
databaseString =
    let
        guardFn val =
            Guarded.minLength 1 val |> Result.andThen (Guarded.maxLength 255)

        unboxFn (DatabaseString val) =
            val
    in
    Guarded.make guardFn Guarded.intErrorToString unboxFn


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


descriptionString : Guarded DescriptionString
descriptionString =
    let
        guardFn val =
            Guarded.minLength 1 val |> Result.andThen (Guarded.maxLength 1024)

        unboxFn (DescriptionString val) =
            val
    in
    Guarded.make guardFn Guarded.intErrorToString unboxFn


type alias EncryptionConfiguration =
    { kmsKey : String, encryptionOption : EncryptionOption }


type EncryptionOption
    = EncryptionOptionSseS3
    | EncryptionOptionSseKms
    | EncryptionOptionCseKms


encryptionOption : Enum EncryptionOption
encryptionOption =
    Enum.make
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


errorCode : Guarded ErrorCode
errorCode =
    let
        guardFn val =
            Guarded.minLength 1 val |> Result.andThen (Guarded.maxLength 256)

        unboxFn (ErrorCode val) =
            val
    in
    Guarded.make guardFn Guarded.intErrorToString unboxFn


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


idempotencyToken : Guarded IdempotencyToken
idempotencyToken =
    let
        guardFn val =
            Guarded.minLength 32 val |> Result.andThen (Guarded.maxLength 128)

        unboxFn (IdempotencyToken val) =
            val
    in
    Guarded.make guardFn Guarded.intErrorToString unboxFn


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


maxNamedQueriesCount : Guarded MaxNamedQueriesCount
maxNamedQueriesCount =
    let
        guardFn val =
            Guarded.gt 0 val |> Result.andThen (Guarded.lt 50)

        unboxFn (MaxNamedQueriesCount val) =
            val
    in
    Guarded.make guardFn Guarded.intErrorToString unboxFn


type MaxQueryExecutionsCount
    = MaxQueryExecutionsCount Int


maxQueryExecutionsCount : Guarded MaxQueryExecutionsCount
maxQueryExecutionsCount =
    let
        guardFn val =
            Guarded.gt 0 val |> Result.andThen (Guarded.lt 50)

        unboxFn (MaxQueryExecutionsCount val) =
            val
    in
    Guarded.make guardFn Guarded.intErrorToString unboxFn


type MaxQueryResults
    = MaxQueryResults Int


maxQueryResults : Guarded MaxQueryResults
maxQueryResults =
    let
        guardFn val =
            Guarded.gt 0 val |> Result.andThen (Guarded.lt 1000)

        unboxFn (MaxQueryResults val) =
            val
    in
    Guarded.make guardFn Guarded.intErrorToString unboxFn


type MaxTagsCount
    = MaxTagsCount Int


maxTagsCount : Guarded MaxTagsCount
maxTagsCount =
    let
        guardFn val =
            Guarded.gt 75 val

        unboxFn (MaxTagsCount val) =
            val
    in
    Guarded.make guardFn Guarded.intErrorToString unboxFn


type MaxWorkGroupsCount
    = MaxWorkGroupsCount Int


maxWorkGroupsCount : Guarded MaxWorkGroupsCount
maxWorkGroupsCount =
    let
        guardFn val =
            Guarded.gt 1 val |> Result.andThen (Guarded.lt 50)

        unboxFn (MaxWorkGroupsCount val) =
            val
    in
    Guarded.make guardFn Guarded.intErrorToString unboxFn


type NameString
    = NameString String


nameString : Guarded NameString
nameString =
    let
        guardFn val =
            Guarded.minLength 1 val |> Result.andThen (Guarded.maxLength 128)

        unboxFn (NameString val) =
            val
    in
    Guarded.make guardFn Guarded.intErrorToString unboxFn


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
    Enum.make
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


queryString : Guarded QueryString
queryString =
    let
        guardFn val =
            Guarded.minLength 1 val |> Result.andThen (Guarded.maxLength 262144)

        unboxFn (QueryString val) =
            val
    in
    Guarded.make guardFn Guarded.intErrorToString unboxFn


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
    Enum.make
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


type alias String =
    String


type alias Tag =
    { value : TagValue, key : TagKey }


type TagKey
    = TagKey String


tagKey : Guarded TagKey
tagKey =
    let
        guardFn val =
            Guarded.minLength 1 val |> Result.andThen (Guarded.maxLength 128)

        unboxFn (TagKey val) =
            val
    in
    Guarded.make guardFn Guarded.intErrorToString unboxFn


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


tagValue : Guarded TagValue
tagValue =
    let
        guardFn val =
            Guarded.minLength 0 val |> Result.andThen (Guarded.maxLength 256)

        unboxFn (TagValue val) =
            val
    in
    Guarded.make guardFn Guarded.intErrorToString unboxFn


type Token
    = Token String


token : Guarded Token
token =
    let
        guardFn val =
            Guarded.minLength 1 val |> Result.andThen (Guarded.maxLength 1024)

        unboxFn (Token val) =
            val
    in
    Guarded.make guardFn Guarded.intErrorToString unboxFn


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


workGroupDescriptionString : Guarded WorkGroupDescriptionString
workGroupDescriptionString =
    let
        guardFn val =
            Guarded.minLength 0 val |> Result.andThen (Guarded.maxLength 1024)

        unboxFn (WorkGroupDescriptionString val) =
            val
    in
    Guarded.make guardFn Guarded.intErrorToString unboxFn


type WorkGroupName
    = WorkGroupName String


workGroupName : Guarded WorkGroupName
workGroupName =
    let
        guardFn val =
            Guarded.regexMatch "[a-zA-z0-9._-]{1,128}" val

        unboxFn (WorkGroupName val) =
            val
    in
    Guarded.make guardFn Guarded.intErrorToString unboxFn


type WorkGroupState
    = WorkGroupStateEnabled
    | WorkGroupStateDisabled


workGroupState : Enum WorkGroupState
workGroupState =
    Enum.make
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
        |> Codec.field "state" .state workGroupStateCodec
        |> Codec.field "name" .name workGroupNameCodec
        |> Codec.field "description" .description workGroupDescriptionStringCodec
        |> Codec.field "creationTime" .creationTime dateCodec
        |> Codec.buildObject


{-| Codec for WorkGroupState. -}
workGroupStateCodec : Codec WorkGroupState
workGroupStateCodec =
    Codec.build (Enum.encoder workGroupState) (Enum.decoder workGroupState)


{-| Codec for WorkGroupName. -}
workGroupNameCodec : Codec WorkGroupName
workGroupNameCodec =
    Codec.build (Guarded.encoder workGroupName) (Guarded.decoder workGroupName)


{-| Codec for WorkGroupDescriptionString. -}
workGroupDescriptionStringCodec : Codec WorkGroupDescriptionString
workGroupDescriptionStringCodec =
    Codec.build (Guarded.encoder workGroupDescriptionString) (Guarded.decoder workGroupDescriptionString)


{-| Codec for WorkGroupConfigurationUpdates. -}
workGroupConfigurationUpdatesCodec : Codec WorkGroupConfigurationUpdates
workGroupConfigurationUpdatesCodec =
    Codec.object WorkGroupConfigurationUpdates
        |> Codec.field "resultConfigurationUpdates" .resultConfigurationUpdates resultConfigurationUpdatesCodec
        |> Codec.field "removeBytesScannedCutoffPerQuery" .removeBytesScannedCutoffPerQuery Codec.bool
        |> Codec.field "publishCloudWatchMetricsEnabled" .publishCloudWatchMetricsEnabled Codec.bool
        |> Codec.field "enforceWorkGroupConfiguration" .enforceWorkGroupConfiguration Codec.bool
        |> Codec.field "bytesScannedCutoffPerQuery" .bytesScannedCutoffPerQuery Codec.int
        |> Codec.buildObject


{-| Codec for WorkGroupConfiguration. -}
workGroupConfigurationCodec : Codec WorkGroupConfiguration
workGroupConfigurationCodec =
    Codec.object WorkGroupConfiguration
        |> Codec.field "resultConfiguration" .resultConfiguration resultConfigurationCodec
        |> Codec.field "publishCloudWatchMetricsEnabled" .publishCloudWatchMetricsEnabled Codec.bool
        |> Codec.field "enforceWorkGroupConfiguration" .enforceWorkGroupConfiguration Codec.bool
        |> Codec.field "bytesScannedCutoffPerQuery" .bytesScannedCutoffPerQuery Codec.int
        |> Codec.buildObject


{-| Codec for WorkGroup. -}
workGroupCodec : Codec WorkGroup
workGroupCodec =
    Codec.object WorkGroup
        |> Codec.field "state" .state workGroupStateCodec
        |> Codec.field "name" .name workGroupNameCodec
        |> Codec.field "description" .description workGroupDescriptionStringCodec
        |> Codec.field "creationTime" .creationTime dateCodec
        |> Codec.field "configuration" .configuration workGroupConfigurationCodec
        |> Codec.buildObject


{-| Codec for UpdateWorkGroupOutput. -}
updateWorkGroupOutputCodec : Codec UpdateWorkGroupOutput
updateWorkGroupOutputCodec =
    Codec.object UpdateWorkGroupOutput |> Codec.buildObject


{-| Codec for UpdateWorkGroupInput. -}
updateWorkGroupInputCodec : Codec UpdateWorkGroupInput
updateWorkGroupInputCodec =
    Codec.object UpdateWorkGroupInput
        |> Codec.field "workGroup" .workGroup workGroupNameCodec
        |> Codec.field "state" .state workGroupStateCodec
        |> Codec.field "description" .description workGroupDescriptionStringCodec
        |> Codec.field "configurationUpdates" .configurationUpdates workGroupConfigurationUpdatesCodec
        |> Codec.buildObject


{-| Codec for UntagResourceOutput. -}
untagResourceOutputCodec : Codec UntagResourceOutput
untagResourceOutputCodec =
    Codec.object UntagResourceOutput |> Codec.buildObject


{-| Codec for UntagResourceInput. -}
untagResourceInputCodec : Codec UntagResourceInput
untagResourceInputCodec =
    Codec.object UntagResourceInput
        |> Codec.field "tagKeys" .tagKeys tagKeyListCodec
        |> Codec.field "resourceArn" .resourceArn amazonResourceNameCodec
        |> Codec.buildObject


{-| Codec for UnprocessedQueryExecutionIdList. -}
unprocessedQueryExecutionIdListCodec : Codec UnprocessedQueryExecutionIdList
unprocessedQueryExecutionIdListCodec =
    Codec.list unprocessedQueryExecutionIdCodec


{-| Codec for UnprocessedQueryExecutionId. -}
unprocessedQueryExecutionIdCodec : Codec UnprocessedQueryExecutionId
unprocessedQueryExecutionIdCodec =
    Codec.object UnprocessedQueryExecutionId
        |> Codec.field "queryExecutionId" .queryExecutionId Codec.string
        |> Codec.field "errorMessage" .errorMessage Codec.string
        |> Codec.field "errorCode" .errorCode errorCodeCodec
        |> Codec.buildObject


{-| Codec for UnprocessedNamedQueryIdList. -}
unprocessedNamedQueryIdListCodec : Codec UnprocessedNamedQueryIdList
unprocessedNamedQueryIdListCodec =
    Codec.list unprocessedNamedQueryIdCodec


{-| Codec for UnprocessedNamedQueryId. -}
unprocessedNamedQueryIdCodec : Codec UnprocessedNamedQueryId
unprocessedNamedQueryIdCodec =
    Codec.object UnprocessedNamedQueryId
        |> Codec.field "namedQueryId" .namedQueryId Codec.string
        |> Codec.field "errorMessage" .errorMessage Codec.string
        |> Codec.field "errorCode" .errorCode errorCodeCodec
        |> Codec.buildObject


{-| Codec for Token. -}
tokenCodec : Codec Token
tokenCodec =
    Codec.build (Guarded.encoder token) (Guarded.decoder token)


{-| Codec for TagValue. -}
tagValueCodec : Codec TagValue
tagValueCodec =
    Codec.build (Guarded.encoder tagValue) (Guarded.decoder tagValue)


{-| Codec for TagResourceOutput. -}
tagResourceOutputCodec : Codec TagResourceOutput
tagResourceOutputCodec =
    Codec.object TagResourceOutput |> Codec.buildObject


{-| Codec for TagResourceInput. -}
tagResourceInputCodec : Codec TagResourceInput
tagResourceInputCodec =
    Codec.object TagResourceInput
        |> Codec.field "tags" .tags tagListCodec
        |> Codec.field "resourceArn" .resourceArn amazonResourceNameCodec
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
    Codec.build (Guarded.encoder tagKey) (Guarded.decoder tagKey)


{-| Codec for Tag. -}
tagCodec : Codec Tag
tagCodec =
    Codec.object Tag
        |> Codec.field "value" .value tagValueCodec
        |> Codec.field "key" .key tagKeyCodec
        |> Codec.buildObject


{-| Codec for String. -}
stringCodec : Codec String
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
        |> Codec.field "queryExecutionId" .queryExecutionId Codec.string
        |> Codec.buildObject


{-| Codec for StatementType. -}
statementTypeCodec : Codec StatementType
statementTypeCodec =
    Codec.build (Enum.encoder statementType) (Enum.decoder statementType)


{-| Codec for StartQueryExecutionOutput. -}
startQueryExecutionOutputCodec : Codec StartQueryExecutionOutput
startQueryExecutionOutputCodec =
    Codec.object StartQueryExecutionOutput
        |> Codec.field "queryExecutionId" .queryExecutionId Codec.string
        |> Codec.buildObject


{-| Codec for StartQueryExecutionInput. -}
startQueryExecutionInputCodec : Codec StartQueryExecutionInput
startQueryExecutionInputCodec =
    Codec.object StartQueryExecutionInput
        |> Codec.field "workGroup" .workGroup workGroupNameCodec
        |> Codec.field "resultConfiguration" .resultConfiguration resultConfigurationCodec
        |> Codec.field "queryString" .queryString queryStringCodec
        |> Codec.field "queryExecutionContext" .queryExecutionContext queryExecutionContextCodec
        |> Codec.field "clientRequestToken" .clientRequestToken idempotencyTokenCodec
        |> Codec.buildObject


{-| Codec for RowList. -}
rowListCodec : Codec RowList
rowListCodec =
    Codec.list rowCodec


{-| Codec for Row. -}
rowCodec : Codec Row
rowCodec =
    Codec.object Row |> Codec.field "data" .data datumListCodec |> Codec.buildObject


{-| Codec for ResultSetMetadata. -}
resultSetMetadataCodec : Codec ResultSetMetadata
resultSetMetadataCodec =
    Codec.object ResultSetMetadata |> Codec.field "columnInfo" .columnInfo columnInfoListCodec |> Codec.buildObject


{-| Codec for ResultSet. -}
resultSetCodec : Codec ResultSet
resultSetCodec =
    Codec.object ResultSet
        |> Codec.field "rows" .rows rowListCodec
        |> Codec.field "resultSetMetadata" .resultSetMetadata resultSetMetadataCodec
        |> Codec.buildObject


{-| Codec for ResultConfigurationUpdates. -}
resultConfigurationUpdatesCodec : Codec ResultConfigurationUpdates
resultConfigurationUpdatesCodec =
    Codec.object ResultConfigurationUpdates
        |> Codec.field "removeOutputLocation" .removeOutputLocation Codec.bool
        |> Codec.field "removeEncryptionConfiguration" .removeEncryptionConfiguration Codec.bool
        |> Codec.field "outputLocation" .outputLocation Codec.string
        |> Codec.field "encryptionConfiguration" .encryptionConfiguration encryptionConfigurationCodec
        |> Codec.buildObject


{-| Codec for ResultConfiguration. -}
resultConfigurationCodec : Codec ResultConfiguration
resultConfigurationCodec =
    Codec.object ResultConfiguration
        |> Codec.field "outputLocation" .outputLocation Codec.string
        |> Codec.field "encryptionConfiguration" .encryptionConfiguration encryptionConfigurationCodec
        |> Codec.buildObject


{-| Codec for QueryString. -}
queryStringCodec : Codec QueryString
queryStringCodec =
    Codec.build (Guarded.encoder queryString) (Guarded.decoder queryString)


{-| Codec for QueryExecutionStatus. -}
queryExecutionStatusCodec : Codec QueryExecutionStatus
queryExecutionStatusCodec =
    Codec.object QueryExecutionStatus
        |> Codec.field "submissionDateTime" .submissionDateTime dateCodec
        |> Codec.field "stateChangeReason" .stateChangeReason Codec.string
        |> Codec.field "state" .state queryExecutionStateCodec
        |> Codec.field "completionDateTime" .completionDateTime dateCodec
        |> Codec.buildObject


{-| Codec for QueryExecutionStatistics. -}
queryExecutionStatisticsCodec : Codec QueryExecutionStatistics
queryExecutionStatisticsCodec =
    Codec.object QueryExecutionStatistics
        |> Codec.field "engineExecutionTimeInMillis" .engineExecutionTimeInMillis Codec.int
        |> Codec.field "dataScannedInBytes" .dataScannedInBytes Codec.int
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
    Codec.object QueryExecutionContext |> Codec.field "database" .database databaseStringCodec |> Codec.buildObject


{-| Codec for QueryExecution. -}
queryExecutionCodec : Codec QueryExecution
queryExecutionCodec =
    Codec.object QueryExecution
        |> Codec.field "workGroup" .workGroup workGroupNameCodec
        |> Codec.field "status" .status queryExecutionStatusCodec
        |> Codec.field "statistics" .statistics queryExecutionStatisticsCodec
        |> Codec.field "statementType" .statementType statementTypeCodec
        |> Codec.field "resultConfiguration" .resultConfiguration resultConfigurationCodec
        |> Codec.field "queryExecutionId" .queryExecutionId Codec.string
        |> Codec.field "queryExecutionContext" .queryExecutionContext queryExecutionContextCodec
        |> Codec.field "query" .query queryStringCodec
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
        |> Codec.field "workGroup" .workGroup workGroupNameCodec
        |> Codec.field "queryString" .queryString queryStringCodec
        |> Codec.field "namedQueryId" .namedQueryId Codec.string
        |> Codec.field "name" .name nameStringCodec
        |> Codec.field "description" .description descriptionStringCodec
        |> Codec.field "database" .database databaseStringCodec
        |> Codec.buildObject


{-| Codec for NameString. -}
nameStringCodec : Codec NameString
nameStringCodec =
    Codec.build (Guarded.encoder nameString) (Guarded.decoder nameString)


{-| Codec for MaxWorkGroupsCount. -}
maxWorkGroupsCountCodec : Codec MaxWorkGroupsCount
maxWorkGroupsCountCodec =
    Codec.build (Guarded.encoder maxWorkGroupsCount) (Guarded.decoder maxWorkGroupsCount)


{-| Codec for MaxTagsCount. -}
maxTagsCountCodec : Codec MaxTagsCount
maxTagsCountCodec =
    Codec.build (Guarded.encoder maxTagsCount) (Guarded.decoder maxTagsCount)


{-| Codec for MaxQueryResults. -}
maxQueryResultsCodec : Codec MaxQueryResults
maxQueryResultsCodec =
    Codec.build (Guarded.encoder maxQueryResults) (Guarded.decoder maxQueryResults)


{-| Codec for MaxQueryExecutionsCount. -}
maxQueryExecutionsCountCodec : Codec MaxQueryExecutionsCount
maxQueryExecutionsCountCodec =
    Codec.build (Guarded.encoder maxQueryExecutionsCount) (Guarded.decoder maxQueryExecutionsCount)


{-| Codec for MaxNamedQueriesCount. -}
maxNamedQueriesCountCodec : Codec MaxNamedQueriesCount
maxNamedQueriesCountCodec =
    Codec.build (Guarded.encoder maxNamedQueriesCount) (Guarded.decoder maxNamedQueriesCount)


{-| Codec for Long. -}
longCodec : Codec Long
longCodec =
    Codec.int


{-| Codec for ListWorkGroupsOutput. -}
listWorkGroupsOutputCodec : Codec ListWorkGroupsOutput
listWorkGroupsOutputCodec =
    Codec.object ListWorkGroupsOutput
        |> Codec.field "workGroups" .workGroups workGroupsListCodec
        |> Codec.field "nextToken" .nextToken tokenCodec
        |> Codec.buildObject


{-| Codec for ListWorkGroupsInput. -}
listWorkGroupsInputCodec : Codec ListWorkGroupsInput
listWorkGroupsInputCodec =
    Codec.object ListWorkGroupsInput
        |> Codec.field "nextToken" .nextToken tokenCodec
        |> Codec.field "maxResults" .maxResults maxWorkGroupsCountCodec
        |> Codec.buildObject


{-| Codec for ListTagsForResourceOutput. -}
listTagsForResourceOutputCodec : Codec ListTagsForResourceOutput
listTagsForResourceOutputCodec =
    Codec.object ListTagsForResourceOutput
        |> Codec.field "tags" .tags tagListCodec
        |> Codec.field "nextToken" .nextToken tokenCodec
        |> Codec.buildObject


{-| Codec for ListTagsForResourceInput. -}
listTagsForResourceInputCodec : Codec ListTagsForResourceInput
listTagsForResourceInputCodec =
    Codec.object ListTagsForResourceInput
        |> Codec.field "resourceArn" .resourceArn amazonResourceNameCodec
        |> Codec.field "nextToken" .nextToken tokenCodec
        |> Codec.field "maxResults" .maxResults maxTagsCountCodec
        |> Codec.buildObject


{-| Codec for ListQueryExecutionsOutput. -}
listQueryExecutionsOutputCodec : Codec ListQueryExecutionsOutput
listQueryExecutionsOutputCodec =
    Codec.object ListQueryExecutionsOutput
        |> Codec.field "queryExecutionIds" .queryExecutionIds queryExecutionIdListCodec
        |> Codec.field "nextToken" .nextToken tokenCodec
        |> Codec.buildObject


{-| Codec for ListQueryExecutionsInput. -}
listQueryExecutionsInputCodec : Codec ListQueryExecutionsInput
listQueryExecutionsInputCodec =
    Codec.object ListQueryExecutionsInput
        |> Codec.field "workGroup" .workGroup workGroupNameCodec
        |> Codec.field "nextToken" .nextToken tokenCodec
        |> Codec.field "maxResults" .maxResults maxQueryExecutionsCountCodec
        |> Codec.buildObject


{-| Codec for ListNamedQueriesOutput. -}
listNamedQueriesOutputCodec : Codec ListNamedQueriesOutput
listNamedQueriesOutputCodec =
    Codec.object ListNamedQueriesOutput
        |> Codec.field "nextToken" .nextToken tokenCodec
        |> Codec.field "namedQueryIds" .namedQueryIds namedQueryIdListCodec
        |> Codec.buildObject


{-| Codec for ListNamedQueriesInput. -}
listNamedQueriesInputCodec : Codec ListNamedQueriesInput
listNamedQueriesInputCodec =
    Codec.object ListNamedQueriesInput
        |> Codec.field "workGroup" .workGroup workGroupNameCodec
        |> Codec.field "nextToken" .nextToken tokenCodec
        |> Codec.field "maxResults" .maxResults maxNamedQueriesCountCodec
        |> Codec.buildObject


{-| Codec for Integer. -}
integerCodec : Codec Integer
integerCodec =
    Codec.int


{-| Codec for IdempotencyToken. -}
idempotencyTokenCodec : Codec IdempotencyToken
idempotencyTokenCodec =
    Codec.build (Guarded.encoder idempotencyToken) (Guarded.decoder idempotencyToken)


{-| Codec for GetWorkGroupOutput. -}
getWorkGroupOutputCodec : Codec GetWorkGroupOutput
getWorkGroupOutputCodec =
    Codec.object GetWorkGroupOutput |> Codec.field "workGroup" .workGroup workGroupCodec |> Codec.buildObject


{-| Codec for GetWorkGroupInput. -}
getWorkGroupInputCodec : Codec GetWorkGroupInput
getWorkGroupInputCodec =
    Codec.object GetWorkGroupInput |> Codec.field "workGroup" .workGroup workGroupNameCodec |> Codec.buildObject


{-| Codec for GetQueryResultsOutput. -}
getQueryResultsOutputCodec : Codec GetQueryResultsOutput
getQueryResultsOutputCodec =
    Codec.object GetQueryResultsOutput
        |> Codec.field "updateCount" .updateCount Codec.int
        |> Codec.field "resultSet" .resultSet resultSetCodec
        |> Codec.field "nextToken" .nextToken tokenCodec
        |> Codec.buildObject


{-| Codec for GetQueryResultsInput. -}
getQueryResultsInputCodec : Codec GetQueryResultsInput
getQueryResultsInputCodec =
    Codec.object GetQueryResultsInput
        |> Codec.field "queryExecutionId" .queryExecutionId Codec.string
        |> Codec.field "nextToken" .nextToken tokenCodec
        |> Codec.field "maxResults" .maxResults maxQueryResultsCodec
        |> Codec.buildObject


{-| Codec for GetQueryExecutionOutput. -}
getQueryExecutionOutputCodec : Codec GetQueryExecutionOutput
getQueryExecutionOutputCodec =
    Codec.object GetQueryExecutionOutput
        |> Codec.field "queryExecution" .queryExecution queryExecutionCodec
        |> Codec.buildObject


{-| Codec for GetQueryExecutionInput. -}
getQueryExecutionInputCodec : Codec GetQueryExecutionInput
getQueryExecutionInputCodec =
    Codec.object GetQueryExecutionInput
        |> Codec.field "queryExecutionId" .queryExecutionId Codec.string
        |> Codec.buildObject


{-| Codec for GetNamedQueryOutput. -}
getNamedQueryOutputCodec : Codec GetNamedQueryOutput
getNamedQueryOutputCodec =
    Codec.object GetNamedQueryOutput |> Codec.field "namedQuery" .namedQuery namedQueryCodec |> Codec.buildObject


{-| Codec for GetNamedQueryInput. -}
getNamedQueryInputCodec : Codec GetNamedQueryInput
getNamedQueryInputCodec =
    Codec.object GetNamedQueryInput |> Codec.field "namedQueryId" .namedQueryId Codec.string |> Codec.buildObject


{-| Codec for ErrorMessage. -}
errorMessageCodec : Codec ErrorMessage
errorMessageCodec =
    Codec.string


{-| Codec for ErrorCode. -}
errorCodeCodec : Codec ErrorCode
errorCodeCodec =
    Codec.build (Guarded.encoder errorCode) (Guarded.decoder errorCode)


{-| Codec for EncryptionOption. -}
encryptionOptionCodec : Codec EncryptionOption
encryptionOptionCodec =
    Codec.build (Enum.encoder encryptionOption) (Enum.decoder encryptionOption)


{-| Codec for EncryptionConfiguration. -}
encryptionConfigurationCodec : Codec EncryptionConfiguration
encryptionConfigurationCodec =
    Codec.object EncryptionConfiguration
        |> Codec.field "kmsKey" .kmsKey Codec.string
        |> Codec.field "encryptionOption" .encryptionOption encryptionOptionCodec
        |> Codec.buildObject


{-| Codec for DescriptionString. -}
descriptionStringCodec : Codec DescriptionString
descriptionStringCodec =
    Codec.build (Guarded.encoder descriptionString) (Guarded.decoder descriptionString)


{-| Codec for DeleteWorkGroupOutput. -}
deleteWorkGroupOutputCodec : Codec DeleteWorkGroupOutput
deleteWorkGroupOutputCodec =
    Codec.object DeleteWorkGroupOutput |> Codec.buildObject


{-| Codec for DeleteWorkGroupInput. -}
deleteWorkGroupInputCodec : Codec DeleteWorkGroupInput
deleteWorkGroupInputCodec =
    Codec.object DeleteWorkGroupInput
        |> Codec.field "workGroup" .workGroup workGroupNameCodec
        |> Codec.field "recursiveDeleteOption" .recursiveDeleteOption Codec.bool
        |> Codec.buildObject


{-| Codec for DeleteNamedQueryOutput. -}
deleteNamedQueryOutputCodec : Codec DeleteNamedQueryOutput
deleteNamedQueryOutputCodec =
    Codec.object DeleteNamedQueryOutput |> Codec.buildObject


{-| Codec for DeleteNamedQueryInput. -}
deleteNamedQueryInputCodec : Codec DeleteNamedQueryInput
deleteNamedQueryInputCodec =
    Codec.object DeleteNamedQueryInput |> Codec.field "namedQueryId" .namedQueryId Codec.string |> Codec.buildObject


{-| Codec for Datum. -}
datumCodec : Codec Datum
datumCodec =
    Codec.object Datum |> Codec.field "varCharValue" .varCharValue Codec.string |> Codec.buildObject


{-| Codec for Date. -}
dateCodec : Codec Date
dateCodec =
    Codec.string


{-| Codec for DatabaseString. -}
databaseStringCodec : Codec DatabaseString
databaseStringCodec =
    Codec.build (Guarded.encoder databaseString) (Guarded.decoder databaseString)


{-| Codec for CreateWorkGroupOutput. -}
createWorkGroupOutputCodec : Codec CreateWorkGroupOutput
createWorkGroupOutputCodec =
    Codec.object CreateWorkGroupOutput |> Codec.buildObject


{-| Codec for CreateWorkGroupInput. -}
createWorkGroupInputCodec : Codec CreateWorkGroupInput
createWorkGroupInputCodec =
    Codec.object CreateWorkGroupInput
        |> Codec.field "tags" .tags tagListCodec
        |> Codec.field "name" .name workGroupNameCodec
        |> Codec.field "description" .description workGroupDescriptionStringCodec
        |> Codec.field "configuration" .configuration workGroupConfigurationCodec
        |> Codec.buildObject


{-| Codec for CreateNamedQueryOutput. -}
createNamedQueryOutputCodec : Codec CreateNamedQueryOutput
createNamedQueryOutputCodec =
    Codec.object CreateNamedQueryOutput |> Codec.field "namedQueryId" .namedQueryId Codec.string |> Codec.buildObject


{-| Codec for CreateNamedQueryInput. -}
createNamedQueryInputCodec : Codec CreateNamedQueryInput
createNamedQueryInputCodec =
    Codec.object CreateNamedQueryInput
        |> Codec.field "workGroup" .workGroup workGroupNameCodec
        |> Codec.field "queryString" .queryString queryStringCodec
        |> Codec.field "name" .name nameStringCodec
        |> Codec.field "description" .description descriptionStringCodec
        |> Codec.field "database" .database databaseStringCodec
        |> Codec.field "clientRequestToken" .clientRequestToken idempotencyTokenCodec
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
        |> Codec.field "type" .type Codec.string
        |> Codec.field "tableName" .tableName Codec.string
        |> Codec.field "schemaName" .schemaName Codec.string
        |> Codec.field "scale" .scale Codec.int
        |> Codec.field "precision" .precision Codec.int
        |> Codec.field "nullable" .nullable columnNullableCodec
        |> Codec.field "name" .name Codec.string
        |> Codec.field "label" .label Codec.string
        |> Codec.field "catalogName" .catalogName Codec.string
        |> Codec.field "caseSensitive" .caseSensitive Codec.bool
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
        |> Codec.field "unprocessedQueryExecutionIds" .unprocessedQueryExecutionIds unprocessedQueryExecutionIdListCodec
        |> Codec.field "queryExecutions" .queryExecutions queryExecutionListCodec
        |> Codec.buildObject


{-| Codec for BatchGetQueryExecutionInput. -}
batchGetQueryExecutionInputCodec : Codec BatchGetQueryExecutionInput
batchGetQueryExecutionInputCodec =
    Codec.object BatchGetQueryExecutionInput
        |> Codec.field "queryExecutionIds" .queryExecutionIds queryExecutionIdListCodec
        |> Codec.buildObject


{-| Codec for BatchGetNamedQueryOutput. -}
batchGetNamedQueryOutputCodec : Codec BatchGetNamedQueryOutput
batchGetNamedQueryOutputCodec =
    Codec.object BatchGetNamedQueryOutput
        |> Codec.field "unprocessedNamedQueryIds" .unprocessedNamedQueryIds unprocessedNamedQueryIdListCodec
        |> Codec.field "namedQueries" .namedQueries namedQueryListCodec
        |> Codec.buildObject


{-| Codec for BatchGetNamedQueryInput. -}
batchGetNamedQueryInputCodec : Codec BatchGetNamedQueryInput
batchGetNamedQueryInputCodec =
    Codec.object BatchGetNamedQueryInput
        |> Codec.field "namedQueryIds" .namedQueryIds namedQueryIdListCodec
        |> Codec.buildObject


{-| Codec for AmazonResourceName. -}
amazonResourceNameCodec : Codec AmazonResourceName
amazonResourceNameCodec =
    Codec.build (Guarded.encoder amazonResourceName) (Guarded.decoder amazonResourceName)