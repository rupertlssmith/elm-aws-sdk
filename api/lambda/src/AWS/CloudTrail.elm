module AWS.CloudTrail exposing (service)

import AWS.Core.Decode
import AWS.Core.Http
import AWS.Core.Service
import Codec exposing (Codec)
import Enum exposing (Enum)
import Json.Decode exposing (Decoder)
import Json.Encode exposing (Value)
import Refined exposing (IntError, Refined)


{-| Configuration for this service. -}
service : AWS.Core.Service.Service
service =
    let
        optionsFn =
            AWS.Core.Service.setJsonVersion "1.1"
                >> AWS.Core.Service.setTargetPrefix "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101"
    in
    AWS.Core.Service.defineGlobal "cloudtrail" "2013-11-01" AWS.Core.Service.JSON AWS.Core.Service.SignV4 optionsFn


{-| AWS Endpoint. -}
updateTrail : UpdateTrailRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateTrailResponse)
updateTrail req =
    let
        jsonBody =
            req |> Codec.encoder updateTrailRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "UpdateTrail"
                (AWS.Core.Decode.ResultDecoder "UpdateTrailResponse" (Codec.decoder updateTrailResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
stopLogging : StopLoggingRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StopLoggingResponse)
stopLogging req =
    let
        jsonBody =
            req |> Codec.encoder stopLoggingRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "StopLogging"
                (AWS.Core.Decode.ResultDecoder "StopLoggingResponse" (Codec.decoder stopLoggingResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
startLogging : StartLoggingRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartLoggingResponse)
startLogging req =
    let
        jsonBody =
            req |> Codec.encoder startLoggingRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "StartLogging"
                (AWS.Core.Decode.ResultDecoder "StartLoggingResponse" (Codec.decoder startLoggingResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
removeTags : RemoveTagsRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RemoveTagsResponse)
removeTags req =
    let
        jsonBody =
            req |> Codec.encoder removeTagsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "RemoveTags"
                (AWS.Core.Decode.ResultDecoder "RemoveTagsResponse" (Codec.decoder removeTagsResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
putEventSelectors :
    PutEventSelectorsRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutEventSelectorsResponse)
putEventSelectors req =
    let
        jsonBody =
            req |> Codec.encoder putEventSelectorsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "PutEventSelectors"
                (AWS.Core.Decode.ResultDecoder
                    "PutEventSelectorsResponse"
                    (Codec.decoder putEventSelectorsResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
lookupEvents : LookupEventsRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper LookupEventsResponse)
lookupEvents req =
    let
        jsonBody =
            req |> Codec.encoder lookupEventsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "LookupEvents"
                (AWS.Core.Decode.ResultDecoder "LookupEventsResponse" (Codec.decoder lookupEventsResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


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
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listPublicKeys : ListPublicKeysRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListPublicKeysResponse)
listPublicKeys req =
    let
        jsonBody =
            req |> Codec.encoder listPublicKeysRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListPublicKeys"
                (AWS.Core.Decode.ResultDecoder "ListPublicKeysResponse" (Codec.decoder listPublicKeysResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getTrailStatus : GetTrailStatusRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetTrailStatusResponse)
getTrailStatus req =
    let
        jsonBody =
            req |> Codec.encoder getTrailStatusRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetTrailStatus"
                (AWS.Core.Decode.ResultDecoder "GetTrailStatusResponse" (Codec.decoder getTrailStatusResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getEventSelectors :
    GetEventSelectorsRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetEventSelectorsResponse)
getEventSelectors req =
    let
        jsonBody =
            req |> Codec.encoder getEventSelectorsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetEventSelectors"
                (AWS.Core.Decode.ResultDecoder
                    "GetEventSelectorsResponse"
                    (Codec.decoder getEventSelectorsResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeTrails : DescribeTrailsRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeTrailsResponse)
describeTrails req =
    let
        jsonBody =
            req |> Codec.encoder describeTrailsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeTrails"
                (AWS.Core.Decode.ResultDecoder "DescribeTrailsResponse" (Codec.decoder describeTrailsResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteTrail : DeleteTrailRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteTrailResponse)
deleteTrail req =
    let
        jsonBody =
            req |> Codec.encoder deleteTrailRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DeleteTrail"
                (AWS.Core.Decode.ResultDecoder "DeleteTrailResponse" (Codec.decoder deleteTrailResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createTrail : CreateTrailRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateTrailResponse)
createTrail req =
    let
        jsonBody =
            req |> Codec.encoder createTrailRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateTrail"
                (AWS.Core.Decode.ResultDecoder "CreateTrailResponse" (Codec.decoder createTrailResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
addTags : AddTagsRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AddTagsResponse)
addTags req =
    let
        jsonBody =
            req |> Codec.encoder addTagsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "AddTags"
                (AWS.Core.Decode.ResultDecoder "AddTagsResponse" (Codec.decoder addTagsResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


type alias AddTagsRequest =
    { tagsList : TagsList, resourceId : String }


type alias AddTagsResponse =
    {}


type alias Boolean =
    Bool


type alias ByteBuffer =
    String


type alias CreateTrailRequest =
    { snsTopicName : String
    , s3KeyPrefix : String
    , s3BucketName : String
    , name : String
    , kmsKeyId : String
    , isOrganizationTrail : Bool
    , isMultiRegionTrail : Bool
    , includeGlobalServiceEvents : Bool
    , enableLogFileValidation : Bool
    , cloudWatchLogsRoleArn : String
    , cloudWatchLogsLogGroupArn : String
    }


type alias CreateTrailResponse =
    { trailArn : String
    , snsTopicName : String
    , snsTopicArn : String
    , s3KeyPrefix : String
    , s3BucketName : String
    , name : String
    , logFileValidationEnabled : Bool
    , kmsKeyId : String
    , isOrganizationTrail : Bool
    , isMultiRegionTrail : Bool
    , includeGlobalServiceEvents : Bool
    , cloudWatchLogsRoleArn : String
    , cloudWatchLogsLogGroupArn : String
    }


type alias DataResource =
    { values : DataResourceValues, type_ : String }


type alias DataResourceValues =
    List String


type alias DataResources =
    List DataResource


type alias Date =
    String


type alias DeleteTrailRequest =
    { name : String }


type alias DeleteTrailResponse =
    {}


type alias DescribeTrailsRequest =
    { trailNameList : TrailNameList, includeShadowTrails : Bool }


type alias DescribeTrailsResponse =
    { trailList : TrailList }


type alias Event =
    { username : String
    , resources : ResourceList
    , readOnly : String
    , eventTime : Date
    , eventSource : String
    , eventName : String
    , eventId : String
    , cloudTrailEvent : String
    , accessKeyId : String
    }


type alias EventSelector =
    { readWriteType : ReadWriteType, includeManagementEvents : Bool, dataResources : DataResources }


type alias EventSelectors =
    List EventSelector


type alias EventsList =
    List Event


type alias GetEventSelectorsRequest =
    { trailName : String }


type alias GetEventSelectorsResponse =
    { trailArn : String, eventSelectors : EventSelectors }


type alias GetTrailStatusRequest =
    { name : String }


type alias GetTrailStatusResponse =
    { timeLoggingStopped : String
    , timeLoggingStarted : String
    , stopLoggingTime : Date
    , startLoggingTime : Date
    , latestNotificationTime : Date
    , latestNotificationError : String
    , latestNotificationAttemptTime : String
    , latestNotificationAttemptSucceeded : String
    , latestDigestDeliveryTime : Date
    , latestDigestDeliveryError : String
    , latestDeliveryTime : Date
    , latestDeliveryError : String
    , latestDeliveryAttemptTime : String
    , latestDeliveryAttemptSucceeded : String
    , latestCloudWatchLogsDeliveryTime : Date
    , latestCloudWatchLogsDeliveryError : String
    , isLogging : Bool
    }


type alias ListPublicKeysRequest =
    { startTime : Date, nextToken : String, endTime : Date }


type alias ListPublicKeysResponse =
    { publicKeyList : PublicKeyList, nextToken : String }


type alias ListTagsRequest =
    { resourceIdList : ResourceIdList, nextToken : String }


type alias ListTagsResponse =
    { resourceTagList : ResourceTagList, nextToken : String }


type alias LookupAttribute =
    { attributeValue : String, attributeKey : LookupAttributeKey }


type LookupAttributeKey
    = LookupAttributeKeyEventId
    | LookupAttributeKeyEventName
    | LookupAttributeKeyReadOnly
    | LookupAttributeKeyUsername
    | LookupAttributeKeyResourceType
    | LookupAttributeKeyResourceName
    | LookupAttributeKeyEventSource
    | LookupAttributeKeyAccessKeyId


lookupAttributeKey : Enum LookupAttributeKey
lookupAttributeKey =
    Enum.define
        [ LookupAttributeKeyEventId
        , LookupAttributeKeyEventName
        , LookupAttributeKeyReadOnly
        , LookupAttributeKeyUsername
        , LookupAttributeKeyResourceType
        , LookupAttributeKeyResourceName
        , LookupAttributeKeyEventSource
        , LookupAttributeKeyAccessKeyId
        ]
        (\val ->
            case val of
                LookupAttributeKeyEventId ->
                    "EventId"

                LookupAttributeKeyEventName ->
                    "EventName"

                LookupAttributeKeyReadOnly ->
                    "ReadOnly"

                LookupAttributeKeyUsername ->
                    "Username"

                LookupAttributeKeyResourceType ->
                    "ResourceType"

                LookupAttributeKeyResourceName ->
                    "ResourceName"

                LookupAttributeKeyEventSource ->
                    "EventSource"

                LookupAttributeKeyAccessKeyId ->
                    "AccessKeyId"
        )


type alias LookupAttributesList =
    List LookupAttribute


type alias LookupEventsRequest =
    { startTime : Date
    , nextToken : String
    , maxResults : MaxResults
    , lookupAttributes : LookupAttributesList
    , endTime : Date
    }


type alias LookupEventsResponse =
    { nextToken : String, events : EventsList }


type MaxResults
    = MaxResults Int


maxResults : Refined Int MaxResults IntError
maxResults =
    let
        guardFn val =
            Refined.gt 1 val |> Result.andThen (Refined.lt 50) |> Result.map MaxResults

        unboxFn (MaxResults val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type alias NextToken =
    String


type alias PublicKey =
    { value : String, validityStartTime : Date, validityEndTime : Date, fingerprint : String }


type alias PublicKeyList =
    List PublicKey


type alias PutEventSelectorsRequest =
    { trailName : String, eventSelectors : EventSelectors }


type alias PutEventSelectorsResponse =
    { trailArn : String, eventSelectors : EventSelectors }


type ReadWriteType
    = ReadWriteTypeReadOnly
    | ReadWriteTypeWriteOnly
    | ReadWriteTypeAll


readWriteType : Enum ReadWriteType
readWriteType =
    Enum.define
        [ ReadWriteTypeReadOnly, ReadWriteTypeWriteOnly, ReadWriteTypeAll ]
        (\val ->
            case val of
                ReadWriteTypeReadOnly ->
                    "ReadOnly"

                ReadWriteTypeWriteOnly ->
                    "WriteOnly"

                ReadWriteTypeAll ->
                    "All"
        )


type alias RemoveTagsRequest =
    { tagsList : TagsList, resourceId : String }


type alias RemoveTagsResponse =
    {}


type alias Resource =
    { resourceType : String, resourceName : String }


type alias ResourceIdList =
    List String


type alias ResourceList =
    List Resource


type alias ResourceTag =
    { tagsList : TagsList, resourceId : String }


type alias ResourceTagList =
    List ResourceTag


type alias StartLoggingRequest =
    { name : String }


type alias StartLoggingResponse =
    {}


type alias StopLoggingRequest =
    { name : String }


type alias StopLoggingResponse =
    {}


type alias String_ =
    String


type alias Tag =
    { value : String, key : String }


type alias TagsList =
    List Tag


type alias Trail =
    { trailArn : String
    , snsTopicName : String
    , snsTopicArn : String
    , s3KeyPrefix : String
    , s3BucketName : String
    , name : String
    , logFileValidationEnabled : Bool
    , kmsKeyId : String
    , isOrganizationTrail : Bool
    , isMultiRegionTrail : Bool
    , includeGlobalServiceEvents : Bool
    , homeRegion : String
    , hasCustomEventSelectors : Bool
    , cloudWatchLogsRoleArn : String
    , cloudWatchLogsLogGroupArn : String
    }


type alias TrailList =
    List Trail


type alias TrailNameList =
    List String


type alias UpdateTrailRequest =
    { snsTopicName : String
    , s3KeyPrefix : String
    , s3BucketName : String
    , name : String
    , kmsKeyId : String
    , isOrganizationTrail : Bool
    , isMultiRegionTrail : Bool
    , includeGlobalServiceEvents : Bool
    , enableLogFileValidation : Bool
    , cloudWatchLogsRoleArn : String
    , cloudWatchLogsLogGroupArn : String
    }


type alias UpdateTrailResponse =
    { trailArn : String
    , snsTopicName : String
    , snsTopicArn : String
    , s3KeyPrefix : String
    , s3BucketName : String
    , name : String
    , logFileValidationEnabled : Bool
    , kmsKeyId : String
    , isOrganizationTrail : Bool
    , isMultiRegionTrail : Bool
    , includeGlobalServiceEvents : Bool
    , cloudWatchLogsRoleArn : String
    , cloudWatchLogsLogGroupArn : String
    }


{-| Codec for UpdateTrailResponse. -}
updateTrailResponseCodec : Codec UpdateTrailResponse
updateTrailResponseCodec =
    Codec.object UpdateTrailResponse
        |> Codec.field "TrailARN" .trailArn Codec.string
        |> Codec.field "SnsTopicName" .snsTopicName Codec.string
        |> Codec.field "SnsTopicARN" .snsTopicArn Codec.string
        |> Codec.field "S3KeyPrefix" .s3KeyPrefix Codec.string
        |> Codec.field "S3BucketName" .s3BucketName Codec.string
        |> Codec.field "Name" .name Codec.string
        |> Codec.field "LogFileValidationEnabled" .logFileValidationEnabled Codec.bool
        |> Codec.field "KmsKeyId" .kmsKeyId Codec.string
        |> Codec.field "IsOrganizationTrail" .isOrganizationTrail Codec.bool
        |> Codec.field "IsMultiRegionTrail" .isMultiRegionTrail Codec.bool
        |> Codec.field "IncludeGlobalServiceEvents" .includeGlobalServiceEvents Codec.bool
        |> Codec.field "CloudWatchLogsRoleArn" .cloudWatchLogsRoleArn Codec.string
        |> Codec.field "CloudWatchLogsLogGroupArn" .cloudWatchLogsLogGroupArn Codec.string
        |> Codec.buildObject


{-| Codec for UpdateTrailRequest. -}
updateTrailRequestCodec : Codec UpdateTrailRequest
updateTrailRequestCodec =
    Codec.object UpdateTrailRequest
        |> Codec.field "SnsTopicName" .snsTopicName Codec.string
        |> Codec.field "S3KeyPrefix" .s3KeyPrefix Codec.string
        |> Codec.field "S3BucketName" .s3BucketName Codec.string
        |> Codec.field "Name" .name Codec.string
        |> Codec.field "KmsKeyId" .kmsKeyId Codec.string
        |> Codec.field "IsOrganizationTrail" .isOrganizationTrail Codec.bool
        |> Codec.field "IsMultiRegionTrail" .isMultiRegionTrail Codec.bool
        |> Codec.field "IncludeGlobalServiceEvents" .includeGlobalServiceEvents Codec.bool
        |> Codec.field "EnableLogFileValidation" .enableLogFileValidation Codec.bool
        |> Codec.field "CloudWatchLogsRoleArn" .cloudWatchLogsRoleArn Codec.string
        |> Codec.field "CloudWatchLogsLogGroupArn" .cloudWatchLogsLogGroupArn Codec.string
        |> Codec.buildObject


{-| Codec for TrailNameList. -}
trailNameListCodec : Codec TrailNameList
trailNameListCodec =
    Codec.list Codec.string


{-| Codec for TrailList. -}
trailListCodec : Codec TrailList
trailListCodec =
    Codec.list trailCodec


{-| Codec for Trail. -}
trailCodec : Codec Trail
trailCodec =
    Codec.object Trail
        |> Codec.field "TrailARN" .trailArn Codec.string
        |> Codec.field "SnsTopicName" .snsTopicName Codec.string
        |> Codec.field "SnsTopicARN" .snsTopicArn Codec.string
        |> Codec.field "S3KeyPrefix" .s3KeyPrefix Codec.string
        |> Codec.field "S3BucketName" .s3BucketName Codec.string
        |> Codec.field "Name" .name Codec.string
        |> Codec.field "LogFileValidationEnabled" .logFileValidationEnabled Codec.bool
        |> Codec.field "KmsKeyId" .kmsKeyId Codec.string
        |> Codec.field "IsOrganizationTrail" .isOrganizationTrail Codec.bool
        |> Codec.field "IsMultiRegionTrail" .isMultiRegionTrail Codec.bool
        |> Codec.field "IncludeGlobalServiceEvents" .includeGlobalServiceEvents Codec.bool
        |> Codec.field "HomeRegion" .homeRegion Codec.string
        |> Codec.field "HasCustomEventSelectors" .hasCustomEventSelectors Codec.bool
        |> Codec.field "CloudWatchLogsRoleArn" .cloudWatchLogsRoleArn Codec.string
        |> Codec.field "CloudWatchLogsLogGroupArn" .cloudWatchLogsLogGroupArn Codec.string
        |> Codec.buildObject


{-| Codec for TagsList. -}
tagsListCodec : Codec TagsList
tagsListCodec =
    Codec.list tagCodec


{-| Codec for Tag. -}
tagCodec : Codec Tag
tagCodec =
    Codec.object Tag
        |> Codec.field "Value" .value Codec.string
        |> Codec.field "Key" .key Codec.string
        |> Codec.buildObject


{-| Codec for String_. -}
stringCodec : Codec String_
stringCodec =
    Codec.string


{-| Codec for StopLoggingResponse. -}
stopLoggingResponseCodec : Codec StopLoggingResponse
stopLoggingResponseCodec =
    Codec.object StopLoggingResponse |> Codec.buildObject


{-| Codec for StopLoggingRequest. -}
stopLoggingRequestCodec : Codec StopLoggingRequest
stopLoggingRequestCodec =
    Codec.object StopLoggingRequest |> Codec.field "Name" .name Codec.string |> Codec.buildObject


{-| Codec for StartLoggingResponse. -}
startLoggingResponseCodec : Codec StartLoggingResponse
startLoggingResponseCodec =
    Codec.object StartLoggingResponse |> Codec.buildObject


{-| Codec for StartLoggingRequest. -}
startLoggingRequestCodec : Codec StartLoggingRequest
startLoggingRequestCodec =
    Codec.object StartLoggingRequest |> Codec.field "Name" .name Codec.string |> Codec.buildObject


{-| Codec for ResourceTagList. -}
resourceTagListCodec : Codec ResourceTagList
resourceTagListCodec =
    Codec.list resourceTagCodec


{-| Codec for ResourceTag. -}
resourceTagCodec : Codec ResourceTag
resourceTagCodec =
    Codec.object ResourceTag
        |> Codec.field "TagsList" .tagsList tagsListCodec
        |> Codec.field "ResourceId" .resourceId Codec.string
        |> Codec.buildObject


{-| Codec for ResourceList. -}
resourceListCodec : Codec ResourceList
resourceListCodec =
    Codec.list resourceCodec


{-| Codec for ResourceIdList. -}
resourceIdListCodec : Codec ResourceIdList
resourceIdListCodec =
    Codec.list Codec.string


{-| Codec for Resource. -}
resourceCodec : Codec Resource
resourceCodec =
    Codec.object Resource
        |> Codec.field "ResourceType" .resourceType Codec.string
        |> Codec.field "ResourceName" .resourceName Codec.string
        |> Codec.buildObject


{-| Codec for RemoveTagsResponse. -}
removeTagsResponseCodec : Codec RemoveTagsResponse
removeTagsResponseCodec =
    Codec.object RemoveTagsResponse |> Codec.buildObject


{-| Codec for RemoveTagsRequest. -}
removeTagsRequestCodec : Codec RemoveTagsRequest
removeTagsRequestCodec =
    Codec.object RemoveTagsRequest
        |> Codec.field "TagsList" .tagsList tagsListCodec
        |> Codec.field "ResourceId" .resourceId Codec.string
        |> Codec.buildObject


{-| Codec for ReadWriteType. -}
readWriteTypeCodec : Codec ReadWriteType
readWriteTypeCodec =
    Codec.build (Enum.encoder readWriteType) (Enum.decoder readWriteType)


{-| Codec for PutEventSelectorsResponse. -}
putEventSelectorsResponseCodec : Codec PutEventSelectorsResponse
putEventSelectorsResponseCodec =
    Codec.object PutEventSelectorsResponse
        |> Codec.field "TrailARN" .trailArn Codec.string
        |> Codec.field "EventSelectors" .eventSelectors eventSelectorsCodec
        |> Codec.buildObject


{-| Codec for PutEventSelectorsRequest. -}
putEventSelectorsRequestCodec : Codec PutEventSelectorsRequest
putEventSelectorsRequestCodec =
    Codec.object PutEventSelectorsRequest
        |> Codec.field "TrailName" .trailName Codec.string
        |> Codec.field "EventSelectors" .eventSelectors eventSelectorsCodec
        |> Codec.buildObject


{-| Codec for PublicKeyList. -}
publicKeyListCodec : Codec PublicKeyList
publicKeyListCodec =
    Codec.list publicKeyCodec


{-| Codec for PublicKey. -}
publicKeyCodec : Codec PublicKey
publicKeyCodec =
    Codec.object PublicKey
        |> Codec.field "Value" .value Codec.string
        |> Codec.field "ValidityStartTime" .validityStartTime dateCodec
        |> Codec.field "ValidityEndTime" .validityEndTime dateCodec
        |> Codec.field "Fingerprint" .fingerprint Codec.string
        |> Codec.buildObject


{-| Codec for NextToken. -}
nextTokenCodec : Codec NextToken
nextTokenCodec =
    Codec.string


{-| Codec for MaxResults. -}
maxResultsCodec : Codec MaxResults
maxResultsCodec =
    Codec.build (Refined.encoder maxResults) (Refined.decoder maxResults)


{-| Codec for LookupEventsResponse. -}
lookupEventsResponseCodec : Codec LookupEventsResponse
lookupEventsResponseCodec =
    Codec.object LookupEventsResponse
        |> Codec.field "NextToken" .nextToken Codec.string
        |> Codec.field "Events" .events eventsListCodec
        |> Codec.buildObject


{-| Codec for LookupEventsRequest. -}
lookupEventsRequestCodec : Codec LookupEventsRequest
lookupEventsRequestCodec =
    Codec.object LookupEventsRequest
        |> Codec.field "StartTime" .startTime dateCodec
        |> Codec.field "NextToken" .nextToken Codec.string
        |> Codec.field "MaxResults" .maxResults maxResultsCodec
        |> Codec.field "LookupAttributes" .lookupAttributes lookupAttributesListCodec
        |> Codec.field "EndTime" .endTime dateCodec
        |> Codec.buildObject


{-| Codec for LookupAttributesList. -}
lookupAttributesListCodec : Codec LookupAttributesList
lookupAttributesListCodec =
    Codec.list lookupAttributeCodec


{-| Codec for LookupAttributeKey. -}
lookupAttributeKeyCodec : Codec LookupAttributeKey
lookupAttributeKeyCodec =
    Codec.build (Enum.encoder lookupAttributeKey) (Enum.decoder lookupAttributeKey)


{-| Codec for LookupAttribute. -}
lookupAttributeCodec : Codec LookupAttribute
lookupAttributeCodec =
    Codec.object LookupAttribute
        |> Codec.field "AttributeValue" .attributeValue Codec.string
        |> Codec.field "AttributeKey" .attributeKey lookupAttributeKeyCodec
        |> Codec.buildObject


{-| Codec for ListTagsResponse. -}
listTagsResponseCodec : Codec ListTagsResponse
listTagsResponseCodec =
    Codec.object ListTagsResponse
        |> Codec.field "ResourceTagList" .resourceTagList resourceTagListCodec
        |> Codec.field "NextToken" .nextToken Codec.string
        |> Codec.buildObject


{-| Codec for ListTagsRequest. -}
listTagsRequestCodec : Codec ListTagsRequest
listTagsRequestCodec =
    Codec.object ListTagsRequest
        |> Codec.field "ResourceIdList" .resourceIdList resourceIdListCodec
        |> Codec.field "NextToken" .nextToken Codec.string
        |> Codec.buildObject


{-| Codec for ListPublicKeysResponse. -}
listPublicKeysResponseCodec : Codec ListPublicKeysResponse
listPublicKeysResponseCodec =
    Codec.object ListPublicKeysResponse
        |> Codec.field "PublicKeyList" .publicKeyList publicKeyListCodec
        |> Codec.field "NextToken" .nextToken Codec.string
        |> Codec.buildObject


{-| Codec for ListPublicKeysRequest. -}
listPublicKeysRequestCodec : Codec ListPublicKeysRequest
listPublicKeysRequestCodec =
    Codec.object ListPublicKeysRequest
        |> Codec.field "StartTime" .startTime dateCodec
        |> Codec.field "NextToken" .nextToken Codec.string
        |> Codec.field "EndTime" .endTime dateCodec
        |> Codec.buildObject


{-| Codec for GetTrailStatusResponse. -}
getTrailStatusResponseCodec : Codec GetTrailStatusResponse
getTrailStatusResponseCodec =
    Codec.object GetTrailStatusResponse
        |> Codec.field "TimeLoggingStopped" .timeLoggingStopped Codec.string
        |> Codec.field "TimeLoggingStarted" .timeLoggingStarted Codec.string
        |> Codec.field "StopLoggingTime" .stopLoggingTime dateCodec
        |> Codec.field "StartLoggingTime" .startLoggingTime dateCodec
        |> Codec.field "LatestNotificationTime" .latestNotificationTime dateCodec
        |> Codec.field "LatestNotificationError" .latestNotificationError Codec.string
        |> Codec.field "LatestNotificationAttemptTime" .latestNotificationAttemptTime Codec.string
        |> Codec.field "LatestNotificationAttemptSucceeded" .latestNotificationAttemptSucceeded Codec.string
        |> Codec.field "LatestDigestDeliveryTime" .latestDigestDeliveryTime dateCodec
        |> Codec.field "LatestDigestDeliveryError" .latestDigestDeliveryError Codec.string
        |> Codec.field "LatestDeliveryTime" .latestDeliveryTime dateCodec
        |> Codec.field "LatestDeliveryError" .latestDeliveryError Codec.string
        |> Codec.field "LatestDeliveryAttemptTime" .latestDeliveryAttemptTime Codec.string
        |> Codec.field "LatestDeliveryAttemptSucceeded" .latestDeliveryAttemptSucceeded Codec.string
        |> Codec.field "LatestCloudWatchLogsDeliveryTime" .latestCloudWatchLogsDeliveryTime dateCodec
        |> Codec.field "LatestCloudWatchLogsDeliveryError" .latestCloudWatchLogsDeliveryError Codec.string
        |> Codec.field "IsLogging" .isLogging Codec.bool
        |> Codec.buildObject


{-| Codec for GetTrailStatusRequest. -}
getTrailStatusRequestCodec : Codec GetTrailStatusRequest
getTrailStatusRequestCodec =
    Codec.object GetTrailStatusRequest |> Codec.field "Name" .name Codec.string |> Codec.buildObject


{-| Codec for GetEventSelectorsResponse. -}
getEventSelectorsResponseCodec : Codec GetEventSelectorsResponse
getEventSelectorsResponseCodec =
    Codec.object GetEventSelectorsResponse
        |> Codec.field "TrailARN" .trailArn Codec.string
        |> Codec.field "EventSelectors" .eventSelectors eventSelectorsCodec
        |> Codec.buildObject


{-| Codec for GetEventSelectorsRequest. -}
getEventSelectorsRequestCodec : Codec GetEventSelectorsRequest
getEventSelectorsRequestCodec =
    Codec.object GetEventSelectorsRequest |> Codec.field "TrailName" .trailName Codec.string |> Codec.buildObject


{-| Codec for EventsList. -}
eventsListCodec : Codec EventsList
eventsListCodec =
    Codec.list eventCodec


{-| Codec for EventSelectors. -}
eventSelectorsCodec : Codec EventSelectors
eventSelectorsCodec =
    Codec.list eventSelectorCodec


{-| Codec for EventSelector. -}
eventSelectorCodec : Codec EventSelector
eventSelectorCodec =
    Codec.object EventSelector
        |> Codec.field "ReadWriteType" .readWriteType readWriteTypeCodec
        |> Codec.field "IncludeManagementEvents" .includeManagementEvents Codec.bool
        |> Codec.field "DataResources" .dataResources dataResourcesCodec
        |> Codec.buildObject


{-| Codec for Event. -}
eventCodec : Codec Event
eventCodec =
    Codec.object Event
        |> Codec.field "Username" .username Codec.string
        |> Codec.field "Resources" .resources resourceListCodec
        |> Codec.field "ReadOnly" .readOnly Codec.string
        |> Codec.field "EventTime" .eventTime dateCodec
        |> Codec.field "EventSource" .eventSource Codec.string
        |> Codec.field "EventName" .eventName Codec.string
        |> Codec.field "EventId" .eventId Codec.string
        |> Codec.field "CloudTrailEvent" .cloudTrailEvent Codec.string
        |> Codec.field "AccessKeyId" .accessKeyId Codec.string
        |> Codec.buildObject


{-| Codec for DescribeTrailsResponse. -}
describeTrailsResponseCodec : Codec DescribeTrailsResponse
describeTrailsResponseCodec =
    Codec.object DescribeTrailsResponse |> Codec.field "trailList" .trailList trailListCodec |> Codec.buildObject


{-| Codec for DescribeTrailsRequest. -}
describeTrailsRequestCodec : Codec DescribeTrailsRequest
describeTrailsRequestCodec =
    Codec.object DescribeTrailsRequest
        |> Codec.field "trailNameList" .trailNameList trailNameListCodec
        |> Codec.field "includeShadowTrails" .includeShadowTrails Codec.bool
        |> Codec.buildObject


{-| Codec for DeleteTrailResponse. -}
deleteTrailResponseCodec : Codec DeleteTrailResponse
deleteTrailResponseCodec =
    Codec.object DeleteTrailResponse |> Codec.buildObject


{-| Codec for DeleteTrailRequest. -}
deleteTrailRequestCodec : Codec DeleteTrailRequest
deleteTrailRequestCodec =
    Codec.object DeleteTrailRequest |> Codec.field "Name" .name Codec.string |> Codec.buildObject


{-| Codec for Date. -}
dateCodec : Codec Date
dateCodec =
    Codec.string


{-| Codec for DataResources. -}
dataResourcesCodec : Codec DataResources
dataResourcesCodec =
    Codec.list dataResourceCodec


{-| Codec for DataResourceValues. -}
dataResourceValuesCodec : Codec DataResourceValues
dataResourceValuesCodec =
    Codec.list Codec.string


{-| Codec for DataResource. -}
dataResourceCodec : Codec DataResource
dataResourceCodec =
    Codec.object DataResource
        |> Codec.field "Values" .values dataResourceValuesCodec
        |> Codec.field "Type" .type_ Codec.string
        |> Codec.buildObject


{-| Codec for CreateTrailResponse. -}
createTrailResponseCodec : Codec CreateTrailResponse
createTrailResponseCodec =
    Codec.object CreateTrailResponse
        |> Codec.field "TrailARN" .trailArn Codec.string
        |> Codec.field "SnsTopicName" .snsTopicName Codec.string
        |> Codec.field "SnsTopicARN" .snsTopicArn Codec.string
        |> Codec.field "S3KeyPrefix" .s3KeyPrefix Codec.string
        |> Codec.field "S3BucketName" .s3BucketName Codec.string
        |> Codec.field "Name" .name Codec.string
        |> Codec.field "LogFileValidationEnabled" .logFileValidationEnabled Codec.bool
        |> Codec.field "KmsKeyId" .kmsKeyId Codec.string
        |> Codec.field "IsOrganizationTrail" .isOrganizationTrail Codec.bool
        |> Codec.field "IsMultiRegionTrail" .isMultiRegionTrail Codec.bool
        |> Codec.field "IncludeGlobalServiceEvents" .includeGlobalServiceEvents Codec.bool
        |> Codec.field "CloudWatchLogsRoleArn" .cloudWatchLogsRoleArn Codec.string
        |> Codec.field "CloudWatchLogsLogGroupArn" .cloudWatchLogsLogGroupArn Codec.string
        |> Codec.buildObject


{-| Codec for CreateTrailRequest. -}
createTrailRequestCodec : Codec CreateTrailRequest
createTrailRequestCodec =
    Codec.object CreateTrailRequest
        |> Codec.field "SnsTopicName" .snsTopicName Codec.string
        |> Codec.field "S3KeyPrefix" .s3KeyPrefix Codec.string
        |> Codec.field "S3BucketName" .s3BucketName Codec.string
        |> Codec.field "Name" .name Codec.string
        |> Codec.field "KmsKeyId" .kmsKeyId Codec.string
        |> Codec.field "IsOrganizationTrail" .isOrganizationTrail Codec.bool
        |> Codec.field "IsMultiRegionTrail" .isMultiRegionTrail Codec.bool
        |> Codec.field "IncludeGlobalServiceEvents" .includeGlobalServiceEvents Codec.bool
        |> Codec.field "EnableLogFileValidation" .enableLogFileValidation Codec.bool
        |> Codec.field "CloudWatchLogsRoleArn" .cloudWatchLogsRoleArn Codec.string
        |> Codec.field "CloudWatchLogsLogGroupArn" .cloudWatchLogsLogGroupArn Codec.string
        |> Codec.buildObject


{-| Codec for ByteBuffer. -}
byteBufferCodec : Codec ByteBuffer
byteBufferCodec =
    Codec.string


{-| Codec for Boolean. -}
booleanCodec : Codec Boolean
booleanCodec =
    Codec.bool


{-| Codec for AddTagsResponse. -}
addTagsResponseCodec : Codec AddTagsResponse
addTagsResponseCodec =
    Codec.object AddTagsResponse |> Codec.buildObject


{-| Codec for AddTagsRequest. -}
addTagsRequestCodec : Codec AddTagsRequest
addTagsRequestCodec =
    Codec.object AddTagsRequest
        |> Codec.field "TagsList" .tagsList tagsListCodec
        |> Codec.field "ResourceId" .resourceId Codec.string
        |> Codec.buildObject
