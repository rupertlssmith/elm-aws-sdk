module AWS.DynamoDB exposing (service)

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
            AWS.Core.Service.setJsonVersion "1.0" >> AWS.Core.Service.setTargetPrefix "DynamoDB_20120810"
    in
    AWS.Core.Service.defineGlobal "dynamodb" "2012-08-10" AWS.Core.Service.JSON AWS.Core.Service.SignV4 optionsFn


{-| AWS Endpoint. -}
updateTimeToLive :
    UpdateTimeToLiveInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateTimeToLiveOutput)
updateTimeToLive req =
    let
        jsonBody =
            req |> Codec.encoder updateTimeToLiveInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "UpdateTimeToLive"
                (AWS.Core.Decode.ResultDecoder "UpdateTimeToLiveOutput" (Codec.decoder updateTimeToLiveOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
updateTable : UpdateTableInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateTableOutput)
updateTable req =
    let
        jsonBody =
            req |> Codec.encoder updateTableInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "UpdateTable"
                (AWS.Core.Decode.ResultDecoder "UpdateTableOutput" (Codec.decoder updateTableOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
updateItem : UpdateItemInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateItemOutput)
updateItem req =
    let
        jsonBody =
            req |> Codec.encoder updateItemInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "UpdateItem"
                (AWS.Core.Decode.ResultDecoder "UpdateItemOutput" (Codec.decoder updateItemOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
updateGlobalTableSettings :
    UpdateGlobalTableSettingsInput
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateGlobalTableSettingsOutput)
updateGlobalTableSettings req =
    let
        jsonBody =
            req |> Codec.encoder updateGlobalTableSettingsInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "UpdateGlobalTableSettings"
                (AWS.Core.Decode.ResultDecoder
                    "UpdateGlobalTableSettingsOutput"
                    (Codec.decoder updateGlobalTableSettingsOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
updateGlobalTable :
    UpdateGlobalTableInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateGlobalTableOutput)
updateGlobalTable req =
    let
        jsonBody =
            req |> Codec.encoder updateGlobalTableInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "UpdateGlobalTable"
                (AWS.Core.Decode.ResultDecoder "UpdateGlobalTableOutput" (Codec.decoder updateGlobalTableOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
updateContinuousBackups :
    UpdateContinuousBackupsInput
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateContinuousBackupsOutput)
updateContinuousBackups req =
    let
        jsonBody =
            req |> Codec.encoder updateContinuousBackupsInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "UpdateContinuousBackups"
                (AWS.Core.Decode.ResultDecoder
                    "UpdateContinuousBackupsOutput"
                    (Codec.decoder updateContinuousBackupsOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
untagResource : UntagResourceInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
untagResource req =
    let
        jsonBody =
            req |> Codec.encoder untagResourceInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "UntagResource" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
transactWriteItems :
    TransactWriteItemsInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TransactWriteItemsOutput)
transactWriteItems req =
    let
        jsonBody =
            req |> Codec.encoder transactWriteItemsInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "TransactWriteItems"
                (AWS.Core.Decode.ResultDecoder "TransactWriteItemsOutput" (Codec.decoder transactWriteItemsOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
transactGetItems :
    TransactGetItemsInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TransactGetItemsOutput)
transactGetItems req =
    let
        jsonBody =
            req |> Codec.encoder transactGetItemsInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "TransactGetItems"
                (AWS.Core.Decode.ResultDecoder "TransactGetItemsOutput" (Codec.decoder transactGetItemsOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
tagResource : TagResourceInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
tagResource req =
    let
        jsonBody =
            req |> Codec.encoder tagResourceInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "TagResource" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
scan : ScanInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ScanOutput)
scan req =
    let
        jsonBody =
            req |> Codec.encoder scanInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "Scan"
                (AWS.Core.Decode.ResultDecoder "ScanOutput" (Codec.decoder scanOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
restoreTableToPointInTime :
    RestoreTableToPointInTimeInput
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RestoreTableToPointInTimeOutput)
restoreTableToPointInTime req =
    let
        jsonBody =
            req |> Codec.encoder restoreTableToPointInTimeInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "RestoreTableToPointInTime"
                (AWS.Core.Decode.ResultDecoder
                    "RestoreTableToPointInTimeOutput"
                    (Codec.decoder restoreTableToPointInTimeOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
restoreTableFromBackup :
    RestoreTableFromBackupInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RestoreTableFromBackupOutput)
restoreTableFromBackup req =
    let
        jsonBody =
            req |> Codec.encoder restoreTableFromBackupInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "RestoreTableFromBackup"
                (AWS.Core.Decode.ResultDecoder
                    "RestoreTableFromBackupOutput"
                    (Codec.decoder restoreTableFromBackupOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
query : QueryInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper QueryOutput)
query req =
    let
        jsonBody =
            req |> Codec.encoder queryInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "Query"
                (AWS.Core.Decode.ResultDecoder "QueryOutput" (Codec.decoder queryOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
putItem : PutItemInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutItemOutput)
putItem req =
    let
        jsonBody =
            req |> Codec.encoder putItemInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "PutItem"
                (AWS.Core.Decode.ResultDecoder "PutItemOutput" (Codec.decoder putItemOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listTagsOfResource :
    ListTagsOfResourceInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTagsOfResourceOutput)
listTagsOfResource req =
    let
        jsonBody =
            req |> Codec.encoder listTagsOfResourceInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListTagsOfResource"
                (AWS.Core.Decode.ResultDecoder "ListTagsOfResourceOutput" (Codec.decoder listTagsOfResourceOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listTables : ListTablesInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTablesOutput)
listTables req =
    let
        jsonBody =
            req |> Codec.encoder listTablesInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListTables"
                (AWS.Core.Decode.ResultDecoder "ListTablesOutput" (Codec.decoder listTablesOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listGlobalTables :
    ListGlobalTablesInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListGlobalTablesOutput)
listGlobalTables req =
    let
        jsonBody =
            req |> Codec.encoder listGlobalTablesInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListGlobalTables"
                (AWS.Core.Decode.ResultDecoder "ListGlobalTablesOutput" (Codec.decoder listGlobalTablesOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listBackups : ListBackupsInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListBackupsOutput)
listBackups req =
    let
        jsonBody =
            req |> Codec.encoder listBackupsInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListBackups"
                (AWS.Core.Decode.ResultDecoder "ListBackupsOutput" (Codec.decoder listBackupsOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getItem : GetItemInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetItemOutput)
getItem req =
    let
        jsonBody =
            req |> Codec.encoder getItemInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetItem"
                (AWS.Core.Decode.ResultDecoder "GetItemOutput" (Codec.decoder getItemOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeTimeToLive :
    DescribeTimeToLiveInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeTimeToLiveOutput)
describeTimeToLive req =
    let
        jsonBody =
            req |> Codec.encoder describeTimeToLiveInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeTimeToLive"
                (AWS.Core.Decode.ResultDecoder "DescribeTimeToLiveOutput" (Codec.decoder describeTimeToLiveOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeTable : DescribeTableInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeTableOutput)
describeTable req =
    let
        jsonBody =
            req |> Codec.encoder describeTableInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeTable"
                (AWS.Core.Decode.ResultDecoder "DescribeTableOutput" (Codec.decoder describeTableOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeLimits : DescribeLimitsInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeLimitsOutput)
describeLimits req =
    let
        jsonBody =
            req |> Codec.encoder describeLimitsInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeLimits"
                (AWS.Core.Decode.ResultDecoder "DescribeLimitsOutput" (Codec.decoder describeLimitsOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeGlobalTableSettings :
    DescribeGlobalTableSettingsInput
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeGlobalTableSettingsOutput)
describeGlobalTableSettings req =
    let
        jsonBody =
            req |> Codec.encoder describeGlobalTableSettingsInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeGlobalTableSettings"
                (AWS.Core.Decode.ResultDecoder
                    "DescribeGlobalTableSettingsOutput"
                    (Codec.decoder describeGlobalTableSettingsOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeGlobalTable :
    DescribeGlobalTableInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeGlobalTableOutput)
describeGlobalTable req =
    let
        jsonBody =
            req |> Codec.encoder describeGlobalTableInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeGlobalTable"
                (AWS.Core.Decode.ResultDecoder
                    "DescribeGlobalTableOutput"
                    (Codec.decoder describeGlobalTableOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeEndpoints :
    DescribeEndpointsRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeEndpointsResponse)
describeEndpoints req =
    let
        jsonBody =
            req |> Codec.encoder describeEndpointsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeEndpoints"
                (AWS.Core.Decode.ResultDecoder
                    "DescribeEndpointsResponse"
                    (Codec.decoder describeEndpointsResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeContinuousBackups :
    DescribeContinuousBackupsInput
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeContinuousBackupsOutput)
describeContinuousBackups req =
    let
        jsonBody =
            req |> Codec.encoder describeContinuousBackupsInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeContinuousBackups"
                (AWS.Core.Decode.ResultDecoder
                    "DescribeContinuousBackupsOutput"
                    (Codec.decoder describeContinuousBackupsOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeBackup : DescribeBackupInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeBackupOutput)
describeBackup req =
    let
        jsonBody =
            req |> Codec.encoder describeBackupInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeBackup"
                (AWS.Core.Decode.ResultDecoder "DescribeBackupOutput" (Codec.decoder describeBackupOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteTable : DeleteTableInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteTableOutput)
deleteTable req =
    let
        jsonBody =
            req |> Codec.encoder deleteTableInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DeleteTable"
                (AWS.Core.Decode.ResultDecoder "DeleteTableOutput" (Codec.decoder deleteTableOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteItem : DeleteItemInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteItemOutput)
deleteItem req =
    let
        jsonBody =
            req |> Codec.encoder deleteItemInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DeleteItem"
                (AWS.Core.Decode.ResultDecoder "DeleteItemOutput" (Codec.decoder deleteItemOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteBackup : DeleteBackupInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteBackupOutput)
deleteBackup req =
    let
        jsonBody =
            req |> Codec.encoder deleteBackupInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DeleteBackup"
                (AWS.Core.Decode.ResultDecoder "DeleteBackupOutput" (Codec.decoder deleteBackupOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createTable : CreateTableInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateTableOutput)
createTable req =
    let
        jsonBody =
            req |> Codec.encoder createTableInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateTable"
                (AWS.Core.Decode.ResultDecoder "CreateTableOutput" (Codec.decoder createTableOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createGlobalTable :
    CreateGlobalTableInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateGlobalTableOutput)
createGlobalTable req =
    let
        jsonBody =
            req |> Codec.encoder createGlobalTableInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateGlobalTable"
                (AWS.Core.Decode.ResultDecoder "CreateGlobalTableOutput" (Codec.decoder createGlobalTableOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createBackup : CreateBackupInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateBackupOutput)
createBackup req =
    let
        jsonBody =
            req |> Codec.encoder createBackupInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateBackup"
                (AWS.Core.Decode.ResultDecoder "CreateBackupOutput" (Codec.decoder createBackupOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
batchWriteItem : BatchWriteItemInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchWriteItemOutput)
batchWriteItem req =
    let
        jsonBody =
            req |> Codec.encoder batchWriteItemInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "BatchWriteItem"
                (AWS.Core.Decode.ResultDecoder "BatchWriteItemOutput" (Codec.decoder batchWriteItemOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
batchGetItem : BatchGetItemInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchGetItemOutput)
batchGetItem req =
    let
        jsonBody =
            req |> Codec.encoder batchGetItemInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "BatchGetItem"
                (AWS.Core.Decode.ResultDecoder "BatchGetItemOutput" (Codec.decoder batchGetItemOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


type AttributeAction
    = AttributeActionAdd
    | AttributeActionPut
    | AttributeActionDelete


attributeAction : Enum AttributeAction
attributeAction =
    Enum.define
        [ AttributeActionAdd, AttributeActionPut, AttributeActionDelete ]
        (\val ->
            case val of
                AttributeActionAdd ->
                    "ADD"

                AttributeActionPut ->
                    "PUT"

                AttributeActionDelete ->
                    "DELETE"
        )


type alias AttributeDefinition =
    { attributeType : ScalarAttributeType, attributeName : KeySchemaAttributeName }


type alias AttributeDefinitions =
    List AttributeDefinition


type alias AttributeMap =
    Dict.Refined.Dict String AttributeName AttributeValue


type AttributeName
    = AttributeName String


attributeName : Refined String AttributeName StringError
attributeName =
    let
        guardFn val =
            Refined.maxLength 65535 val |> Result.map AttributeName

        unboxFn (AttributeName val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias AttributeNameList =
    List AttributeName


type alias AttributeUpdates =
    Dict.Refined.Dict String AttributeName AttributeValueUpdate


type alias AttributeValue =
    { ss : StringSetAttributeValue
    , s : String
    , null : Bool
    , ns : NumberSetAttributeValue
    , n : String
    , m : MapAttributeValue
    , l : ListAttributeValue
    , bs : BinarySetAttributeValue
    , bool : Bool
    , b : String
    }


type alias AttributeValueList =
    List AttributeValue


type alias AttributeValueUpdate =
    { value : AttributeValue, action : AttributeAction }


type alias AutoScalingPolicyDescription =
    { targetTrackingScalingPolicyConfiguration : AutoScalingTargetTrackingScalingPolicyConfigurationDescription
    , policyName : AutoScalingPolicyName
    }


type alias AutoScalingPolicyDescriptionList =
    List AutoScalingPolicyDescription


type AutoScalingPolicyName
    = AutoScalingPolicyName String


autoScalingPolicyName : Refined String AutoScalingPolicyName StringError
autoScalingPolicyName =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 256)
                |> Result.andThen (Refined.regexMatch "\\p{Print}+")
                |> Result.map AutoScalingPolicyName

        unboxFn (AutoScalingPolicyName val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias AutoScalingPolicyUpdate =
    { targetTrackingScalingPolicyConfiguration : AutoScalingTargetTrackingScalingPolicyConfigurationUpdate
    , policyName : AutoScalingPolicyName
    }


type AutoScalingRoleArn
    = AutoScalingRoleArn String


autoScalingRoleArn : Refined String AutoScalingRoleArn StringError
autoScalingRoleArn =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 1600)
                |> Result.andThen
                    (Refined.regexMatch "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*")
                |> Result.map AutoScalingRoleArn

        unboxFn (AutoScalingRoleArn val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias AutoScalingSettingsDescription =
    { scalingPolicies : AutoScalingPolicyDescriptionList
    , minimumUnits : Int
    , maximumUnits : Int
    , autoScalingRoleArn : String
    , autoScalingDisabled : Bool
    }


type alias AutoScalingSettingsUpdate =
    { scalingPolicyUpdate : AutoScalingPolicyUpdate
    , minimumUnits : Int
    , maximumUnits : Int
    , autoScalingRoleArn : AutoScalingRoleArn
    , autoScalingDisabled : Bool
    }


type alias AutoScalingTargetTrackingScalingPolicyConfigurationDescription =
    { targetValue : Float, scaleOutCooldown : Int, scaleInCooldown : Int, disableScaleIn : Bool }


type alias AutoScalingTargetTrackingScalingPolicyConfigurationUpdate =
    { targetValue : Float, scaleOutCooldown : Int, scaleInCooldown : Int, disableScaleIn : Bool }


type alias Backfilling =
    Bool


type BackupArn
    = BackupArn String


backupArn : Refined String BackupArn StringError
backupArn =
    let
        guardFn val =
            Refined.minLength 37 val |> Result.andThen (Refined.maxLength 1024) |> Result.map BackupArn

        unboxFn (BackupArn val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias BackupCreationDateTime =
    String


type alias BackupDescription =
    { sourceTableFeatureDetails : SourceTableFeatureDetails
    , sourceTableDetails : SourceTableDetails
    , backupDetails : BackupDetails
    }


type alias BackupDetails =
    { backupType : BackupType
    , backupStatus : BackupStatus
    , backupSizeBytes : Int
    , backupName : BackupName
    , backupExpiryDateTime : Date
    , backupCreationDateTime : BackupCreationDateTime
    , backupArn : BackupArn
    }


type BackupName
    = BackupName String


backupName : Refined String BackupName StringError
backupName =
    let
        guardFn val =
            Refined.minLength 3 val
                |> Result.andThen (Refined.maxLength 255)
                |> Result.andThen (Refined.regexMatch "[a-zA-Z0-9_.-]+")
                |> Result.map BackupName

        unboxFn (BackupName val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias BackupSizeBytes =
    Int


type BackupStatus
    = BackupStatusCreating
    | BackupStatusDeleted
    | BackupStatusAvailable


backupStatus : Enum BackupStatus
backupStatus =
    Enum.define
        [ BackupStatusCreating, BackupStatusDeleted, BackupStatusAvailable ]
        (\val ->
            case val of
                BackupStatusCreating ->
                    "CREATING"

                BackupStatusDeleted ->
                    "DELETED"

                BackupStatusAvailable ->
                    "AVAILABLE"
        )


type alias BackupSummaries =
    List BackupSummary


type alias BackupSummary =
    { tableName : TableName
    , tableId : TableId
    , tableArn : String
    , backupType : BackupType
    , backupStatus : BackupStatus
    , backupSizeBytes : Int
    , backupName : BackupName
    , backupExpiryDateTime : Date
    , backupCreationDateTime : BackupCreationDateTime
    , backupArn : BackupArn
    }


type BackupType
    = BackupTypeUser
    | BackupTypeSystem
    | BackupTypeAwsBackup


backupType : Enum BackupType
backupType =
    Enum.define
        [ BackupTypeUser, BackupTypeSystem, BackupTypeAwsBackup ]
        (\val ->
            case val of
                BackupTypeUser ->
                    "USER"

                BackupTypeSystem ->
                    "SYSTEM"

                BackupTypeAwsBackup ->
                    "AWS_BACKUP"
        )


type BackupTypeFilter
    = BackupTypeFilterUser
    | BackupTypeFilterSystem
    | BackupTypeFilterAwsBackup
    | BackupTypeFilterAll


backupTypeFilter : Enum BackupTypeFilter
backupTypeFilter =
    Enum.define
        [ BackupTypeFilterUser, BackupTypeFilterSystem, BackupTypeFilterAwsBackup, BackupTypeFilterAll ]
        (\val ->
            case val of
                BackupTypeFilterUser ->
                    "USER"

                BackupTypeFilterSystem ->
                    "SYSTEM"

                BackupTypeFilterAwsBackup ->
                    "AWS_BACKUP"

                BackupTypeFilterAll ->
                    "ALL"
        )


type BackupsInputLimit
    = BackupsInputLimit Int


backupsInputLimit : Refined Int BackupsInputLimit IntError
backupsInputLimit =
    let
        guardFn val =
            Refined.gt 1 val |> Result.andThen (Refined.lt 100) |> Result.map BackupsInputLimit

        unboxFn (BackupsInputLimit val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type alias BatchGetItemInput =
    { returnConsumedCapacity : ReturnConsumedCapacity, requestItems : BatchGetRequestMap }


type alias BatchGetItemOutput =
    { unprocessedKeys : BatchGetRequestMap
    , responses : BatchGetResponseMap
    , consumedCapacity : ConsumedCapacityMultiple
    }


type alias BatchGetRequestMap =
    Dict.Refined.Dict String TableName KeysAndAttributes


type alias BatchGetResponseMap =
    Dict.Refined.Dict String TableName ItemList


type alias BatchWriteItemInput =
    { returnItemCollectionMetrics : ReturnItemCollectionMetrics
    , returnConsumedCapacity : ReturnConsumedCapacity
    , requestItems : BatchWriteItemRequestMap
    }


type alias BatchWriteItemOutput =
    { unprocessedItems : BatchWriteItemRequestMap
    , itemCollectionMetrics : ItemCollectionMetricsPerTable
    , consumedCapacity : ConsumedCapacityMultiple
    }


type alias BatchWriteItemRequestMap =
    Dict.Refined.Dict String TableName WriteRequests


type BillingMode
    = BillingModeProvisioned
    | BillingModePayPerRequest


billingMode : Enum BillingMode
billingMode =
    Enum.define
        [ BillingModeProvisioned, BillingModePayPerRequest ]
        (\val ->
            case val of
                BillingModeProvisioned ->
                    "PROVISIONED"

                BillingModePayPerRequest ->
                    "PAY_PER_REQUEST"
        )


type alias BillingModeSummary =
    { lastUpdateToPayPerRequestDateTime : Date, billingMode : BillingMode }


type alias BinaryAttributeValue =
    String


type alias BinarySetAttributeValue =
    List String


type alias BooleanAttributeValue =
    Bool


type alias BooleanObject =
    Bool


type alias Capacity =
    { writeCapacityUnits : Float, readCapacityUnits : Float, capacityUnits : Float }


type ClientRequestToken
    = ClientRequestToken String


clientRequestToken : Refined String ClientRequestToken StringError
clientRequestToken =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 36) |> Result.map ClientRequestToken

        unboxFn (ClientRequestToken val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type ComparisonOperator
    = ComparisonOperatorEq
    | ComparisonOperatorNe
    | ComparisonOperatorIn
    | ComparisonOperatorLe
    | ComparisonOperatorLt
    | ComparisonOperatorGe
    | ComparisonOperatorGt
    | ComparisonOperatorBetween
    | ComparisonOperatorNotNull
    | ComparisonOperatorNull
    | ComparisonOperatorContains
    | ComparisonOperatorNotContains
    | ComparisonOperatorBeginsWith


comparisonOperator : Enum ComparisonOperator
comparisonOperator =
    Enum.define
        [ ComparisonOperatorEq
        , ComparisonOperatorNe
        , ComparisonOperatorIn
        , ComparisonOperatorLe
        , ComparisonOperatorLt
        , ComparisonOperatorGe
        , ComparisonOperatorGt
        , ComparisonOperatorBetween
        , ComparisonOperatorNotNull
        , ComparisonOperatorNull
        , ComparisonOperatorContains
        , ComparisonOperatorNotContains
        , ComparisonOperatorBeginsWith
        ]
        (\val ->
            case val of
                ComparisonOperatorEq ->
                    "EQ"

                ComparisonOperatorNe ->
                    "NE"

                ComparisonOperatorIn ->
                    "IN"

                ComparisonOperatorLe ->
                    "LE"

                ComparisonOperatorLt ->
                    "LT"

                ComparisonOperatorGe ->
                    "GE"

                ComparisonOperatorGt ->
                    "GT"

                ComparisonOperatorBetween ->
                    "BETWEEN"

                ComparisonOperatorNotNull ->
                    "NOT_NULL"

                ComparisonOperatorNull ->
                    "NULL"

                ComparisonOperatorContains ->
                    "CONTAINS"

                ComparisonOperatorNotContains ->
                    "NOT_CONTAINS"

                ComparisonOperatorBeginsWith ->
                    "BEGINS_WITH"
        )


type alias Condition =
    { comparisonOperator : ComparisonOperator, attributeValueList : AttributeValueList }


type alias ConditionCheck =
    { tableName : TableName
    , returnValuesOnConditionCheckFailure : ReturnValuesOnConditionCheckFailure
    , key : Key
    , expressionAttributeValues : ExpressionAttributeValueMap
    , expressionAttributeNames : ExpressionAttributeNameMap
    , conditionExpression : String
    }


type alias ConditionExpression =
    String


type ConditionalOperator
    = ConditionalOperatorAnd
    | ConditionalOperatorOr


conditionalOperator : Enum ConditionalOperator
conditionalOperator =
    Enum.define
        [ ConditionalOperatorAnd, ConditionalOperatorOr ]
        (\val ->
            case val of
                ConditionalOperatorAnd ->
                    "AND"

                ConditionalOperatorOr ->
                    "OR"
        )


type alias ConsistentRead =
    Bool


type alias ConsumedCapacity =
    { writeCapacityUnits : Float
    , tableName : TableName
    , table : Capacity
    , readCapacityUnits : Float
    , localSecondaryIndexes : SecondaryIndexesCapacityMap
    , globalSecondaryIndexes : SecondaryIndexesCapacityMap
    , capacityUnits : Float
    }


type alias ConsumedCapacityMultiple =
    List ConsumedCapacity


type alias ConsumedCapacityUnits =
    Float


type alias ContinuousBackupsDescription =
    { pointInTimeRecoveryDescription : PointInTimeRecoveryDescription
    , continuousBackupsStatus : ContinuousBackupsStatus
    }


type ContinuousBackupsStatus
    = ContinuousBackupsStatusEnabled
    | ContinuousBackupsStatusDisabled


continuousBackupsStatus : Enum ContinuousBackupsStatus
continuousBackupsStatus =
    Enum.define
        [ ContinuousBackupsStatusEnabled, ContinuousBackupsStatusDisabled ]
        (\val ->
            case val of
                ContinuousBackupsStatusEnabled ->
                    "ENABLED"

                ContinuousBackupsStatusDisabled ->
                    "DISABLED"
        )


type alias CreateBackupInput =
    { tableName : TableName, backupName : BackupName }


type alias CreateBackupOutput =
    { backupDetails : BackupDetails }


type alias CreateGlobalSecondaryIndexAction =
    { provisionedThroughput : ProvisionedThroughput
    , projection : Projection
    , keySchema : KeySchema
    , indexName : IndexName
    }


type alias CreateGlobalTableInput =
    { replicationGroup : ReplicaList, globalTableName : TableName }


type alias CreateGlobalTableOutput =
    { globalTableDescription : GlobalTableDescription }


type alias CreateReplicaAction =
    { regionName : String }


type alias CreateTableInput =
    { tags : TagList
    , tableName : TableName
    , streamSpecification : StreamSpecification
    , ssespecification : Ssespecification
    , provisionedThroughput : ProvisionedThroughput
    , localSecondaryIndexes : LocalSecondaryIndexList
    , keySchema : KeySchema
    , globalSecondaryIndexes : GlobalSecondaryIndexList
    , billingMode : BillingMode
    , attributeDefinitions : AttributeDefinitions
    }


type alias CreateTableOutput =
    { tableDescription : TableDescription }


type alias Date =
    String


type alias Delete =
    { tableName : TableName
    , returnValuesOnConditionCheckFailure : ReturnValuesOnConditionCheckFailure
    , key : Key
    , expressionAttributeValues : ExpressionAttributeValueMap
    , expressionAttributeNames : ExpressionAttributeNameMap
    , conditionExpression : String
    }


type alias DeleteBackupInput =
    { backupArn : BackupArn }


type alias DeleteBackupOutput =
    { backupDescription : BackupDescription }


type alias DeleteGlobalSecondaryIndexAction =
    { indexName : IndexName }


type alias DeleteItemInput =
    { tableName : TableName
    , returnValues : ReturnValue
    , returnItemCollectionMetrics : ReturnItemCollectionMetrics
    , returnConsumedCapacity : ReturnConsumedCapacity
    , key : Key
    , expressionAttributeValues : ExpressionAttributeValueMap
    , expressionAttributeNames : ExpressionAttributeNameMap
    , expected : ExpectedAttributeMap
    , conditionalOperator : ConditionalOperator
    , conditionExpression : String
    }


type alias DeleteItemOutput =
    { itemCollectionMetrics : ItemCollectionMetrics, consumedCapacity : ConsumedCapacity, attributes : AttributeMap }


type alias DeleteReplicaAction =
    { regionName : String }


type alias DeleteRequest =
    { key : Key }


type alias DeleteTableInput =
    { tableName : TableName }


type alias DeleteTableOutput =
    { tableDescription : TableDescription }


type alias DescribeBackupInput =
    { backupArn : BackupArn }


type alias DescribeBackupOutput =
    { backupDescription : BackupDescription }


type alias DescribeContinuousBackupsInput =
    { tableName : TableName }


type alias DescribeContinuousBackupsOutput =
    { continuousBackupsDescription : ContinuousBackupsDescription }


type alias DescribeEndpointsRequest =
    {}


type alias DescribeEndpointsResponse =
    { endpoints : Endpoints }


type alias DescribeGlobalTableInput =
    { globalTableName : TableName }


type alias DescribeGlobalTableOutput =
    { globalTableDescription : GlobalTableDescription }


type alias DescribeGlobalTableSettingsInput =
    { globalTableName : TableName }


type alias DescribeGlobalTableSettingsOutput =
    { replicaSettings : ReplicaSettingsDescriptionList, globalTableName : TableName }


type alias DescribeLimitsInput =
    {}


type alias DescribeLimitsOutput =
    { tableMaxWriteCapacityUnits : Int
    , tableMaxReadCapacityUnits : Int
    , accountMaxWriteCapacityUnits : Int
    , accountMaxReadCapacityUnits : Int
    }


type alias DescribeTableInput =
    { tableName : TableName }


type alias DescribeTableOutput =
    { table : TableDescription }


type alias DescribeTimeToLiveInput =
    { tableName : TableName }


type alias DescribeTimeToLiveOutput =
    { timeToLiveDescription : TimeToLiveDescription }


type alias Double =
    Float


type alias Endpoint =
    { cachePeriodInMinutes : Int, address : String }


type alias Endpoints =
    List Endpoint


type alias ExpectedAttributeMap =
    Dict.Refined.Dict String AttributeName ExpectedAttributeValue


type alias ExpectedAttributeValue =
    { value : AttributeValue
    , exists : Bool
    , comparisonOperator : ComparisonOperator
    , attributeValueList : AttributeValueList
    }


type alias ExpressionAttributeNameMap =
    Dict String AttributeName


type alias ExpressionAttributeNameVariable =
    String


type alias ExpressionAttributeValueMap =
    Dict String AttributeValue


type alias ExpressionAttributeValueVariable =
    String


type alias FilterConditionMap =
    Dict.Refined.Dict String AttributeName Condition


type alias Get =
    { tableName : TableName
    , projectionExpression : String
    , key : Key
    , expressionAttributeNames : ExpressionAttributeNameMap
    }


type alias GetItemInput =
    { tableName : TableName
    , returnConsumedCapacity : ReturnConsumedCapacity
    , projectionExpression : String
    , key : Key
    , expressionAttributeNames : ExpressionAttributeNameMap
    , consistentRead : Bool
    , attributesToGet : AttributeNameList
    }


type alias GetItemOutput =
    { item : AttributeMap, consumedCapacity : ConsumedCapacity }


type alias GlobalSecondaryIndex =
    { provisionedThroughput : ProvisionedThroughput
    , projection : Projection
    , keySchema : KeySchema
    , indexName : IndexName
    }


type alias GlobalSecondaryIndexDescription =
    { provisionedThroughput : ProvisionedThroughputDescription
    , projection : Projection
    , keySchema : KeySchema
    , itemCount : Int
    , indexStatus : IndexStatus
    , indexSizeBytes : Int
    , indexName : IndexName
    , indexArn : String
    , backfilling : Bool
    }


type alias GlobalSecondaryIndexDescriptionList =
    List GlobalSecondaryIndexDescription


type alias GlobalSecondaryIndexInfo =
    { provisionedThroughput : ProvisionedThroughput
    , projection : Projection
    , keySchema : KeySchema
    , indexName : IndexName
    }


type alias GlobalSecondaryIndexList =
    List GlobalSecondaryIndex


type alias GlobalSecondaryIndexUpdate =
    { update : UpdateGlobalSecondaryIndexAction
    , delete : DeleteGlobalSecondaryIndexAction
    , create : CreateGlobalSecondaryIndexAction
    }


type alias GlobalSecondaryIndexUpdateList =
    List GlobalSecondaryIndexUpdate


type alias GlobalSecondaryIndexes =
    List GlobalSecondaryIndexInfo


type alias GlobalTable =
    { replicationGroup : ReplicaList, globalTableName : TableName }


type alias GlobalTableArnString =
    String


type alias GlobalTableDescription =
    { replicationGroup : ReplicaDescriptionList
    , globalTableStatus : GlobalTableStatus
    , globalTableName : TableName
    , globalTableArn : String
    , creationDateTime : Date
    }


type alias GlobalTableGlobalSecondaryIndexSettingsUpdate =
    { provisionedWriteCapacityUnits : Int
    , provisionedWriteCapacityAutoScalingSettingsUpdate : AutoScalingSettingsUpdate
    , indexName : IndexName
    }


type alias GlobalTableGlobalSecondaryIndexSettingsUpdateList =
    List GlobalTableGlobalSecondaryIndexSettingsUpdate


type alias GlobalTableList =
    List GlobalTable


type GlobalTableStatus
    = GlobalTableStatusCreating
    | GlobalTableStatusActive
    | GlobalTableStatusDeleting
    | GlobalTableStatusUpdating


globalTableStatus : Enum GlobalTableStatus
globalTableStatus =
    Enum.define
        [ GlobalTableStatusCreating, GlobalTableStatusActive, GlobalTableStatusDeleting, GlobalTableStatusUpdating ]
        (\val ->
            case val of
                GlobalTableStatusCreating ->
                    "CREATING"

                GlobalTableStatusActive ->
                    "ACTIVE"

                GlobalTableStatusDeleting ->
                    "DELETING"

                GlobalTableStatusUpdating ->
                    "UPDATING"
        )


type IndexName
    = IndexName String


indexName : Refined String IndexName StringError
indexName =
    let
        guardFn val =
            Refined.minLength 3 val
                |> Result.andThen (Refined.maxLength 255)
                |> Result.andThen (Refined.regexMatch "[a-zA-Z0-9_.-]+")
                |> Result.map IndexName

        unboxFn (IndexName val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type IndexStatus
    = IndexStatusCreating
    | IndexStatusUpdating
    | IndexStatusDeleting
    | IndexStatusActive


indexStatus : Enum IndexStatus
indexStatus =
    Enum.define
        [ IndexStatusCreating, IndexStatusUpdating, IndexStatusDeleting, IndexStatusActive ]
        (\val ->
            case val of
                IndexStatusCreating ->
                    "CREATING"

                IndexStatusUpdating ->
                    "UPDATING"

                IndexStatusDeleting ->
                    "DELETING"

                IndexStatusActive ->
                    "ACTIVE"
        )


type alias Integer =
    Int


type alias IntegerObject =
    Int


type alias ItemCollectionKeyAttributeMap =
    Dict.Refined.Dict String AttributeName AttributeValue


type alias ItemCollectionMetrics =
    { sizeEstimateRangeGb : ItemCollectionSizeEstimateRange, itemCollectionKey : ItemCollectionKeyAttributeMap }


type alias ItemCollectionMetricsMultiple =
    List ItemCollectionMetrics


type alias ItemCollectionMetricsPerTable =
    Dict.Refined.Dict String TableName ItemCollectionMetricsMultiple


type alias ItemCollectionSizeEstimateBound =
    Float


type alias ItemCollectionSizeEstimateRange =
    List Float


type alias ItemCount =
    Int


type alias ItemList =
    List AttributeMap


type alias ItemResponse =
    { item : AttributeMap }


type alias ItemResponseList =
    List ItemResponse


type alias KmsmasterKeyArn =
    String


type alias KmsmasterKeyId =
    String


type alias Key =
    Dict.Refined.Dict String AttributeName AttributeValue


type alias KeyConditions =
    Dict.Refined.Dict String AttributeName Condition


type alias KeyExpression =
    String


type alias KeyList =
    List Key


type alias KeySchema =
    List KeySchemaElement


type KeySchemaAttributeName
    = KeySchemaAttributeName String


keySchemaAttributeName : Refined String KeySchemaAttributeName StringError
keySchemaAttributeName =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 255) |> Result.map KeySchemaAttributeName

        unboxFn (KeySchemaAttributeName val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias KeySchemaElement =
    { keyType : KeyType, attributeName : KeySchemaAttributeName }


type KeyType
    = KeyTypeHash
    | KeyTypeRange


keyType : Enum KeyType
keyType =
    Enum.define
        [ KeyTypeHash, KeyTypeRange ]
        (\val ->
            case val of
                KeyTypeHash ->
                    "HASH"

                KeyTypeRange ->
                    "RANGE"
        )


type alias KeysAndAttributes =
    { projectionExpression : String
    , keys : KeyList
    , expressionAttributeNames : ExpressionAttributeNameMap
    , consistentRead : Bool
    , attributesToGet : AttributeNameList
    }


type alias ListAttributeValue =
    List AttributeValue


type alias ListBackupsInput =
    { timeRangeUpperBound : TimeRangeUpperBound
    , timeRangeLowerBound : TimeRangeLowerBound
    , tableName : TableName
    , limit : BackupsInputLimit
    , exclusiveStartBackupArn : BackupArn
    , backupType : BackupTypeFilter
    }


type alias ListBackupsOutput =
    { lastEvaluatedBackupArn : BackupArn, backupSummaries : BackupSummaries }


type alias ListGlobalTablesInput =
    { regionName : String, limit : PositiveIntegerObject, exclusiveStartGlobalTableName : TableName }


type alias ListGlobalTablesOutput =
    { lastEvaluatedGlobalTableName : TableName, globalTables : GlobalTableList }


type alias ListTablesInput =
    { limit : ListTablesInputLimit, exclusiveStartTableName : TableName }


type ListTablesInputLimit
    = ListTablesInputLimit Int


listTablesInputLimit : Refined Int ListTablesInputLimit IntError
listTablesInputLimit =
    let
        guardFn val =
            Refined.gt 1 val |> Result.andThen (Refined.lt 100) |> Result.map ListTablesInputLimit

        unboxFn (ListTablesInputLimit val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type alias ListTablesOutput =
    { tableNames : TableNameList, lastEvaluatedTableName : TableName }


type alias ListTagsOfResourceInput =
    { resourceArn : ResourceArnString, nextToken : String }


type alias ListTagsOfResourceOutput =
    { tags : TagList, nextToken : String }


type alias LocalSecondaryIndex =
    { projection : Projection, keySchema : KeySchema, indexName : IndexName }


type alias LocalSecondaryIndexDescription =
    { projection : Projection
    , keySchema : KeySchema
    , itemCount : Int
    , indexSizeBytes : Int
    , indexName : IndexName
    , indexArn : String
    }


type alias LocalSecondaryIndexDescriptionList =
    List LocalSecondaryIndexDescription


type alias LocalSecondaryIndexInfo =
    { projection : Projection, keySchema : KeySchema, indexName : IndexName }


type alias LocalSecondaryIndexList =
    List LocalSecondaryIndex


type alias LocalSecondaryIndexes =
    List LocalSecondaryIndexInfo


type alias Long =
    Int


type alias MapAttributeValue =
    Dict.Refined.Dict String AttributeName AttributeValue


type alias NextTokenString =
    String


type NonKeyAttributeName
    = NonKeyAttributeName String


nonKeyAttributeName : Refined String NonKeyAttributeName StringError
nonKeyAttributeName =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 255) |> Result.map NonKeyAttributeName

        unboxFn (NonKeyAttributeName val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias NonKeyAttributeNameList =
    List NonKeyAttributeName


type alias NonNegativeLongObject =
    Int


type alias NullAttributeValue =
    Bool


type alias NumberAttributeValue =
    String


type alias NumberSetAttributeValue =
    List String


type alias PointInTimeRecoveryDescription =
    { pointInTimeRecoveryStatus : PointInTimeRecoveryStatus
    , latestRestorableDateTime : Date
    , earliestRestorableDateTime : Date
    }


type alias PointInTimeRecoverySpecification =
    { pointInTimeRecoveryEnabled : Bool }


type PointInTimeRecoveryStatus
    = PointInTimeRecoveryStatusEnabled
    | PointInTimeRecoveryStatusDisabled


pointInTimeRecoveryStatus : Enum PointInTimeRecoveryStatus
pointInTimeRecoveryStatus =
    Enum.define
        [ PointInTimeRecoveryStatusEnabled, PointInTimeRecoveryStatusDisabled ]
        (\val ->
            case val of
                PointInTimeRecoveryStatusEnabled ->
                    "ENABLED"

                PointInTimeRecoveryStatusDisabled ->
                    "DISABLED"
        )


type PositiveIntegerObject
    = PositiveIntegerObject Int


positiveIntegerObject : Refined Int PositiveIntegerObject IntError
positiveIntegerObject =
    let
        guardFn val =
            Refined.gt 1 val |> Result.map PositiveIntegerObject

        unboxFn (PositiveIntegerObject val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type alias PositiveLongObject =
    Int


type alias Projection =
    { projectionType : ProjectionType, nonKeyAttributes : NonKeyAttributeNameList }


type alias ProjectionExpression =
    String


type ProjectionType
    = ProjectionTypeAll
    | ProjectionTypeKeysOnly
    | ProjectionTypeInclude


projectionType : Enum ProjectionType
projectionType =
    Enum.define
        [ ProjectionTypeAll, ProjectionTypeKeysOnly, ProjectionTypeInclude ]
        (\val ->
            case val of
                ProjectionTypeAll ->
                    "ALL"

                ProjectionTypeKeysOnly ->
                    "KEYS_ONLY"

                ProjectionTypeInclude ->
                    "INCLUDE"
        )


type alias ProvisionedThroughput =
    { writeCapacityUnits : Int, readCapacityUnits : Int }


type alias ProvisionedThroughputDescription =
    { writeCapacityUnits : Int
    , readCapacityUnits : Int
    , numberOfDecreasesToday : Int
    , lastIncreaseDateTime : Date
    , lastDecreaseDateTime : Date
    }


type alias Put =
    { tableName : TableName
    , returnValuesOnConditionCheckFailure : ReturnValuesOnConditionCheckFailure
    , item : PutItemInputAttributeMap
    , expressionAttributeValues : ExpressionAttributeValueMap
    , expressionAttributeNames : ExpressionAttributeNameMap
    , conditionExpression : String
    }


type alias PutItemInput =
    { tableName : TableName
    , returnValues : ReturnValue
    , returnItemCollectionMetrics : ReturnItemCollectionMetrics
    , returnConsumedCapacity : ReturnConsumedCapacity
    , item : PutItemInputAttributeMap
    , expressionAttributeValues : ExpressionAttributeValueMap
    , expressionAttributeNames : ExpressionAttributeNameMap
    , expected : ExpectedAttributeMap
    , conditionalOperator : ConditionalOperator
    , conditionExpression : String
    }


type alias PutItemInputAttributeMap =
    Dict.Refined.Dict String AttributeName AttributeValue


type alias PutItemOutput =
    { itemCollectionMetrics : ItemCollectionMetrics, consumedCapacity : ConsumedCapacity, attributes : AttributeMap }


type alias PutRequest =
    { item : PutItemInputAttributeMap }


type alias QueryInput =
    { tableName : TableName
    , select : Select
    , scanIndexForward : Bool
    , returnConsumedCapacity : ReturnConsumedCapacity
    , queryFilter : FilterConditionMap
    , projectionExpression : String
    , limit : PositiveIntegerObject
    , keyConditions : KeyConditions
    , keyConditionExpression : String
    , indexName : IndexName
    , filterExpression : String
    , expressionAttributeValues : ExpressionAttributeValueMap
    , expressionAttributeNames : ExpressionAttributeNameMap
    , exclusiveStartKey : Key
    , consistentRead : Bool
    , conditionalOperator : ConditionalOperator
    , attributesToGet : AttributeNameList
    }


type alias QueryOutput =
    { scannedCount : Int, lastEvaluatedKey : Key, items : ItemList, count : Int, consumedCapacity : ConsumedCapacity }


type alias RegionName =
    String


type alias Replica =
    { regionName : String }


type alias ReplicaDescription =
    { regionName : String }


type alias ReplicaDescriptionList =
    List ReplicaDescription


type alias ReplicaGlobalSecondaryIndexSettingsDescription =
    { provisionedWriteCapacityUnits : Int
    , provisionedWriteCapacityAutoScalingSettings : AutoScalingSettingsDescription
    , provisionedReadCapacityUnits : Int
    , provisionedReadCapacityAutoScalingSettings : AutoScalingSettingsDescription
    , indexStatus : IndexStatus
    , indexName : IndexName
    }


type alias ReplicaGlobalSecondaryIndexSettingsDescriptionList =
    List ReplicaGlobalSecondaryIndexSettingsDescription


type alias ReplicaGlobalSecondaryIndexSettingsUpdate =
    { provisionedReadCapacityUnits : Int
    , provisionedReadCapacityAutoScalingSettingsUpdate : AutoScalingSettingsUpdate
    , indexName : IndexName
    }


type alias ReplicaGlobalSecondaryIndexSettingsUpdateList =
    List ReplicaGlobalSecondaryIndexSettingsUpdate


type alias ReplicaList =
    List Replica


type alias ReplicaSettingsDescription =
    { replicaStatus : ReplicaStatus
    , replicaProvisionedWriteCapacityUnits : Int
    , replicaProvisionedWriteCapacityAutoScalingSettings : AutoScalingSettingsDescription
    , replicaProvisionedReadCapacityUnits : Int
    , replicaProvisionedReadCapacityAutoScalingSettings : AutoScalingSettingsDescription
    , replicaGlobalSecondaryIndexSettings : ReplicaGlobalSecondaryIndexSettingsDescriptionList
    , replicaBillingModeSummary : BillingModeSummary
    , regionName : String
    }


type alias ReplicaSettingsDescriptionList =
    List ReplicaSettingsDescription


type alias ReplicaSettingsUpdate =
    { replicaProvisionedReadCapacityUnits : Int
    , replicaProvisionedReadCapacityAutoScalingSettingsUpdate : AutoScalingSettingsUpdate
    , replicaGlobalSecondaryIndexSettingsUpdate : ReplicaGlobalSecondaryIndexSettingsUpdateList
    , regionName : String
    }


type alias ReplicaSettingsUpdateList =
    List ReplicaSettingsUpdate


type ReplicaStatus
    = ReplicaStatusCreating
    | ReplicaStatusUpdating
    | ReplicaStatusDeleting
    | ReplicaStatusActive


replicaStatus : Enum ReplicaStatus
replicaStatus =
    Enum.define
        [ ReplicaStatusCreating, ReplicaStatusUpdating, ReplicaStatusDeleting, ReplicaStatusActive ]
        (\val ->
            case val of
                ReplicaStatusCreating ->
                    "CREATING"

                ReplicaStatusUpdating ->
                    "UPDATING"

                ReplicaStatusDeleting ->
                    "DELETING"

                ReplicaStatusActive ->
                    "ACTIVE"
        )


type alias ReplicaUpdate =
    { delete : DeleteReplicaAction, create : CreateReplicaAction }


type alias ReplicaUpdateList =
    List ReplicaUpdate


type ResourceArnString
    = ResourceArnString String


resourceArnString : Refined String ResourceArnString StringError
resourceArnString =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 1283) |> Result.map ResourceArnString

        unboxFn (ResourceArnString val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias RestoreInProgress =
    Bool


type alias RestoreSummary =
    { sourceTableArn : String, sourceBackupArn : BackupArn, restoreInProgress : Bool, restoreDateTime : Date }


type alias RestoreTableFromBackupInput =
    { targetTableName : TableName, backupArn : BackupArn }


type alias RestoreTableFromBackupOutput =
    { tableDescription : TableDescription }


type alias RestoreTableToPointInTimeInput =
    { useLatestRestorableTime : Bool, targetTableName : TableName, sourceTableName : TableName, restoreDateTime : Date }


type alias RestoreTableToPointInTimeOutput =
    { tableDescription : TableDescription }


type ReturnConsumedCapacity
    = ReturnConsumedCapacityIndexes
    | ReturnConsumedCapacityTotal
    | ReturnConsumedCapacityNone


returnConsumedCapacity : Enum ReturnConsumedCapacity
returnConsumedCapacity =
    Enum.define
        [ ReturnConsumedCapacityIndexes, ReturnConsumedCapacityTotal, ReturnConsumedCapacityNone ]
        (\val ->
            case val of
                ReturnConsumedCapacityIndexes ->
                    "INDEXES"

                ReturnConsumedCapacityTotal ->
                    "TOTAL"

                ReturnConsumedCapacityNone ->
                    "NONE"
        )


type ReturnItemCollectionMetrics
    = ReturnItemCollectionMetricsSize
    | ReturnItemCollectionMetricsNone


returnItemCollectionMetrics : Enum ReturnItemCollectionMetrics
returnItemCollectionMetrics =
    Enum.define
        [ ReturnItemCollectionMetricsSize, ReturnItemCollectionMetricsNone ]
        (\val ->
            case val of
                ReturnItemCollectionMetricsSize ->
                    "SIZE"

                ReturnItemCollectionMetricsNone ->
                    "NONE"
        )


type ReturnValue
    = ReturnValueNone
    | ReturnValueAllOld
    | ReturnValueUpdatedOld
    | ReturnValueAllNew
    | ReturnValueUpdatedNew


returnValue : Enum ReturnValue
returnValue =
    Enum.define
        [ ReturnValueNone, ReturnValueAllOld, ReturnValueUpdatedOld, ReturnValueAllNew, ReturnValueUpdatedNew ]
        (\val ->
            case val of
                ReturnValueNone ->
                    "NONE"

                ReturnValueAllOld ->
                    "ALL_OLD"

                ReturnValueUpdatedOld ->
                    "UPDATED_OLD"

                ReturnValueAllNew ->
                    "ALL_NEW"

                ReturnValueUpdatedNew ->
                    "UPDATED_NEW"
        )


type ReturnValuesOnConditionCheckFailure
    = ReturnValuesOnConditionCheckFailureAllOld
    | ReturnValuesOnConditionCheckFailureNone


returnValuesOnConditionCheckFailure : Enum ReturnValuesOnConditionCheckFailure
returnValuesOnConditionCheckFailure =
    Enum.define
        [ ReturnValuesOnConditionCheckFailureAllOld, ReturnValuesOnConditionCheckFailureNone ]
        (\val ->
            case val of
                ReturnValuesOnConditionCheckFailureAllOld ->
                    "ALL_OLD"

                ReturnValuesOnConditionCheckFailureNone ->
                    "NONE"
        )


type alias Ssedescription =
    { status : Ssestatus, ssetype : Ssetype, kmsmasterKeyArn : String }


type alias Sseenabled =
    Bool


type alias Ssespecification =
    { ssetype : Ssetype, kmsmasterKeyId : String, enabled : Bool }


type Ssestatus
    = SsestatusEnabling
    | SsestatusEnabled
    | SsestatusDisabling
    | SsestatusDisabled
    | SsestatusUpdating


ssestatus : Enum Ssestatus
ssestatus =
    Enum.define
        [ SsestatusEnabling, SsestatusEnabled, SsestatusDisabling, SsestatusDisabled, SsestatusUpdating ]
        (\val ->
            case val of
                SsestatusEnabling ->
                    "ENABLING"

                SsestatusEnabled ->
                    "ENABLED"

                SsestatusDisabling ->
                    "DISABLING"

                SsestatusDisabled ->
                    "DISABLED"

                SsestatusUpdating ->
                    "UPDATING"
        )


type Ssetype
    = SsetypeAes256
    | SsetypeKms


ssetype : Enum Ssetype
ssetype =
    Enum.define
        [ SsetypeAes256, SsetypeKms ]
        (\val ->
            case val of
                SsetypeAes256 ->
                    "AES256"

                SsetypeKms ->
                    "KMS"
        )


type ScalarAttributeType
    = ScalarAttributeTypeS
    | ScalarAttributeTypeN
    | ScalarAttributeTypeB


scalarAttributeType : Enum ScalarAttributeType
scalarAttributeType =
    Enum.define
        [ ScalarAttributeTypeS, ScalarAttributeTypeN, ScalarAttributeTypeB ]
        (\val ->
            case val of
                ScalarAttributeTypeS ->
                    "S"

                ScalarAttributeTypeN ->
                    "N"

                ScalarAttributeTypeB ->
                    "B"
        )


type alias ScanInput =
    { totalSegments : ScanTotalSegments
    , tableName : TableName
    , select : Select
    , segment : ScanSegment
    , scanFilter : FilterConditionMap
    , returnConsumedCapacity : ReturnConsumedCapacity
    , projectionExpression : String
    , limit : PositiveIntegerObject
    , indexName : IndexName
    , filterExpression : String
    , expressionAttributeValues : ExpressionAttributeValueMap
    , expressionAttributeNames : ExpressionAttributeNameMap
    , exclusiveStartKey : Key
    , consistentRead : Bool
    , conditionalOperator : ConditionalOperator
    , attributesToGet : AttributeNameList
    }


type alias ScanOutput =
    { scannedCount : Int, lastEvaluatedKey : Key, items : ItemList, count : Int, consumedCapacity : ConsumedCapacity }


type ScanSegment
    = ScanSegment Int


scanSegment : Refined Int ScanSegment IntError
scanSegment =
    let
        guardFn val =
            Refined.gt 0 val |> Result.andThen (Refined.lt 999999) |> Result.map ScanSegment

        unboxFn (ScanSegment val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type ScanTotalSegments
    = ScanTotalSegments Int


scanTotalSegments : Refined Int ScanTotalSegments IntError
scanTotalSegments =
    let
        guardFn val =
            Refined.gt 1 val |> Result.andThen (Refined.lt 1000000) |> Result.map ScanTotalSegments

        unboxFn (ScanTotalSegments val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type alias SecondaryIndexesCapacityMap =
    Dict.Refined.Dict String IndexName Capacity


type Select
    = SelectAllAttributes
    | SelectAllProjectedAttributes
    | SelectSpecificAttributes
    | SelectCount


select : Enum Select
select =
    Enum.define
        [ SelectAllAttributes, SelectAllProjectedAttributes, SelectSpecificAttributes, SelectCount ]
        (\val ->
            case val of
                SelectAllAttributes ->
                    "ALL_ATTRIBUTES"

                SelectAllProjectedAttributes ->
                    "ALL_PROJECTED_ATTRIBUTES"

                SelectSpecificAttributes ->
                    "SPECIFIC_ATTRIBUTES"

                SelectCount ->
                    "COUNT"
        )


type alias SourceTableDetails =
    { tableSizeBytes : Int
    , tableName : TableName
    , tableId : TableId
    , tableCreationDateTime : TableCreationDateTime
    , tableArn : String
    , provisionedThroughput : ProvisionedThroughput
    , keySchema : KeySchema
    , itemCount : Int
    , billingMode : BillingMode
    }


type alias SourceTableFeatureDetails =
    { timeToLiveDescription : TimeToLiveDescription
    , streamDescription : StreamSpecification
    , ssedescription : Ssedescription
    , localSecondaryIndexes : LocalSecondaryIndexes
    , globalSecondaryIndexes : GlobalSecondaryIndexes
    }


type StreamArn
    = StreamArn String


streamArn : Refined String StreamArn StringError
streamArn =
    let
        guardFn val =
            Refined.minLength 37 val |> Result.andThen (Refined.maxLength 1024) |> Result.map StreamArn

        unboxFn (StreamArn val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias StreamEnabled =
    Bool


type alias StreamSpecification =
    { streamViewType : StreamViewType, streamEnabled : Bool }


type StreamViewType
    = StreamViewTypeNewImage
    | StreamViewTypeOldImage
    | StreamViewTypeNewAndOldImages
    | StreamViewTypeKeysOnly


streamViewType : Enum StreamViewType
streamViewType =
    Enum.define
        [ StreamViewTypeNewImage, StreamViewTypeOldImage, StreamViewTypeNewAndOldImages, StreamViewTypeKeysOnly ]
        (\val ->
            case val of
                StreamViewTypeNewImage ->
                    "NEW_IMAGE"

                StreamViewTypeOldImage ->
                    "OLD_IMAGE"

                StreamViewTypeNewAndOldImages ->
                    "NEW_AND_OLD_IMAGES"

                StreamViewTypeKeysOnly ->
                    "KEYS_ONLY"
        )


type alias String_ =
    String


type alias StringAttributeValue =
    String


type alias StringSetAttributeValue =
    List String


type alias TableArn =
    String


type alias TableCreationDateTime =
    String


type alias TableDescription =
    { tableStatus : TableStatus
    , tableSizeBytes : Int
    , tableName : TableName
    , tableId : TableId
    , tableArn : String
    , streamSpecification : StreamSpecification
    , ssedescription : Ssedescription
    , restoreSummary : RestoreSummary
    , provisionedThroughput : ProvisionedThroughputDescription
    , localSecondaryIndexes : LocalSecondaryIndexDescriptionList
    , latestStreamLabel : String
    , latestStreamArn : StreamArn
    , keySchema : KeySchema
    , itemCount : Int
    , globalSecondaryIndexes : GlobalSecondaryIndexDescriptionList
    , creationDateTime : Date
    , billingModeSummary : BillingModeSummary
    , attributeDefinitions : AttributeDefinitions
    }


type TableId
    = TableId String


tableId : Refined String TableId StringError
tableId =
    let
        guardFn val =
            Refined.regexMatch "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}" val |> Result.map TableId

        unboxFn (TableId val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type TableName
    = TableName String


tableName : Refined String TableName StringError
tableName =
    let
        guardFn val =
            Refined.minLength 3 val
                |> Result.andThen (Refined.maxLength 255)
                |> Result.andThen (Refined.regexMatch "[a-zA-Z0-9_.-]+")
                |> Result.map TableName

        unboxFn (TableName val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias TableNameList =
    List TableName


type TableStatus
    = TableStatusCreating
    | TableStatusUpdating
    | TableStatusDeleting
    | TableStatusActive


tableStatus : Enum TableStatus
tableStatus =
    Enum.define
        [ TableStatusCreating, TableStatusUpdating, TableStatusDeleting, TableStatusActive ]
        (\val ->
            case val of
                TableStatusCreating ->
                    "CREATING"

                TableStatusUpdating ->
                    "UPDATING"

                TableStatusDeleting ->
                    "DELETING"

                TableStatusActive ->
                    "ACTIVE"
        )


type alias Tag =
    { value : TagValueString, key : TagKeyString }


type alias TagKeyList =
    List TagKeyString


type TagKeyString
    = TagKeyString String


tagKeyString : Refined String TagKeyString StringError
tagKeyString =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 128) |> Result.map TagKeyString

        unboxFn (TagKeyString val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias TagList =
    List Tag


type alias TagResourceInput =
    { tags : TagList, resourceArn : ResourceArnString }


type TagValueString
    = TagValueString String


tagValueString : Refined String TagValueString StringError
tagValueString =
    let
        guardFn val =
            Refined.minLength 0 val |> Result.andThen (Refined.maxLength 256) |> Result.map TagValueString

        unboxFn (TagValueString val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias TimeRangeLowerBound =
    String


type alias TimeRangeUpperBound =
    String


type TimeToLiveAttributeName
    = TimeToLiveAttributeName String


timeToLiveAttributeName : Refined String TimeToLiveAttributeName StringError
timeToLiveAttributeName =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 255) |> Result.map TimeToLiveAttributeName

        unboxFn (TimeToLiveAttributeName val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias TimeToLiveDescription =
    { timeToLiveStatus : TimeToLiveStatus, attributeName : TimeToLiveAttributeName }


type alias TimeToLiveEnabled =
    Bool


type alias TimeToLiveSpecification =
    { enabled : Bool, attributeName : TimeToLiveAttributeName }


type TimeToLiveStatus
    = TimeToLiveStatusEnabling
    | TimeToLiveStatusDisabling
    | TimeToLiveStatusEnabled
    | TimeToLiveStatusDisabled


timeToLiveStatus : Enum TimeToLiveStatus
timeToLiveStatus =
    Enum.define
        [ TimeToLiveStatusEnabling, TimeToLiveStatusDisabling, TimeToLiveStatusEnabled, TimeToLiveStatusDisabled ]
        (\val ->
            case val of
                TimeToLiveStatusEnabling ->
                    "ENABLING"

                TimeToLiveStatusDisabling ->
                    "DISABLING"

                TimeToLiveStatusEnabled ->
                    "ENABLED"

                TimeToLiveStatusDisabled ->
                    "DISABLED"
        )


type alias TransactGetItem =
    { get : Get }


type alias TransactGetItemList =
    List TransactGetItem


type alias TransactGetItemsInput =
    { transactItems : TransactGetItemList, returnConsumedCapacity : ReturnConsumedCapacity }


type alias TransactGetItemsOutput =
    { responses : ItemResponseList, consumedCapacity : ConsumedCapacityMultiple }


type alias TransactWriteItem =
    { update : Update, put : Put, delete : Delete, conditionCheck : ConditionCheck }


type alias TransactWriteItemList =
    List TransactWriteItem


type alias TransactWriteItemsInput =
    { transactItems : TransactWriteItemList
    , returnItemCollectionMetrics : ReturnItemCollectionMetrics
    , returnConsumedCapacity : ReturnConsumedCapacity
    , clientRequestToken : ClientRequestToken
    }


type alias TransactWriteItemsOutput =
    { itemCollectionMetrics : ItemCollectionMetricsPerTable, consumedCapacity : ConsumedCapacityMultiple }


type alias UntagResourceInput =
    { tagKeys : TagKeyList, resourceArn : ResourceArnString }


type alias Update =
    { updateExpression : String
    , tableName : TableName
    , returnValuesOnConditionCheckFailure : ReturnValuesOnConditionCheckFailure
    , key : Key
    , expressionAttributeValues : ExpressionAttributeValueMap
    , expressionAttributeNames : ExpressionAttributeNameMap
    , conditionExpression : String
    }


type alias UpdateContinuousBackupsInput =
    { tableName : TableName, pointInTimeRecoverySpecification : PointInTimeRecoverySpecification }


type alias UpdateContinuousBackupsOutput =
    { continuousBackupsDescription : ContinuousBackupsDescription }


type alias UpdateExpression =
    String


type alias UpdateGlobalSecondaryIndexAction =
    { provisionedThroughput : ProvisionedThroughput, indexName : IndexName }


type alias UpdateGlobalTableInput =
    { replicaUpdates : ReplicaUpdateList, globalTableName : TableName }


type alias UpdateGlobalTableOutput =
    { globalTableDescription : GlobalTableDescription }


type alias UpdateGlobalTableSettingsInput =
    { replicaSettingsUpdate : ReplicaSettingsUpdateList
    , globalTableProvisionedWriteCapacityUnits : Int
    , globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate : AutoScalingSettingsUpdate
    , globalTableName : TableName
    , globalTableGlobalSecondaryIndexSettingsUpdate : GlobalTableGlobalSecondaryIndexSettingsUpdateList
    , globalTableBillingMode : BillingMode
    }


type alias UpdateGlobalTableSettingsOutput =
    { replicaSettings : ReplicaSettingsDescriptionList, globalTableName : TableName }


type alias UpdateItemInput =
    { updateExpression : String
    , tableName : TableName
    , returnValues : ReturnValue
    , returnItemCollectionMetrics : ReturnItemCollectionMetrics
    , returnConsumedCapacity : ReturnConsumedCapacity
    , key : Key
    , expressionAttributeValues : ExpressionAttributeValueMap
    , expressionAttributeNames : ExpressionAttributeNameMap
    , expected : ExpectedAttributeMap
    , conditionalOperator : ConditionalOperator
    , conditionExpression : String
    , attributeUpdates : AttributeUpdates
    }


type alias UpdateItemOutput =
    { itemCollectionMetrics : ItemCollectionMetrics, consumedCapacity : ConsumedCapacity, attributes : AttributeMap }


type alias UpdateTableInput =
    { tableName : TableName
    , streamSpecification : StreamSpecification
    , ssespecification : Ssespecification
    , provisionedThroughput : ProvisionedThroughput
    , globalSecondaryIndexUpdates : GlobalSecondaryIndexUpdateList
    , billingMode : BillingMode
    , attributeDefinitions : AttributeDefinitions
    }


type alias UpdateTableOutput =
    { tableDescription : TableDescription }


type alias UpdateTimeToLiveInput =
    { timeToLiveSpecification : TimeToLiveSpecification, tableName : TableName }


type alias UpdateTimeToLiveOutput =
    { timeToLiveSpecification : TimeToLiveSpecification }


type alias WriteRequest =
    { putRequest : PutRequest, deleteRequest : DeleteRequest }


type alias WriteRequests =
    List WriteRequest


{-| Codec for WriteRequests. -}
writeRequestsCodec : Codec WriteRequests
writeRequestsCodec =
    Codec.list writeRequestCodec


{-| Codec for WriteRequest. -}
writeRequestCodec : Codec WriteRequest
writeRequestCodec =
    Codec.object WriteRequest
        |> Codec.field "PutRequest" .putRequest putRequestCodec
        |> Codec.field "DeleteRequest" .deleteRequest deleteRequestCodec
        |> Codec.buildObject


{-| Codec for UpdateTimeToLiveOutput. -}
updateTimeToLiveOutputCodec : Codec UpdateTimeToLiveOutput
updateTimeToLiveOutputCodec =
    Codec.object UpdateTimeToLiveOutput
        |> Codec.field "TimeToLiveSpecification" .timeToLiveSpecification timeToLiveSpecificationCodec
        |> Codec.buildObject


{-| Codec for UpdateTimeToLiveInput. -}
updateTimeToLiveInputCodec : Codec UpdateTimeToLiveInput
updateTimeToLiveInputCodec =
    Codec.object UpdateTimeToLiveInput
        |> Codec.field "TimeToLiveSpecification" .timeToLiveSpecification timeToLiveSpecificationCodec
        |> Codec.field "TableName" .tableName tableNameCodec
        |> Codec.buildObject


{-| Codec for UpdateTableOutput. -}
updateTableOutputCodec : Codec UpdateTableOutput
updateTableOutputCodec =
    Codec.object UpdateTableOutput
        |> Codec.field "TableDescription" .tableDescription tableDescriptionCodec
        |> Codec.buildObject


{-| Codec for UpdateTableInput. -}
updateTableInputCodec : Codec UpdateTableInput
updateTableInputCodec =
    Codec.object UpdateTableInput
        |> Codec.field "TableName" .tableName tableNameCodec
        |> Codec.field "StreamSpecification" .streamSpecification streamSpecificationCodec
        |> Codec.field "SSESpecification" .ssespecification ssespecificationCodec
        |> Codec.field "ProvisionedThroughput" .provisionedThroughput provisionedThroughputCodec
        |> Codec.field "GlobalSecondaryIndexUpdates" .globalSecondaryIndexUpdates globalSecondaryIndexUpdateListCodec
        |> Codec.field "BillingMode" .billingMode billingModeCodec
        |> Codec.field "AttributeDefinitions" .attributeDefinitions attributeDefinitionsCodec
        |> Codec.buildObject


{-| Codec for UpdateItemOutput. -}
updateItemOutputCodec : Codec UpdateItemOutput
updateItemOutputCodec =
    Codec.object UpdateItemOutput
        |> Codec.field "ItemCollectionMetrics" .itemCollectionMetrics itemCollectionMetricsCodec
        |> Codec.field "ConsumedCapacity" .consumedCapacity consumedCapacityCodec
        |> Codec.field "Attributes" .attributes attributeMapCodec
        |> Codec.buildObject


{-| Codec for UpdateItemInput. -}
updateItemInputCodec : Codec UpdateItemInput
updateItemInputCodec =
    Codec.object UpdateItemInput
        |> Codec.field "UpdateExpression" .updateExpression Codec.string
        |> Codec.field "TableName" .tableName tableNameCodec
        |> Codec.field "ReturnValues" .returnValues returnValueCodec
        |> Codec.field "ReturnItemCollectionMetrics" .returnItemCollectionMetrics returnItemCollectionMetricsCodec
        |> Codec.field "ReturnConsumedCapacity" .returnConsumedCapacity returnConsumedCapacityCodec
        |> Codec.field "Key" .key keyCodec
        |> Codec.field "ExpressionAttributeValues" .expressionAttributeValues expressionAttributeValueMapCodec
        |> Codec.field "ExpressionAttributeNames" .expressionAttributeNames expressionAttributeNameMapCodec
        |> Codec.field "Expected" .expected expectedAttributeMapCodec
        |> Codec.field "ConditionalOperator" .conditionalOperator conditionalOperatorCodec
        |> Codec.field "ConditionExpression" .conditionExpression Codec.string
        |> Codec.field "AttributeUpdates" .attributeUpdates attributeUpdatesCodec
        |> Codec.buildObject


{-| Codec for UpdateGlobalTableSettingsOutput. -}
updateGlobalTableSettingsOutputCodec : Codec UpdateGlobalTableSettingsOutput
updateGlobalTableSettingsOutputCodec =
    Codec.object UpdateGlobalTableSettingsOutput
        |> Codec.field "ReplicaSettings" .replicaSettings replicaSettingsDescriptionListCodec
        |> Codec.field "GlobalTableName" .globalTableName tableNameCodec
        |> Codec.buildObject


{-| Codec for UpdateGlobalTableSettingsInput. -}
updateGlobalTableSettingsInputCodec : Codec UpdateGlobalTableSettingsInput
updateGlobalTableSettingsInputCodec =
    Codec.object UpdateGlobalTableSettingsInput
        |> Codec.field "ReplicaSettingsUpdate" .replicaSettingsUpdate replicaSettingsUpdateListCodec
        |> Codec.field "GlobalTableProvisionedWriteCapacityUnits" .globalTableProvisionedWriteCapacityUnits Codec.int
        |> Codec.field
            "GlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate"
            .globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate
            autoScalingSettingsUpdateCodec
        |> Codec.field "GlobalTableName" .globalTableName tableNameCodec
        |> Codec.field
            "GlobalTableGlobalSecondaryIndexSettingsUpdate"
            .globalTableGlobalSecondaryIndexSettingsUpdate
            globalTableGlobalSecondaryIndexSettingsUpdateListCodec
        |> Codec.field "GlobalTableBillingMode" .globalTableBillingMode billingModeCodec
        |> Codec.buildObject


{-| Codec for UpdateGlobalTableOutput. -}
updateGlobalTableOutputCodec : Codec UpdateGlobalTableOutput
updateGlobalTableOutputCodec =
    Codec.object UpdateGlobalTableOutput
        |> Codec.field "GlobalTableDescription" .globalTableDescription globalTableDescriptionCodec
        |> Codec.buildObject


{-| Codec for UpdateGlobalTableInput. -}
updateGlobalTableInputCodec : Codec UpdateGlobalTableInput
updateGlobalTableInputCodec =
    Codec.object UpdateGlobalTableInput
        |> Codec.field "ReplicaUpdates" .replicaUpdates replicaUpdateListCodec
        |> Codec.field "GlobalTableName" .globalTableName tableNameCodec
        |> Codec.buildObject


{-| Codec for UpdateGlobalSecondaryIndexAction. -}
updateGlobalSecondaryIndexActionCodec : Codec UpdateGlobalSecondaryIndexAction
updateGlobalSecondaryIndexActionCodec =
    Codec.object UpdateGlobalSecondaryIndexAction
        |> Codec.field "ProvisionedThroughput" .provisionedThroughput provisionedThroughputCodec
        |> Codec.field "IndexName" .indexName indexNameCodec
        |> Codec.buildObject


{-| Codec for UpdateExpression. -}
updateExpressionCodec : Codec UpdateExpression
updateExpressionCodec =
    Codec.string


{-| Codec for UpdateContinuousBackupsOutput. -}
updateContinuousBackupsOutputCodec : Codec UpdateContinuousBackupsOutput
updateContinuousBackupsOutputCodec =
    Codec.object UpdateContinuousBackupsOutput
        |> Codec.field "ContinuousBackupsDescription" .continuousBackupsDescription continuousBackupsDescriptionCodec
        |> Codec.buildObject


{-| Codec for UpdateContinuousBackupsInput. -}
updateContinuousBackupsInputCodec : Codec UpdateContinuousBackupsInput
updateContinuousBackupsInputCodec =
    Codec.object UpdateContinuousBackupsInput
        |> Codec.field "TableName" .tableName tableNameCodec
        |> Codec.field
            "PointInTimeRecoverySpecification"
            .pointInTimeRecoverySpecification
            pointInTimeRecoverySpecificationCodec
        |> Codec.buildObject


{-| Codec for Update. -}
updateCodec : Codec Update
updateCodec =
    Codec.object Update
        |> Codec.field "UpdateExpression" .updateExpression Codec.string
        |> Codec.field "TableName" .tableName tableNameCodec
        |> Codec.field
            "ReturnValuesOnConditionCheckFailure"
            .returnValuesOnConditionCheckFailure
            returnValuesOnConditionCheckFailureCodec
        |> Codec.field "Key" .key keyCodec
        |> Codec.field "ExpressionAttributeValues" .expressionAttributeValues expressionAttributeValueMapCodec
        |> Codec.field "ExpressionAttributeNames" .expressionAttributeNames expressionAttributeNameMapCodec
        |> Codec.field "ConditionExpression" .conditionExpression Codec.string
        |> Codec.buildObject


{-| Codec for UntagResourceInput. -}
untagResourceInputCodec : Codec UntagResourceInput
untagResourceInputCodec =
    Codec.object UntagResourceInput
        |> Codec.field "TagKeys" .tagKeys tagKeyListCodec
        |> Codec.field "ResourceArn" .resourceArn resourceArnStringCodec
        |> Codec.buildObject


{-| Codec for TransactWriteItemsOutput. -}
transactWriteItemsOutputCodec : Codec TransactWriteItemsOutput
transactWriteItemsOutputCodec =
    Codec.object TransactWriteItemsOutput
        |> Codec.field "ItemCollectionMetrics" .itemCollectionMetrics itemCollectionMetricsPerTableCodec
        |> Codec.field "ConsumedCapacity" .consumedCapacity consumedCapacityMultipleCodec
        |> Codec.buildObject


{-| Codec for TransactWriteItemsInput. -}
transactWriteItemsInputCodec : Codec TransactWriteItemsInput
transactWriteItemsInputCodec =
    Codec.object TransactWriteItemsInput
        |> Codec.field "TransactItems" .transactItems transactWriteItemListCodec
        |> Codec.field "ReturnItemCollectionMetrics" .returnItemCollectionMetrics returnItemCollectionMetricsCodec
        |> Codec.field "ReturnConsumedCapacity" .returnConsumedCapacity returnConsumedCapacityCodec
        |> Codec.field "ClientRequestToken" .clientRequestToken clientRequestTokenCodec
        |> Codec.buildObject


{-| Codec for TransactWriteItemList. -}
transactWriteItemListCodec : Codec TransactWriteItemList
transactWriteItemListCodec =
    Codec.list transactWriteItemCodec


{-| Codec for TransactWriteItem. -}
transactWriteItemCodec : Codec TransactWriteItem
transactWriteItemCodec =
    Codec.object TransactWriteItem
        |> Codec.field "Update" .update updateCodec
        |> Codec.field "Put" .put putCodec
        |> Codec.field "Delete" .delete deleteCodec
        |> Codec.field "ConditionCheck" .conditionCheck conditionCheckCodec
        |> Codec.buildObject


{-| Codec for TransactGetItemsOutput. -}
transactGetItemsOutputCodec : Codec TransactGetItemsOutput
transactGetItemsOutputCodec =
    Codec.object TransactGetItemsOutput
        |> Codec.field "Responses" .responses itemResponseListCodec
        |> Codec.field "ConsumedCapacity" .consumedCapacity consumedCapacityMultipleCodec
        |> Codec.buildObject


{-| Codec for TransactGetItemsInput. -}
transactGetItemsInputCodec : Codec TransactGetItemsInput
transactGetItemsInputCodec =
    Codec.object TransactGetItemsInput
        |> Codec.field "TransactItems" .transactItems transactGetItemListCodec
        |> Codec.field "ReturnConsumedCapacity" .returnConsumedCapacity returnConsumedCapacityCodec
        |> Codec.buildObject


{-| Codec for TransactGetItemList. -}
transactGetItemListCodec : Codec TransactGetItemList
transactGetItemListCodec =
    Codec.list transactGetItemCodec


{-| Codec for TransactGetItem. -}
transactGetItemCodec : Codec TransactGetItem
transactGetItemCodec =
    Codec.object TransactGetItem |> Codec.field "Get" .get getCodec |> Codec.buildObject


{-| Codec for TimeToLiveStatus. -}
timeToLiveStatusCodec : Codec TimeToLiveStatus
timeToLiveStatusCodec =
    Codec.build (Enum.encoder timeToLiveStatus) (Enum.decoder timeToLiveStatus)


{-| Codec for TimeToLiveSpecification. -}
timeToLiveSpecificationCodec : Codec TimeToLiveSpecification
timeToLiveSpecificationCodec =
    Codec.object TimeToLiveSpecification
        |> Codec.field "Enabled" .enabled Codec.bool
        |> Codec.field "AttributeName" .attributeName timeToLiveAttributeNameCodec
        |> Codec.buildObject


{-| Codec for TimeToLiveEnabled. -}
timeToLiveEnabledCodec : Codec TimeToLiveEnabled
timeToLiveEnabledCodec =
    Codec.bool


{-| Codec for TimeToLiveDescription. -}
timeToLiveDescriptionCodec : Codec TimeToLiveDescription
timeToLiveDescriptionCodec =
    Codec.object TimeToLiveDescription
        |> Codec.field "TimeToLiveStatus" .timeToLiveStatus timeToLiveStatusCodec
        |> Codec.field "AttributeName" .attributeName timeToLiveAttributeNameCodec
        |> Codec.buildObject


{-| Codec for TimeToLiveAttributeName. -}
timeToLiveAttributeNameCodec : Codec TimeToLiveAttributeName
timeToLiveAttributeNameCodec =
    Codec.build (Refined.encoder timeToLiveAttributeName) (Refined.decoder timeToLiveAttributeName)


{-| Codec for TimeRangeUpperBound. -}
timeRangeUpperBoundCodec : Codec TimeRangeUpperBound
timeRangeUpperBoundCodec =
    Codec.string


{-| Codec for TimeRangeLowerBound. -}
timeRangeLowerBoundCodec : Codec TimeRangeLowerBound
timeRangeLowerBoundCodec =
    Codec.string


{-| Codec for TagValueString. -}
tagValueStringCodec : Codec TagValueString
tagValueStringCodec =
    Codec.build (Refined.encoder tagValueString) (Refined.decoder tagValueString)


{-| Codec for TagResourceInput. -}
tagResourceInputCodec : Codec TagResourceInput
tagResourceInputCodec =
    Codec.object TagResourceInput
        |> Codec.field "Tags" .tags tagListCodec
        |> Codec.field "ResourceArn" .resourceArn resourceArnStringCodec
        |> Codec.buildObject


{-| Codec for TagList. -}
tagListCodec : Codec TagList
tagListCodec =
    Codec.list tagCodec


{-| Codec for TagKeyString. -}
tagKeyStringCodec : Codec TagKeyString
tagKeyStringCodec =
    Codec.build (Refined.encoder tagKeyString) (Refined.decoder tagKeyString)


{-| Codec for TagKeyList. -}
tagKeyListCodec : Codec TagKeyList
tagKeyListCodec =
    Codec.list tagKeyStringCodec


{-| Codec for Tag. -}
tagCodec : Codec Tag
tagCodec =
    Codec.object Tag
        |> Codec.field "Value" .value tagValueStringCodec
        |> Codec.field "Key" .key tagKeyStringCodec
        |> Codec.buildObject


{-| Codec for TableStatus. -}
tableStatusCodec : Codec TableStatus
tableStatusCodec =
    Codec.build (Enum.encoder tableStatus) (Enum.decoder tableStatus)


{-| Codec for TableNameList. -}
tableNameListCodec : Codec TableNameList
tableNameListCodec =
    Codec.list tableNameCodec


{-| Codec for TableName. -}
tableNameCodec : Codec TableName
tableNameCodec =
    Codec.build (Refined.encoder tableName) (Refined.decoder tableName)


{-| Codec for TableId. -}
tableIdCodec : Codec TableId
tableIdCodec =
    Codec.build (Refined.encoder tableId) (Refined.decoder tableId)


{-| Codec for TableDescription. -}
tableDescriptionCodec : Codec TableDescription
tableDescriptionCodec =
    Codec.object TableDescription
        |> Codec.field "TableStatus" .tableStatus tableStatusCodec
        |> Codec.field "TableSizeBytes" .tableSizeBytes Codec.int
        |> Codec.field "TableName" .tableName tableNameCodec
        |> Codec.field "TableId" .tableId tableIdCodec
        |> Codec.field "TableArn" .tableArn Codec.string
        |> Codec.field "StreamSpecification" .streamSpecification streamSpecificationCodec
        |> Codec.field "SSEDescription" .ssedescription ssedescriptionCodec
        |> Codec.field "RestoreSummary" .restoreSummary restoreSummaryCodec
        |> Codec.field "ProvisionedThroughput" .provisionedThroughput provisionedThroughputDescriptionCodec
        |> Codec.field "LocalSecondaryIndexes" .localSecondaryIndexes localSecondaryIndexDescriptionListCodec
        |> Codec.field "LatestStreamLabel" .latestStreamLabel Codec.string
        |> Codec.field "LatestStreamArn" .latestStreamArn streamArnCodec
        |> Codec.field "KeySchema" .keySchema keySchemaCodec
        |> Codec.field "ItemCount" .itemCount Codec.int
        |> Codec.field "GlobalSecondaryIndexes" .globalSecondaryIndexes globalSecondaryIndexDescriptionListCodec
        |> Codec.field "CreationDateTime" .creationDateTime dateCodec
        |> Codec.field "BillingModeSummary" .billingModeSummary billingModeSummaryCodec
        |> Codec.field "AttributeDefinitions" .attributeDefinitions attributeDefinitionsCodec
        |> Codec.buildObject


{-| Codec for TableCreationDateTime. -}
tableCreationDateTimeCodec : Codec TableCreationDateTime
tableCreationDateTimeCodec =
    Codec.string


{-| Codec for TableArn. -}
tableArnCodec : Codec TableArn
tableArnCodec =
    Codec.string


{-| Codec for StringSetAttributeValue. -}
stringSetAttributeValueCodec : Codec StringSetAttributeValue
stringSetAttributeValueCodec =
    Codec.list Codec.string


{-| Codec for StringAttributeValue. -}
stringAttributeValueCodec : Codec StringAttributeValue
stringAttributeValueCodec =
    Codec.string


{-| Codec for String_. -}
stringCodec : Codec String_
stringCodec =
    Codec.string


{-| Codec for StreamViewType. -}
streamViewTypeCodec : Codec StreamViewType
streamViewTypeCodec =
    Codec.build (Enum.encoder streamViewType) (Enum.decoder streamViewType)


{-| Codec for StreamSpecification. -}
streamSpecificationCodec : Codec StreamSpecification
streamSpecificationCodec =
    Codec.object StreamSpecification
        |> Codec.field "StreamViewType" .streamViewType streamViewTypeCodec
        |> Codec.field "StreamEnabled" .streamEnabled Codec.bool
        |> Codec.buildObject


{-| Codec for StreamEnabled. -}
streamEnabledCodec : Codec StreamEnabled
streamEnabledCodec =
    Codec.bool


{-| Codec for StreamArn. -}
streamArnCodec : Codec StreamArn
streamArnCodec =
    Codec.build (Refined.encoder streamArn) (Refined.decoder streamArn)


{-| Codec for SourceTableFeatureDetails. -}
sourceTableFeatureDetailsCodec : Codec SourceTableFeatureDetails
sourceTableFeatureDetailsCodec =
    Codec.object SourceTableFeatureDetails
        |> Codec.field "TimeToLiveDescription" .timeToLiveDescription timeToLiveDescriptionCodec
        |> Codec.field "StreamDescription" .streamDescription streamSpecificationCodec
        |> Codec.field "SSEDescription" .ssedescription ssedescriptionCodec
        |> Codec.field "LocalSecondaryIndexes" .localSecondaryIndexes localSecondaryIndexesCodec
        |> Codec.field "GlobalSecondaryIndexes" .globalSecondaryIndexes globalSecondaryIndexesCodec
        |> Codec.buildObject


{-| Codec for SourceTableDetails. -}
sourceTableDetailsCodec : Codec SourceTableDetails
sourceTableDetailsCodec =
    Codec.object SourceTableDetails
        |> Codec.field "TableSizeBytes" .tableSizeBytes Codec.int
        |> Codec.field "TableName" .tableName tableNameCodec
        |> Codec.field "TableId" .tableId tableIdCodec
        |> Codec.field "TableCreationDateTime" .tableCreationDateTime tableCreationDateTimeCodec
        |> Codec.field "TableArn" .tableArn Codec.string
        |> Codec.field "ProvisionedThroughput" .provisionedThroughput provisionedThroughputCodec
        |> Codec.field "KeySchema" .keySchema keySchemaCodec
        |> Codec.field "ItemCount" .itemCount Codec.int
        |> Codec.field "BillingMode" .billingMode billingModeCodec
        |> Codec.buildObject


{-| Codec for Select. -}
selectCodec : Codec Select
selectCodec =
    Codec.build (Enum.encoder select) (Enum.decoder select)


{-| Codec for SecondaryIndexesCapacityMap. -}
secondaryIndexesCapacityMapCodec : Codec SecondaryIndexesCapacityMap
secondaryIndexesCapacityMapCodec =
    Codec.build
        (Refined.dictEncoder indexName (Codec.encoder capacityCodec))
        (Refined.dictDecoder indexName (Codec.decoder capacityCodec))


{-| Codec for ScanTotalSegments. -}
scanTotalSegmentsCodec : Codec ScanTotalSegments
scanTotalSegmentsCodec =
    Codec.build (Refined.encoder scanTotalSegments) (Refined.decoder scanTotalSegments)


{-| Codec for ScanSegment. -}
scanSegmentCodec : Codec ScanSegment
scanSegmentCodec =
    Codec.build (Refined.encoder scanSegment) (Refined.decoder scanSegment)


{-| Codec for ScanOutput. -}
scanOutputCodec : Codec ScanOutput
scanOutputCodec =
    Codec.object ScanOutput
        |> Codec.field "ScannedCount" .scannedCount Codec.int
        |> Codec.field "LastEvaluatedKey" .lastEvaluatedKey keyCodec
        |> Codec.field "Items" .items itemListCodec
        |> Codec.field "Count" .count Codec.int
        |> Codec.field "ConsumedCapacity" .consumedCapacity consumedCapacityCodec
        |> Codec.buildObject


{-| Codec for ScanInput. -}
scanInputCodec : Codec ScanInput
scanInputCodec =
    Codec.object ScanInput
        |> Codec.field "TotalSegments" .totalSegments scanTotalSegmentsCodec
        |> Codec.field "TableName" .tableName tableNameCodec
        |> Codec.field "Select" .select selectCodec
        |> Codec.field "Segment" .segment scanSegmentCodec
        |> Codec.field "ScanFilter" .scanFilter filterConditionMapCodec
        |> Codec.field "ReturnConsumedCapacity" .returnConsumedCapacity returnConsumedCapacityCodec
        |> Codec.field "ProjectionExpression" .projectionExpression Codec.string
        |> Codec.field "Limit" .limit positiveIntegerObjectCodec
        |> Codec.field "IndexName" .indexName indexNameCodec
        |> Codec.field "FilterExpression" .filterExpression Codec.string
        |> Codec.field "ExpressionAttributeValues" .expressionAttributeValues expressionAttributeValueMapCodec
        |> Codec.field "ExpressionAttributeNames" .expressionAttributeNames expressionAttributeNameMapCodec
        |> Codec.field "ExclusiveStartKey" .exclusiveStartKey keyCodec
        |> Codec.field "ConsistentRead" .consistentRead Codec.bool
        |> Codec.field "ConditionalOperator" .conditionalOperator conditionalOperatorCodec
        |> Codec.field "AttributesToGet" .attributesToGet attributeNameListCodec
        |> Codec.buildObject


{-| Codec for ScalarAttributeType. -}
scalarAttributeTypeCodec : Codec ScalarAttributeType
scalarAttributeTypeCodec =
    Codec.build (Enum.encoder scalarAttributeType) (Enum.decoder scalarAttributeType)


{-| Codec for Ssetype. -}
ssetypeCodec : Codec Ssetype
ssetypeCodec =
    Codec.build (Enum.encoder ssetype) (Enum.decoder ssetype)


{-| Codec for Ssestatus. -}
ssestatusCodec : Codec Ssestatus
ssestatusCodec =
    Codec.build (Enum.encoder ssestatus) (Enum.decoder ssestatus)


{-| Codec for Ssespecification. -}
ssespecificationCodec : Codec Ssespecification
ssespecificationCodec =
    Codec.object Ssespecification
        |> Codec.field "SSEType" .ssetype ssetypeCodec
        |> Codec.field "KMSMasterKeyId" .kmsmasterKeyId Codec.string
        |> Codec.field "Enabled" .enabled Codec.bool
        |> Codec.buildObject


{-| Codec for Sseenabled. -}
sseenabledCodec : Codec Sseenabled
sseenabledCodec =
    Codec.bool


{-| Codec for Ssedescription. -}
ssedescriptionCodec : Codec Ssedescription
ssedescriptionCodec =
    Codec.object Ssedescription
        |> Codec.field "Status" .status ssestatusCodec
        |> Codec.field "SSEType" .ssetype ssetypeCodec
        |> Codec.field "KMSMasterKeyArn" .kmsmasterKeyArn Codec.string
        |> Codec.buildObject


{-| Codec for ReturnValuesOnConditionCheckFailure. -}
returnValuesOnConditionCheckFailureCodec : Codec ReturnValuesOnConditionCheckFailure
returnValuesOnConditionCheckFailureCodec =
    Codec.build (Enum.encoder returnValuesOnConditionCheckFailure) (Enum.decoder returnValuesOnConditionCheckFailure)


{-| Codec for ReturnValue. -}
returnValueCodec : Codec ReturnValue
returnValueCodec =
    Codec.build (Enum.encoder returnValue) (Enum.decoder returnValue)


{-| Codec for ReturnItemCollectionMetrics. -}
returnItemCollectionMetricsCodec : Codec ReturnItemCollectionMetrics
returnItemCollectionMetricsCodec =
    Codec.build (Enum.encoder returnItemCollectionMetrics) (Enum.decoder returnItemCollectionMetrics)


{-| Codec for ReturnConsumedCapacity. -}
returnConsumedCapacityCodec : Codec ReturnConsumedCapacity
returnConsumedCapacityCodec =
    Codec.build (Enum.encoder returnConsumedCapacity) (Enum.decoder returnConsumedCapacity)


{-| Codec for RestoreTableToPointInTimeOutput. -}
restoreTableToPointInTimeOutputCodec : Codec RestoreTableToPointInTimeOutput
restoreTableToPointInTimeOutputCodec =
    Codec.object RestoreTableToPointInTimeOutput
        |> Codec.field "TableDescription" .tableDescription tableDescriptionCodec
        |> Codec.buildObject


{-| Codec for RestoreTableToPointInTimeInput. -}
restoreTableToPointInTimeInputCodec : Codec RestoreTableToPointInTimeInput
restoreTableToPointInTimeInputCodec =
    Codec.object RestoreTableToPointInTimeInput
        |> Codec.field "UseLatestRestorableTime" .useLatestRestorableTime Codec.bool
        |> Codec.field "TargetTableName" .targetTableName tableNameCodec
        |> Codec.field "SourceTableName" .sourceTableName tableNameCodec
        |> Codec.field "RestoreDateTime" .restoreDateTime dateCodec
        |> Codec.buildObject


{-| Codec for RestoreTableFromBackupOutput. -}
restoreTableFromBackupOutputCodec : Codec RestoreTableFromBackupOutput
restoreTableFromBackupOutputCodec =
    Codec.object RestoreTableFromBackupOutput
        |> Codec.field "TableDescription" .tableDescription tableDescriptionCodec
        |> Codec.buildObject


{-| Codec for RestoreTableFromBackupInput. -}
restoreTableFromBackupInputCodec : Codec RestoreTableFromBackupInput
restoreTableFromBackupInputCodec =
    Codec.object RestoreTableFromBackupInput
        |> Codec.field "TargetTableName" .targetTableName tableNameCodec
        |> Codec.field "BackupArn" .backupArn backupArnCodec
        |> Codec.buildObject


{-| Codec for RestoreSummary. -}
restoreSummaryCodec : Codec RestoreSummary
restoreSummaryCodec =
    Codec.object RestoreSummary
        |> Codec.field "SourceTableArn" .sourceTableArn Codec.string
        |> Codec.field "SourceBackupArn" .sourceBackupArn backupArnCodec
        |> Codec.field "RestoreInProgress" .restoreInProgress Codec.bool
        |> Codec.field "RestoreDateTime" .restoreDateTime dateCodec
        |> Codec.buildObject


{-| Codec for RestoreInProgress. -}
restoreInProgressCodec : Codec RestoreInProgress
restoreInProgressCodec =
    Codec.bool


{-| Codec for ResourceArnString. -}
resourceArnStringCodec : Codec ResourceArnString
resourceArnStringCodec =
    Codec.build (Refined.encoder resourceArnString) (Refined.decoder resourceArnString)


{-| Codec for ReplicaUpdateList. -}
replicaUpdateListCodec : Codec ReplicaUpdateList
replicaUpdateListCodec =
    Codec.list replicaUpdateCodec


{-| Codec for ReplicaUpdate. -}
replicaUpdateCodec : Codec ReplicaUpdate
replicaUpdateCodec =
    Codec.object ReplicaUpdate
        |> Codec.field "Delete" .delete deleteReplicaActionCodec
        |> Codec.field "Create" .create createReplicaActionCodec
        |> Codec.buildObject


{-| Codec for ReplicaStatus. -}
replicaStatusCodec : Codec ReplicaStatus
replicaStatusCodec =
    Codec.build (Enum.encoder replicaStatus) (Enum.decoder replicaStatus)


{-| Codec for ReplicaSettingsUpdateList. -}
replicaSettingsUpdateListCodec : Codec ReplicaSettingsUpdateList
replicaSettingsUpdateListCodec =
    Codec.list replicaSettingsUpdateCodec


{-| Codec for ReplicaSettingsUpdate. -}
replicaSettingsUpdateCodec : Codec ReplicaSettingsUpdate
replicaSettingsUpdateCodec =
    Codec.object ReplicaSettingsUpdate
        |> Codec.field "ReplicaProvisionedReadCapacityUnits" .replicaProvisionedReadCapacityUnits Codec.int
        |> Codec.field
            "ReplicaProvisionedReadCapacityAutoScalingSettingsUpdate"
            .replicaProvisionedReadCapacityAutoScalingSettingsUpdate
            autoScalingSettingsUpdateCodec
        |> Codec.field
            "ReplicaGlobalSecondaryIndexSettingsUpdate"
            .replicaGlobalSecondaryIndexSettingsUpdate
            replicaGlobalSecondaryIndexSettingsUpdateListCodec
        |> Codec.field "RegionName" .regionName Codec.string
        |> Codec.buildObject


{-| Codec for ReplicaSettingsDescriptionList. -}
replicaSettingsDescriptionListCodec : Codec ReplicaSettingsDescriptionList
replicaSettingsDescriptionListCodec =
    Codec.list replicaSettingsDescriptionCodec


{-| Codec for ReplicaSettingsDescription. -}
replicaSettingsDescriptionCodec : Codec ReplicaSettingsDescription
replicaSettingsDescriptionCodec =
    Codec.object ReplicaSettingsDescription
        |> Codec.field "ReplicaStatus" .replicaStatus replicaStatusCodec
        |> Codec.field "ReplicaProvisionedWriteCapacityUnits" .replicaProvisionedWriteCapacityUnits Codec.int
        |> Codec.field
            "ReplicaProvisionedWriteCapacityAutoScalingSettings"
            .replicaProvisionedWriteCapacityAutoScalingSettings
            autoScalingSettingsDescriptionCodec
        |> Codec.field "ReplicaProvisionedReadCapacityUnits" .replicaProvisionedReadCapacityUnits Codec.int
        |> Codec.field
            "ReplicaProvisionedReadCapacityAutoScalingSettings"
            .replicaProvisionedReadCapacityAutoScalingSettings
            autoScalingSettingsDescriptionCodec
        |> Codec.field
            "ReplicaGlobalSecondaryIndexSettings"
            .replicaGlobalSecondaryIndexSettings
            replicaGlobalSecondaryIndexSettingsDescriptionListCodec
        |> Codec.field "ReplicaBillingModeSummary" .replicaBillingModeSummary billingModeSummaryCodec
        |> Codec.field "RegionName" .regionName Codec.string
        |> Codec.buildObject


{-| Codec for ReplicaList. -}
replicaListCodec : Codec ReplicaList
replicaListCodec =
    Codec.list replicaCodec


{-| Codec for ReplicaGlobalSecondaryIndexSettingsUpdateList. -}
replicaGlobalSecondaryIndexSettingsUpdateListCodec : Codec ReplicaGlobalSecondaryIndexSettingsUpdateList
replicaGlobalSecondaryIndexSettingsUpdateListCodec =
    Codec.list replicaGlobalSecondaryIndexSettingsUpdateCodec


{-| Codec for ReplicaGlobalSecondaryIndexSettingsUpdate. -}
replicaGlobalSecondaryIndexSettingsUpdateCodec : Codec ReplicaGlobalSecondaryIndexSettingsUpdate
replicaGlobalSecondaryIndexSettingsUpdateCodec =
    Codec.object ReplicaGlobalSecondaryIndexSettingsUpdate
        |> Codec.field "ProvisionedReadCapacityUnits" .provisionedReadCapacityUnits Codec.int
        |> Codec.field
            "ProvisionedReadCapacityAutoScalingSettingsUpdate"
            .provisionedReadCapacityAutoScalingSettingsUpdate
            autoScalingSettingsUpdateCodec
        |> Codec.field "IndexName" .indexName indexNameCodec
        |> Codec.buildObject


{-| Codec for ReplicaGlobalSecondaryIndexSettingsDescriptionList. -}
replicaGlobalSecondaryIndexSettingsDescriptionListCodec : Codec ReplicaGlobalSecondaryIndexSettingsDescriptionList
replicaGlobalSecondaryIndexSettingsDescriptionListCodec =
    Codec.list replicaGlobalSecondaryIndexSettingsDescriptionCodec


{-| Codec for ReplicaGlobalSecondaryIndexSettingsDescription. -}
replicaGlobalSecondaryIndexSettingsDescriptionCodec : Codec ReplicaGlobalSecondaryIndexSettingsDescription
replicaGlobalSecondaryIndexSettingsDescriptionCodec =
    Codec.object ReplicaGlobalSecondaryIndexSettingsDescription
        |> Codec.field "ProvisionedWriteCapacityUnits" .provisionedWriteCapacityUnits Codec.int
        |> Codec.field
            "ProvisionedWriteCapacityAutoScalingSettings"
            .provisionedWriteCapacityAutoScalingSettings
            autoScalingSettingsDescriptionCodec
        |> Codec.field "ProvisionedReadCapacityUnits" .provisionedReadCapacityUnits Codec.int
        |> Codec.field
            "ProvisionedReadCapacityAutoScalingSettings"
            .provisionedReadCapacityAutoScalingSettings
            autoScalingSettingsDescriptionCodec
        |> Codec.field "IndexStatus" .indexStatus indexStatusCodec
        |> Codec.field "IndexName" .indexName indexNameCodec
        |> Codec.buildObject


{-| Codec for ReplicaDescriptionList. -}
replicaDescriptionListCodec : Codec ReplicaDescriptionList
replicaDescriptionListCodec =
    Codec.list replicaDescriptionCodec


{-| Codec for ReplicaDescription. -}
replicaDescriptionCodec : Codec ReplicaDescription
replicaDescriptionCodec =
    Codec.object ReplicaDescription |> Codec.field "RegionName" .regionName Codec.string |> Codec.buildObject


{-| Codec for Replica. -}
replicaCodec : Codec Replica
replicaCodec =
    Codec.object Replica |> Codec.field "RegionName" .regionName Codec.string |> Codec.buildObject


{-| Codec for RegionName. -}
regionNameCodec : Codec RegionName
regionNameCodec =
    Codec.string


{-| Codec for QueryOutput. -}
queryOutputCodec : Codec QueryOutput
queryOutputCodec =
    Codec.object QueryOutput
        |> Codec.field "ScannedCount" .scannedCount Codec.int
        |> Codec.field "LastEvaluatedKey" .lastEvaluatedKey keyCodec
        |> Codec.field "Items" .items itemListCodec
        |> Codec.field "Count" .count Codec.int
        |> Codec.field "ConsumedCapacity" .consumedCapacity consumedCapacityCodec
        |> Codec.buildObject


{-| Codec for QueryInput. -}
queryInputCodec : Codec QueryInput
queryInputCodec =
    Codec.object QueryInput
        |> Codec.field "TableName" .tableName tableNameCodec
        |> Codec.field "Select" .select selectCodec
        |> Codec.field "ScanIndexForward" .scanIndexForward Codec.bool
        |> Codec.field "ReturnConsumedCapacity" .returnConsumedCapacity returnConsumedCapacityCodec
        |> Codec.field "QueryFilter" .queryFilter filterConditionMapCodec
        |> Codec.field "ProjectionExpression" .projectionExpression Codec.string
        |> Codec.field "Limit" .limit positiveIntegerObjectCodec
        |> Codec.field "KeyConditions" .keyConditions keyConditionsCodec
        |> Codec.field "KeyConditionExpression" .keyConditionExpression Codec.string
        |> Codec.field "IndexName" .indexName indexNameCodec
        |> Codec.field "FilterExpression" .filterExpression Codec.string
        |> Codec.field "ExpressionAttributeValues" .expressionAttributeValues expressionAttributeValueMapCodec
        |> Codec.field "ExpressionAttributeNames" .expressionAttributeNames expressionAttributeNameMapCodec
        |> Codec.field "ExclusiveStartKey" .exclusiveStartKey keyCodec
        |> Codec.field "ConsistentRead" .consistentRead Codec.bool
        |> Codec.field "ConditionalOperator" .conditionalOperator conditionalOperatorCodec
        |> Codec.field "AttributesToGet" .attributesToGet attributeNameListCodec
        |> Codec.buildObject


{-| Codec for PutRequest. -}
putRequestCodec : Codec PutRequest
putRequestCodec =
    Codec.object PutRequest |> Codec.field "Item" .item putItemInputAttributeMapCodec |> Codec.buildObject


{-| Codec for PutItemOutput. -}
putItemOutputCodec : Codec PutItemOutput
putItemOutputCodec =
    Codec.object PutItemOutput
        |> Codec.field "ItemCollectionMetrics" .itemCollectionMetrics itemCollectionMetricsCodec
        |> Codec.field "ConsumedCapacity" .consumedCapacity consumedCapacityCodec
        |> Codec.field "Attributes" .attributes attributeMapCodec
        |> Codec.buildObject


{-| Codec for PutItemInputAttributeMap. -}
putItemInputAttributeMapCodec : Codec PutItemInputAttributeMap
putItemInputAttributeMapCodec =
    Codec.build
        (Refined.dictEncoder attributeName (Codec.encoder attributeValueCodec))
        (Refined.dictDecoder attributeName (Codec.decoder attributeValueCodec))


{-| Codec for PutItemInput. -}
putItemInputCodec : Codec PutItemInput
putItemInputCodec =
    Codec.object PutItemInput
        |> Codec.field "TableName" .tableName tableNameCodec
        |> Codec.field "ReturnValues" .returnValues returnValueCodec
        |> Codec.field "ReturnItemCollectionMetrics" .returnItemCollectionMetrics returnItemCollectionMetricsCodec
        |> Codec.field "ReturnConsumedCapacity" .returnConsumedCapacity returnConsumedCapacityCodec
        |> Codec.field "Item" .item putItemInputAttributeMapCodec
        |> Codec.field "ExpressionAttributeValues" .expressionAttributeValues expressionAttributeValueMapCodec
        |> Codec.field "ExpressionAttributeNames" .expressionAttributeNames expressionAttributeNameMapCodec
        |> Codec.field "Expected" .expected expectedAttributeMapCodec
        |> Codec.field "ConditionalOperator" .conditionalOperator conditionalOperatorCodec
        |> Codec.field "ConditionExpression" .conditionExpression Codec.string
        |> Codec.buildObject


{-| Codec for Put. -}
putCodec : Codec Put
putCodec =
    Codec.object Put
        |> Codec.field "TableName" .tableName tableNameCodec
        |> Codec.field
            "ReturnValuesOnConditionCheckFailure"
            .returnValuesOnConditionCheckFailure
            returnValuesOnConditionCheckFailureCodec
        |> Codec.field "Item" .item putItemInputAttributeMapCodec
        |> Codec.field "ExpressionAttributeValues" .expressionAttributeValues expressionAttributeValueMapCodec
        |> Codec.field "ExpressionAttributeNames" .expressionAttributeNames expressionAttributeNameMapCodec
        |> Codec.field "ConditionExpression" .conditionExpression Codec.string
        |> Codec.buildObject


{-| Codec for ProvisionedThroughputDescription. -}
provisionedThroughputDescriptionCodec : Codec ProvisionedThroughputDescription
provisionedThroughputDescriptionCodec =
    Codec.object ProvisionedThroughputDescription
        |> Codec.field "WriteCapacityUnits" .writeCapacityUnits Codec.int
        |> Codec.field "ReadCapacityUnits" .readCapacityUnits Codec.int
        |> Codec.field "NumberOfDecreasesToday" .numberOfDecreasesToday Codec.int
        |> Codec.field "LastIncreaseDateTime" .lastIncreaseDateTime dateCodec
        |> Codec.field "LastDecreaseDateTime" .lastDecreaseDateTime dateCodec
        |> Codec.buildObject


{-| Codec for ProvisionedThroughput. -}
provisionedThroughputCodec : Codec ProvisionedThroughput
provisionedThroughputCodec =
    Codec.object ProvisionedThroughput
        |> Codec.field "WriteCapacityUnits" .writeCapacityUnits Codec.int
        |> Codec.field "ReadCapacityUnits" .readCapacityUnits Codec.int
        |> Codec.buildObject


{-| Codec for ProjectionType. -}
projectionTypeCodec : Codec ProjectionType
projectionTypeCodec =
    Codec.build (Enum.encoder projectionType) (Enum.decoder projectionType)


{-| Codec for ProjectionExpression. -}
projectionExpressionCodec : Codec ProjectionExpression
projectionExpressionCodec =
    Codec.string


{-| Codec for Projection. -}
projectionCodec : Codec Projection
projectionCodec =
    Codec.object Projection
        |> Codec.field "ProjectionType" .projectionType projectionTypeCodec
        |> Codec.field "NonKeyAttributes" .nonKeyAttributes nonKeyAttributeNameListCodec
        |> Codec.buildObject


{-| Codec for PositiveLongObject. -}
positiveLongObjectCodec : Codec PositiveLongObject
positiveLongObjectCodec =
    Codec.int


{-| Codec for PositiveIntegerObject. -}
positiveIntegerObjectCodec : Codec PositiveIntegerObject
positiveIntegerObjectCodec =
    Codec.build (Refined.encoder positiveIntegerObject) (Refined.decoder positiveIntegerObject)


{-| Codec for PointInTimeRecoveryStatus. -}
pointInTimeRecoveryStatusCodec : Codec PointInTimeRecoveryStatus
pointInTimeRecoveryStatusCodec =
    Codec.build (Enum.encoder pointInTimeRecoveryStatus) (Enum.decoder pointInTimeRecoveryStatus)


{-| Codec for PointInTimeRecoverySpecification. -}
pointInTimeRecoverySpecificationCodec : Codec PointInTimeRecoverySpecification
pointInTimeRecoverySpecificationCodec =
    Codec.object PointInTimeRecoverySpecification
        |> Codec.field "PointInTimeRecoveryEnabled" .pointInTimeRecoveryEnabled Codec.bool
        |> Codec.buildObject


{-| Codec for PointInTimeRecoveryDescription. -}
pointInTimeRecoveryDescriptionCodec : Codec PointInTimeRecoveryDescription
pointInTimeRecoveryDescriptionCodec =
    Codec.object PointInTimeRecoveryDescription
        |> Codec.field "PointInTimeRecoveryStatus" .pointInTimeRecoveryStatus pointInTimeRecoveryStatusCodec
        |> Codec.field "LatestRestorableDateTime" .latestRestorableDateTime dateCodec
        |> Codec.field "EarliestRestorableDateTime" .earliestRestorableDateTime dateCodec
        |> Codec.buildObject


{-| Codec for NumberSetAttributeValue. -}
numberSetAttributeValueCodec : Codec NumberSetAttributeValue
numberSetAttributeValueCodec =
    Codec.list Codec.string


{-| Codec for NumberAttributeValue. -}
numberAttributeValueCodec : Codec NumberAttributeValue
numberAttributeValueCodec =
    Codec.string


{-| Codec for NullAttributeValue. -}
nullAttributeValueCodec : Codec NullAttributeValue
nullAttributeValueCodec =
    Codec.bool


{-| Codec for NonNegativeLongObject. -}
nonNegativeLongObjectCodec : Codec NonNegativeLongObject
nonNegativeLongObjectCodec =
    Codec.int


{-| Codec for NonKeyAttributeNameList. -}
nonKeyAttributeNameListCodec : Codec NonKeyAttributeNameList
nonKeyAttributeNameListCodec =
    Codec.list nonKeyAttributeNameCodec


{-| Codec for NonKeyAttributeName. -}
nonKeyAttributeNameCodec : Codec NonKeyAttributeName
nonKeyAttributeNameCodec =
    Codec.build (Refined.encoder nonKeyAttributeName) (Refined.decoder nonKeyAttributeName)


{-| Codec for NextTokenString. -}
nextTokenStringCodec : Codec NextTokenString
nextTokenStringCodec =
    Codec.string


{-| Codec for MapAttributeValue. -}
mapAttributeValueCodec : Codec MapAttributeValue
mapAttributeValueCodec =
    Codec.build
        (Refined.dictEncoder attributeName (Codec.encoder attributeValueCodec))
        (Refined.dictDecoder attributeName (Codec.decoder attributeValueCodec))


{-| Codec for Long. -}
longCodec : Codec Long
longCodec =
    Codec.int


{-| Codec for LocalSecondaryIndexes. -}
localSecondaryIndexesCodec : Codec LocalSecondaryIndexes
localSecondaryIndexesCodec =
    Codec.list localSecondaryIndexInfoCodec


{-| Codec for LocalSecondaryIndexList. -}
localSecondaryIndexListCodec : Codec LocalSecondaryIndexList
localSecondaryIndexListCodec =
    Codec.list localSecondaryIndexCodec


{-| Codec for LocalSecondaryIndexInfo. -}
localSecondaryIndexInfoCodec : Codec LocalSecondaryIndexInfo
localSecondaryIndexInfoCodec =
    Codec.object LocalSecondaryIndexInfo
        |> Codec.field "Projection" .projection projectionCodec
        |> Codec.field "KeySchema" .keySchema keySchemaCodec
        |> Codec.field "IndexName" .indexName indexNameCodec
        |> Codec.buildObject


{-| Codec for LocalSecondaryIndexDescriptionList. -}
localSecondaryIndexDescriptionListCodec : Codec LocalSecondaryIndexDescriptionList
localSecondaryIndexDescriptionListCodec =
    Codec.list localSecondaryIndexDescriptionCodec


{-| Codec for LocalSecondaryIndexDescription. -}
localSecondaryIndexDescriptionCodec : Codec LocalSecondaryIndexDescription
localSecondaryIndexDescriptionCodec =
    Codec.object LocalSecondaryIndexDescription
        |> Codec.field "Projection" .projection projectionCodec
        |> Codec.field "KeySchema" .keySchema keySchemaCodec
        |> Codec.field "ItemCount" .itemCount Codec.int
        |> Codec.field "IndexSizeBytes" .indexSizeBytes Codec.int
        |> Codec.field "IndexName" .indexName indexNameCodec
        |> Codec.field "IndexArn" .indexArn Codec.string
        |> Codec.buildObject


{-| Codec for LocalSecondaryIndex. -}
localSecondaryIndexCodec : Codec LocalSecondaryIndex
localSecondaryIndexCodec =
    Codec.object LocalSecondaryIndex
        |> Codec.field "Projection" .projection projectionCodec
        |> Codec.field "KeySchema" .keySchema keySchemaCodec
        |> Codec.field "IndexName" .indexName indexNameCodec
        |> Codec.buildObject


{-| Codec for ListTagsOfResourceOutput. -}
listTagsOfResourceOutputCodec : Codec ListTagsOfResourceOutput
listTagsOfResourceOutputCodec =
    Codec.object ListTagsOfResourceOutput
        |> Codec.field "Tags" .tags tagListCodec
        |> Codec.field "NextToken" .nextToken Codec.string
        |> Codec.buildObject


{-| Codec for ListTagsOfResourceInput. -}
listTagsOfResourceInputCodec : Codec ListTagsOfResourceInput
listTagsOfResourceInputCodec =
    Codec.object ListTagsOfResourceInput
        |> Codec.field "ResourceArn" .resourceArn resourceArnStringCodec
        |> Codec.field "NextToken" .nextToken Codec.string
        |> Codec.buildObject


{-| Codec for ListTablesOutput. -}
listTablesOutputCodec : Codec ListTablesOutput
listTablesOutputCodec =
    Codec.object ListTablesOutput
        |> Codec.field "TableNames" .tableNames tableNameListCodec
        |> Codec.field "LastEvaluatedTableName" .lastEvaluatedTableName tableNameCodec
        |> Codec.buildObject


{-| Codec for ListTablesInputLimit. -}
listTablesInputLimitCodec : Codec ListTablesInputLimit
listTablesInputLimitCodec =
    Codec.build (Refined.encoder listTablesInputLimit) (Refined.decoder listTablesInputLimit)


{-| Codec for ListTablesInput. -}
listTablesInputCodec : Codec ListTablesInput
listTablesInputCodec =
    Codec.object ListTablesInput
        |> Codec.field "Limit" .limit listTablesInputLimitCodec
        |> Codec.field "ExclusiveStartTableName" .exclusiveStartTableName tableNameCodec
        |> Codec.buildObject


{-| Codec for ListGlobalTablesOutput. -}
listGlobalTablesOutputCodec : Codec ListGlobalTablesOutput
listGlobalTablesOutputCodec =
    Codec.object ListGlobalTablesOutput
        |> Codec.field "LastEvaluatedGlobalTableName" .lastEvaluatedGlobalTableName tableNameCodec
        |> Codec.field "GlobalTables" .globalTables globalTableListCodec
        |> Codec.buildObject


{-| Codec for ListGlobalTablesInput. -}
listGlobalTablesInputCodec : Codec ListGlobalTablesInput
listGlobalTablesInputCodec =
    Codec.object ListGlobalTablesInput
        |> Codec.field "RegionName" .regionName Codec.string
        |> Codec.field "Limit" .limit positiveIntegerObjectCodec
        |> Codec.field "ExclusiveStartGlobalTableName" .exclusiveStartGlobalTableName tableNameCodec
        |> Codec.buildObject


{-| Codec for ListBackupsOutput. -}
listBackupsOutputCodec : Codec ListBackupsOutput
listBackupsOutputCodec =
    Codec.object ListBackupsOutput
        |> Codec.field "LastEvaluatedBackupArn" .lastEvaluatedBackupArn backupArnCodec
        |> Codec.field "BackupSummaries" .backupSummaries backupSummariesCodec
        |> Codec.buildObject


{-| Codec for ListBackupsInput. -}
listBackupsInputCodec : Codec ListBackupsInput
listBackupsInputCodec =
    Codec.object ListBackupsInput
        |> Codec.field "TimeRangeUpperBound" .timeRangeUpperBound timeRangeUpperBoundCodec
        |> Codec.field "TimeRangeLowerBound" .timeRangeLowerBound timeRangeLowerBoundCodec
        |> Codec.field "TableName" .tableName tableNameCodec
        |> Codec.field "Limit" .limit backupsInputLimitCodec
        |> Codec.field "ExclusiveStartBackupArn" .exclusiveStartBackupArn backupArnCodec
        |> Codec.field "BackupType" .backupType backupTypeFilterCodec
        |> Codec.buildObject


{-| Codec for ListAttributeValue. -}
listAttributeValueCodec : Codec ListAttributeValue
listAttributeValueCodec =
    Codec.list attributeValueCodec


{-| Codec for KeysAndAttributes. -}
keysAndAttributesCodec : Codec KeysAndAttributes
keysAndAttributesCodec =
    Codec.object KeysAndAttributes
        |> Codec.field "ProjectionExpression" .projectionExpression Codec.string
        |> Codec.field "Keys" .keys keyListCodec
        |> Codec.field "ExpressionAttributeNames" .expressionAttributeNames expressionAttributeNameMapCodec
        |> Codec.field "ConsistentRead" .consistentRead Codec.bool
        |> Codec.field "AttributesToGet" .attributesToGet attributeNameListCodec
        |> Codec.buildObject


{-| Codec for KeyType. -}
keyTypeCodec : Codec KeyType
keyTypeCodec =
    Codec.build (Enum.encoder keyType) (Enum.decoder keyType)


{-| Codec for KeySchemaElement. -}
keySchemaElementCodec : Codec KeySchemaElement
keySchemaElementCodec =
    Codec.object KeySchemaElement
        |> Codec.field "KeyType" .keyType keyTypeCodec
        |> Codec.field "AttributeName" .attributeName keySchemaAttributeNameCodec
        |> Codec.buildObject


{-| Codec for KeySchemaAttributeName. -}
keySchemaAttributeNameCodec : Codec KeySchemaAttributeName
keySchemaAttributeNameCodec =
    Codec.build (Refined.encoder keySchemaAttributeName) (Refined.decoder keySchemaAttributeName)


{-| Codec for KeySchema. -}
keySchemaCodec : Codec KeySchema
keySchemaCodec =
    Codec.list keySchemaElementCodec


{-| Codec for KeyList. -}
keyListCodec : Codec KeyList
keyListCodec =
    Codec.list keyCodec


{-| Codec for KeyExpression. -}
keyExpressionCodec : Codec KeyExpression
keyExpressionCodec =
    Codec.string


{-| Codec for KeyConditions. -}
keyConditionsCodec : Codec KeyConditions
keyConditionsCodec =
    Codec.build
        (Refined.dictEncoder attributeName (Codec.encoder conditionCodec))
        (Refined.dictDecoder attributeName (Codec.decoder conditionCodec))


{-| Codec for Key. -}
keyCodec : Codec Key
keyCodec =
    Codec.build
        (Refined.dictEncoder attributeName (Codec.encoder attributeValueCodec))
        (Refined.dictDecoder attributeName (Codec.decoder attributeValueCodec))


{-| Codec for KmsmasterKeyId. -}
kmsmasterKeyIdCodec : Codec KmsmasterKeyId
kmsmasterKeyIdCodec =
    Codec.string


{-| Codec for KmsmasterKeyArn. -}
kmsmasterKeyArnCodec : Codec KmsmasterKeyArn
kmsmasterKeyArnCodec =
    Codec.string


{-| Codec for ItemResponseList. -}
itemResponseListCodec : Codec ItemResponseList
itemResponseListCodec =
    Codec.list itemResponseCodec


{-| Codec for ItemResponse. -}
itemResponseCodec : Codec ItemResponse
itemResponseCodec =
    Codec.object ItemResponse |> Codec.field "Item" .item attributeMapCodec |> Codec.buildObject


{-| Codec for ItemList. -}
itemListCodec : Codec ItemList
itemListCodec =
    Codec.list attributeMapCodec


{-| Codec for ItemCount. -}
itemCountCodec : Codec ItemCount
itemCountCodec =
    Codec.int


{-| Codec for ItemCollectionSizeEstimateRange. -}
itemCollectionSizeEstimateRangeCodec : Codec ItemCollectionSizeEstimateRange
itemCollectionSizeEstimateRangeCodec =
    Codec.list Codec.float


{-| Codec for ItemCollectionSizeEstimateBound. -}
itemCollectionSizeEstimateBoundCodec : Codec ItemCollectionSizeEstimateBound
itemCollectionSizeEstimateBoundCodec =
    Codec.float


{-| Codec for ItemCollectionMetricsPerTable. -}
itemCollectionMetricsPerTableCodec : Codec ItemCollectionMetricsPerTable
itemCollectionMetricsPerTableCodec =
    Codec.build
        (Refined.dictEncoder tableName (Codec.encoder itemCollectionMetricsMultipleCodec))
        (Refined.dictDecoder tableName (Codec.decoder itemCollectionMetricsMultipleCodec))


{-| Codec for ItemCollectionMetricsMultiple. -}
itemCollectionMetricsMultipleCodec : Codec ItemCollectionMetricsMultiple
itemCollectionMetricsMultipleCodec =
    Codec.list itemCollectionMetricsCodec


{-| Codec for ItemCollectionMetrics. -}
itemCollectionMetricsCodec : Codec ItemCollectionMetrics
itemCollectionMetricsCodec =
    Codec.object ItemCollectionMetrics
        |> Codec.field "SizeEstimateRangeGB" .sizeEstimateRangeGb itemCollectionSizeEstimateRangeCodec
        |> Codec.field "ItemCollectionKey" .itemCollectionKey itemCollectionKeyAttributeMapCodec
        |> Codec.buildObject


{-| Codec for ItemCollectionKeyAttributeMap. -}
itemCollectionKeyAttributeMapCodec : Codec ItemCollectionKeyAttributeMap
itemCollectionKeyAttributeMapCodec =
    Codec.build
        (Refined.dictEncoder attributeName (Codec.encoder attributeValueCodec))
        (Refined.dictDecoder attributeName (Codec.decoder attributeValueCodec))


{-| Codec for IntegerObject. -}
integerObjectCodec : Codec IntegerObject
integerObjectCodec =
    Codec.int


{-| Codec for Integer. -}
integerCodec : Codec Integer
integerCodec =
    Codec.int


{-| Codec for IndexStatus. -}
indexStatusCodec : Codec IndexStatus
indexStatusCodec =
    Codec.build (Enum.encoder indexStatus) (Enum.decoder indexStatus)


{-| Codec for IndexName. -}
indexNameCodec : Codec IndexName
indexNameCodec =
    Codec.build (Refined.encoder indexName) (Refined.decoder indexName)


{-| Codec for GlobalTableStatus. -}
globalTableStatusCodec : Codec GlobalTableStatus
globalTableStatusCodec =
    Codec.build (Enum.encoder globalTableStatus) (Enum.decoder globalTableStatus)


{-| Codec for GlobalTableList. -}
globalTableListCodec : Codec GlobalTableList
globalTableListCodec =
    Codec.list globalTableCodec


{-| Codec for GlobalTableGlobalSecondaryIndexSettingsUpdateList. -}
globalTableGlobalSecondaryIndexSettingsUpdateListCodec : Codec GlobalTableGlobalSecondaryIndexSettingsUpdateList
globalTableGlobalSecondaryIndexSettingsUpdateListCodec =
    Codec.list globalTableGlobalSecondaryIndexSettingsUpdateCodec


{-| Codec for GlobalTableGlobalSecondaryIndexSettingsUpdate. -}
globalTableGlobalSecondaryIndexSettingsUpdateCodec : Codec GlobalTableGlobalSecondaryIndexSettingsUpdate
globalTableGlobalSecondaryIndexSettingsUpdateCodec =
    Codec.object GlobalTableGlobalSecondaryIndexSettingsUpdate
        |> Codec.field "ProvisionedWriteCapacityUnits" .provisionedWriteCapacityUnits Codec.int
        |> Codec.field
            "ProvisionedWriteCapacityAutoScalingSettingsUpdate"
            .provisionedWriteCapacityAutoScalingSettingsUpdate
            autoScalingSettingsUpdateCodec
        |> Codec.field "IndexName" .indexName indexNameCodec
        |> Codec.buildObject


{-| Codec for GlobalTableDescription. -}
globalTableDescriptionCodec : Codec GlobalTableDescription
globalTableDescriptionCodec =
    Codec.object GlobalTableDescription
        |> Codec.field "ReplicationGroup" .replicationGroup replicaDescriptionListCodec
        |> Codec.field "GlobalTableStatus" .globalTableStatus globalTableStatusCodec
        |> Codec.field "GlobalTableName" .globalTableName tableNameCodec
        |> Codec.field "GlobalTableArn" .globalTableArn Codec.string
        |> Codec.field "CreationDateTime" .creationDateTime dateCodec
        |> Codec.buildObject


{-| Codec for GlobalTableArnString. -}
globalTableArnStringCodec : Codec GlobalTableArnString
globalTableArnStringCodec =
    Codec.string


{-| Codec for GlobalTable. -}
globalTableCodec : Codec GlobalTable
globalTableCodec =
    Codec.object GlobalTable
        |> Codec.field "ReplicationGroup" .replicationGroup replicaListCodec
        |> Codec.field "GlobalTableName" .globalTableName tableNameCodec
        |> Codec.buildObject


{-| Codec for GlobalSecondaryIndexes. -}
globalSecondaryIndexesCodec : Codec GlobalSecondaryIndexes
globalSecondaryIndexesCodec =
    Codec.list globalSecondaryIndexInfoCodec


{-| Codec for GlobalSecondaryIndexUpdateList. -}
globalSecondaryIndexUpdateListCodec : Codec GlobalSecondaryIndexUpdateList
globalSecondaryIndexUpdateListCodec =
    Codec.list globalSecondaryIndexUpdateCodec


{-| Codec for GlobalSecondaryIndexUpdate. -}
globalSecondaryIndexUpdateCodec : Codec GlobalSecondaryIndexUpdate
globalSecondaryIndexUpdateCodec =
    Codec.object GlobalSecondaryIndexUpdate
        |> Codec.field "Update" .update updateGlobalSecondaryIndexActionCodec
        |> Codec.field "Delete" .delete deleteGlobalSecondaryIndexActionCodec
        |> Codec.field "Create" .create createGlobalSecondaryIndexActionCodec
        |> Codec.buildObject


{-| Codec for GlobalSecondaryIndexList. -}
globalSecondaryIndexListCodec : Codec GlobalSecondaryIndexList
globalSecondaryIndexListCodec =
    Codec.list globalSecondaryIndexCodec


{-| Codec for GlobalSecondaryIndexInfo. -}
globalSecondaryIndexInfoCodec : Codec GlobalSecondaryIndexInfo
globalSecondaryIndexInfoCodec =
    Codec.object GlobalSecondaryIndexInfo
        |> Codec.field "ProvisionedThroughput" .provisionedThroughput provisionedThroughputCodec
        |> Codec.field "Projection" .projection projectionCodec
        |> Codec.field "KeySchema" .keySchema keySchemaCodec
        |> Codec.field "IndexName" .indexName indexNameCodec
        |> Codec.buildObject


{-| Codec for GlobalSecondaryIndexDescriptionList. -}
globalSecondaryIndexDescriptionListCodec : Codec GlobalSecondaryIndexDescriptionList
globalSecondaryIndexDescriptionListCodec =
    Codec.list globalSecondaryIndexDescriptionCodec


{-| Codec for GlobalSecondaryIndexDescription. -}
globalSecondaryIndexDescriptionCodec : Codec GlobalSecondaryIndexDescription
globalSecondaryIndexDescriptionCodec =
    Codec.object GlobalSecondaryIndexDescription
        |> Codec.field "ProvisionedThroughput" .provisionedThroughput provisionedThroughputDescriptionCodec
        |> Codec.field "Projection" .projection projectionCodec
        |> Codec.field "KeySchema" .keySchema keySchemaCodec
        |> Codec.field "ItemCount" .itemCount Codec.int
        |> Codec.field "IndexStatus" .indexStatus indexStatusCodec
        |> Codec.field "IndexSizeBytes" .indexSizeBytes Codec.int
        |> Codec.field "IndexName" .indexName indexNameCodec
        |> Codec.field "IndexArn" .indexArn Codec.string
        |> Codec.field "Backfilling" .backfilling Codec.bool
        |> Codec.buildObject


{-| Codec for GlobalSecondaryIndex. -}
globalSecondaryIndexCodec : Codec GlobalSecondaryIndex
globalSecondaryIndexCodec =
    Codec.object GlobalSecondaryIndex
        |> Codec.field "ProvisionedThroughput" .provisionedThroughput provisionedThroughputCodec
        |> Codec.field "Projection" .projection projectionCodec
        |> Codec.field "KeySchema" .keySchema keySchemaCodec
        |> Codec.field "IndexName" .indexName indexNameCodec
        |> Codec.buildObject


{-| Codec for GetItemOutput. -}
getItemOutputCodec : Codec GetItemOutput
getItemOutputCodec =
    Codec.object GetItemOutput
        |> Codec.field "Item" .item attributeMapCodec
        |> Codec.field "ConsumedCapacity" .consumedCapacity consumedCapacityCodec
        |> Codec.buildObject


{-| Codec for GetItemInput. -}
getItemInputCodec : Codec GetItemInput
getItemInputCodec =
    Codec.object GetItemInput
        |> Codec.field "TableName" .tableName tableNameCodec
        |> Codec.field "ReturnConsumedCapacity" .returnConsumedCapacity returnConsumedCapacityCodec
        |> Codec.field "ProjectionExpression" .projectionExpression Codec.string
        |> Codec.field "Key" .key keyCodec
        |> Codec.field "ExpressionAttributeNames" .expressionAttributeNames expressionAttributeNameMapCodec
        |> Codec.field "ConsistentRead" .consistentRead Codec.bool
        |> Codec.field "AttributesToGet" .attributesToGet attributeNameListCodec
        |> Codec.buildObject


{-| Codec for Get. -}
getCodec : Codec Get
getCodec =
    Codec.object Get
        |> Codec.field "TableName" .tableName tableNameCodec
        |> Codec.field "ProjectionExpression" .projectionExpression Codec.string
        |> Codec.field "Key" .key keyCodec
        |> Codec.field "ExpressionAttributeNames" .expressionAttributeNames expressionAttributeNameMapCodec
        |> Codec.buildObject


{-| Codec for FilterConditionMap. -}
filterConditionMapCodec : Codec FilterConditionMap
filterConditionMapCodec =
    Codec.build
        (Refined.dictEncoder attributeName (Codec.encoder conditionCodec))
        (Refined.dictDecoder attributeName (Codec.decoder conditionCodec))


{-| Codec for ExpressionAttributeValueVariable. -}
expressionAttributeValueVariableCodec : Codec ExpressionAttributeValueVariable
expressionAttributeValueVariableCodec =
    Codec.string


{-| Codec for ExpressionAttributeValueMap. -}
expressionAttributeValueMapCodec : Codec ExpressionAttributeValueMap
expressionAttributeValueMapCodec =
    Codec.dict attributeValueCodec


{-| Codec for ExpressionAttributeNameVariable. -}
expressionAttributeNameVariableCodec : Codec ExpressionAttributeNameVariable
expressionAttributeNameVariableCodec =
    Codec.string


{-| Codec for ExpressionAttributeNameMap. -}
expressionAttributeNameMapCodec : Codec ExpressionAttributeNameMap
expressionAttributeNameMapCodec =
    Codec.dict attributeNameCodec


{-| Codec for ExpectedAttributeValue. -}
expectedAttributeValueCodec : Codec ExpectedAttributeValue
expectedAttributeValueCodec =
    Codec.object ExpectedAttributeValue
        |> Codec.field "Value" .value attributeValueCodec
        |> Codec.field "Exists" .exists Codec.bool
        |> Codec.field "ComparisonOperator" .comparisonOperator comparisonOperatorCodec
        |> Codec.field "AttributeValueList" .attributeValueList attributeValueListCodec
        |> Codec.buildObject


{-| Codec for ExpectedAttributeMap. -}
expectedAttributeMapCodec : Codec ExpectedAttributeMap
expectedAttributeMapCodec =
    Codec.build
        (Refined.dictEncoder attributeName (Codec.encoder expectedAttributeValueCodec))
        (Refined.dictDecoder attributeName (Codec.decoder expectedAttributeValueCodec))


{-| Codec for Endpoints. -}
endpointsCodec : Codec Endpoints
endpointsCodec =
    Codec.list endpointCodec


{-| Codec for Endpoint. -}
endpointCodec : Codec Endpoint
endpointCodec =
    Codec.object Endpoint
        |> Codec.field "CachePeriodInMinutes" .cachePeriodInMinutes Codec.int
        |> Codec.field "Address" .address Codec.string
        |> Codec.buildObject


{-| Codec for Double. -}
doubleCodec : Codec Double
doubleCodec =
    Codec.float


{-| Codec for DescribeTimeToLiveOutput. -}
describeTimeToLiveOutputCodec : Codec DescribeTimeToLiveOutput
describeTimeToLiveOutputCodec =
    Codec.object DescribeTimeToLiveOutput
        |> Codec.field "TimeToLiveDescription" .timeToLiveDescription timeToLiveDescriptionCodec
        |> Codec.buildObject


{-| Codec for DescribeTimeToLiveInput. -}
describeTimeToLiveInputCodec : Codec DescribeTimeToLiveInput
describeTimeToLiveInputCodec =
    Codec.object DescribeTimeToLiveInput |> Codec.field "TableName" .tableName tableNameCodec |> Codec.buildObject


{-| Codec for DescribeTableOutput. -}
describeTableOutputCodec : Codec DescribeTableOutput
describeTableOutputCodec =
    Codec.object DescribeTableOutput |> Codec.field "Table" .table tableDescriptionCodec |> Codec.buildObject


{-| Codec for DescribeTableInput. -}
describeTableInputCodec : Codec DescribeTableInput
describeTableInputCodec =
    Codec.object DescribeTableInput |> Codec.field "TableName" .tableName tableNameCodec |> Codec.buildObject


{-| Codec for DescribeLimitsOutput. -}
describeLimitsOutputCodec : Codec DescribeLimitsOutput
describeLimitsOutputCodec =
    Codec.object DescribeLimitsOutput
        |> Codec.field "TableMaxWriteCapacityUnits" .tableMaxWriteCapacityUnits Codec.int
        |> Codec.field "TableMaxReadCapacityUnits" .tableMaxReadCapacityUnits Codec.int
        |> Codec.field "AccountMaxWriteCapacityUnits" .accountMaxWriteCapacityUnits Codec.int
        |> Codec.field "AccountMaxReadCapacityUnits" .accountMaxReadCapacityUnits Codec.int
        |> Codec.buildObject


{-| Codec for DescribeLimitsInput. -}
describeLimitsInputCodec : Codec DescribeLimitsInput
describeLimitsInputCodec =
    Codec.object DescribeLimitsInput |> Codec.buildObject


{-| Codec for DescribeGlobalTableSettingsOutput. -}
describeGlobalTableSettingsOutputCodec : Codec DescribeGlobalTableSettingsOutput
describeGlobalTableSettingsOutputCodec =
    Codec.object DescribeGlobalTableSettingsOutput
        |> Codec.field "ReplicaSettings" .replicaSettings replicaSettingsDescriptionListCodec
        |> Codec.field "GlobalTableName" .globalTableName tableNameCodec
        |> Codec.buildObject


{-| Codec for DescribeGlobalTableSettingsInput. -}
describeGlobalTableSettingsInputCodec : Codec DescribeGlobalTableSettingsInput
describeGlobalTableSettingsInputCodec =
    Codec.object DescribeGlobalTableSettingsInput
        |> Codec.field "GlobalTableName" .globalTableName tableNameCodec
        |> Codec.buildObject


{-| Codec for DescribeGlobalTableOutput. -}
describeGlobalTableOutputCodec : Codec DescribeGlobalTableOutput
describeGlobalTableOutputCodec =
    Codec.object DescribeGlobalTableOutput
        |> Codec.field "GlobalTableDescription" .globalTableDescription globalTableDescriptionCodec
        |> Codec.buildObject


{-| Codec for DescribeGlobalTableInput. -}
describeGlobalTableInputCodec : Codec DescribeGlobalTableInput
describeGlobalTableInputCodec =
    Codec.object DescribeGlobalTableInput
        |> Codec.field "GlobalTableName" .globalTableName tableNameCodec
        |> Codec.buildObject


{-| Codec for DescribeEndpointsResponse. -}
describeEndpointsResponseCodec : Codec DescribeEndpointsResponse
describeEndpointsResponseCodec =
    Codec.object DescribeEndpointsResponse |> Codec.field "Endpoints" .endpoints endpointsCodec |> Codec.buildObject


{-| Codec for DescribeEndpointsRequest. -}
describeEndpointsRequestCodec : Codec DescribeEndpointsRequest
describeEndpointsRequestCodec =
    Codec.object DescribeEndpointsRequest |> Codec.buildObject


{-| Codec for DescribeContinuousBackupsOutput. -}
describeContinuousBackupsOutputCodec : Codec DescribeContinuousBackupsOutput
describeContinuousBackupsOutputCodec =
    Codec.object DescribeContinuousBackupsOutput
        |> Codec.field "ContinuousBackupsDescription" .continuousBackupsDescription continuousBackupsDescriptionCodec
        |> Codec.buildObject


{-| Codec for DescribeContinuousBackupsInput. -}
describeContinuousBackupsInputCodec : Codec DescribeContinuousBackupsInput
describeContinuousBackupsInputCodec =
    Codec.object DescribeContinuousBackupsInput
        |> Codec.field "TableName" .tableName tableNameCodec
        |> Codec.buildObject


{-| Codec for DescribeBackupOutput. -}
describeBackupOutputCodec : Codec DescribeBackupOutput
describeBackupOutputCodec =
    Codec.object DescribeBackupOutput
        |> Codec.field "BackupDescription" .backupDescription backupDescriptionCodec
        |> Codec.buildObject


{-| Codec for DescribeBackupInput. -}
describeBackupInputCodec : Codec DescribeBackupInput
describeBackupInputCodec =
    Codec.object DescribeBackupInput |> Codec.field "BackupArn" .backupArn backupArnCodec |> Codec.buildObject


{-| Codec for DeleteTableOutput. -}
deleteTableOutputCodec : Codec DeleteTableOutput
deleteTableOutputCodec =
    Codec.object DeleteTableOutput
        |> Codec.field "TableDescription" .tableDescription tableDescriptionCodec
        |> Codec.buildObject


{-| Codec for DeleteTableInput. -}
deleteTableInputCodec : Codec DeleteTableInput
deleteTableInputCodec =
    Codec.object DeleteTableInput |> Codec.field "TableName" .tableName tableNameCodec |> Codec.buildObject


{-| Codec for DeleteRequest. -}
deleteRequestCodec : Codec DeleteRequest
deleteRequestCodec =
    Codec.object DeleteRequest |> Codec.field "Key" .key keyCodec |> Codec.buildObject


{-| Codec for DeleteReplicaAction. -}
deleteReplicaActionCodec : Codec DeleteReplicaAction
deleteReplicaActionCodec =
    Codec.object DeleteReplicaAction |> Codec.field "RegionName" .regionName Codec.string |> Codec.buildObject


{-| Codec for DeleteItemOutput. -}
deleteItemOutputCodec : Codec DeleteItemOutput
deleteItemOutputCodec =
    Codec.object DeleteItemOutput
        |> Codec.field "ItemCollectionMetrics" .itemCollectionMetrics itemCollectionMetricsCodec
        |> Codec.field "ConsumedCapacity" .consumedCapacity consumedCapacityCodec
        |> Codec.field "Attributes" .attributes attributeMapCodec
        |> Codec.buildObject


{-| Codec for DeleteItemInput. -}
deleteItemInputCodec : Codec DeleteItemInput
deleteItemInputCodec =
    Codec.object DeleteItemInput
        |> Codec.field "TableName" .tableName tableNameCodec
        |> Codec.field "ReturnValues" .returnValues returnValueCodec
        |> Codec.field "ReturnItemCollectionMetrics" .returnItemCollectionMetrics returnItemCollectionMetricsCodec
        |> Codec.field "ReturnConsumedCapacity" .returnConsumedCapacity returnConsumedCapacityCodec
        |> Codec.field "Key" .key keyCodec
        |> Codec.field "ExpressionAttributeValues" .expressionAttributeValues expressionAttributeValueMapCodec
        |> Codec.field "ExpressionAttributeNames" .expressionAttributeNames expressionAttributeNameMapCodec
        |> Codec.field "Expected" .expected expectedAttributeMapCodec
        |> Codec.field "ConditionalOperator" .conditionalOperator conditionalOperatorCodec
        |> Codec.field "ConditionExpression" .conditionExpression Codec.string
        |> Codec.buildObject


{-| Codec for DeleteGlobalSecondaryIndexAction. -}
deleteGlobalSecondaryIndexActionCodec : Codec DeleteGlobalSecondaryIndexAction
deleteGlobalSecondaryIndexActionCodec =
    Codec.object DeleteGlobalSecondaryIndexAction
        |> Codec.field "IndexName" .indexName indexNameCodec
        |> Codec.buildObject


{-| Codec for DeleteBackupOutput. -}
deleteBackupOutputCodec : Codec DeleteBackupOutput
deleteBackupOutputCodec =
    Codec.object DeleteBackupOutput
        |> Codec.field "BackupDescription" .backupDescription backupDescriptionCodec
        |> Codec.buildObject


{-| Codec for DeleteBackupInput. -}
deleteBackupInputCodec : Codec DeleteBackupInput
deleteBackupInputCodec =
    Codec.object DeleteBackupInput |> Codec.field "BackupArn" .backupArn backupArnCodec |> Codec.buildObject


{-| Codec for Delete. -}
deleteCodec : Codec Delete
deleteCodec =
    Codec.object Delete
        |> Codec.field "TableName" .tableName tableNameCodec
        |> Codec.field
            "ReturnValuesOnConditionCheckFailure"
            .returnValuesOnConditionCheckFailure
            returnValuesOnConditionCheckFailureCodec
        |> Codec.field "Key" .key keyCodec
        |> Codec.field "ExpressionAttributeValues" .expressionAttributeValues expressionAttributeValueMapCodec
        |> Codec.field "ExpressionAttributeNames" .expressionAttributeNames expressionAttributeNameMapCodec
        |> Codec.field "ConditionExpression" .conditionExpression Codec.string
        |> Codec.buildObject


{-| Codec for Date. -}
dateCodec : Codec Date
dateCodec =
    Codec.string


{-| Codec for CreateTableOutput. -}
createTableOutputCodec : Codec CreateTableOutput
createTableOutputCodec =
    Codec.object CreateTableOutput
        |> Codec.field "TableDescription" .tableDescription tableDescriptionCodec
        |> Codec.buildObject


{-| Codec for CreateTableInput. -}
createTableInputCodec : Codec CreateTableInput
createTableInputCodec =
    Codec.object CreateTableInput
        |> Codec.field "Tags" .tags tagListCodec
        |> Codec.field "TableName" .tableName tableNameCodec
        |> Codec.field "StreamSpecification" .streamSpecification streamSpecificationCodec
        |> Codec.field "SSESpecification" .ssespecification ssespecificationCodec
        |> Codec.field "ProvisionedThroughput" .provisionedThroughput provisionedThroughputCodec
        |> Codec.field "LocalSecondaryIndexes" .localSecondaryIndexes localSecondaryIndexListCodec
        |> Codec.field "KeySchema" .keySchema keySchemaCodec
        |> Codec.field "GlobalSecondaryIndexes" .globalSecondaryIndexes globalSecondaryIndexListCodec
        |> Codec.field "BillingMode" .billingMode billingModeCodec
        |> Codec.field "AttributeDefinitions" .attributeDefinitions attributeDefinitionsCodec
        |> Codec.buildObject


{-| Codec for CreateReplicaAction. -}
createReplicaActionCodec : Codec CreateReplicaAction
createReplicaActionCodec =
    Codec.object CreateReplicaAction |> Codec.field "RegionName" .regionName Codec.string |> Codec.buildObject


{-| Codec for CreateGlobalTableOutput. -}
createGlobalTableOutputCodec : Codec CreateGlobalTableOutput
createGlobalTableOutputCodec =
    Codec.object CreateGlobalTableOutput
        |> Codec.field "GlobalTableDescription" .globalTableDescription globalTableDescriptionCodec
        |> Codec.buildObject


{-| Codec for CreateGlobalTableInput. -}
createGlobalTableInputCodec : Codec CreateGlobalTableInput
createGlobalTableInputCodec =
    Codec.object CreateGlobalTableInput
        |> Codec.field "ReplicationGroup" .replicationGroup replicaListCodec
        |> Codec.field "GlobalTableName" .globalTableName tableNameCodec
        |> Codec.buildObject


{-| Codec for CreateGlobalSecondaryIndexAction. -}
createGlobalSecondaryIndexActionCodec : Codec CreateGlobalSecondaryIndexAction
createGlobalSecondaryIndexActionCodec =
    Codec.object CreateGlobalSecondaryIndexAction
        |> Codec.field "ProvisionedThroughput" .provisionedThroughput provisionedThroughputCodec
        |> Codec.field "Projection" .projection projectionCodec
        |> Codec.field "KeySchema" .keySchema keySchemaCodec
        |> Codec.field "IndexName" .indexName indexNameCodec
        |> Codec.buildObject


{-| Codec for CreateBackupOutput. -}
createBackupOutputCodec : Codec CreateBackupOutput
createBackupOutputCodec =
    Codec.object CreateBackupOutput
        |> Codec.field "BackupDetails" .backupDetails backupDetailsCodec
        |> Codec.buildObject


{-| Codec for CreateBackupInput. -}
createBackupInputCodec : Codec CreateBackupInput
createBackupInputCodec =
    Codec.object CreateBackupInput
        |> Codec.field "TableName" .tableName tableNameCodec
        |> Codec.field "BackupName" .backupName backupNameCodec
        |> Codec.buildObject


{-| Codec for ContinuousBackupsStatus. -}
continuousBackupsStatusCodec : Codec ContinuousBackupsStatus
continuousBackupsStatusCodec =
    Codec.build (Enum.encoder continuousBackupsStatus) (Enum.decoder continuousBackupsStatus)


{-| Codec for ContinuousBackupsDescription. -}
continuousBackupsDescriptionCodec : Codec ContinuousBackupsDescription
continuousBackupsDescriptionCodec =
    Codec.object ContinuousBackupsDescription
        |> Codec.field
            "PointInTimeRecoveryDescription"
            .pointInTimeRecoveryDescription
            pointInTimeRecoveryDescriptionCodec
        |> Codec.field "ContinuousBackupsStatus" .continuousBackupsStatus continuousBackupsStatusCodec
        |> Codec.buildObject


{-| Codec for ConsumedCapacityUnits. -}
consumedCapacityUnitsCodec : Codec ConsumedCapacityUnits
consumedCapacityUnitsCodec =
    Codec.float


{-| Codec for ConsumedCapacityMultiple. -}
consumedCapacityMultipleCodec : Codec ConsumedCapacityMultiple
consumedCapacityMultipleCodec =
    Codec.list consumedCapacityCodec


{-| Codec for ConsumedCapacity. -}
consumedCapacityCodec : Codec ConsumedCapacity
consumedCapacityCodec =
    Codec.object ConsumedCapacity
        |> Codec.field "WriteCapacityUnits" .writeCapacityUnits Codec.float
        |> Codec.field "TableName" .tableName tableNameCodec
        |> Codec.field "Table" .table capacityCodec
        |> Codec.field "ReadCapacityUnits" .readCapacityUnits Codec.float
        |> Codec.field "LocalSecondaryIndexes" .localSecondaryIndexes secondaryIndexesCapacityMapCodec
        |> Codec.field "GlobalSecondaryIndexes" .globalSecondaryIndexes secondaryIndexesCapacityMapCodec
        |> Codec.field "CapacityUnits" .capacityUnits Codec.float
        |> Codec.buildObject


{-| Codec for ConsistentRead. -}
consistentReadCodec : Codec ConsistentRead
consistentReadCodec =
    Codec.bool


{-| Codec for ConditionalOperator. -}
conditionalOperatorCodec : Codec ConditionalOperator
conditionalOperatorCodec =
    Codec.build (Enum.encoder conditionalOperator) (Enum.decoder conditionalOperator)


{-| Codec for ConditionExpression. -}
conditionExpressionCodec : Codec ConditionExpression
conditionExpressionCodec =
    Codec.string


{-| Codec for ConditionCheck. -}
conditionCheckCodec : Codec ConditionCheck
conditionCheckCodec =
    Codec.object ConditionCheck
        |> Codec.field "TableName" .tableName tableNameCodec
        |> Codec.field
            "ReturnValuesOnConditionCheckFailure"
            .returnValuesOnConditionCheckFailure
            returnValuesOnConditionCheckFailureCodec
        |> Codec.field "Key" .key keyCodec
        |> Codec.field "ExpressionAttributeValues" .expressionAttributeValues expressionAttributeValueMapCodec
        |> Codec.field "ExpressionAttributeNames" .expressionAttributeNames expressionAttributeNameMapCodec
        |> Codec.field "ConditionExpression" .conditionExpression Codec.string
        |> Codec.buildObject


{-| Codec for Condition. -}
conditionCodec : Codec Condition
conditionCodec =
    Codec.object Condition
        |> Codec.field "ComparisonOperator" .comparisonOperator comparisonOperatorCodec
        |> Codec.field "AttributeValueList" .attributeValueList attributeValueListCodec
        |> Codec.buildObject


{-| Codec for ComparisonOperator. -}
comparisonOperatorCodec : Codec ComparisonOperator
comparisonOperatorCodec =
    Codec.build (Enum.encoder comparisonOperator) (Enum.decoder comparisonOperator)


{-| Codec for ClientRequestToken. -}
clientRequestTokenCodec : Codec ClientRequestToken
clientRequestTokenCodec =
    Codec.build (Refined.encoder clientRequestToken) (Refined.decoder clientRequestToken)


{-| Codec for Capacity. -}
capacityCodec : Codec Capacity
capacityCodec =
    Codec.object Capacity
        |> Codec.field "WriteCapacityUnits" .writeCapacityUnits Codec.float
        |> Codec.field "ReadCapacityUnits" .readCapacityUnits Codec.float
        |> Codec.field "CapacityUnits" .capacityUnits Codec.float
        |> Codec.buildObject


{-| Codec for BooleanObject. -}
booleanObjectCodec : Codec BooleanObject
booleanObjectCodec =
    Codec.bool


{-| Codec for BooleanAttributeValue. -}
booleanAttributeValueCodec : Codec BooleanAttributeValue
booleanAttributeValueCodec =
    Codec.bool


{-| Codec for BinarySetAttributeValue. -}
binarySetAttributeValueCodec : Codec BinarySetAttributeValue
binarySetAttributeValueCodec =
    Codec.list Codec.string


{-| Codec for BinaryAttributeValue. -}
binaryAttributeValueCodec : Codec BinaryAttributeValue
binaryAttributeValueCodec =
    Codec.string


{-| Codec for BillingModeSummary. -}
billingModeSummaryCodec : Codec BillingModeSummary
billingModeSummaryCodec =
    Codec.object BillingModeSummary
        |> Codec.field "LastUpdateToPayPerRequestDateTime" .lastUpdateToPayPerRequestDateTime dateCodec
        |> Codec.field "BillingMode" .billingMode billingModeCodec
        |> Codec.buildObject


{-| Codec for BillingMode. -}
billingModeCodec : Codec BillingMode
billingModeCodec =
    Codec.build (Enum.encoder billingMode) (Enum.decoder billingMode)


{-| Codec for BatchWriteItemRequestMap. -}
batchWriteItemRequestMapCodec : Codec BatchWriteItemRequestMap
batchWriteItemRequestMapCodec =
    Codec.build
        (Refined.dictEncoder tableName (Codec.encoder writeRequestsCodec))
        (Refined.dictDecoder tableName (Codec.decoder writeRequestsCodec))


{-| Codec for BatchWriteItemOutput. -}
batchWriteItemOutputCodec : Codec BatchWriteItemOutput
batchWriteItemOutputCodec =
    Codec.object BatchWriteItemOutput
        |> Codec.field "UnprocessedItems" .unprocessedItems batchWriteItemRequestMapCodec
        |> Codec.field "ItemCollectionMetrics" .itemCollectionMetrics itemCollectionMetricsPerTableCodec
        |> Codec.field "ConsumedCapacity" .consumedCapacity consumedCapacityMultipleCodec
        |> Codec.buildObject


{-| Codec for BatchWriteItemInput. -}
batchWriteItemInputCodec : Codec BatchWriteItemInput
batchWriteItemInputCodec =
    Codec.object BatchWriteItemInput
        |> Codec.field "ReturnItemCollectionMetrics" .returnItemCollectionMetrics returnItemCollectionMetricsCodec
        |> Codec.field "ReturnConsumedCapacity" .returnConsumedCapacity returnConsumedCapacityCodec
        |> Codec.field "RequestItems" .requestItems batchWriteItemRequestMapCodec
        |> Codec.buildObject


{-| Codec for BatchGetResponseMap. -}
batchGetResponseMapCodec : Codec BatchGetResponseMap
batchGetResponseMapCodec =
    Codec.build
        (Refined.dictEncoder tableName (Codec.encoder itemListCodec))
        (Refined.dictDecoder tableName (Codec.decoder itemListCodec))


{-| Codec for BatchGetRequestMap. -}
batchGetRequestMapCodec : Codec BatchGetRequestMap
batchGetRequestMapCodec =
    Codec.build
        (Refined.dictEncoder tableName (Codec.encoder keysAndAttributesCodec))
        (Refined.dictDecoder tableName (Codec.decoder keysAndAttributesCodec))


{-| Codec for BatchGetItemOutput. -}
batchGetItemOutputCodec : Codec BatchGetItemOutput
batchGetItemOutputCodec =
    Codec.object BatchGetItemOutput
        |> Codec.field "UnprocessedKeys" .unprocessedKeys batchGetRequestMapCodec
        |> Codec.field "Responses" .responses batchGetResponseMapCodec
        |> Codec.field "ConsumedCapacity" .consumedCapacity consumedCapacityMultipleCodec
        |> Codec.buildObject


{-| Codec for BatchGetItemInput. -}
batchGetItemInputCodec : Codec BatchGetItemInput
batchGetItemInputCodec =
    Codec.object BatchGetItemInput
        |> Codec.field "ReturnConsumedCapacity" .returnConsumedCapacity returnConsumedCapacityCodec
        |> Codec.field "RequestItems" .requestItems batchGetRequestMapCodec
        |> Codec.buildObject


{-| Codec for BackupsInputLimit. -}
backupsInputLimitCodec : Codec BackupsInputLimit
backupsInputLimitCodec =
    Codec.build (Refined.encoder backupsInputLimit) (Refined.decoder backupsInputLimit)


{-| Codec for BackupTypeFilter. -}
backupTypeFilterCodec : Codec BackupTypeFilter
backupTypeFilterCodec =
    Codec.build (Enum.encoder backupTypeFilter) (Enum.decoder backupTypeFilter)


{-| Codec for BackupType. -}
backupTypeCodec : Codec BackupType
backupTypeCodec =
    Codec.build (Enum.encoder backupType) (Enum.decoder backupType)


{-| Codec for BackupSummary. -}
backupSummaryCodec : Codec BackupSummary
backupSummaryCodec =
    Codec.object BackupSummary
        |> Codec.field "TableName" .tableName tableNameCodec
        |> Codec.field "TableId" .tableId tableIdCodec
        |> Codec.field "TableArn" .tableArn Codec.string
        |> Codec.field "BackupType" .backupType backupTypeCodec
        |> Codec.field "BackupStatus" .backupStatus backupStatusCodec
        |> Codec.field "BackupSizeBytes" .backupSizeBytes Codec.int
        |> Codec.field "BackupName" .backupName backupNameCodec
        |> Codec.field "BackupExpiryDateTime" .backupExpiryDateTime dateCodec
        |> Codec.field "BackupCreationDateTime" .backupCreationDateTime backupCreationDateTimeCodec
        |> Codec.field "BackupArn" .backupArn backupArnCodec
        |> Codec.buildObject


{-| Codec for BackupSummaries. -}
backupSummariesCodec : Codec BackupSummaries
backupSummariesCodec =
    Codec.list backupSummaryCodec


{-| Codec for BackupStatus. -}
backupStatusCodec : Codec BackupStatus
backupStatusCodec =
    Codec.build (Enum.encoder backupStatus) (Enum.decoder backupStatus)


{-| Codec for BackupSizeBytes. -}
backupSizeBytesCodec : Codec BackupSizeBytes
backupSizeBytesCodec =
    Codec.int


{-| Codec for BackupName. -}
backupNameCodec : Codec BackupName
backupNameCodec =
    Codec.build (Refined.encoder backupName) (Refined.decoder backupName)


{-| Codec for BackupDetails. -}
backupDetailsCodec : Codec BackupDetails
backupDetailsCodec =
    Codec.object BackupDetails
        |> Codec.field "BackupType" .backupType backupTypeCodec
        |> Codec.field "BackupStatus" .backupStatus backupStatusCodec
        |> Codec.field "BackupSizeBytes" .backupSizeBytes Codec.int
        |> Codec.field "BackupName" .backupName backupNameCodec
        |> Codec.field "BackupExpiryDateTime" .backupExpiryDateTime dateCodec
        |> Codec.field "BackupCreationDateTime" .backupCreationDateTime backupCreationDateTimeCodec
        |> Codec.field "BackupArn" .backupArn backupArnCodec
        |> Codec.buildObject


{-| Codec for BackupDescription. -}
backupDescriptionCodec : Codec BackupDescription
backupDescriptionCodec =
    Codec.object BackupDescription
        |> Codec.field "SourceTableFeatureDetails" .sourceTableFeatureDetails sourceTableFeatureDetailsCodec
        |> Codec.field "SourceTableDetails" .sourceTableDetails sourceTableDetailsCodec
        |> Codec.field "BackupDetails" .backupDetails backupDetailsCodec
        |> Codec.buildObject


{-| Codec for BackupCreationDateTime. -}
backupCreationDateTimeCodec : Codec BackupCreationDateTime
backupCreationDateTimeCodec =
    Codec.string


{-| Codec for BackupArn. -}
backupArnCodec : Codec BackupArn
backupArnCodec =
    Codec.build (Refined.encoder backupArn) (Refined.decoder backupArn)


{-| Codec for Backfilling. -}
backfillingCodec : Codec Backfilling
backfillingCodec =
    Codec.bool


{-| Codec for AutoScalingTargetTrackingScalingPolicyConfigurationUpdate. -}
autoScalingTargetTrackingScalingPolicyConfigurationUpdateCodec :
    Codec AutoScalingTargetTrackingScalingPolicyConfigurationUpdate
autoScalingTargetTrackingScalingPolicyConfigurationUpdateCodec =
    Codec.object AutoScalingTargetTrackingScalingPolicyConfigurationUpdate
        |> Codec.field "TargetValue" .targetValue Codec.float
        |> Codec.field "ScaleOutCooldown" .scaleOutCooldown Codec.int
        |> Codec.field "ScaleInCooldown" .scaleInCooldown Codec.int
        |> Codec.field "DisableScaleIn" .disableScaleIn Codec.bool
        |> Codec.buildObject


{-| Codec for AutoScalingTargetTrackingScalingPolicyConfigurationDescription. -}
autoScalingTargetTrackingScalingPolicyConfigurationDescriptionCodec :
    Codec AutoScalingTargetTrackingScalingPolicyConfigurationDescription
autoScalingTargetTrackingScalingPolicyConfigurationDescriptionCodec =
    Codec.object AutoScalingTargetTrackingScalingPolicyConfigurationDescription
        |> Codec.field "TargetValue" .targetValue Codec.float
        |> Codec.field "ScaleOutCooldown" .scaleOutCooldown Codec.int
        |> Codec.field "ScaleInCooldown" .scaleInCooldown Codec.int
        |> Codec.field "DisableScaleIn" .disableScaleIn Codec.bool
        |> Codec.buildObject


{-| Codec for AutoScalingSettingsUpdate. -}
autoScalingSettingsUpdateCodec : Codec AutoScalingSettingsUpdate
autoScalingSettingsUpdateCodec =
    Codec.object AutoScalingSettingsUpdate
        |> Codec.field "ScalingPolicyUpdate" .scalingPolicyUpdate autoScalingPolicyUpdateCodec
        |> Codec.field "MinimumUnits" .minimumUnits Codec.int
        |> Codec.field "MaximumUnits" .maximumUnits Codec.int
        |> Codec.field "AutoScalingRoleArn" .autoScalingRoleArn autoScalingRoleArnCodec
        |> Codec.field "AutoScalingDisabled" .autoScalingDisabled Codec.bool
        |> Codec.buildObject


{-| Codec for AutoScalingSettingsDescription. -}
autoScalingSettingsDescriptionCodec : Codec AutoScalingSettingsDescription
autoScalingSettingsDescriptionCodec =
    Codec.object AutoScalingSettingsDescription
        |> Codec.field "ScalingPolicies" .scalingPolicies autoScalingPolicyDescriptionListCodec
        |> Codec.field "MinimumUnits" .minimumUnits Codec.int
        |> Codec.field "MaximumUnits" .maximumUnits Codec.int
        |> Codec.field "AutoScalingRoleArn" .autoScalingRoleArn Codec.string
        |> Codec.field "AutoScalingDisabled" .autoScalingDisabled Codec.bool
        |> Codec.buildObject


{-| Codec for AutoScalingRoleArn. -}
autoScalingRoleArnCodec : Codec AutoScalingRoleArn
autoScalingRoleArnCodec =
    Codec.build (Refined.encoder autoScalingRoleArn) (Refined.decoder autoScalingRoleArn)


{-| Codec for AutoScalingPolicyUpdate. -}
autoScalingPolicyUpdateCodec : Codec AutoScalingPolicyUpdate
autoScalingPolicyUpdateCodec =
    Codec.object AutoScalingPolicyUpdate
        |> Codec.field
            "TargetTrackingScalingPolicyConfiguration"
            .targetTrackingScalingPolicyConfiguration
            autoScalingTargetTrackingScalingPolicyConfigurationUpdateCodec
        |> Codec.field "PolicyName" .policyName autoScalingPolicyNameCodec
        |> Codec.buildObject


{-| Codec for AutoScalingPolicyName. -}
autoScalingPolicyNameCodec : Codec AutoScalingPolicyName
autoScalingPolicyNameCodec =
    Codec.build (Refined.encoder autoScalingPolicyName) (Refined.decoder autoScalingPolicyName)


{-| Codec for AutoScalingPolicyDescriptionList. -}
autoScalingPolicyDescriptionListCodec : Codec AutoScalingPolicyDescriptionList
autoScalingPolicyDescriptionListCodec =
    Codec.list autoScalingPolicyDescriptionCodec


{-| Codec for AutoScalingPolicyDescription. -}
autoScalingPolicyDescriptionCodec : Codec AutoScalingPolicyDescription
autoScalingPolicyDescriptionCodec =
    Codec.object AutoScalingPolicyDescription
        |> Codec.field
            "TargetTrackingScalingPolicyConfiguration"
            .targetTrackingScalingPolicyConfiguration
            autoScalingTargetTrackingScalingPolicyConfigurationDescriptionCodec
        |> Codec.field "PolicyName" .policyName autoScalingPolicyNameCodec
        |> Codec.buildObject


{-| Codec for AttributeValueUpdate. -}
attributeValueUpdateCodec : Codec AttributeValueUpdate
attributeValueUpdateCodec =
    Codec.object AttributeValueUpdate
        |> Codec.field "Value" .value attributeValueCodec
        |> Codec.field "Action" .action attributeActionCodec
        |> Codec.buildObject


{-| Codec for AttributeValueList. -}
attributeValueListCodec : Codec AttributeValueList
attributeValueListCodec =
    Codec.list attributeValueCodec


{-| Codec for AttributeValue. -}
attributeValueCodec : Codec AttributeValue
attributeValueCodec =
    Codec.object AttributeValue
        |> Codec.field "SS" .ss stringSetAttributeValueCodec
        |> Codec.field "S" .s Codec.string
        |> Codec.field "NULL" .null Codec.bool
        |> Codec.field "NS" .ns numberSetAttributeValueCodec
        |> Codec.field "N" .n Codec.string
        |> Codec.field "M" .m mapAttributeValueCodec
        |> Codec.field "L" .l listAttributeValueCodec
        |> Codec.field "BS" .bs binarySetAttributeValueCodec
        |> Codec.field "BOOL" .bool Codec.bool
        |> Codec.field "B" .b Codec.string
        |> Codec.buildObject


{-| Codec for AttributeUpdates. -}
attributeUpdatesCodec : Codec AttributeUpdates
attributeUpdatesCodec =
    Codec.build
        (Refined.dictEncoder attributeName (Codec.encoder attributeValueUpdateCodec))
        (Refined.dictDecoder attributeName (Codec.decoder attributeValueUpdateCodec))


{-| Codec for AttributeNameList. -}
attributeNameListCodec : Codec AttributeNameList
attributeNameListCodec =
    Codec.list attributeNameCodec


{-| Codec for AttributeName. -}
attributeNameCodec : Codec AttributeName
attributeNameCodec =
    Codec.build (Refined.encoder attributeName) (Refined.decoder attributeName)


{-| Codec for AttributeMap. -}
attributeMapCodec : Codec AttributeMap
attributeMapCodec =
    Codec.build
        (Refined.dictEncoder attributeName (Codec.encoder attributeValueCodec))
        (Refined.dictDecoder attributeName (Codec.decoder attributeValueCodec))


{-| Codec for AttributeDefinitions. -}
attributeDefinitionsCodec : Codec AttributeDefinitions
attributeDefinitionsCodec =
    Codec.list attributeDefinitionCodec


{-| Codec for AttributeDefinition. -}
attributeDefinitionCodec : Codec AttributeDefinition
attributeDefinitionCodec =
    Codec.object AttributeDefinition
        |> Codec.field "AttributeType" .attributeType scalarAttributeTypeCodec
        |> Codec.field "AttributeName" .attributeName keySchemaAttributeNameCodec
        |> Codec.buildObject


{-| Codec for AttributeAction. -}
attributeActionCodec : Codec AttributeAction
attributeActionCodec =
    Codec.build (Enum.encoder attributeAction) (Enum.decoder attributeAction)
