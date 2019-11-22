module AWS.S3 exposing (service)

import AWS.Core.Decode
import AWS.Core.Http
import AWS.Core.Service
import Codec exposing (Codec)
import Dict exposing (Dict)
import Enum exposing (Enum)
import Json.Decode exposing (Decoder)
import Json.Encode exposing (Value)
import Refined exposing (Refined, StringError)


{-| Configuration for this service. -}
service : AWS.Core.Service.Region -> AWS.Core.Service.Service
service =
    let
        optionsFn =
            identity
    in
    AWS.Core.Service.defineRegional "s3" "2006-03-01" AWS.Core.Service.REST_XML AWS.Core.Service.SignS3 optionsFn


{-| AWS Endpoint. -}
uploadPartCopy : UploadPartCopyRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UploadPartCopyOutput)
uploadPartCopy req =
    let
        jsonBody =
            req |> Codec.encoder uploadPartCopyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "UploadPartCopy"
                (AWS.Core.Decode.ResultDecoder "UploadPartCopyOutput" (Codec.decoder uploadPartCopyOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.PUT "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
uploadPart : UploadPartRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UploadPartOutput)
uploadPart req =
    let
        jsonBody =
            req |> Codec.encoder uploadPartRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "UploadPart"
                (AWS.Core.Decode.ResultDecoder "UploadPartOutput" (Codec.decoder uploadPartOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.PUT "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
selectObjectContent :
    SelectObjectContentRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SelectObjectContentOutput)
selectObjectContent req =
    let
        jsonBody =
            req |> Codec.encoder selectObjectContentRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "SelectObjectContent"
                (AWS.Core.Decode.ResultDecoder
                    "SelectObjectContentOutput"
                    (Codec.decoder selectObjectContentOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
restoreObject : RestoreObjectRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RestoreObjectOutput)
restoreObject req =
    let
        jsonBody =
            req |> Codec.encoder restoreObjectRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "RestoreObject"
                (AWS.Core.Decode.ResultDecoder "RestoreObjectOutput" (Codec.decoder restoreObjectOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
putPublicAccessBlock : PutPublicAccessBlockRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
putPublicAccessBlock req =
    let
        jsonBody =
            req |> Codec.encoder putPublicAccessBlockRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "PutPublicAccessBlock" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.PUT "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
putObjectTagging :
    PutObjectTaggingRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutObjectTaggingOutput)
putObjectTagging req =
    let
        jsonBody =
            req |> Codec.encoder putObjectTaggingRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "PutObjectTagging"
                (AWS.Core.Decode.ResultDecoder "PutObjectTaggingOutput" (Codec.decoder putObjectTaggingOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.PUT "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
putObjectRetention :
    PutObjectRetentionRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutObjectRetentionOutput)
putObjectRetention req =
    let
        jsonBody =
            req |> Codec.encoder putObjectRetentionRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "PutObjectRetention"
                (AWS.Core.Decode.ResultDecoder "PutObjectRetentionOutput" (Codec.decoder putObjectRetentionOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.PUT "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
putObjectLockConfiguration :
    PutObjectLockConfigurationRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutObjectLockConfigurationOutput)
putObjectLockConfiguration req =
    let
        jsonBody =
            req |> Codec.encoder putObjectLockConfigurationRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "PutObjectLockConfiguration"
                (AWS.Core.Decode.ResultDecoder
                    "PutObjectLockConfigurationOutput"
                    (Codec.decoder putObjectLockConfigurationOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.PUT "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
putObjectLegalHold :
    PutObjectLegalHoldRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutObjectLegalHoldOutput)
putObjectLegalHold req =
    let
        jsonBody =
            req |> Codec.encoder putObjectLegalHoldRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "PutObjectLegalHold"
                (AWS.Core.Decode.ResultDecoder "PutObjectLegalHoldOutput" (Codec.decoder putObjectLegalHoldOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.PUT "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
putObjectAcl : PutObjectAclRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutObjectAclOutput)
putObjectAcl req =
    let
        jsonBody =
            req |> Codec.encoder putObjectAclRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "PutObjectAcl"
                (AWS.Core.Decode.ResultDecoder "PutObjectAclOutput" (Codec.decoder putObjectAclOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.PUT "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
putObject : PutObjectRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutObjectOutput)
putObject req =
    let
        jsonBody =
            req |> Codec.encoder putObjectRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "PutObject"
                (AWS.Core.Decode.ResultDecoder "PutObjectOutput" (Codec.decoder putObjectOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.PUT "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
putBucketWebsite : PutBucketWebsiteRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
putBucketWebsite req =
    let
        jsonBody =
            req |> Codec.encoder putBucketWebsiteRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "PutBucketWebsite" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.PUT "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
putBucketVersioning : PutBucketVersioningRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
putBucketVersioning req =
    let
        jsonBody =
            req |> Codec.encoder putBucketVersioningRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "PutBucketVersioning" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.PUT "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
putBucketTagging : PutBucketTaggingRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
putBucketTagging req =
    let
        jsonBody =
            req |> Codec.encoder putBucketTaggingRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "PutBucketTagging" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.PUT "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
putBucketRequestPayment : PutBucketRequestPaymentRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
putBucketRequestPayment req =
    let
        jsonBody =
            req |> Codec.encoder putBucketRequestPaymentRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "PutBucketRequestPayment" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.PUT "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
putBucketReplication : PutBucketReplicationRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
putBucketReplication req =
    let
        jsonBody =
            req |> Codec.encoder putBucketReplicationRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "PutBucketReplication" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.PUT "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
putBucketPolicy : PutBucketPolicyRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
putBucketPolicy req =
    let
        jsonBody =
            req |> Codec.encoder putBucketPolicyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "PutBucketPolicy" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.PUT "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
putBucketNotificationConfiguration :
    PutBucketNotificationConfigurationRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
putBucketNotificationConfiguration req =
    let
        jsonBody =
            req |> Codec.encoder putBucketNotificationConfigurationRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "PutBucketNotificationConfiguration" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.PUT "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
putBucketNotification : PutBucketNotificationRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
putBucketNotification req =
    let
        jsonBody =
            req |> Codec.encoder putBucketNotificationRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "PutBucketNotification" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.PUT "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
putBucketMetricsConfiguration :
    PutBucketMetricsConfigurationRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
putBucketMetricsConfiguration req =
    let
        jsonBody =
            req |> Codec.encoder putBucketMetricsConfigurationRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "PutBucketMetricsConfiguration" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.PUT "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
putBucketLogging : PutBucketLoggingRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
putBucketLogging req =
    let
        jsonBody =
            req |> Codec.encoder putBucketLoggingRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "PutBucketLogging" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.PUT "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
putBucketLifecycleConfiguration :
    PutBucketLifecycleConfigurationRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
putBucketLifecycleConfiguration req =
    let
        jsonBody =
            req |> Codec.encoder putBucketLifecycleConfigurationRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "PutBucketLifecycleConfiguration" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.PUT "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
putBucketLifecycle : PutBucketLifecycleRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
putBucketLifecycle req =
    let
        jsonBody =
            req |> Codec.encoder putBucketLifecycleRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "PutBucketLifecycle" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.PUT "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
putBucketInventoryConfiguration :
    PutBucketInventoryConfigurationRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
putBucketInventoryConfiguration req =
    let
        jsonBody =
            req |> Codec.encoder putBucketInventoryConfigurationRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "PutBucketInventoryConfiguration" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.PUT "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
putBucketEncryption : PutBucketEncryptionRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
putBucketEncryption req =
    let
        jsonBody =
            req |> Codec.encoder putBucketEncryptionRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "PutBucketEncryption" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.PUT "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
putBucketCors : PutBucketCorsRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
putBucketCors req =
    let
        jsonBody =
            req |> Codec.encoder putBucketCorsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "PutBucketCors" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.PUT "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
putBucketAnalyticsConfiguration :
    PutBucketAnalyticsConfigurationRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
putBucketAnalyticsConfiguration req =
    let
        jsonBody =
            req |> Codec.encoder putBucketAnalyticsConfigurationRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "PutBucketAnalyticsConfiguration" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.PUT "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
putBucketAcl : PutBucketAclRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
putBucketAcl req =
    let
        jsonBody =
            req |> Codec.encoder putBucketAclRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "PutBucketAcl" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.PUT "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
putBucketAccelerateConfiguration :
    PutBucketAccelerateConfigurationRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
putBucketAccelerateConfiguration req =
    let
        jsonBody =
            req |> Codec.encoder putBucketAccelerateConfigurationRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "PutBucketAccelerateConfiguration" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.PUT "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listParts : ListPartsRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListPartsOutput)
listParts req =
    let
        jsonBody =
            req |> Codec.encoder listPartsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListParts"
                (AWS.Core.Decode.ResultDecoder "ListPartsOutput" (Codec.decoder listPartsOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listObjectsV2 : ListObjectsV2Request -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListObjectsV2Output)
listObjectsV2 req =
    let
        jsonBody =
            req |> Codec.encoder listObjectsV2RequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListObjectsV2"
                (AWS.Core.Decode.ResultDecoder "ListObjectsV2Output" (Codec.decoder listObjectsV2OutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listObjects : ListObjectsRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListObjectsOutput)
listObjects req =
    let
        jsonBody =
            req |> Codec.encoder listObjectsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListObjects"
                (AWS.Core.Decode.ResultDecoder "ListObjectsOutput" (Codec.decoder listObjectsOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listObjectVersions :
    ListObjectVersionsRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListObjectVersionsOutput)
listObjectVersions req =
    let
        jsonBody =
            req |> Codec.encoder listObjectVersionsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListObjectVersions"
                (AWS.Core.Decode.ResultDecoder "ListObjectVersionsOutput" (Codec.decoder listObjectVersionsOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listMultipartUploads :
    ListMultipartUploadsRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListMultipartUploadsOutput)
listMultipartUploads req =
    let
        jsonBody =
            req |> Codec.encoder listMultipartUploadsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListMultipartUploads"
                (AWS.Core.Decode.ResultDecoder
                    "ListMultipartUploadsOutput"
                    (Codec.decoder listMultipartUploadsOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listBuckets : AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListBucketsOutput)
listBuckets =
    let
        jsonBody =
            AWS.Core.Http.emptyBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListBuckets"
                (AWS.Core.Decode.ResultDecoder "ListBucketsOutput" (Codec.decoder listBucketsOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listBucketMetricsConfigurations :
    ListBucketMetricsConfigurationsRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListBucketMetricsConfigurationsOutput)
listBucketMetricsConfigurations req =
    let
        jsonBody =
            req |> Codec.encoder listBucketMetricsConfigurationsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListBucketMetricsConfigurations"
                (AWS.Core.Decode.ResultDecoder
                    "ListBucketMetricsConfigurationsOutput"
                    (Codec.decoder listBucketMetricsConfigurationsOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listBucketInventoryConfigurations :
    ListBucketInventoryConfigurationsRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListBucketInventoryConfigurationsOutput)
listBucketInventoryConfigurations req =
    let
        jsonBody =
            req |> Codec.encoder listBucketInventoryConfigurationsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListBucketInventoryConfigurations"
                (AWS.Core.Decode.ResultDecoder
                    "ListBucketInventoryConfigurationsOutput"
                    (Codec.decoder listBucketInventoryConfigurationsOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listBucketAnalyticsConfigurations :
    ListBucketAnalyticsConfigurationsRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListBucketAnalyticsConfigurationsOutput)
listBucketAnalyticsConfigurations req =
    let
        jsonBody =
            req |> Codec.encoder listBucketAnalyticsConfigurationsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListBucketAnalyticsConfigurations"
                (AWS.Core.Decode.ResultDecoder
                    "ListBucketAnalyticsConfigurationsOutput"
                    (Codec.decoder listBucketAnalyticsConfigurationsOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
headObject : HeadObjectRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper HeadObjectOutput)
headObject req =
    let
        jsonBody =
            req |> Codec.encoder headObjectRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "HeadObject"
                (AWS.Core.Decode.ResultDecoder "HeadObjectOutput" (Codec.decoder headObjectOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.HEAD "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
headBucket : HeadBucketRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
headBucket req =
    let
        jsonBody =
            req |> Codec.encoder headBucketRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "HeadBucket" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.HEAD "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getPublicAccessBlock :
    GetPublicAccessBlockRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetPublicAccessBlockOutput)
getPublicAccessBlock req =
    let
        jsonBody =
            req |> Codec.encoder getPublicAccessBlockRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetPublicAccessBlock"
                (AWS.Core.Decode.ResultDecoder
                    "GetPublicAccessBlockOutput"
                    (Codec.decoder getPublicAccessBlockOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getObjectTorrent :
    GetObjectTorrentRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetObjectTorrentOutput)
getObjectTorrent req =
    let
        jsonBody =
            req |> Codec.encoder getObjectTorrentRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetObjectTorrent"
                (AWS.Core.Decode.ResultDecoder "GetObjectTorrentOutput" (Codec.decoder getObjectTorrentOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getObjectTagging :
    GetObjectTaggingRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetObjectTaggingOutput)
getObjectTagging req =
    let
        jsonBody =
            req |> Codec.encoder getObjectTaggingRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetObjectTagging"
                (AWS.Core.Decode.ResultDecoder "GetObjectTaggingOutput" (Codec.decoder getObjectTaggingOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getObjectRetention :
    GetObjectRetentionRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetObjectRetentionOutput)
getObjectRetention req =
    let
        jsonBody =
            req |> Codec.encoder getObjectRetentionRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetObjectRetention"
                (AWS.Core.Decode.ResultDecoder "GetObjectRetentionOutput" (Codec.decoder getObjectRetentionOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getObjectLockConfiguration :
    GetObjectLockConfigurationRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetObjectLockConfigurationOutput)
getObjectLockConfiguration req =
    let
        jsonBody =
            req |> Codec.encoder getObjectLockConfigurationRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetObjectLockConfiguration"
                (AWS.Core.Decode.ResultDecoder
                    "GetObjectLockConfigurationOutput"
                    (Codec.decoder getObjectLockConfigurationOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getObjectLegalHold :
    GetObjectLegalHoldRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetObjectLegalHoldOutput)
getObjectLegalHold req =
    let
        jsonBody =
            req |> Codec.encoder getObjectLegalHoldRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetObjectLegalHold"
                (AWS.Core.Decode.ResultDecoder "GetObjectLegalHoldOutput" (Codec.decoder getObjectLegalHoldOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getObjectAcl : GetObjectAclRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetObjectAclOutput)
getObjectAcl req =
    let
        jsonBody =
            req |> Codec.encoder getObjectAclRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetObjectAcl"
                (AWS.Core.Decode.ResultDecoder "GetObjectAclOutput" (Codec.decoder getObjectAclOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getObject : GetObjectRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetObjectOutput)
getObject req =
    let
        jsonBody =
            req |> Codec.encoder getObjectRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetObject"
                (AWS.Core.Decode.ResultDecoder "GetObjectOutput" (Codec.decoder getObjectOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getBucketWebsite :
    GetBucketWebsiteRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetBucketWebsiteOutput)
getBucketWebsite req =
    let
        jsonBody =
            req |> Codec.encoder getBucketWebsiteRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetBucketWebsite"
                (AWS.Core.Decode.ResultDecoder "GetBucketWebsiteOutput" (Codec.decoder getBucketWebsiteOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getBucketVersioning :
    GetBucketVersioningRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetBucketVersioningOutput)
getBucketVersioning req =
    let
        jsonBody =
            req |> Codec.encoder getBucketVersioningRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetBucketVersioning"
                (AWS.Core.Decode.ResultDecoder
                    "GetBucketVersioningOutput"
                    (Codec.decoder getBucketVersioningOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getBucketTagging :
    GetBucketTaggingRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetBucketTaggingOutput)
getBucketTagging req =
    let
        jsonBody =
            req |> Codec.encoder getBucketTaggingRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetBucketTagging"
                (AWS.Core.Decode.ResultDecoder "GetBucketTaggingOutput" (Codec.decoder getBucketTaggingOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getBucketRequestPayment :
    GetBucketRequestPaymentRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetBucketRequestPaymentOutput)
getBucketRequestPayment req =
    let
        jsonBody =
            req |> Codec.encoder getBucketRequestPaymentRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetBucketRequestPayment"
                (AWS.Core.Decode.ResultDecoder
                    "GetBucketRequestPaymentOutput"
                    (Codec.decoder getBucketRequestPaymentOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getBucketReplication :
    GetBucketReplicationRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetBucketReplicationOutput)
getBucketReplication req =
    let
        jsonBody =
            req |> Codec.encoder getBucketReplicationRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetBucketReplication"
                (AWS.Core.Decode.ResultDecoder
                    "GetBucketReplicationOutput"
                    (Codec.decoder getBucketReplicationOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getBucketPolicyStatus :
    GetBucketPolicyStatusRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetBucketPolicyStatusOutput)
getBucketPolicyStatus req =
    let
        jsonBody =
            req |> Codec.encoder getBucketPolicyStatusRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetBucketPolicyStatus"
                (AWS.Core.Decode.ResultDecoder
                    "GetBucketPolicyStatusOutput"
                    (Codec.decoder getBucketPolicyStatusOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getBucketPolicy :
    GetBucketPolicyRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetBucketPolicyOutput)
getBucketPolicy req =
    let
        jsonBody =
            req |> Codec.encoder getBucketPolicyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetBucketPolicy"
                (AWS.Core.Decode.ResultDecoder "GetBucketPolicyOutput" (Codec.decoder getBucketPolicyOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getBucketNotificationConfiguration :
    GetBucketNotificationConfigurationRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper NotificationConfiguration)
getBucketNotificationConfiguration req =
    let
        jsonBody =
            req |> Codec.encoder getBucketNotificationConfigurationRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetBucketNotificationConfiguration"
                (AWS.Core.Decode.ResultDecoder
                    "NotificationConfiguration"
                    (Codec.decoder notificationConfigurationCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getBucketNotification :
    GetBucketNotificationConfigurationRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper NotificationConfigurationDeprecated)
getBucketNotification req =
    let
        jsonBody =
            req |> Codec.encoder getBucketNotificationConfigurationRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetBucketNotification"
                (AWS.Core.Decode.ResultDecoder
                    "NotificationConfigurationDeprecated"
                    (Codec.decoder notificationConfigurationDeprecatedCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getBucketMetricsConfiguration :
    GetBucketMetricsConfigurationRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetBucketMetricsConfigurationOutput)
getBucketMetricsConfiguration req =
    let
        jsonBody =
            req |> Codec.encoder getBucketMetricsConfigurationRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetBucketMetricsConfiguration"
                (AWS.Core.Decode.ResultDecoder
                    "GetBucketMetricsConfigurationOutput"
                    (Codec.decoder getBucketMetricsConfigurationOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getBucketLogging :
    GetBucketLoggingRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetBucketLoggingOutput)
getBucketLogging req =
    let
        jsonBody =
            req |> Codec.encoder getBucketLoggingRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetBucketLogging"
                (AWS.Core.Decode.ResultDecoder "GetBucketLoggingOutput" (Codec.decoder getBucketLoggingOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getBucketLocation :
    GetBucketLocationRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetBucketLocationOutput)
getBucketLocation req =
    let
        jsonBody =
            req |> Codec.encoder getBucketLocationRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetBucketLocation"
                (AWS.Core.Decode.ResultDecoder "GetBucketLocationOutput" (Codec.decoder getBucketLocationOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getBucketLifecycleConfiguration :
    GetBucketLifecycleConfigurationRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetBucketLifecycleConfigurationOutput)
getBucketLifecycleConfiguration req =
    let
        jsonBody =
            req |> Codec.encoder getBucketLifecycleConfigurationRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetBucketLifecycleConfiguration"
                (AWS.Core.Decode.ResultDecoder
                    "GetBucketLifecycleConfigurationOutput"
                    (Codec.decoder getBucketLifecycleConfigurationOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getBucketLifecycle :
    GetBucketLifecycleRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetBucketLifecycleOutput)
getBucketLifecycle req =
    let
        jsonBody =
            req |> Codec.encoder getBucketLifecycleRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetBucketLifecycle"
                (AWS.Core.Decode.ResultDecoder "GetBucketLifecycleOutput" (Codec.decoder getBucketLifecycleOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getBucketInventoryConfiguration :
    GetBucketInventoryConfigurationRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetBucketInventoryConfigurationOutput)
getBucketInventoryConfiguration req =
    let
        jsonBody =
            req |> Codec.encoder getBucketInventoryConfigurationRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetBucketInventoryConfiguration"
                (AWS.Core.Decode.ResultDecoder
                    "GetBucketInventoryConfigurationOutput"
                    (Codec.decoder getBucketInventoryConfigurationOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getBucketEncryption :
    GetBucketEncryptionRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetBucketEncryptionOutput)
getBucketEncryption req =
    let
        jsonBody =
            req |> Codec.encoder getBucketEncryptionRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetBucketEncryption"
                (AWS.Core.Decode.ResultDecoder
                    "GetBucketEncryptionOutput"
                    (Codec.decoder getBucketEncryptionOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getBucketCors : GetBucketCorsRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetBucketCorsOutput)
getBucketCors req =
    let
        jsonBody =
            req |> Codec.encoder getBucketCorsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetBucketCors"
                (AWS.Core.Decode.ResultDecoder "GetBucketCorsOutput" (Codec.decoder getBucketCorsOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getBucketAnalyticsConfiguration :
    GetBucketAnalyticsConfigurationRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetBucketAnalyticsConfigurationOutput)
getBucketAnalyticsConfiguration req =
    let
        jsonBody =
            req |> Codec.encoder getBucketAnalyticsConfigurationRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetBucketAnalyticsConfiguration"
                (AWS.Core.Decode.ResultDecoder
                    "GetBucketAnalyticsConfigurationOutput"
                    (Codec.decoder getBucketAnalyticsConfigurationOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getBucketAcl : GetBucketAclRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetBucketAclOutput)
getBucketAcl req =
    let
        jsonBody =
            req |> Codec.encoder getBucketAclRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetBucketAcl"
                (AWS.Core.Decode.ResultDecoder "GetBucketAclOutput" (Codec.decoder getBucketAclOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getBucketAccelerateConfiguration :
    GetBucketAccelerateConfigurationRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetBucketAccelerateConfigurationOutput)
getBucketAccelerateConfiguration req =
    let
        jsonBody =
            req |> Codec.encoder getBucketAccelerateConfigurationRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetBucketAccelerateConfiguration"
                (AWS.Core.Decode.ResultDecoder
                    "GetBucketAccelerateConfigurationOutput"
                    (Codec.decoder getBucketAccelerateConfigurationOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deletePublicAccessBlock : DeletePublicAccessBlockRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deletePublicAccessBlock req =
    let
        jsonBody =
            req |> Codec.encoder deletePublicAccessBlockRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeletePublicAccessBlock" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.DELETE "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteObjects : DeleteObjectsRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteObjectsOutput)
deleteObjects req =
    let
        jsonBody =
            req |> Codec.encoder deleteObjectsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DeleteObjects"
                (AWS.Core.Decode.ResultDecoder "DeleteObjectsOutput" (Codec.decoder deleteObjectsOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteObjectTagging :
    DeleteObjectTaggingRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteObjectTaggingOutput)
deleteObjectTagging req =
    let
        jsonBody =
            req |> Codec.encoder deleteObjectTaggingRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DeleteObjectTagging"
                (AWS.Core.Decode.ResultDecoder
                    "DeleteObjectTaggingOutput"
                    (Codec.decoder deleteObjectTaggingOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.DELETE "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteObject : DeleteObjectRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteObjectOutput)
deleteObject req =
    let
        jsonBody =
            req |> Codec.encoder deleteObjectRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DeleteObject"
                (AWS.Core.Decode.ResultDecoder "DeleteObjectOutput" (Codec.decoder deleteObjectOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.DELETE "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteBucketWebsite : DeleteBucketWebsiteRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteBucketWebsite req =
    let
        jsonBody =
            req |> Codec.encoder deleteBucketWebsiteRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteBucketWebsite" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.DELETE "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteBucketTagging : DeleteBucketTaggingRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteBucketTagging req =
    let
        jsonBody =
            req |> Codec.encoder deleteBucketTaggingRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteBucketTagging" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.DELETE "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteBucketReplication : DeleteBucketReplicationRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteBucketReplication req =
    let
        jsonBody =
            req |> Codec.encoder deleteBucketReplicationRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteBucketReplication" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.DELETE "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteBucketPolicy : DeleteBucketPolicyRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteBucketPolicy req =
    let
        jsonBody =
            req |> Codec.encoder deleteBucketPolicyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteBucketPolicy" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.DELETE "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteBucketMetricsConfiguration :
    DeleteBucketMetricsConfigurationRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteBucketMetricsConfiguration req =
    let
        jsonBody =
            req |> Codec.encoder deleteBucketMetricsConfigurationRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteBucketMetricsConfiguration" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.DELETE "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteBucketLifecycle : DeleteBucketLifecycleRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteBucketLifecycle req =
    let
        jsonBody =
            req |> Codec.encoder deleteBucketLifecycleRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteBucketLifecycle" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.DELETE "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteBucketInventoryConfiguration :
    DeleteBucketInventoryConfigurationRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteBucketInventoryConfiguration req =
    let
        jsonBody =
            req |> Codec.encoder deleteBucketInventoryConfigurationRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteBucketInventoryConfiguration" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.DELETE "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteBucketEncryption : DeleteBucketEncryptionRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteBucketEncryption req =
    let
        jsonBody =
            req |> Codec.encoder deleteBucketEncryptionRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteBucketEncryption" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.DELETE "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteBucketCors : DeleteBucketCorsRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteBucketCors req =
    let
        jsonBody =
            req |> Codec.encoder deleteBucketCorsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteBucketCors" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.DELETE "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteBucketAnalyticsConfiguration :
    DeleteBucketAnalyticsConfigurationRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteBucketAnalyticsConfiguration req =
    let
        jsonBody =
            req |> Codec.encoder deleteBucketAnalyticsConfigurationRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteBucketAnalyticsConfiguration" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.DELETE "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteBucket : DeleteBucketRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteBucket req =
    let
        jsonBody =
            req |> Codec.encoder deleteBucketRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteBucket" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.DELETE "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createMultipartUpload :
    CreateMultipartUploadRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateMultipartUploadOutput)
createMultipartUpload req =
    let
        jsonBody =
            req |> Codec.encoder createMultipartUploadRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateMultipartUpload"
                (AWS.Core.Decode.ResultDecoder
                    "CreateMultipartUploadOutput"
                    (Codec.decoder createMultipartUploadOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createBucket : CreateBucketRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateBucketOutput)
createBucket req =
    let
        jsonBody =
            req |> Codec.encoder createBucketRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateBucket"
                (AWS.Core.Decode.ResultDecoder "CreateBucketOutput" (Codec.decoder createBucketOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.PUT "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
copyObject : CopyObjectRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CopyObjectOutput)
copyObject req =
    let
        jsonBody =
            req |> Codec.encoder copyObjectRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CopyObject"
                (AWS.Core.Decode.ResultDecoder "CopyObjectOutput" (Codec.decoder copyObjectOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.PUT "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
completeMultipartUpload :
    CompleteMultipartUploadRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CompleteMultipartUploadOutput)
completeMultipartUpload req =
    let
        jsonBody =
            req |> Codec.encoder completeMultipartUploadRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CompleteMultipartUpload"
                (AWS.Core.Decode.ResultDecoder
                    "CompleteMultipartUploadOutput"
                    (Codec.decoder completeMultipartUploadOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
abortMultipartUpload :
    AbortMultipartUploadRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AbortMultipartUploadOutput)
abortMultipartUpload req =
    let
        jsonBody =
            req |> Codec.encoder abortMultipartUploadRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "AbortMultipartUpload"
                (AWS.Core.Decode.ResultDecoder
                    "AbortMultipartUploadOutput"
                    (Codec.decoder abortMultipartUploadOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.DELETE "/" jsonBody wrappedDecoder


type alias AbortDate =
    String


type alias AbortIncompleteMultipartUpload =
    { daysAfterInitiation : Int }


type alias AbortMultipartUploadOutput =
    { requestCharged : RequestCharged }


type alias AbortMultipartUploadRequest =
    { uploadId : String, requestPayer : RequestPayer, key : ObjectKey, bucket : String }


type alias AbortRuleId =
    String


type alias AccelerateConfiguration =
    { status : BucketAccelerateStatus }


type alias AcceptRanges =
    String


type alias AccessControlPolicy =
    { owner : Owner, grants : Grants }


type alias AccessControlTranslation =
    { owner : OwnerOverride }


type alias AccountId =
    String


type alias AllowQuotedRecordDelimiter =
    Bool


type alias AllowedHeader =
    String


type alias AllowedHeaders =
    List String


type alias AllowedMethod =
    String


type alias AllowedMethods =
    List String


type alias AllowedOrigin =
    String


type alias AllowedOrigins =
    List String


type alias AnalyticsAndOperator =
    { tags : TagSet, prefix : String }


type alias AnalyticsConfiguration =
    { storageClassAnalysis : StorageClassAnalysis, id : String, filter : AnalyticsFilter }


type alias AnalyticsConfigurationList =
    List AnalyticsConfiguration


type alias AnalyticsExportDestination =
    { s3BucketDestination : AnalyticsS3BucketDestination }


type alias AnalyticsFilter =
    { tag : Tag, prefix : String, and : AnalyticsAndOperator }


type alias AnalyticsId =
    String


type alias AnalyticsS3BucketDestination =
    { prefix : String, format : AnalyticsS3ExportFileFormat, bucketAccountId : String, bucket : String }


type AnalyticsS3ExportFileFormat
    = AnalyticsS3ExportFileFormatCsv


analyticsS3ExportFileFormat : Enum AnalyticsS3ExportFileFormat
analyticsS3ExportFileFormat =
    Enum.define
        [ AnalyticsS3ExportFileFormatCsv ]
        (\val ->
            case val of
                AnalyticsS3ExportFileFormatCsv ->
                    "CSV"
        )


type alias Body =
    String


type alias Bucket =
    { name : String, creationDate : CreationDate }


type BucketAccelerateStatus
    = BucketAccelerateStatusEnabled
    | BucketAccelerateStatusSuspended


bucketAccelerateStatus : Enum BucketAccelerateStatus
bucketAccelerateStatus =
    Enum.define
        [ BucketAccelerateStatusEnabled, BucketAccelerateStatusSuspended ]
        (\val ->
            case val of
                BucketAccelerateStatusEnabled ->
                    "Enabled"

                BucketAccelerateStatusSuspended ->
                    "Suspended"
        )


type BucketCannedAcl
    = BucketCannedAclPrivate
    | BucketCannedAclPublicRead
    | BucketCannedAclPublicReadWrite
    | BucketCannedAclAuthenticatedRead


bucketCannedAcl : Enum BucketCannedAcl
bucketCannedAcl =
    Enum.define
        [ BucketCannedAclPrivate
        , BucketCannedAclPublicRead
        , BucketCannedAclPublicReadWrite
        , BucketCannedAclAuthenticatedRead
        ]
        (\val ->
            case val of
                BucketCannedAclPrivate ->
                    "private"

                BucketCannedAclPublicRead ->
                    "public-read"

                BucketCannedAclPublicReadWrite ->
                    "public-read-write"

                BucketCannedAclAuthenticatedRead ->
                    "authenticated-read"
        )


type alias BucketLifecycleConfiguration =
    { rules : LifecycleRules }


type BucketLocationConstraint
    = BucketLocationConstraintEu
    | BucketLocationConstraintEuWest1
    | BucketLocationConstraintUsWest1
    | BucketLocationConstraintUsWest2
    | BucketLocationConstraintApSouth1
    | BucketLocationConstraintApSoutheast1
    | BucketLocationConstraintApSoutheast2
    | BucketLocationConstraintApNortheast1
    | BucketLocationConstraintSaEast1
    | BucketLocationConstraintCnNorth1
    | BucketLocationConstraintEuCentral1


bucketLocationConstraint : Enum BucketLocationConstraint
bucketLocationConstraint =
    Enum.define
        [ BucketLocationConstraintEu
        , BucketLocationConstraintEuWest1
        , BucketLocationConstraintUsWest1
        , BucketLocationConstraintUsWest2
        , BucketLocationConstraintApSouth1
        , BucketLocationConstraintApSoutheast1
        , BucketLocationConstraintApSoutheast2
        , BucketLocationConstraintApNortheast1
        , BucketLocationConstraintSaEast1
        , BucketLocationConstraintCnNorth1
        , BucketLocationConstraintEuCentral1
        ]
        (\val ->
            case val of
                BucketLocationConstraintEu ->
                    "EU"

                BucketLocationConstraintEuWest1 ->
                    "eu-west-1"

                BucketLocationConstraintUsWest1 ->
                    "us-west-1"

                BucketLocationConstraintUsWest2 ->
                    "us-west-2"

                BucketLocationConstraintApSouth1 ->
                    "ap-south-1"

                BucketLocationConstraintApSoutheast1 ->
                    "ap-southeast-1"

                BucketLocationConstraintApSoutheast2 ->
                    "ap-southeast-2"

                BucketLocationConstraintApNortheast1 ->
                    "ap-northeast-1"

                BucketLocationConstraintSaEast1 ->
                    "sa-east-1"

                BucketLocationConstraintCnNorth1 ->
                    "cn-north-1"

                BucketLocationConstraintEuCentral1 ->
                    "eu-central-1"
        )


type alias BucketLoggingStatus =
    { loggingEnabled : LoggingEnabled }


type BucketLogsPermission
    = BucketLogsPermissionFullControl
    | BucketLogsPermissionRead
    | BucketLogsPermissionWrite


bucketLogsPermission : Enum BucketLogsPermission
bucketLogsPermission =
    Enum.define
        [ BucketLogsPermissionFullControl, BucketLogsPermissionRead, BucketLogsPermissionWrite ]
        (\val ->
            case val of
                BucketLogsPermissionFullControl ->
                    "FULL_CONTROL"

                BucketLogsPermissionRead ->
                    "READ"

                BucketLogsPermissionWrite ->
                    "WRITE"
        )


type alias BucketName =
    String


type BucketVersioningStatus
    = BucketVersioningStatusEnabled
    | BucketVersioningStatusSuspended


bucketVersioningStatus : Enum BucketVersioningStatus
bucketVersioningStatus =
    Enum.define
        [ BucketVersioningStatusEnabled, BucketVersioningStatusSuspended ]
        (\val ->
            case val of
                BucketVersioningStatusEnabled ->
                    "Enabled"

                BucketVersioningStatusSuspended ->
                    "Suspended"
        )


type alias Buckets =
    List Bucket


type alias BypassGovernanceRetention =
    Bool


type alias BytesProcessed =
    Int


type alias BytesReturned =
    Int


type alias BytesScanned =
    Int


type alias Corsconfiguration =
    { corsrules : Corsrules }


type alias Corsrule =
    { maxAgeSeconds : Int
    , exposeHeaders : ExposeHeaders
    , allowedOrigins : AllowedOrigins
    , allowedMethods : AllowedMethods
    , allowedHeaders : AllowedHeaders
    }


type alias Corsrules =
    List Corsrule


type alias Csvinput =
    { recordDelimiter : String
    , quoteEscapeCharacter : String
    , quoteCharacter : String
    , fileHeaderInfo : FileHeaderInfo
    , fieldDelimiter : String
    , comments : String
    , allowQuotedRecordDelimiter : Bool
    }


type alias Csvoutput =
    { recordDelimiter : String
    , quoteFields : QuoteFields
    , quoteEscapeCharacter : String
    , quoteCharacter : String
    , fieldDelimiter : String
    }


type alias CacheControl =
    String


type alias CloudFunction =
    String


type alias CloudFunctionConfiguration =
    { invocationRole : String, id : String, events : EventList, event : Event, cloudFunction : String }


type alias CloudFunctionInvocationRole =
    String


type alias Code =
    String


type alias Comments =
    String


type alias CommonPrefix =
    { prefix : String }


type alias CommonPrefixList =
    List CommonPrefix


type alias CompleteMultipartUploadOutput =
    { versionId : String
    , serverSideEncryption : ServerSideEncryption
    , ssekmskeyId : String
    , requestCharged : RequestCharged
    , location : String
    , key : ObjectKey
    , expiration : String
    , etag : String
    , bucket : String
    }


type alias CompleteMultipartUploadRequest =
    { uploadId : String
    , requestPayer : RequestPayer
    , multipartUpload : CompletedMultipartUpload
    , key : ObjectKey
    , bucket : String
    }


type alias CompletedMultipartUpload =
    { parts : CompletedPartList }


type alias CompletedPart =
    { partNumber : Int, etag : String }


type alias CompletedPartList =
    List CompletedPart


type CompressionType
    = CompressionTypeNone
    | CompressionTypeGzip
    | CompressionTypeBzip2


compressionType : Enum CompressionType
compressionType =
    Enum.define
        [ CompressionTypeNone, CompressionTypeGzip, CompressionTypeBzip2 ]
        (\val ->
            case val of
                CompressionTypeNone ->
                    "NONE"

                CompressionTypeGzip ->
                    "GZIP"

                CompressionTypeBzip2 ->
                    "BZIP2"
        )


type alias Condition =
    { keyPrefixEquals : String, httpErrorCodeReturnedEquals : String }


type alias ConfirmRemoveSelfBucketAccess =
    Bool


type alias ContentDisposition =
    String


type alias ContentEncoding =
    String


type alias ContentLanguage =
    String


type alias ContentLength =
    Int


type alias ContentMd5 =
    String


type alias ContentRange =
    String


type alias ContentType =
    String


type alias ContinuationEvent =
    {}


type alias CopyObjectOutput =
    { versionId : String
    , serverSideEncryption : ServerSideEncryption
    , ssekmskeyId : String
    , ssekmsencryptionContext : String
    , ssecustomerKeyMd5 : String
    , ssecustomerAlgorithm : String
    , requestCharged : RequestCharged
    , expiration : String
    , copySourceVersionId : String
    , copyObjectResult : CopyObjectResult
    }


type alias CopyObjectRequest =
    { websiteRedirectLocation : String
    , taggingDirective : TaggingDirective
    , tagging : String
    , storageClass : StorageClass
    , serverSideEncryption : ServerSideEncryption
    , ssekmskeyId : String
    , ssekmsencryptionContext : String
    , ssecustomerKeyMd5 : String
    , ssecustomerKey : String
    , ssecustomerAlgorithm : String
    , requestPayer : RequestPayer
    , objectLockRetainUntilDate : ObjectLockRetainUntilDate
    , objectLockMode : ObjectLockMode
    , objectLockLegalHoldStatus : ObjectLockLegalHoldStatus
    , metadataDirective : MetadataDirective
    , metadata : Metadata
    , key : ObjectKey
    , grantWriteAcp : String
    , grantReadAcp : String
    , grantRead : String
    , grantFullControl : String
    , expires : Expires
    , copySourceSsecustomerKeyMd5 : String
    , copySourceSsecustomerKey : String
    , copySourceSsecustomerAlgorithm : String
    , copySourceIfUnmodifiedSince : CopySourceIfUnmodifiedSince
    , copySourceIfNoneMatch : String
    , copySourceIfModifiedSince : CopySourceIfModifiedSince
    , copySourceIfMatch : String
    , copySource : CopySource
    , contentType : String
    , contentLanguage : String
    , contentEncoding : String
    , contentDisposition : String
    , cacheControl : String
    , bucket : String
    , acl : ObjectCannedAcl
    }


type alias CopyObjectResult =
    { lastModified : LastModified, etag : String }


type alias CopyPartResult =
    { lastModified : LastModified, etag : String }


type CopySource
    = CopySource String


copySource : Refined String CopySource StringError
copySource =
    let
        guardFn val =
            Refined.regexMatch "\\/.+\\/.+" val |> Result.map CopySource

        unboxFn (CopySource val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias CopySourceIfMatch =
    String


type alias CopySourceIfModifiedSince =
    String


type alias CopySourceIfNoneMatch =
    String


type alias CopySourceIfUnmodifiedSince =
    String


type alias CopySourceRange =
    String


type alias CopySourceSsecustomerAlgorithm =
    String


type alias CopySourceSsecustomerKey =
    String


type alias CopySourceSsecustomerKeyMd5 =
    String


type alias CopySourceVersionId =
    String


type alias CreateBucketConfiguration =
    { locationConstraint : BucketLocationConstraint }


type alias CreateBucketOutput =
    { location : String }


type alias CreateBucketRequest =
    { objectLockEnabledForBucket : Bool
    , grantWriteAcp : String
    , grantWrite : String
    , grantReadAcp : String
    , grantRead : String
    , grantFullControl : String
    , createBucketConfiguration : CreateBucketConfiguration
    , bucket : String
    , acl : BucketCannedAcl
    }


type alias CreateMultipartUploadOutput =
    { uploadId : String
    , serverSideEncryption : ServerSideEncryption
    , ssekmskeyId : String
    , ssekmsencryptionContext : String
    , ssecustomerKeyMd5 : String
    , ssecustomerAlgorithm : String
    , requestCharged : RequestCharged
    , key : ObjectKey
    , bucket : String
    , abortRuleId : String
    , abortDate : AbortDate
    }


type alias CreateMultipartUploadRequest =
    { websiteRedirectLocation : String
    , tagging : String
    , storageClass : StorageClass
    , serverSideEncryption : ServerSideEncryption
    , ssekmskeyId : String
    , ssekmsencryptionContext : String
    , ssecustomerKeyMd5 : String
    , ssecustomerKey : String
    , ssecustomerAlgorithm : String
    , requestPayer : RequestPayer
    , objectLockRetainUntilDate : ObjectLockRetainUntilDate
    , objectLockMode : ObjectLockMode
    , objectLockLegalHoldStatus : ObjectLockLegalHoldStatus
    , metadata : Metadata
    , key : ObjectKey
    , grantWriteAcp : String
    , grantReadAcp : String
    , grantRead : String
    , grantFullControl : String
    , expires : Expires
    , contentType : String
    , contentLanguage : String
    , contentEncoding : String
    , contentDisposition : String
    , cacheControl : String
    , bucket : String
    , acl : ObjectCannedAcl
    }


type alias CreationDate =
    String


type alias Date =
    String


type alias Days =
    Int


type alias DaysAfterInitiation =
    Int


type alias DefaultRetention =
    { years : Int, mode : ObjectLockRetentionMode, days : Int }


type alias Delete =
    { quiet : Bool, objects : ObjectIdentifierList }


type alias DeleteBucketAnalyticsConfigurationRequest =
    { id : String, bucket : String }


type alias DeleteBucketCorsRequest =
    { bucket : String }


type alias DeleteBucketEncryptionRequest =
    { bucket : String }


type alias DeleteBucketInventoryConfigurationRequest =
    { id : String, bucket : String }


type alias DeleteBucketLifecycleRequest =
    { bucket : String }


type alias DeleteBucketMetricsConfigurationRequest =
    { id : String, bucket : String }


type alias DeleteBucketPolicyRequest =
    { bucket : String }


type alias DeleteBucketReplicationRequest =
    { bucket : String }


type alias DeleteBucketRequest =
    { bucket : String }


type alias DeleteBucketTaggingRequest =
    { bucket : String }


type alias DeleteBucketWebsiteRequest =
    { bucket : String }


type alias DeleteMarker =
    Bool


type alias DeleteMarkerEntry =
    { versionId : String, owner : Owner, lastModified : LastModified, key : ObjectKey, isLatest : Bool }


type alias DeleteMarkerReplication =
    { status : DeleteMarkerReplicationStatus }


type DeleteMarkerReplicationStatus
    = DeleteMarkerReplicationStatusEnabled
    | DeleteMarkerReplicationStatusDisabled


deleteMarkerReplicationStatus : Enum DeleteMarkerReplicationStatus
deleteMarkerReplicationStatus =
    Enum.define
        [ DeleteMarkerReplicationStatusEnabled, DeleteMarkerReplicationStatusDisabled ]
        (\val ->
            case val of
                DeleteMarkerReplicationStatusEnabled ->
                    "Enabled"

                DeleteMarkerReplicationStatusDisabled ->
                    "Disabled"
        )


type alias DeleteMarkerVersionId =
    String


type alias DeleteMarkers =
    List DeleteMarkerEntry


type alias DeleteObjectOutput =
    { versionId : String, requestCharged : RequestCharged, deleteMarker : Bool }


type alias DeleteObjectRequest =
    { versionId : String
    , requestPayer : RequestPayer
    , mfa : String
    , key : ObjectKey
    , bypassGovernanceRetention : Bool
    , bucket : String
    }


type alias DeleteObjectTaggingOutput =
    { versionId : String }


type alias DeleteObjectTaggingRequest =
    { versionId : String, key : ObjectKey, bucket : String }


type alias DeleteObjectsOutput =
    { requestCharged : RequestCharged, errors : Errors, deleted : DeletedObjects }


type alias DeleteObjectsRequest =
    { requestPayer : RequestPayer, mfa : String, delete : Delete, bypassGovernanceRetention : Bool, bucket : String }


type alias DeletePublicAccessBlockRequest =
    { bucket : String }


type alias DeletedObject =
    { versionId : String, key : ObjectKey, deleteMarkerVersionId : String, deleteMarker : Bool }


type alias DeletedObjects =
    List DeletedObject


type alias Delimiter =
    String


type alias Description =
    String


type alias Destination =
    { storageClass : StorageClass
    , encryptionConfiguration : EncryptionConfiguration
    , bucket : String
    , account : String
    , accessControlTranslation : AccessControlTranslation
    }


type alias DisplayName =
    String


type alias Etag =
    String


type alias EmailAddress =
    String


type alias EnableRequestProgress =
    Bool


type EncodingType
    = EncodingTypeUrl


encodingType : Enum EncodingType
encodingType =
    Enum.define
        [ EncodingTypeUrl ]
        (\val ->
            case val of
                EncodingTypeUrl ->
                    "url"
        )


type alias Encryption =
    { kmskeyId : String, kmscontext : String, encryptionType : ServerSideEncryption }


type alias EncryptionConfiguration =
    { replicaKmsKeyId : String }


type alias EndEvent =
    {}


type alias Error =
    { versionId : String, message : String, key : ObjectKey, code : String }


type alias ErrorDocument =
    { key : ObjectKey }


type alias Errors =
    List Error


type Event
    = EventS3ReducedRedundancyLostObject
    | EventS3ObjectCreated
    | EventS3ObjectCreatedPut
    | EventS3ObjectCreatedPost
    | EventS3ObjectCreatedCopy
    | EventS3ObjectCreatedCompleteMultipartUpload
    | EventS3ObjectRemoved
    | EventS3ObjectRemovedDelete
    | EventS3ObjectRemovedDeleteMarkerCreated
    | EventS3ObjectRestorePost
    | EventS3ObjectRestoreCompleted


event : Enum Event
event =
    Enum.define
        [ EventS3ReducedRedundancyLostObject
        , EventS3ObjectCreated
        , EventS3ObjectCreatedPut
        , EventS3ObjectCreatedPost
        , EventS3ObjectCreatedCopy
        , EventS3ObjectCreatedCompleteMultipartUpload
        , EventS3ObjectRemoved
        , EventS3ObjectRemovedDelete
        , EventS3ObjectRemovedDeleteMarkerCreated
        , EventS3ObjectRestorePost
        , EventS3ObjectRestoreCompleted
        ]
        (\val ->
            case val of
                EventS3ReducedRedundancyLostObject ->
                    "s3:ReducedRedundancyLostObject"

                EventS3ObjectCreated ->
                    "s3:ObjectCreated:*"

                EventS3ObjectCreatedPut ->
                    "s3:ObjectCreated:Put"

                EventS3ObjectCreatedPost ->
                    "s3:ObjectCreated:Post"

                EventS3ObjectCreatedCopy ->
                    "s3:ObjectCreated:Copy"

                EventS3ObjectCreatedCompleteMultipartUpload ->
                    "s3:ObjectCreated:CompleteMultipartUpload"

                EventS3ObjectRemoved ->
                    "s3:ObjectRemoved:*"

                EventS3ObjectRemovedDelete ->
                    "s3:ObjectRemoved:Delete"

                EventS3ObjectRemovedDeleteMarkerCreated ->
                    "s3:ObjectRemoved:DeleteMarkerCreated"

                EventS3ObjectRestorePost ->
                    "s3:ObjectRestore:Post"

                EventS3ObjectRestoreCompleted ->
                    "s3:ObjectRestore:Completed"
        )


type alias EventList =
    List Event


type alias Expiration =
    String


type ExpirationStatus
    = ExpirationStatusEnabled
    | ExpirationStatusDisabled


expirationStatus : Enum ExpirationStatus
expirationStatus =
    Enum.define
        [ ExpirationStatusEnabled, ExpirationStatusDisabled ]
        (\val ->
            case val of
                ExpirationStatusEnabled ->
                    "Enabled"

                ExpirationStatusDisabled ->
                    "Disabled"
        )


type alias ExpiredObjectDeleteMarker =
    Bool


type alias Expires =
    String


type alias ExposeHeader =
    String


type alias ExposeHeaders =
    List String


type alias Expression =
    String


type ExpressionType
    = ExpressionTypeSql


expressionType : Enum ExpressionType
expressionType =
    Enum.define
        [ ExpressionTypeSql ]
        (\val ->
            case val of
                ExpressionTypeSql ->
                    "SQL"
        )


type alias FetchOwner =
    Bool


type alias FieldDelimiter =
    String


type FileHeaderInfo
    = FileHeaderInfoUse
    | FileHeaderInfoIgnore
    | FileHeaderInfoNone


fileHeaderInfo : Enum FileHeaderInfo
fileHeaderInfo =
    Enum.define
        [ FileHeaderInfoUse, FileHeaderInfoIgnore, FileHeaderInfoNone ]
        (\val ->
            case val of
                FileHeaderInfoUse ->
                    "USE"

                FileHeaderInfoIgnore ->
                    "IGNORE"

                FileHeaderInfoNone ->
                    "NONE"
        )


type alias FilterRule =
    { value : String, name : FilterRuleName }


type alias FilterRuleList =
    List FilterRule


type FilterRuleName
    = FilterRuleNamePrefix
    | FilterRuleNameSuffix


filterRuleName : Enum FilterRuleName
filterRuleName =
    Enum.define
        [ FilterRuleNamePrefix, FilterRuleNameSuffix ]
        (\val ->
            case val of
                FilterRuleNamePrefix ->
                    "prefix"

                FilterRuleNameSuffix ->
                    "suffix"
        )


type alias FilterRuleValue =
    String


type alias GetBucketAccelerateConfigurationOutput =
    { status : BucketAccelerateStatus }


type alias GetBucketAccelerateConfigurationRequest =
    { bucket : String }


type alias GetBucketAclOutput =
    { owner : Owner, grants : Grants }


type alias GetBucketAclRequest =
    { bucket : String }


type alias GetBucketAnalyticsConfigurationOutput =
    { analyticsConfiguration : AnalyticsConfiguration }


type alias GetBucketAnalyticsConfigurationRequest =
    { id : String, bucket : String }


type alias GetBucketCorsOutput =
    { corsrules : Corsrules }


type alias GetBucketCorsRequest =
    { bucket : String }


type alias GetBucketEncryptionOutput =
    { serverSideEncryptionConfiguration : ServerSideEncryptionConfiguration }


type alias GetBucketEncryptionRequest =
    { bucket : String }


type alias GetBucketInventoryConfigurationOutput =
    { inventoryConfiguration : InventoryConfiguration }


type alias GetBucketInventoryConfigurationRequest =
    { id : String, bucket : String }


type alias GetBucketLifecycleConfigurationOutput =
    { rules : LifecycleRules }


type alias GetBucketLifecycleConfigurationRequest =
    { bucket : String }


type alias GetBucketLifecycleOutput =
    { rules : Rules }


type alias GetBucketLifecycleRequest =
    { bucket : String }


type alias GetBucketLocationOutput =
    { locationConstraint : BucketLocationConstraint }


type alias GetBucketLocationRequest =
    { bucket : String }


type alias GetBucketLoggingOutput =
    { loggingEnabled : LoggingEnabled }


type alias GetBucketLoggingRequest =
    { bucket : String }


type alias GetBucketMetricsConfigurationOutput =
    { metricsConfiguration : MetricsConfiguration }


type alias GetBucketMetricsConfigurationRequest =
    { id : String, bucket : String }


type alias GetBucketNotificationConfigurationRequest =
    { bucket : String }


type alias GetBucketPolicyOutput =
    { policy : String }


type alias GetBucketPolicyRequest =
    { bucket : String }


type alias GetBucketPolicyStatusOutput =
    { policyStatus : PolicyStatus }


type alias GetBucketPolicyStatusRequest =
    { bucket : String }


type alias GetBucketReplicationOutput =
    { replicationConfiguration : ReplicationConfiguration }


type alias GetBucketReplicationRequest =
    { bucket : String }


type alias GetBucketRequestPaymentOutput =
    { payer : Payer }


type alias GetBucketRequestPaymentRequest =
    { bucket : String }


type alias GetBucketTaggingOutput =
    { tagSet : TagSet }


type alias GetBucketTaggingRequest =
    { bucket : String }


type alias GetBucketVersioningOutput =
    { status : BucketVersioningStatus, mfadelete : MfadeleteStatus }


type alias GetBucketVersioningRequest =
    { bucket : String }


type alias GetBucketWebsiteOutput =
    { routingRules : RoutingRules
    , redirectAllRequestsTo : RedirectAllRequestsTo
    , indexDocument : IndexDocument
    , errorDocument : ErrorDocument
    }


type alias GetBucketWebsiteRequest =
    { bucket : String }


type alias GetObjectAclOutput =
    { requestCharged : RequestCharged, owner : Owner, grants : Grants }


type alias GetObjectAclRequest =
    { versionId : String, requestPayer : RequestPayer, key : ObjectKey, bucket : String }


type alias GetObjectLegalHoldOutput =
    { legalHold : ObjectLockLegalHold }


type alias GetObjectLegalHoldRequest =
    { versionId : String, requestPayer : RequestPayer, key : ObjectKey, bucket : String }


type alias GetObjectLockConfigurationOutput =
    { objectLockConfiguration : ObjectLockConfiguration }


type alias GetObjectLockConfigurationRequest =
    { bucket : String }


type alias GetObjectOutput =
    { websiteRedirectLocation : String
    , versionId : String
    , tagCount : Int
    , storageClass : StorageClass
    , serverSideEncryption : ServerSideEncryption
    , ssekmskeyId : String
    , ssecustomerKeyMd5 : String
    , ssecustomerAlgorithm : String
    , restore : String
    , requestCharged : RequestCharged
    , replicationStatus : ReplicationStatus
    , partsCount : Int
    , objectLockRetainUntilDate : ObjectLockRetainUntilDate
    , objectLockMode : ObjectLockMode
    , objectLockLegalHoldStatus : ObjectLockLegalHoldStatus
    , missingMeta : Int
    , metadata : Metadata
    , lastModified : LastModified
    , expires : Expires
    , expiration : String
    , etag : String
    , deleteMarker : Bool
    , contentType : String
    , contentRange : String
    , contentLength : Int
    , contentLanguage : String
    , contentEncoding : String
    , contentDisposition : String
    , cacheControl : String
    , body : String
    , acceptRanges : String
    }


type alias GetObjectRequest =
    { versionId : String
    , ssecustomerKeyMd5 : String
    , ssecustomerKey : String
    , ssecustomerAlgorithm : String
    , responseExpires : ResponseExpires
    , responseContentType : String
    , responseContentLanguage : String
    , responseContentEncoding : String
    , responseContentDisposition : String
    , responseCacheControl : String
    , requestPayer : RequestPayer
    , range : String
    , partNumber : Int
    , key : ObjectKey
    , ifUnmodifiedSince : IfUnmodifiedSince
    , ifNoneMatch : String
    , ifModifiedSince : IfModifiedSince
    , ifMatch : String
    , bucket : String
    }


type alias GetObjectRetentionOutput =
    { retention : ObjectLockRetention }


type alias GetObjectRetentionRequest =
    { versionId : String, requestPayer : RequestPayer, key : ObjectKey, bucket : String }


type alias GetObjectTaggingOutput =
    { versionId : String, tagSet : TagSet }


type alias GetObjectTaggingRequest =
    { versionId : String, key : ObjectKey, bucket : String }


type alias GetObjectTorrentOutput =
    { requestCharged : RequestCharged, body : String }


type alias GetObjectTorrentRequest =
    { requestPayer : RequestPayer, key : ObjectKey, bucket : String }


type alias GetPublicAccessBlockOutput =
    { publicAccessBlockConfiguration : PublicAccessBlockConfiguration }


type alias GetPublicAccessBlockRequest =
    { bucket : String }


type alias GlacierJobParameters =
    { tier : Tier }


type alias Grant =
    { permission : Permission, grantee : Grantee }


type alias GrantFullControl =
    String


type alias GrantRead =
    String


type alias GrantReadAcp =
    String


type alias GrantWrite =
    String


type alias GrantWriteAcp =
    String


type alias Grantee =
    { uri : String, type_ : Type, id : String, emailAddress : String, displayName : String }


type alias Grants =
    List Grant


type alias HeadBucketRequest =
    { bucket : String }


type alias HeadObjectOutput =
    { websiteRedirectLocation : String
    , versionId : String
    , storageClass : StorageClass
    , serverSideEncryption : ServerSideEncryption
    , ssekmskeyId : String
    , ssecustomerKeyMd5 : String
    , ssecustomerAlgorithm : String
    , restore : String
    , requestCharged : RequestCharged
    , replicationStatus : ReplicationStatus
    , partsCount : Int
    , objectLockRetainUntilDate : ObjectLockRetainUntilDate
    , objectLockMode : ObjectLockMode
    , objectLockLegalHoldStatus : ObjectLockLegalHoldStatus
    , missingMeta : Int
    , metadata : Metadata
    , lastModified : LastModified
    , expires : Expires
    , expiration : String
    , etag : String
    , deleteMarker : Bool
    , contentType : String
    , contentLength : Int
    , contentLanguage : String
    , contentEncoding : String
    , contentDisposition : String
    , cacheControl : String
    , acceptRanges : String
    }


type alias HeadObjectRequest =
    { versionId : String
    , ssecustomerKeyMd5 : String
    , ssecustomerKey : String
    , ssecustomerAlgorithm : String
    , requestPayer : RequestPayer
    , range : String
    , partNumber : Int
    , key : ObjectKey
    , ifUnmodifiedSince : IfUnmodifiedSince
    , ifNoneMatch : String
    , ifModifiedSince : IfModifiedSince
    , ifMatch : String
    , bucket : String
    }


type alias HostName =
    String


type alias HttpErrorCodeReturnedEquals =
    String


type alias HttpRedirectCode =
    String


type alias Id =
    String


type alias IfMatch =
    String


type alias IfModifiedSince =
    String


type alias IfNoneMatch =
    String


type alias IfUnmodifiedSince =
    String


type alias IndexDocument =
    { suffix : String }


type alias Initiated =
    String


type alias Initiator =
    { id : String, displayName : String }


type alias InputSerialization =
    { parquet : ParquetInput, json : Jsoninput, compressionType : CompressionType, csv : Csvinput }


type alias InventoryConfiguration =
    { schedule : InventorySchedule
    , optionalFields : InventoryOptionalFields
    , isEnabled : Bool
    , includedObjectVersions : InventoryIncludedObjectVersions
    , id : String
    , filter : InventoryFilter
    , destination : InventoryDestination
    }


type alias InventoryConfigurationList =
    List InventoryConfiguration


type alias InventoryDestination =
    { s3BucketDestination : InventoryS3BucketDestination }


type alias InventoryEncryption =
    { sses3 : Sses3, ssekms : Ssekms }


type alias InventoryFilter =
    { prefix : String }


type InventoryFormat
    = InventoryFormatCsv
    | InventoryFormatOrc
    | InventoryFormatParquet


inventoryFormat : Enum InventoryFormat
inventoryFormat =
    Enum.define
        [ InventoryFormatCsv, InventoryFormatOrc, InventoryFormatParquet ]
        (\val ->
            case val of
                InventoryFormatCsv ->
                    "CSV"

                InventoryFormatOrc ->
                    "ORC"

                InventoryFormatParquet ->
                    "Parquet"
        )


type InventoryFrequency
    = InventoryFrequencyDaily
    | InventoryFrequencyWeekly


inventoryFrequency : Enum InventoryFrequency
inventoryFrequency =
    Enum.define
        [ InventoryFrequencyDaily, InventoryFrequencyWeekly ]
        (\val ->
            case val of
                InventoryFrequencyDaily ->
                    "Daily"

                InventoryFrequencyWeekly ->
                    "Weekly"
        )


type alias InventoryId =
    String


type InventoryIncludedObjectVersions
    = InventoryIncludedObjectVersionsAll
    | InventoryIncludedObjectVersionsCurrent


inventoryIncludedObjectVersions : Enum InventoryIncludedObjectVersions
inventoryIncludedObjectVersions =
    Enum.define
        [ InventoryIncludedObjectVersionsAll, InventoryIncludedObjectVersionsCurrent ]
        (\val ->
            case val of
                InventoryIncludedObjectVersionsAll ->
                    "All"

                InventoryIncludedObjectVersionsCurrent ->
                    "Current"
        )


type InventoryOptionalField
    = InventoryOptionalFieldSize
    | InventoryOptionalFieldLastModifiedDate
    | InventoryOptionalFieldStorageClass
    | InventoryOptionalFieldEtag
    | InventoryOptionalFieldIsMultipartUploaded
    | InventoryOptionalFieldReplicationStatus
    | InventoryOptionalFieldEncryptionStatus
    | InventoryOptionalFieldObjectLockRetainUntilDate
    | InventoryOptionalFieldObjectLockMode
    | InventoryOptionalFieldObjectLockLegalHoldStatus


inventoryOptionalField : Enum InventoryOptionalField
inventoryOptionalField =
    Enum.define
        [ InventoryOptionalFieldSize
        , InventoryOptionalFieldLastModifiedDate
        , InventoryOptionalFieldStorageClass
        , InventoryOptionalFieldEtag
        , InventoryOptionalFieldIsMultipartUploaded
        , InventoryOptionalFieldReplicationStatus
        , InventoryOptionalFieldEncryptionStatus
        , InventoryOptionalFieldObjectLockRetainUntilDate
        , InventoryOptionalFieldObjectLockMode
        , InventoryOptionalFieldObjectLockLegalHoldStatus
        ]
        (\val ->
            case val of
                InventoryOptionalFieldSize ->
                    "Size"

                InventoryOptionalFieldLastModifiedDate ->
                    "LastModifiedDate"

                InventoryOptionalFieldStorageClass ->
                    "StorageClass"

                InventoryOptionalFieldEtag ->
                    "ETag"

                InventoryOptionalFieldIsMultipartUploaded ->
                    "IsMultipartUploaded"

                InventoryOptionalFieldReplicationStatus ->
                    "ReplicationStatus"

                InventoryOptionalFieldEncryptionStatus ->
                    "EncryptionStatus"

                InventoryOptionalFieldObjectLockRetainUntilDate ->
                    "ObjectLockRetainUntilDate"

                InventoryOptionalFieldObjectLockMode ->
                    "ObjectLockMode"

                InventoryOptionalFieldObjectLockLegalHoldStatus ->
                    "ObjectLockLegalHoldStatus"
        )


type alias InventoryOptionalFields =
    List InventoryOptionalField


type alias InventoryS3BucketDestination =
    { prefix : String, format : InventoryFormat, encryption : InventoryEncryption, bucket : String, accountId : String }


type alias InventorySchedule =
    { frequency : InventoryFrequency }


type alias IsEnabled =
    Bool


type alias IsLatest =
    Bool


type alias IsPublic =
    Bool


type alias IsTruncated =
    Bool


type alias Jsoninput =
    { type_ : Jsontype }


type alias Jsonoutput =
    { recordDelimiter : String }


type Jsontype
    = JsontypeDocument
    | JsontypeLines


jsontype : Enum Jsontype
jsontype =
    Enum.define
        [ JsontypeDocument, JsontypeLines ]
        (\val ->
            case val of
                JsontypeDocument ->
                    "DOCUMENT"

                JsontypeLines ->
                    "LINES"
        )


type alias Kmscontext =
    String


type alias KeyCount =
    Int


type alias KeyMarker =
    String


type alias KeyPrefixEquals =
    String


type alias LambdaFunctionArn =
    String


type alias LambdaFunctionConfiguration =
    { lambdaFunctionArn : String, id : String, filter : NotificationConfigurationFilter, events : EventList }


type alias LambdaFunctionConfigurationList =
    List LambdaFunctionConfiguration


type alias LastModified =
    String


type alias LifecycleConfiguration =
    { rules : Rules }


type alias LifecycleExpiration =
    { expiredObjectDeleteMarker : Bool, days : Int, date : Date }


type alias LifecycleRule =
    { transitions : TransitionList
    , status : ExpirationStatus
    , prefix : String
    , noncurrentVersionTransitions : NoncurrentVersionTransitionList
    , noncurrentVersionExpiration : NoncurrentVersionExpiration
    , id : String
    , filter : LifecycleRuleFilter
    , expiration : LifecycleExpiration
    , abortIncompleteMultipartUpload : AbortIncompleteMultipartUpload
    }


type alias LifecycleRuleAndOperator =
    { tags : TagSet, prefix : String }


type alias LifecycleRuleFilter =
    { tag : Tag, prefix : String, and : LifecycleRuleAndOperator }


type alias LifecycleRules =
    List LifecycleRule


type alias ListBucketAnalyticsConfigurationsOutput =
    { nextContinuationToken : String
    , isTruncated : Bool
    , continuationToken : String
    , analyticsConfigurationList : AnalyticsConfigurationList
    }


type alias ListBucketAnalyticsConfigurationsRequest =
    { continuationToken : String, bucket : String }


type alias ListBucketInventoryConfigurationsOutput =
    { nextContinuationToken : String
    , isTruncated : Bool
    , inventoryConfigurationList : InventoryConfigurationList
    , continuationToken : String
    }


type alias ListBucketInventoryConfigurationsRequest =
    { continuationToken : String, bucket : String }


type alias ListBucketMetricsConfigurationsOutput =
    { nextContinuationToken : String
    , metricsConfigurationList : MetricsConfigurationList
    , isTruncated : Bool
    , continuationToken : String
    }


type alias ListBucketMetricsConfigurationsRequest =
    { continuationToken : String, bucket : String }


type alias ListBucketsOutput =
    { owner : Owner, buckets : Buckets }


type alias ListMultipartUploadsOutput =
    { uploads : MultipartUploadList
    , uploadIdMarker : String
    , prefix : String
    , nextUploadIdMarker : String
    , nextKeyMarker : String
    , maxUploads : Int
    , keyMarker : String
    , isTruncated : Bool
    , encodingType : EncodingType
    , delimiter : String
    , commonPrefixes : CommonPrefixList
    , bucket : String
    }


type alias ListMultipartUploadsRequest =
    { uploadIdMarker : String
    , prefix : String
    , maxUploads : Int
    , keyMarker : String
    , encodingType : EncodingType
    , delimiter : String
    , bucket : String
    }


type alias ListObjectVersionsOutput =
    { versions : ObjectVersionList
    , versionIdMarker : String
    , prefix : String
    , nextVersionIdMarker : String
    , nextKeyMarker : String
    , name : String
    , maxKeys : Int
    , keyMarker : String
    , isTruncated : Bool
    , encodingType : EncodingType
    , delimiter : String
    , deleteMarkers : DeleteMarkers
    , commonPrefixes : CommonPrefixList
    }


type alias ListObjectVersionsRequest =
    { versionIdMarker : String
    , prefix : String
    , maxKeys : Int
    , keyMarker : String
    , encodingType : EncodingType
    , delimiter : String
    , bucket : String
    }


type alias ListObjectsOutput =
    { prefix : String
    , nextMarker : String
    , name : String
    , maxKeys : Int
    , marker : String
    , isTruncated : Bool
    , encodingType : EncodingType
    , delimiter : String
    , contents : ObjectList
    , commonPrefixes : CommonPrefixList
    }


type alias ListObjectsRequest =
    { requestPayer : RequestPayer
    , prefix : String
    , maxKeys : Int
    , marker : String
    , encodingType : EncodingType
    , delimiter : String
    , bucket : String
    }


type alias ListObjectsV2Output =
    { startAfter : String
    , prefix : String
    , nextContinuationToken : String
    , name : String
    , maxKeys : Int
    , keyCount : Int
    , isTruncated : Bool
    , encodingType : EncodingType
    , delimiter : String
    , continuationToken : String
    , contents : ObjectList
    , commonPrefixes : CommonPrefixList
    }


type alias ListObjectsV2Request =
    { startAfter : String
    , requestPayer : RequestPayer
    , prefix : String
    , maxKeys : Int
    , fetchOwner : Bool
    , encodingType : EncodingType
    , delimiter : String
    , continuationToken : String
    , bucket : String
    }


type alias ListPartsOutput =
    { uploadId : String
    , storageClass : StorageClass
    , requestCharged : RequestCharged
    , parts : Parts
    , partNumberMarker : Int
    , owner : Owner
    , nextPartNumberMarker : Int
    , maxParts : Int
    , key : ObjectKey
    , isTruncated : Bool
    , initiator : Initiator
    , bucket : String
    , abortRuleId : String
    , abortDate : AbortDate
    }


type alias ListPartsRequest =
    { uploadId : String
    , requestPayer : RequestPayer
    , partNumberMarker : Int
    , maxParts : Int
    , key : ObjectKey
    , bucket : String
    }


type alias Location =
    String


type alias LocationPrefix =
    String


type alias LoggingEnabled =
    { targetPrefix : String, targetGrants : TargetGrants, targetBucket : String }


type alias Mfa =
    String


type Mfadelete
    = MfadeleteEnabled
    | MfadeleteDisabled


mfadelete : Enum Mfadelete
mfadelete =
    Enum.define
        [ MfadeleteEnabled, MfadeleteDisabled ]
        (\val ->
            case val of
                MfadeleteEnabled ->
                    "Enabled"

                MfadeleteDisabled ->
                    "Disabled"
        )


type MfadeleteStatus
    = MfadeleteStatusEnabled
    | MfadeleteStatusDisabled


mfadeleteStatus : Enum MfadeleteStatus
mfadeleteStatus =
    Enum.define
        [ MfadeleteStatusEnabled, MfadeleteStatusDisabled ]
        (\val ->
            case val of
                MfadeleteStatusEnabled ->
                    "Enabled"

                MfadeleteStatusDisabled ->
                    "Disabled"
        )


type alias Marker =
    String


type alias MaxAgeSeconds =
    Int


type alias MaxKeys =
    Int


type alias MaxParts =
    Int


type alias MaxUploads =
    Int


type alias Message =
    String


type alias Metadata =
    Dict String String


type MetadataDirective
    = MetadataDirectiveCopy
    | MetadataDirectiveReplace


metadataDirective : Enum MetadataDirective
metadataDirective =
    Enum.define
        [ MetadataDirectiveCopy, MetadataDirectiveReplace ]
        (\val ->
            case val of
                MetadataDirectiveCopy ->
                    "COPY"

                MetadataDirectiveReplace ->
                    "REPLACE"
        )


type alias MetadataEntry =
    { value : String, name : String }


type alias MetadataKey =
    String


type alias MetadataValue =
    String


type alias MetricsAndOperator =
    { tags : TagSet, prefix : String }


type alias MetricsConfiguration =
    { id : String, filter : MetricsFilter }


type alias MetricsConfigurationList =
    List MetricsConfiguration


type alias MetricsFilter =
    { tag : Tag, prefix : String, and : MetricsAndOperator }


type alias MetricsId =
    String


type alias MissingMeta =
    Int


type alias MultipartUpload =
    { uploadId : String
    , storageClass : StorageClass
    , owner : Owner
    , key : ObjectKey
    , initiator : Initiator
    , initiated : Initiated
    }


type alias MultipartUploadId =
    String


type alias MultipartUploadList =
    List MultipartUpload


type alias NextKeyMarker =
    String


type alias NextMarker =
    String


type alias NextPartNumberMarker =
    Int


type alias NextToken =
    String


type alias NextUploadIdMarker =
    String


type alias NextVersionIdMarker =
    String


type alias NoncurrentVersionExpiration =
    { noncurrentDays : Int }


type alias NoncurrentVersionTransition =
    { storageClass : TransitionStorageClass, noncurrentDays : Int }


type alias NoncurrentVersionTransitionList =
    List NoncurrentVersionTransition


type alias NotificationConfiguration =
    { topicConfigurations : TopicConfigurationList
    , queueConfigurations : QueueConfigurationList
    , lambdaFunctionConfigurations : LambdaFunctionConfigurationList
    }


type alias NotificationConfigurationDeprecated =
    { topicConfiguration : TopicConfigurationDeprecated
    , queueConfiguration : QueueConfigurationDeprecated
    , cloudFunctionConfiguration : CloudFunctionConfiguration
    }


type alias NotificationConfigurationFilter =
    { key : S3KeyFilter }


type alias NotificationId =
    String


type alias Object =
    { storageClass : ObjectStorageClass
    , size : Int
    , owner : Owner
    , lastModified : LastModified
    , key : ObjectKey
    , etag : String
    }


type ObjectCannedAcl
    = ObjectCannedAclPrivate
    | ObjectCannedAclPublicRead
    | ObjectCannedAclPublicReadWrite
    | ObjectCannedAclAuthenticatedRead
    | ObjectCannedAclAwsExecRead
    | ObjectCannedAclBucketOwnerRead
    | ObjectCannedAclBucketOwnerFullControl


objectCannedAcl : Enum ObjectCannedAcl
objectCannedAcl =
    Enum.define
        [ ObjectCannedAclPrivate
        , ObjectCannedAclPublicRead
        , ObjectCannedAclPublicReadWrite
        , ObjectCannedAclAuthenticatedRead
        , ObjectCannedAclAwsExecRead
        , ObjectCannedAclBucketOwnerRead
        , ObjectCannedAclBucketOwnerFullControl
        ]
        (\val ->
            case val of
                ObjectCannedAclPrivate ->
                    "private"

                ObjectCannedAclPublicRead ->
                    "public-read"

                ObjectCannedAclPublicReadWrite ->
                    "public-read-write"

                ObjectCannedAclAuthenticatedRead ->
                    "authenticated-read"

                ObjectCannedAclAwsExecRead ->
                    "aws-exec-read"

                ObjectCannedAclBucketOwnerRead ->
                    "bucket-owner-read"

                ObjectCannedAclBucketOwnerFullControl ->
                    "bucket-owner-full-control"
        )


type alias ObjectIdentifier =
    { versionId : String, key : ObjectKey }


type alias ObjectIdentifierList =
    List ObjectIdentifier


type ObjectKey
    = ObjectKey String


objectKey : Refined String ObjectKey StringError
objectKey =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.map ObjectKey

        unboxFn (ObjectKey val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias ObjectList =
    List Object


type alias ObjectLockConfiguration =
    { rule : ObjectLockRule, objectLockEnabled : ObjectLockEnabled }


type ObjectLockEnabled
    = ObjectLockEnabledEnabled


objectLockEnabled : Enum ObjectLockEnabled
objectLockEnabled =
    Enum.define
        [ ObjectLockEnabledEnabled ]
        (\val ->
            case val of
                ObjectLockEnabledEnabled ->
                    "Enabled"
        )


type alias ObjectLockEnabledForBucket =
    Bool


type alias ObjectLockLegalHold =
    { status : ObjectLockLegalHoldStatus }


type ObjectLockLegalHoldStatus
    = ObjectLockLegalHoldStatusOn
    | ObjectLockLegalHoldStatusOff


objectLockLegalHoldStatus : Enum ObjectLockLegalHoldStatus
objectLockLegalHoldStatus =
    Enum.define
        [ ObjectLockLegalHoldStatusOn, ObjectLockLegalHoldStatusOff ]
        (\val ->
            case val of
                ObjectLockLegalHoldStatusOn ->
                    "ON"

                ObjectLockLegalHoldStatusOff ->
                    "OFF"
        )


type ObjectLockMode
    = ObjectLockModeGovernance
    | ObjectLockModeCompliance


objectLockMode : Enum ObjectLockMode
objectLockMode =
    Enum.define
        [ ObjectLockModeGovernance, ObjectLockModeCompliance ]
        (\val ->
            case val of
                ObjectLockModeGovernance ->
                    "GOVERNANCE"

                ObjectLockModeCompliance ->
                    "COMPLIANCE"
        )


type alias ObjectLockRetainUntilDate =
    String


type alias ObjectLockRetention =
    { retainUntilDate : Date, mode : ObjectLockRetentionMode }


type ObjectLockRetentionMode
    = ObjectLockRetentionModeGovernance
    | ObjectLockRetentionModeCompliance


objectLockRetentionMode : Enum ObjectLockRetentionMode
objectLockRetentionMode =
    Enum.define
        [ ObjectLockRetentionModeGovernance, ObjectLockRetentionModeCompliance ]
        (\val ->
            case val of
                ObjectLockRetentionModeGovernance ->
                    "GOVERNANCE"

                ObjectLockRetentionModeCompliance ->
                    "COMPLIANCE"
        )


type alias ObjectLockRule =
    { defaultRetention : DefaultRetention }


type alias ObjectLockToken =
    String


type ObjectStorageClass
    = ObjectStorageClassStandard
    | ObjectStorageClassReducedRedundancy
    | ObjectStorageClassGlacier
    | ObjectStorageClassStandardIa
    | ObjectStorageClassOnezoneIa
    | ObjectStorageClassIntelligentTiering
    | ObjectStorageClassDeepArchive


objectStorageClass : Enum ObjectStorageClass
objectStorageClass =
    Enum.define
        [ ObjectStorageClassStandard
        , ObjectStorageClassReducedRedundancy
        , ObjectStorageClassGlacier
        , ObjectStorageClassStandardIa
        , ObjectStorageClassOnezoneIa
        , ObjectStorageClassIntelligentTiering
        , ObjectStorageClassDeepArchive
        ]
        (\val ->
            case val of
                ObjectStorageClassStandard ->
                    "STANDARD"

                ObjectStorageClassReducedRedundancy ->
                    "REDUCED_REDUNDANCY"

                ObjectStorageClassGlacier ->
                    "GLACIER"

                ObjectStorageClassStandardIa ->
                    "STANDARD_IA"

                ObjectStorageClassOnezoneIa ->
                    "ONEZONE_IA"

                ObjectStorageClassIntelligentTiering ->
                    "INTELLIGENT_TIERING"

                ObjectStorageClassDeepArchive ->
                    "DEEP_ARCHIVE"
        )


type alias ObjectVersion =
    { versionId : String
    , storageClass : ObjectVersionStorageClass
    , size : Int
    , owner : Owner
    , lastModified : LastModified
    , key : ObjectKey
    , isLatest : Bool
    , etag : String
    }


type alias ObjectVersionId =
    String


type alias ObjectVersionList =
    List ObjectVersion


type ObjectVersionStorageClass
    = ObjectVersionStorageClassStandard


objectVersionStorageClass : Enum ObjectVersionStorageClass
objectVersionStorageClass =
    Enum.define
        [ ObjectVersionStorageClassStandard ]
        (\val ->
            case val of
                ObjectVersionStorageClassStandard ->
                    "STANDARD"
        )


type alias OutputLocation =
    { s3 : S3Location }


type alias OutputSerialization =
    { json : Jsonoutput, csv : Csvoutput }


type alias Owner =
    { id : String, displayName : String }


type OwnerOverride
    = OwnerOverrideDestination


ownerOverride : Enum OwnerOverride
ownerOverride =
    Enum.define
        [ OwnerOverrideDestination ]
        (\val ->
            case val of
                OwnerOverrideDestination ->
                    "Destination"
        )


type alias ParquetInput =
    {}


type alias Part =
    { size : Int, partNumber : Int, lastModified : LastModified, etag : String }


type alias PartNumber =
    Int


type alias PartNumberMarker =
    Int


type alias Parts =
    List Part


type alias PartsCount =
    Int


type Payer
    = PayerRequester
    | PayerBucketOwner


payer : Enum Payer
payer =
    Enum.define
        [ PayerRequester, PayerBucketOwner ]
        (\val ->
            case val of
                PayerRequester ->
                    "Requester"

                PayerBucketOwner ->
                    "BucketOwner"
        )


type Permission
    = PermissionFullControl
    | PermissionWrite
    | PermissionWriteAcp
    | PermissionRead
    | PermissionReadAcp


permission : Enum Permission
permission =
    Enum.define
        [ PermissionFullControl, PermissionWrite, PermissionWriteAcp, PermissionRead, PermissionReadAcp ]
        (\val ->
            case val of
                PermissionFullControl ->
                    "FULL_CONTROL"

                PermissionWrite ->
                    "WRITE"

                PermissionWriteAcp ->
                    "WRITE_ACP"

                PermissionRead ->
                    "READ"

                PermissionReadAcp ->
                    "READ_ACP"
        )


type alias Policy =
    String


type alias PolicyStatus =
    { isPublic : Bool }


type alias Prefix =
    String


type alias Priority =
    Int


type alias Progress =
    { bytesScanned : Int, bytesReturned : Int, bytesProcessed : Int }


type alias ProgressEvent =
    { details : Progress }


type Protocol
    = ProtocolHttp
    | ProtocolHttps


protocol : Enum Protocol
protocol =
    Enum.define
        [ ProtocolHttp, ProtocolHttps ]
        (\val ->
            case val of
                ProtocolHttp ->
                    "http"

                ProtocolHttps ->
                    "https"
        )


type alias PublicAccessBlockConfiguration =
    { restrictPublicBuckets : Bool, ignorePublicAcls : Bool, blockPublicPolicy : Bool, blockPublicAcls : Bool }


type alias PutBucketAccelerateConfigurationRequest =
    { bucket : String, accelerateConfiguration : AccelerateConfiguration }


type alias PutBucketAclRequest =
    { grantWriteAcp : String
    , grantWrite : String
    , grantReadAcp : String
    , grantRead : String
    , grantFullControl : String
    , contentMd5 : String
    , bucket : String
    , accessControlPolicy : AccessControlPolicy
    , acl : BucketCannedAcl
    }


type alias PutBucketAnalyticsConfigurationRequest =
    { id : String, bucket : String, analyticsConfiguration : AnalyticsConfiguration }


type alias PutBucketCorsRequest =
    { contentMd5 : String, corsconfiguration : Corsconfiguration, bucket : String }


type alias PutBucketEncryptionRequest =
    { serverSideEncryptionConfiguration : ServerSideEncryptionConfiguration, contentMd5 : String, bucket : String }


type alias PutBucketInventoryConfigurationRequest =
    { inventoryConfiguration : InventoryConfiguration, id : String, bucket : String }


type alias PutBucketLifecycleConfigurationRequest =
    { lifecycleConfiguration : BucketLifecycleConfiguration, bucket : String }


type alias PutBucketLifecycleRequest =
    { lifecycleConfiguration : LifecycleConfiguration, contentMd5 : String, bucket : String }


type alias PutBucketLoggingRequest =
    { contentMd5 : String, bucketLoggingStatus : BucketLoggingStatus, bucket : String }


type alias PutBucketMetricsConfigurationRequest =
    { metricsConfiguration : MetricsConfiguration, id : String, bucket : String }


type alias PutBucketNotificationConfigurationRequest =
    { notificationConfiguration : NotificationConfiguration, bucket : String }


type alias PutBucketNotificationRequest =
    { notificationConfiguration : NotificationConfigurationDeprecated, contentMd5 : String, bucket : String }


type alias PutBucketPolicyRequest =
    { policy : String, contentMd5 : String, confirmRemoveSelfBucketAccess : Bool, bucket : String }


type alias PutBucketReplicationRequest =
    { token : String, replicationConfiguration : ReplicationConfiguration, contentMd5 : String, bucket : String }


type alias PutBucketRequestPaymentRequest =
    { requestPaymentConfiguration : RequestPaymentConfiguration, contentMd5 : String, bucket : String }


type alias PutBucketTaggingRequest =
    { tagging : Tagging, contentMd5 : String, bucket : String }


type alias PutBucketVersioningRequest =
    { versioningConfiguration : VersioningConfiguration, mfa : String, contentMd5 : String, bucket : String }


type alias PutBucketWebsiteRequest =
    { websiteConfiguration : WebsiteConfiguration, contentMd5 : String, bucket : String }


type alias PutObjectAclOutput =
    { requestCharged : RequestCharged }


type alias PutObjectAclRequest =
    { versionId : String
    , requestPayer : RequestPayer
    , key : ObjectKey
    , grantWriteAcp : String
    , grantWrite : String
    , grantReadAcp : String
    , grantRead : String
    , grantFullControl : String
    , contentMd5 : String
    , bucket : String
    , accessControlPolicy : AccessControlPolicy
    , acl : ObjectCannedAcl
    }


type alias PutObjectLegalHoldOutput =
    { requestCharged : RequestCharged }


type alias PutObjectLegalHoldRequest =
    { versionId : String
    , requestPayer : RequestPayer
    , legalHold : ObjectLockLegalHold
    , key : ObjectKey
    , contentMd5 : String
    , bucket : String
    }


type alias PutObjectLockConfigurationOutput =
    { requestCharged : RequestCharged }


type alias PutObjectLockConfigurationRequest =
    { token : String
    , requestPayer : RequestPayer
    , objectLockConfiguration : ObjectLockConfiguration
    , contentMd5 : String
    , bucket : String
    }


type alias PutObjectOutput =
    { versionId : String
    , serverSideEncryption : ServerSideEncryption
    , ssekmskeyId : String
    , ssekmsencryptionContext : String
    , ssecustomerKeyMd5 : String
    , ssecustomerAlgorithm : String
    , requestCharged : RequestCharged
    , expiration : String
    , etag : String
    }


type alias PutObjectRequest =
    { websiteRedirectLocation : String
    , tagging : String
    , storageClass : StorageClass
    , serverSideEncryption : ServerSideEncryption
    , ssekmskeyId : String
    , ssekmsencryptionContext : String
    , ssecustomerKeyMd5 : String
    , ssecustomerKey : String
    , ssecustomerAlgorithm : String
    , requestPayer : RequestPayer
    , objectLockRetainUntilDate : ObjectLockRetainUntilDate
    , objectLockMode : ObjectLockMode
    , objectLockLegalHoldStatus : ObjectLockLegalHoldStatus
    , metadata : Metadata
    , key : ObjectKey
    , grantWriteAcp : String
    , grantReadAcp : String
    , grantRead : String
    , grantFullControl : String
    , expires : Expires
    , contentType : String
    , contentMd5 : String
    , contentLength : Int
    , contentLanguage : String
    , contentEncoding : String
    , contentDisposition : String
    , cacheControl : String
    , bucket : String
    , body : String
    , acl : ObjectCannedAcl
    }


type alias PutObjectRetentionOutput =
    { requestCharged : RequestCharged }


type alias PutObjectRetentionRequest =
    { versionId : String
    , retention : ObjectLockRetention
    , requestPayer : RequestPayer
    , key : ObjectKey
    , contentMd5 : String
    , bypassGovernanceRetention : Bool
    , bucket : String
    }


type alias PutObjectTaggingOutput =
    { versionId : String }


type alias PutObjectTaggingRequest =
    { versionId : String, tagging : Tagging, key : ObjectKey, contentMd5 : String, bucket : String }


type alias PutPublicAccessBlockRequest =
    { publicAccessBlockConfiguration : PublicAccessBlockConfiguration, contentMd5 : String, bucket : String }


type alias QueueArn =
    String


type alias QueueConfiguration =
    { queueArn : String, id : String, filter : NotificationConfigurationFilter, events : EventList }


type alias QueueConfigurationDeprecated =
    { queue : String, id : String, events : EventList, event : Event }


type alias QueueConfigurationList =
    List QueueConfiguration


type alias Quiet =
    Bool


type alias QuoteCharacter =
    String


type alias QuoteEscapeCharacter =
    String


type QuoteFields
    = QuoteFieldsAlways
    | QuoteFieldsAsneeded


quoteFields : Enum QuoteFields
quoteFields =
    Enum.define
        [ QuoteFieldsAlways, QuoteFieldsAsneeded ]
        (\val ->
            case val of
                QuoteFieldsAlways ->
                    "ALWAYS"

                QuoteFieldsAsneeded ->
                    "ASNEEDED"
        )


type alias Range =
    String


type alias RecordDelimiter =
    String


type alias RecordsEvent =
    { payload : String }


type alias Redirect =
    { replaceKeyWith : String
    , replaceKeyPrefixWith : String
    , protocol : Protocol
    , httpRedirectCode : String
    , hostName : String
    }


type alias RedirectAllRequestsTo =
    { protocol : Protocol, hostName : String }


type alias ReplaceKeyPrefixWith =
    String


type alias ReplaceKeyWith =
    String


type alias ReplicaKmsKeyId =
    String


type alias ReplicationConfiguration =
    { rules : ReplicationRules, role : String }


type alias ReplicationRule =
    { status : ReplicationRuleStatus
    , sourceSelectionCriteria : SourceSelectionCriteria
    , priority : Int
    , prefix : String
    , id : String
    , filter : ReplicationRuleFilter
    , destination : Destination
    , deleteMarkerReplication : DeleteMarkerReplication
    }


type alias ReplicationRuleAndOperator =
    { tags : TagSet, prefix : String }


type alias ReplicationRuleFilter =
    { tag : Tag, prefix : String, and : ReplicationRuleAndOperator }


type ReplicationRuleStatus
    = ReplicationRuleStatusEnabled
    | ReplicationRuleStatusDisabled


replicationRuleStatus : Enum ReplicationRuleStatus
replicationRuleStatus =
    Enum.define
        [ ReplicationRuleStatusEnabled, ReplicationRuleStatusDisabled ]
        (\val ->
            case val of
                ReplicationRuleStatusEnabled ->
                    "Enabled"

                ReplicationRuleStatusDisabled ->
                    "Disabled"
        )


type alias ReplicationRules =
    List ReplicationRule


type ReplicationStatus
    = ReplicationStatusComplete
    | ReplicationStatusPending
    | ReplicationStatusFailed
    | ReplicationStatusReplica


replicationStatus : Enum ReplicationStatus
replicationStatus =
    Enum.define
        [ ReplicationStatusComplete, ReplicationStatusPending, ReplicationStatusFailed, ReplicationStatusReplica ]
        (\val ->
            case val of
                ReplicationStatusComplete ->
                    "COMPLETE"

                ReplicationStatusPending ->
                    "PENDING"

                ReplicationStatusFailed ->
                    "FAILED"

                ReplicationStatusReplica ->
                    "REPLICA"
        )


type RequestCharged
    = RequestChargedRequester


requestCharged : Enum RequestCharged
requestCharged =
    Enum.define
        [ RequestChargedRequester ]
        (\val ->
            case val of
                RequestChargedRequester ->
                    "requester"
        )


type RequestPayer
    = RequestPayerRequester


requestPayer : Enum RequestPayer
requestPayer =
    Enum.define
        [ RequestPayerRequester ]
        (\val ->
            case val of
                RequestPayerRequester ->
                    "requester"
        )


type alias RequestPaymentConfiguration =
    { payer : Payer }


type alias RequestProgress =
    { enabled : Bool }


type alias ResponseCacheControl =
    String


type alias ResponseContentDisposition =
    String


type alias ResponseContentEncoding =
    String


type alias ResponseContentLanguage =
    String


type alias ResponseContentType =
    String


type alias ResponseExpires =
    String


type alias Restore =
    String


type alias RestoreObjectOutput =
    { restoreOutputPath : String, requestCharged : RequestCharged }


type alias RestoreObjectRequest =
    { versionId : String
    , restoreRequest : RestoreRequest
    , requestPayer : RequestPayer
    , key : ObjectKey
    , bucket : String
    }


type alias RestoreOutputPath =
    String


type alias RestoreRequest =
    { type_ : RestoreRequestType
    , tier : Tier
    , selectParameters : SelectParameters
    , outputLocation : OutputLocation
    , glacierJobParameters : GlacierJobParameters
    , description : String
    , days : Int
    }


type RestoreRequestType
    = RestoreRequestTypeSelect


restoreRequestType : Enum RestoreRequestType
restoreRequestType =
    Enum.define
        [ RestoreRequestTypeSelect ]
        (\val ->
            case val of
                RestoreRequestTypeSelect ->
                    "SELECT"
        )


type alias Role =
    String


type alias RoutingRule =
    { redirect : Redirect, condition : Condition }


type alias RoutingRules =
    List RoutingRule


type alias Rule =
    { transition : Transition
    , status : ExpirationStatus
    , prefix : String
    , noncurrentVersionTransition : NoncurrentVersionTransition
    , noncurrentVersionExpiration : NoncurrentVersionExpiration
    , id : String
    , expiration : LifecycleExpiration
    , abortIncompleteMultipartUpload : AbortIncompleteMultipartUpload
    }


type alias Rules =
    List Rule


type alias S3KeyFilter =
    { filterRules : FilterRuleList }


type alias S3Location =
    { userMetadata : UserMetadata
    , tagging : Tagging
    , storageClass : StorageClass
    , prefix : String
    , encryption : Encryption
    , cannedAcl : ObjectCannedAcl
    , bucketName : String
    , accessControlList : Grants
    }


type alias SsecustomerAlgorithm =
    String


type alias SsecustomerKey =
    String


type alias SsecustomerKeyMd5 =
    String


type alias Ssekms =
    { keyId : String }


type alias SsekmsencryptionContext =
    String


type alias SsekmskeyId =
    String


type alias Sses3 =
    {}


type alias SelectObjectContentEventStream =
    { stats : StatsEvent, records : RecordsEvent, progress : ProgressEvent, end : EndEvent, cont : ContinuationEvent }


type alias SelectObjectContentOutput =
    { payload : SelectObjectContentEventStream }


type alias SelectObjectContentRequest =
    { ssecustomerKeyMd5 : String
    , ssecustomerKey : String
    , ssecustomerAlgorithm : String
    , requestProgress : RequestProgress
    , outputSerialization : OutputSerialization
    , key : ObjectKey
    , inputSerialization : InputSerialization
    , expressionType : ExpressionType
    , expression : String
    , bucket : String
    }


type alias SelectParameters =
    { outputSerialization : OutputSerialization
    , inputSerialization : InputSerialization
    , expressionType : ExpressionType
    , expression : String
    }


type ServerSideEncryption
    = ServerSideEncryptionAes256
    | ServerSideEncryptionAwsKms


serverSideEncryption : Enum ServerSideEncryption
serverSideEncryption =
    Enum.define
        [ ServerSideEncryptionAes256, ServerSideEncryptionAwsKms ]
        (\val ->
            case val of
                ServerSideEncryptionAes256 ->
                    "AES256"

                ServerSideEncryptionAwsKms ->
                    "aws:kms"
        )


type alias ServerSideEncryptionByDefault =
    { ssealgorithm : ServerSideEncryption, kmsmasterKeyId : String }


type alias ServerSideEncryptionConfiguration =
    { rules : ServerSideEncryptionRules }


type alias ServerSideEncryptionRule =
    { applyServerSideEncryptionByDefault : ServerSideEncryptionByDefault }


type alias ServerSideEncryptionRules =
    List ServerSideEncryptionRule


type alias Setting =
    Bool


type alias Size =
    Int


type alias SourceSelectionCriteria =
    { sseKmsEncryptedObjects : SseKmsEncryptedObjects }


type alias SseKmsEncryptedObjects =
    { status : SseKmsEncryptedObjectsStatus }


type SseKmsEncryptedObjectsStatus
    = SseKmsEncryptedObjectsStatusEnabled
    | SseKmsEncryptedObjectsStatusDisabled


sseKmsEncryptedObjectsStatus : Enum SseKmsEncryptedObjectsStatus
sseKmsEncryptedObjectsStatus =
    Enum.define
        [ SseKmsEncryptedObjectsStatusEnabled, SseKmsEncryptedObjectsStatusDisabled ]
        (\val ->
            case val of
                SseKmsEncryptedObjectsStatusEnabled ->
                    "Enabled"

                SseKmsEncryptedObjectsStatusDisabled ->
                    "Disabled"
        )


type alias StartAfter =
    String


type alias Stats =
    { bytesScanned : Int, bytesReturned : Int, bytesProcessed : Int }


type alias StatsEvent =
    { details : Stats }


type StorageClass
    = StorageClassStandard
    | StorageClassReducedRedundancy
    | StorageClassStandardIa
    | StorageClassOnezoneIa
    | StorageClassIntelligentTiering
    | StorageClassGlacier
    | StorageClassDeepArchive


storageClass : Enum StorageClass
storageClass =
    Enum.define
        [ StorageClassStandard
        , StorageClassReducedRedundancy
        , StorageClassStandardIa
        , StorageClassOnezoneIa
        , StorageClassIntelligentTiering
        , StorageClassGlacier
        , StorageClassDeepArchive
        ]
        (\val ->
            case val of
                StorageClassStandard ->
                    "STANDARD"

                StorageClassReducedRedundancy ->
                    "REDUCED_REDUNDANCY"

                StorageClassStandardIa ->
                    "STANDARD_IA"

                StorageClassOnezoneIa ->
                    "ONEZONE_IA"

                StorageClassIntelligentTiering ->
                    "INTELLIGENT_TIERING"

                StorageClassGlacier ->
                    "GLACIER"

                StorageClassDeepArchive ->
                    "DEEP_ARCHIVE"
        )


type alias StorageClassAnalysis =
    { dataExport : StorageClassAnalysisDataExport }


type alias StorageClassAnalysisDataExport =
    { outputSchemaVersion : StorageClassAnalysisSchemaVersion, destination : AnalyticsExportDestination }


type StorageClassAnalysisSchemaVersion
    = StorageClassAnalysisSchemaVersionV1


storageClassAnalysisSchemaVersion : Enum StorageClassAnalysisSchemaVersion
storageClassAnalysisSchemaVersion =
    Enum.define
        [ StorageClassAnalysisSchemaVersionV1 ]
        (\val ->
            case val of
                StorageClassAnalysisSchemaVersionV1 ->
                    "V_1"
        )


type alias Suffix =
    String


type alias Tag =
    { value : String, key : ObjectKey }


type alias TagCount =
    Int


type alias TagSet =
    List Tag


type alias Tagging =
    { tagSet : TagSet }


type TaggingDirective
    = TaggingDirectiveCopy
    | TaggingDirectiveReplace


taggingDirective : Enum TaggingDirective
taggingDirective =
    Enum.define
        [ TaggingDirectiveCopy, TaggingDirectiveReplace ]
        (\val ->
            case val of
                TaggingDirectiveCopy ->
                    "COPY"

                TaggingDirectiveReplace ->
                    "REPLACE"
        )


type alias TaggingHeader =
    String


type alias TargetBucket =
    String


type alias TargetGrant =
    { permission : BucketLogsPermission, grantee : Grantee }


type alias TargetGrants =
    List TargetGrant


type alias TargetPrefix =
    String


type Tier
    = TierStandard
    | TierBulk
    | TierExpedited


tier : Enum Tier
tier =
    Enum.define
        [ TierStandard, TierBulk, TierExpedited ]
        (\val ->
            case val of
                TierStandard ->
                    "Standard"

                TierBulk ->
                    "Bulk"

                TierExpedited ->
                    "Expedited"
        )


type alias Token =
    String


type alias TopicArn =
    String


type alias TopicConfiguration =
    { topicArn : String, id : String, filter : NotificationConfigurationFilter, events : EventList }


type alias TopicConfigurationDeprecated =
    { topic : String, id : String, events : EventList, event : Event }


type alias TopicConfigurationList =
    List TopicConfiguration


type alias Transition =
    { storageClass : TransitionStorageClass, days : Int, date : Date }


type alias TransitionList =
    List Transition


type TransitionStorageClass
    = TransitionStorageClassGlacier
    | TransitionStorageClassStandardIa
    | TransitionStorageClassOnezoneIa
    | TransitionStorageClassIntelligentTiering
    | TransitionStorageClassDeepArchive


transitionStorageClass : Enum TransitionStorageClass
transitionStorageClass =
    Enum.define
        [ TransitionStorageClassGlacier
        , TransitionStorageClassStandardIa
        , TransitionStorageClassOnezoneIa
        , TransitionStorageClassIntelligentTiering
        , TransitionStorageClassDeepArchive
        ]
        (\val ->
            case val of
                TransitionStorageClassGlacier ->
                    "GLACIER"

                TransitionStorageClassStandardIa ->
                    "STANDARD_IA"

                TransitionStorageClassOnezoneIa ->
                    "ONEZONE_IA"

                TransitionStorageClassIntelligentTiering ->
                    "INTELLIGENT_TIERING"

                TransitionStorageClassDeepArchive ->
                    "DEEP_ARCHIVE"
        )


type Type
    = TypeCanonicalUser
    | TypeAmazonCustomerByEmail
    | TypeGroup


type_ : Enum Type
type_ =
    Enum.define
        [ TypeCanonicalUser, TypeAmazonCustomerByEmail, TypeGroup ]
        (\val ->
            case val of
                TypeCanonicalUser ->
                    "CanonicalUser"

                TypeAmazonCustomerByEmail ->
                    "AmazonCustomerByEmail"

                TypeGroup ->
                    "Group"
        )


type alias Uri =
    String


type alias UploadIdMarker =
    String


type alias UploadPartCopyOutput =
    { serverSideEncryption : ServerSideEncryption
    , ssekmskeyId : String
    , ssecustomerKeyMd5 : String
    , ssecustomerAlgorithm : String
    , requestCharged : RequestCharged
    , copySourceVersionId : String
    , copyPartResult : CopyPartResult
    }


type alias UploadPartCopyRequest =
    { uploadId : String
    , ssecustomerKeyMd5 : String
    , ssecustomerKey : String
    , ssecustomerAlgorithm : String
    , requestPayer : RequestPayer
    , partNumber : Int
    , key : ObjectKey
    , copySourceSsecustomerKeyMd5 : String
    , copySourceSsecustomerKey : String
    , copySourceSsecustomerAlgorithm : String
    , copySourceRange : String
    , copySourceIfUnmodifiedSince : CopySourceIfUnmodifiedSince
    , copySourceIfNoneMatch : String
    , copySourceIfModifiedSince : CopySourceIfModifiedSince
    , copySourceIfMatch : String
    , copySource : CopySource
    , bucket : String
    }


type alias UploadPartOutput =
    { serverSideEncryption : ServerSideEncryption
    , ssekmskeyId : String
    , ssecustomerKeyMd5 : String
    , ssecustomerAlgorithm : String
    , requestCharged : RequestCharged
    , etag : String
    }


type alias UploadPartRequest =
    { uploadId : String
    , ssecustomerKeyMd5 : String
    , ssecustomerKey : String
    , ssecustomerAlgorithm : String
    , requestPayer : RequestPayer
    , partNumber : Int
    , key : ObjectKey
    , contentMd5 : String
    , contentLength : Int
    , bucket : String
    , body : String
    }


type alias UserMetadata =
    List MetadataEntry


type alias Value =
    String


type alias VersionIdMarker =
    String


type alias VersioningConfiguration =
    { status : BucketVersioningStatus, mfadelete : Mfadelete }


type alias WebsiteConfiguration =
    { routingRules : RoutingRules
    , redirectAllRequestsTo : RedirectAllRequestsTo
    , indexDocument : IndexDocument
    , errorDocument : ErrorDocument
    }


type alias WebsiteRedirectLocation =
    String


type alias Years =
    Int


{-| Codec for Years. -}
yearsCodec : Codec Years
yearsCodec =
    Codec.int


{-| Codec for WebsiteRedirectLocation. -}
websiteRedirectLocationCodec : Codec WebsiteRedirectLocation
websiteRedirectLocationCodec =
    Codec.string


{-| Codec for WebsiteConfiguration. -}
websiteConfigurationCodec : Codec WebsiteConfiguration
websiteConfigurationCodec =
    Codec.object WebsiteConfiguration
        |> Codec.field "RoutingRules" .routingRules routingRulesCodec
        |> Codec.field "RedirectAllRequestsTo" .redirectAllRequestsTo redirectAllRequestsToCodec
        |> Codec.field "IndexDocument" .indexDocument indexDocumentCodec
        |> Codec.field "ErrorDocument" .errorDocument errorDocumentCodec
        |> Codec.buildObject


{-| Codec for VersioningConfiguration. -}
versioningConfigurationCodec : Codec VersioningConfiguration
versioningConfigurationCodec =
    Codec.object VersioningConfiguration
        |> Codec.field "Status" .status bucketVersioningStatusCodec
        |> Codec.field "MFADelete" .mfadelete mfadeleteCodec
        |> Codec.buildObject


{-| Codec for VersionIdMarker. -}
versionIdMarkerCodec : Codec VersionIdMarker
versionIdMarkerCodec =
    Codec.string


{-| Codec for Value. -}
valueCodec : Codec Value
valueCodec =
    Codec.string


{-| Codec for UserMetadata. -}
userMetadataCodec : Codec UserMetadata
userMetadataCodec =
    Codec.list metadataEntryCodec


{-| Codec for UploadPartRequest. -}
uploadPartRequestCodec : Codec UploadPartRequest
uploadPartRequestCodec =
    Codec.object UploadPartRequest
        |> Codec.field "UploadId" .uploadId Codec.string
        |> Codec.field "SSECustomerKeyMD5" .ssecustomerKeyMd5 Codec.string
        |> Codec.field "SSECustomerKey" .ssecustomerKey Codec.string
        |> Codec.field "SSECustomerAlgorithm" .ssecustomerAlgorithm Codec.string
        |> Codec.field "RequestPayer" .requestPayer requestPayerCodec
        |> Codec.field "PartNumber" .partNumber Codec.int
        |> Codec.field "Key" .key objectKeyCodec
        |> Codec.field "ContentMD5" .contentMd5 Codec.string
        |> Codec.field "ContentLength" .contentLength Codec.int
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.field "Body" .body Codec.string
        |> Codec.buildObject


{-| Codec for UploadPartOutput. -}
uploadPartOutputCodec : Codec UploadPartOutput
uploadPartOutputCodec =
    Codec.object UploadPartOutput
        |> Codec.field "ServerSideEncryption" .serverSideEncryption serverSideEncryptionCodec
        |> Codec.field "SSEKMSKeyId" .ssekmskeyId Codec.string
        |> Codec.field "SSECustomerKeyMD5" .ssecustomerKeyMd5 Codec.string
        |> Codec.field "SSECustomerAlgorithm" .ssecustomerAlgorithm Codec.string
        |> Codec.field "RequestCharged" .requestCharged requestChargedCodec
        |> Codec.field "ETag" .etag Codec.string
        |> Codec.buildObject


{-| Codec for UploadPartCopyRequest. -}
uploadPartCopyRequestCodec : Codec UploadPartCopyRequest
uploadPartCopyRequestCodec =
    Codec.object UploadPartCopyRequest
        |> Codec.field "UploadId" .uploadId Codec.string
        |> Codec.field "SSECustomerKeyMD5" .ssecustomerKeyMd5 Codec.string
        |> Codec.field "SSECustomerKey" .ssecustomerKey Codec.string
        |> Codec.field "SSECustomerAlgorithm" .ssecustomerAlgorithm Codec.string
        |> Codec.field "RequestPayer" .requestPayer requestPayerCodec
        |> Codec.field "PartNumber" .partNumber Codec.int
        |> Codec.field "Key" .key objectKeyCodec
        |> Codec.field "CopySourceSSECustomerKeyMD5" .copySourceSsecustomerKeyMd5 Codec.string
        |> Codec.field "CopySourceSSECustomerKey" .copySourceSsecustomerKey Codec.string
        |> Codec.field "CopySourceSSECustomerAlgorithm" .copySourceSsecustomerAlgorithm Codec.string
        |> Codec.field "CopySourceRange" .copySourceRange Codec.string
        |> Codec.field "CopySourceIfUnmodifiedSince" .copySourceIfUnmodifiedSince copySourceIfUnmodifiedSinceCodec
        |> Codec.field "CopySourceIfNoneMatch" .copySourceIfNoneMatch Codec.string
        |> Codec.field "CopySourceIfModifiedSince" .copySourceIfModifiedSince copySourceIfModifiedSinceCodec
        |> Codec.field "CopySourceIfMatch" .copySourceIfMatch Codec.string
        |> Codec.field "CopySource" .copySource copySourceCodec
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for UploadPartCopyOutput. -}
uploadPartCopyOutputCodec : Codec UploadPartCopyOutput
uploadPartCopyOutputCodec =
    Codec.object UploadPartCopyOutput
        |> Codec.field "ServerSideEncryption" .serverSideEncryption serverSideEncryptionCodec
        |> Codec.field "SSEKMSKeyId" .ssekmskeyId Codec.string
        |> Codec.field "SSECustomerKeyMD5" .ssecustomerKeyMd5 Codec.string
        |> Codec.field "SSECustomerAlgorithm" .ssecustomerAlgorithm Codec.string
        |> Codec.field "RequestCharged" .requestCharged requestChargedCodec
        |> Codec.field "CopySourceVersionId" .copySourceVersionId Codec.string
        |> Codec.field "CopyPartResult" .copyPartResult copyPartResultCodec
        |> Codec.buildObject


{-| Codec for UploadIdMarker. -}
uploadIdMarkerCodec : Codec UploadIdMarker
uploadIdMarkerCodec =
    Codec.string


{-| Codec for Uri. -}
uricodec : Codec Uri
uricodec =
    Codec.string


{-| Codec for Type. -}
typeCodec : Codec Type
typeCodec =
    Codec.build (Enum.encoder type_) (Enum.decoder type_)


{-| Codec for TransitionStorageClass. -}
transitionStorageClassCodec : Codec TransitionStorageClass
transitionStorageClassCodec =
    Codec.build (Enum.encoder transitionStorageClass) (Enum.decoder transitionStorageClass)


{-| Codec for TransitionList. -}
transitionListCodec : Codec TransitionList
transitionListCodec =
    Codec.list transitionCodec


{-| Codec for Transition. -}
transitionCodec : Codec Transition
transitionCodec =
    Codec.object Transition
        |> Codec.field "StorageClass" .storageClass transitionStorageClassCodec
        |> Codec.field "Days" .days Codec.int
        |> Codec.field "Date" .date dateCodec
        |> Codec.buildObject


{-| Codec for TopicConfigurationList. -}
topicConfigurationListCodec : Codec TopicConfigurationList
topicConfigurationListCodec =
    Codec.list topicConfigurationCodec


{-| Codec for TopicConfigurationDeprecated. -}
topicConfigurationDeprecatedCodec : Codec TopicConfigurationDeprecated
topicConfigurationDeprecatedCodec =
    Codec.object TopicConfigurationDeprecated
        |> Codec.field "Topic" .topic Codec.string
        |> Codec.field "Id" .id Codec.string
        |> Codec.field "Events" .events eventListCodec
        |> Codec.field "Event" .event eventCodec
        |> Codec.buildObject


{-| Codec for TopicConfiguration. -}
topicConfigurationCodec : Codec TopicConfiguration
topicConfigurationCodec =
    Codec.object TopicConfiguration
        |> Codec.field "TopicArn" .topicArn Codec.string
        |> Codec.field "Id" .id Codec.string
        |> Codec.field "Filter" .filter notificationConfigurationFilterCodec
        |> Codec.field "Events" .events eventListCodec
        |> Codec.buildObject


{-| Codec for TopicArn. -}
topicArnCodec : Codec TopicArn
topicArnCodec =
    Codec.string


{-| Codec for Token. -}
tokenCodec : Codec Token
tokenCodec =
    Codec.string


{-| Codec for Tier. -}
tierCodec : Codec Tier
tierCodec =
    Codec.build (Enum.encoder tier) (Enum.decoder tier)


{-| Codec for TargetPrefix. -}
targetPrefixCodec : Codec TargetPrefix
targetPrefixCodec =
    Codec.string


{-| Codec for TargetGrants. -}
targetGrantsCodec : Codec TargetGrants
targetGrantsCodec =
    Codec.list targetGrantCodec


{-| Codec for TargetGrant. -}
targetGrantCodec : Codec TargetGrant
targetGrantCodec =
    Codec.object TargetGrant
        |> Codec.field "Permission" .permission bucketLogsPermissionCodec
        |> Codec.field "Grantee" .grantee granteeCodec
        |> Codec.buildObject


{-| Codec for TargetBucket. -}
targetBucketCodec : Codec TargetBucket
targetBucketCodec =
    Codec.string


{-| Codec for TaggingHeader. -}
taggingHeaderCodec : Codec TaggingHeader
taggingHeaderCodec =
    Codec.string


{-| Codec for TaggingDirective. -}
taggingDirectiveCodec : Codec TaggingDirective
taggingDirectiveCodec =
    Codec.build (Enum.encoder taggingDirective) (Enum.decoder taggingDirective)


{-| Codec for Tagging. -}
taggingCodec : Codec Tagging
taggingCodec =
    Codec.object Tagging |> Codec.field "TagSet" .tagSet tagSetCodec |> Codec.buildObject


{-| Codec for TagSet. -}
tagSetCodec : Codec TagSet
tagSetCodec =
    Codec.list tagCodec


{-| Codec for TagCount. -}
tagCountCodec : Codec TagCount
tagCountCodec =
    Codec.int


{-| Codec for Tag. -}
tagCodec : Codec Tag
tagCodec =
    Codec.object Tag
        |> Codec.field "Value" .value Codec.string
        |> Codec.field "Key" .key objectKeyCodec
        |> Codec.buildObject


{-| Codec for Suffix. -}
suffixCodec : Codec Suffix
suffixCodec =
    Codec.string


{-| Codec for StorageClassAnalysisSchemaVersion. -}
storageClassAnalysisSchemaVersionCodec : Codec StorageClassAnalysisSchemaVersion
storageClassAnalysisSchemaVersionCodec =
    Codec.build (Enum.encoder storageClassAnalysisSchemaVersion) (Enum.decoder storageClassAnalysisSchemaVersion)


{-| Codec for StorageClassAnalysisDataExport. -}
storageClassAnalysisDataExportCodec : Codec StorageClassAnalysisDataExport
storageClassAnalysisDataExportCodec =
    Codec.object StorageClassAnalysisDataExport
        |> Codec.field "OutputSchemaVersion" .outputSchemaVersion storageClassAnalysisSchemaVersionCodec
        |> Codec.field "Destination" .destination analyticsExportDestinationCodec
        |> Codec.buildObject


{-| Codec for StorageClassAnalysis. -}
storageClassAnalysisCodec : Codec StorageClassAnalysis
storageClassAnalysisCodec =
    Codec.object StorageClassAnalysis
        |> Codec.field "DataExport" .dataExport storageClassAnalysisDataExportCodec
        |> Codec.buildObject


{-| Codec for StorageClass. -}
storageClassCodec : Codec StorageClass
storageClassCodec =
    Codec.build (Enum.encoder storageClass) (Enum.decoder storageClass)


{-| Codec for StatsEvent. -}
statsEventCodec : Codec StatsEvent
statsEventCodec =
    Codec.object StatsEvent |> Codec.field "Details" .details statsCodec |> Codec.buildObject


{-| Codec for Stats. -}
statsCodec : Codec Stats
statsCodec =
    Codec.object Stats
        |> Codec.field "BytesScanned" .bytesScanned Codec.int
        |> Codec.field "BytesReturned" .bytesReturned Codec.int
        |> Codec.field "BytesProcessed" .bytesProcessed Codec.int
        |> Codec.buildObject


{-| Codec for StartAfter. -}
startAfterCodec : Codec StartAfter
startAfterCodec =
    Codec.string


{-| Codec for SseKmsEncryptedObjectsStatus. -}
sseKmsEncryptedObjectsStatusCodec : Codec SseKmsEncryptedObjectsStatus
sseKmsEncryptedObjectsStatusCodec =
    Codec.build (Enum.encoder sseKmsEncryptedObjectsStatus) (Enum.decoder sseKmsEncryptedObjectsStatus)


{-| Codec for SseKmsEncryptedObjects. -}
sseKmsEncryptedObjectsCodec : Codec SseKmsEncryptedObjects
sseKmsEncryptedObjectsCodec =
    Codec.object SseKmsEncryptedObjects
        |> Codec.field "Status" .status sseKmsEncryptedObjectsStatusCodec
        |> Codec.buildObject


{-| Codec for SourceSelectionCriteria. -}
sourceSelectionCriteriaCodec : Codec SourceSelectionCriteria
sourceSelectionCriteriaCodec =
    Codec.object SourceSelectionCriteria
        |> Codec.field "SseKmsEncryptedObjects" .sseKmsEncryptedObjects sseKmsEncryptedObjectsCodec
        |> Codec.buildObject


{-| Codec for Size. -}
sizeCodec : Codec Size
sizeCodec =
    Codec.int


{-| Codec for Setting. -}
settingCodec : Codec Setting
settingCodec =
    Codec.bool


{-| Codec for ServerSideEncryptionRules. -}
serverSideEncryptionRulesCodec : Codec ServerSideEncryptionRules
serverSideEncryptionRulesCodec =
    Codec.list serverSideEncryptionRuleCodec


{-| Codec for ServerSideEncryptionRule. -}
serverSideEncryptionRuleCodec : Codec ServerSideEncryptionRule
serverSideEncryptionRuleCodec =
    Codec.object ServerSideEncryptionRule
        |> Codec.field
            "ApplyServerSideEncryptionByDefault"
            .applyServerSideEncryptionByDefault
            serverSideEncryptionByDefaultCodec
        |> Codec.buildObject


{-| Codec for ServerSideEncryptionConfiguration. -}
serverSideEncryptionConfigurationCodec : Codec ServerSideEncryptionConfiguration
serverSideEncryptionConfigurationCodec =
    Codec.object ServerSideEncryptionConfiguration
        |> Codec.field "Rules" .rules serverSideEncryptionRulesCodec
        |> Codec.buildObject


{-| Codec for ServerSideEncryptionByDefault. -}
serverSideEncryptionByDefaultCodec : Codec ServerSideEncryptionByDefault
serverSideEncryptionByDefaultCodec =
    Codec.object ServerSideEncryptionByDefault
        |> Codec.field "SSEAlgorithm" .ssealgorithm serverSideEncryptionCodec
        |> Codec.field "KMSMasterKeyID" .kmsmasterKeyId Codec.string
        |> Codec.buildObject


{-| Codec for ServerSideEncryption. -}
serverSideEncryptionCodec : Codec ServerSideEncryption
serverSideEncryptionCodec =
    Codec.build (Enum.encoder serverSideEncryption) (Enum.decoder serverSideEncryption)


{-| Codec for SelectParameters. -}
selectParametersCodec : Codec SelectParameters
selectParametersCodec =
    Codec.object SelectParameters
        |> Codec.field "OutputSerialization" .outputSerialization outputSerializationCodec
        |> Codec.field "InputSerialization" .inputSerialization inputSerializationCodec
        |> Codec.field "ExpressionType" .expressionType expressionTypeCodec
        |> Codec.field "Expression" .expression Codec.string
        |> Codec.buildObject


{-| Codec for SelectObjectContentRequest. -}
selectObjectContentRequestCodec : Codec SelectObjectContentRequest
selectObjectContentRequestCodec =
    Codec.object SelectObjectContentRequest
        |> Codec.field "SSECustomerKeyMD5" .ssecustomerKeyMd5 Codec.string
        |> Codec.field "SSECustomerKey" .ssecustomerKey Codec.string
        |> Codec.field "SSECustomerAlgorithm" .ssecustomerAlgorithm Codec.string
        |> Codec.field "RequestProgress" .requestProgress requestProgressCodec
        |> Codec.field "OutputSerialization" .outputSerialization outputSerializationCodec
        |> Codec.field "Key" .key objectKeyCodec
        |> Codec.field "InputSerialization" .inputSerialization inputSerializationCodec
        |> Codec.field "ExpressionType" .expressionType expressionTypeCodec
        |> Codec.field "Expression" .expression Codec.string
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for SelectObjectContentOutput. -}
selectObjectContentOutputCodec : Codec SelectObjectContentOutput
selectObjectContentOutputCodec =
    Codec.object SelectObjectContentOutput
        |> Codec.field "Payload" .payload selectObjectContentEventStreamCodec
        |> Codec.buildObject


{-| Codec for SelectObjectContentEventStream. -}
selectObjectContentEventStreamCodec : Codec SelectObjectContentEventStream
selectObjectContentEventStreamCodec =
    Codec.object SelectObjectContentEventStream
        |> Codec.field "Stats" .stats statsEventCodec
        |> Codec.field "Records" .records recordsEventCodec
        |> Codec.field "Progress" .progress progressEventCodec
        |> Codec.field "End" .end endEventCodec
        |> Codec.field "Cont" .cont continuationEventCodec
        |> Codec.buildObject


{-| Codec for Sses3. -}
sses3Codec : Codec Sses3
sses3Codec =
    Codec.object Sses3 |> Codec.buildObject


{-| Codec for SsekmskeyId. -}
ssekmskeyIdCodec : Codec SsekmskeyId
ssekmskeyIdCodec =
    Codec.string


{-| Codec for SsekmsencryptionContext. -}
ssekmsencryptionContextCodec : Codec SsekmsencryptionContext
ssekmsencryptionContextCodec =
    Codec.string


{-| Codec for Ssekms. -}
ssekmscodec : Codec Ssekms
ssekmscodec =
    Codec.object Ssekms |> Codec.field "KeyId" .keyId Codec.string |> Codec.buildObject


{-| Codec for SsecustomerKeyMd5. -}
ssecustomerKeyMd5Codec : Codec SsecustomerKeyMd5
ssecustomerKeyMd5Codec =
    Codec.string


{-| Codec for SsecustomerKey. -}
ssecustomerKeyCodec : Codec SsecustomerKey
ssecustomerKeyCodec =
    Codec.string


{-| Codec for SsecustomerAlgorithm. -}
ssecustomerAlgorithmCodec : Codec SsecustomerAlgorithm
ssecustomerAlgorithmCodec =
    Codec.string


{-| Codec for S3Location. -}
s3LocationCodec : Codec S3Location
s3LocationCodec =
    Codec.object S3Location
        |> Codec.field "UserMetadata" .userMetadata userMetadataCodec
        |> Codec.field "Tagging" .tagging taggingCodec
        |> Codec.field "StorageClass" .storageClass storageClassCodec
        |> Codec.field "Prefix" .prefix Codec.string
        |> Codec.field "Encryption" .encryption encryptionCodec
        |> Codec.field "CannedACL" .cannedAcl objectCannedAclcodec
        |> Codec.field "BucketName" .bucketName Codec.string
        |> Codec.field "AccessControlList" .accessControlList grantsCodec
        |> Codec.buildObject


{-| Codec for S3KeyFilter. -}
s3KeyFilterCodec : Codec S3KeyFilter
s3KeyFilterCodec =
    Codec.object S3KeyFilter |> Codec.field "FilterRules" .filterRules filterRuleListCodec |> Codec.buildObject


{-| Codec for Rules. -}
rulesCodec : Codec Rules
rulesCodec =
    Codec.list ruleCodec


{-| Codec for Rule. -}
ruleCodec : Codec Rule
ruleCodec =
    Codec.object Rule
        |> Codec.field "Transition" .transition transitionCodec
        |> Codec.field "Status" .status expirationStatusCodec
        |> Codec.field "Prefix" .prefix Codec.string
        |> Codec.field "NoncurrentVersionTransition" .noncurrentVersionTransition noncurrentVersionTransitionCodec
        |> Codec.field "NoncurrentVersionExpiration" .noncurrentVersionExpiration noncurrentVersionExpirationCodec
        |> Codec.field "ID" .id Codec.string
        |> Codec.field "Expiration" .expiration lifecycleExpirationCodec
        |> Codec.field
            "AbortIncompleteMultipartUpload"
            .abortIncompleteMultipartUpload
            abortIncompleteMultipartUploadCodec
        |> Codec.buildObject


{-| Codec for RoutingRules. -}
routingRulesCodec : Codec RoutingRules
routingRulesCodec =
    Codec.list routingRuleCodec


{-| Codec for RoutingRule. -}
routingRuleCodec : Codec RoutingRule
routingRuleCodec =
    Codec.object RoutingRule
        |> Codec.field "Redirect" .redirect redirectCodec
        |> Codec.field "Condition" .condition conditionCodec
        |> Codec.buildObject


{-| Codec for Role. -}
roleCodec : Codec Role
roleCodec =
    Codec.string


{-| Codec for RestoreRequestType. -}
restoreRequestTypeCodec : Codec RestoreRequestType
restoreRequestTypeCodec =
    Codec.build (Enum.encoder restoreRequestType) (Enum.decoder restoreRequestType)


{-| Codec for RestoreRequest. -}
restoreRequestCodec : Codec RestoreRequest
restoreRequestCodec =
    Codec.object RestoreRequest
        |> Codec.field "Type" .type_ restoreRequestTypeCodec
        |> Codec.field "Tier" .tier tierCodec
        |> Codec.field "SelectParameters" .selectParameters selectParametersCodec
        |> Codec.field "OutputLocation" .outputLocation outputLocationCodec
        |> Codec.field "GlacierJobParameters" .glacierJobParameters glacierJobParametersCodec
        |> Codec.field "Description" .description Codec.string
        |> Codec.field "Days" .days Codec.int
        |> Codec.buildObject


{-| Codec for RestoreOutputPath. -}
restoreOutputPathCodec : Codec RestoreOutputPath
restoreOutputPathCodec =
    Codec.string


{-| Codec for RestoreObjectRequest. -}
restoreObjectRequestCodec : Codec RestoreObjectRequest
restoreObjectRequestCodec =
    Codec.object RestoreObjectRequest
        |> Codec.field "VersionId" .versionId Codec.string
        |> Codec.field "RestoreRequest" .restoreRequest restoreRequestCodec
        |> Codec.field "RequestPayer" .requestPayer requestPayerCodec
        |> Codec.field "Key" .key objectKeyCodec
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for RestoreObjectOutput. -}
restoreObjectOutputCodec : Codec RestoreObjectOutput
restoreObjectOutputCodec =
    Codec.object RestoreObjectOutput
        |> Codec.field "RestoreOutputPath" .restoreOutputPath Codec.string
        |> Codec.field "RequestCharged" .requestCharged requestChargedCodec
        |> Codec.buildObject


{-| Codec for Restore. -}
restoreCodec : Codec Restore
restoreCodec =
    Codec.string


{-| Codec for ResponseExpires. -}
responseExpiresCodec : Codec ResponseExpires
responseExpiresCodec =
    Codec.string


{-| Codec for ResponseContentType. -}
responseContentTypeCodec : Codec ResponseContentType
responseContentTypeCodec =
    Codec.string


{-| Codec for ResponseContentLanguage. -}
responseContentLanguageCodec : Codec ResponseContentLanguage
responseContentLanguageCodec =
    Codec.string


{-| Codec for ResponseContentEncoding. -}
responseContentEncodingCodec : Codec ResponseContentEncoding
responseContentEncodingCodec =
    Codec.string


{-| Codec for ResponseContentDisposition. -}
responseContentDispositionCodec : Codec ResponseContentDisposition
responseContentDispositionCodec =
    Codec.string


{-| Codec for ResponseCacheControl. -}
responseCacheControlCodec : Codec ResponseCacheControl
responseCacheControlCodec =
    Codec.string


{-| Codec for RequestProgress. -}
requestProgressCodec : Codec RequestProgress
requestProgressCodec =
    Codec.object RequestProgress |> Codec.field "Enabled" .enabled Codec.bool |> Codec.buildObject


{-| Codec for RequestPaymentConfiguration. -}
requestPaymentConfigurationCodec : Codec RequestPaymentConfiguration
requestPaymentConfigurationCodec =
    Codec.object RequestPaymentConfiguration |> Codec.field "Payer" .payer payerCodec |> Codec.buildObject


{-| Codec for RequestPayer. -}
requestPayerCodec : Codec RequestPayer
requestPayerCodec =
    Codec.build (Enum.encoder requestPayer) (Enum.decoder requestPayer)


{-| Codec for RequestCharged. -}
requestChargedCodec : Codec RequestCharged
requestChargedCodec =
    Codec.build (Enum.encoder requestCharged) (Enum.decoder requestCharged)


{-| Codec for ReplicationStatus. -}
replicationStatusCodec : Codec ReplicationStatus
replicationStatusCodec =
    Codec.build (Enum.encoder replicationStatus) (Enum.decoder replicationStatus)


{-| Codec for ReplicationRules. -}
replicationRulesCodec : Codec ReplicationRules
replicationRulesCodec =
    Codec.list replicationRuleCodec


{-| Codec for ReplicationRuleStatus. -}
replicationRuleStatusCodec : Codec ReplicationRuleStatus
replicationRuleStatusCodec =
    Codec.build (Enum.encoder replicationRuleStatus) (Enum.decoder replicationRuleStatus)


{-| Codec for ReplicationRuleFilter. -}
replicationRuleFilterCodec : Codec ReplicationRuleFilter
replicationRuleFilterCodec =
    Codec.object ReplicationRuleFilter
        |> Codec.field "Tag" .tag tagCodec
        |> Codec.field "Prefix" .prefix Codec.string
        |> Codec.field "And" .and replicationRuleAndOperatorCodec
        |> Codec.buildObject


{-| Codec for ReplicationRuleAndOperator. -}
replicationRuleAndOperatorCodec : Codec ReplicationRuleAndOperator
replicationRuleAndOperatorCodec =
    Codec.object ReplicationRuleAndOperator
        |> Codec.field "Tags" .tags tagSetCodec
        |> Codec.field "Prefix" .prefix Codec.string
        |> Codec.buildObject


{-| Codec for ReplicationRule. -}
replicationRuleCodec : Codec ReplicationRule
replicationRuleCodec =
    Codec.object ReplicationRule
        |> Codec.field "Status" .status replicationRuleStatusCodec
        |> Codec.field "SourceSelectionCriteria" .sourceSelectionCriteria sourceSelectionCriteriaCodec
        |> Codec.field "Priority" .priority Codec.int
        |> Codec.field "Prefix" .prefix Codec.string
        |> Codec.field "ID" .id Codec.string
        |> Codec.field "Filter" .filter replicationRuleFilterCodec
        |> Codec.field "Destination" .destination destinationCodec
        |> Codec.field "DeleteMarkerReplication" .deleteMarkerReplication deleteMarkerReplicationCodec
        |> Codec.buildObject


{-| Codec for ReplicationConfiguration. -}
replicationConfigurationCodec : Codec ReplicationConfiguration
replicationConfigurationCodec =
    Codec.object ReplicationConfiguration
        |> Codec.field "Rules" .rules replicationRulesCodec
        |> Codec.field "Role" .role Codec.string
        |> Codec.buildObject


{-| Codec for ReplicaKmsKeyId. -}
replicaKmsKeyIdcodec : Codec ReplicaKmsKeyId
replicaKmsKeyIdcodec =
    Codec.string


{-| Codec for ReplaceKeyWith. -}
replaceKeyWithCodec : Codec ReplaceKeyWith
replaceKeyWithCodec =
    Codec.string


{-| Codec for ReplaceKeyPrefixWith. -}
replaceKeyPrefixWithCodec : Codec ReplaceKeyPrefixWith
replaceKeyPrefixWithCodec =
    Codec.string


{-| Codec for RedirectAllRequestsTo. -}
redirectAllRequestsToCodec : Codec RedirectAllRequestsTo
redirectAllRequestsToCodec =
    Codec.object RedirectAllRequestsTo
        |> Codec.field "Protocol" .protocol protocolCodec
        |> Codec.field "HostName" .hostName Codec.string
        |> Codec.buildObject


{-| Codec for Redirect. -}
redirectCodec : Codec Redirect
redirectCodec =
    Codec.object Redirect
        |> Codec.field "ReplaceKeyWith" .replaceKeyWith Codec.string
        |> Codec.field "ReplaceKeyPrefixWith" .replaceKeyPrefixWith Codec.string
        |> Codec.field "Protocol" .protocol protocolCodec
        |> Codec.field "HttpRedirectCode" .httpRedirectCode Codec.string
        |> Codec.field "HostName" .hostName Codec.string
        |> Codec.buildObject


{-| Codec for RecordsEvent. -}
recordsEventCodec : Codec RecordsEvent
recordsEventCodec =
    Codec.object RecordsEvent |> Codec.field "Payload" .payload Codec.string |> Codec.buildObject


{-| Codec for RecordDelimiter. -}
recordDelimiterCodec : Codec RecordDelimiter
recordDelimiterCodec =
    Codec.string


{-| Codec for Range. -}
rangeCodec : Codec Range
rangeCodec =
    Codec.string


{-| Codec for QuoteFields. -}
quoteFieldsCodec : Codec QuoteFields
quoteFieldsCodec =
    Codec.build (Enum.encoder quoteFields) (Enum.decoder quoteFields)


{-| Codec for QuoteEscapeCharacter. -}
quoteEscapeCharacterCodec : Codec QuoteEscapeCharacter
quoteEscapeCharacterCodec =
    Codec.string


{-| Codec for QuoteCharacter. -}
quoteCharacterCodec : Codec QuoteCharacter
quoteCharacterCodec =
    Codec.string


{-| Codec for Quiet. -}
quietCodec : Codec Quiet
quietCodec =
    Codec.bool


{-| Codec for QueueConfigurationList. -}
queueConfigurationListCodec : Codec QueueConfigurationList
queueConfigurationListCodec =
    Codec.list queueConfigurationCodec


{-| Codec for QueueConfigurationDeprecated. -}
queueConfigurationDeprecatedCodec : Codec QueueConfigurationDeprecated
queueConfigurationDeprecatedCodec =
    Codec.object QueueConfigurationDeprecated
        |> Codec.field "Queue" .queue Codec.string
        |> Codec.field "Id" .id Codec.string
        |> Codec.field "Events" .events eventListCodec
        |> Codec.field "Event" .event eventCodec
        |> Codec.buildObject


{-| Codec for QueueConfiguration. -}
queueConfigurationCodec : Codec QueueConfiguration
queueConfigurationCodec =
    Codec.object QueueConfiguration
        |> Codec.field "QueueArn" .queueArn Codec.string
        |> Codec.field "Id" .id Codec.string
        |> Codec.field "Filter" .filter notificationConfigurationFilterCodec
        |> Codec.field "Events" .events eventListCodec
        |> Codec.buildObject


{-| Codec for QueueArn. -}
queueArnCodec : Codec QueueArn
queueArnCodec =
    Codec.string


{-| Codec for PutPublicAccessBlockRequest. -}
putPublicAccessBlockRequestCodec : Codec PutPublicAccessBlockRequest
putPublicAccessBlockRequestCodec =
    Codec.object PutPublicAccessBlockRequest
        |> Codec.field
            "PublicAccessBlockConfiguration"
            .publicAccessBlockConfiguration
            publicAccessBlockConfigurationCodec
        |> Codec.field "ContentMD5" .contentMd5 Codec.string
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for PutObjectTaggingRequest. -}
putObjectTaggingRequestCodec : Codec PutObjectTaggingRequest
putObjectTaggingRequestCodec =
    Codec.object PutObjectTaggingRequest
        |> Codec.field "VersionId" .versionId Codec.string
        |> Codec.field "Tagging" .tagging taggingCodec
        |> Codec.field "Key" .key objectKeyCodec
        |> Codec.field "ContentMD5" .contentMd5 Codec.string
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for PutObjectTaggingOutput. -}
putObjectTaggingOutputCodec : Codec PutObjectTaggingOutput
putObjectTaggingOutputCodec =
    Codec.object PutObjectTaggingOutput |> Codec.field "VersionId" .versionId Codec.string |> Codec.buildObject


{-| Codec for PutObjectRetentionRequest. -}
putObjectRetentionRequestCodec : Codec PutObjectRetentionRequest
putObjectRetentionRequestCodec =
    Codec.object PutObjectRetentionRequest
        |> Codec.field "VersionId" .versionId Codec.string
        |> Codec.field "Retention" .retention objectLockRetentionCodec
        |> Codec.field "RequestPayer" .requestPayer requestPayerCodec
        |> Codec.field "Key" .key objectKeyCodec
        |> Codec.field "ContentMD5" .contentMd5 Codec.string
        |> Codec.field "BypassGovernanceRetention" .bypassGovernanceRetention Codec.bool
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for PutObjectRetentionOutput. -}
putObjectRetentionOutputCodec : Codec PutObjectRetentionOutput
putObjectRetentionOutputCodec =
    Codec.object PutObjectRetentionOutput
        |> Codec.field "RequestCharged" .requestCharged requestChargedCodec
        |> Codec.buildObject


{-| Codec for PutObjectRequest. -}
putObjectRequestCodec : Codec PutObjectRequest
putObjectRequestCodec =
    Codec.object PutObjectRequest
        |> Codec.field "WebsiteRedirectLocation" .websiteRedirectLocation Codec.string
        |> Codec.field "Tagging" .tagging Codec.string
        |> Codec.field "StorageClass" .storageClass storageClassCodec
        |> Codec.field "ServerSideEncryption" .serverSideEncryption serverSideEncryptionCodec
        |> Codec.field "SSEKMSKeyId" .ssekmskeyId Codec.string
        |> Codec.field "SSEKMSEncryptionContext" .ssekmsencryptionContext Codec.string
        |> Codec.field "SSECustomerKeyMD5" .ssecustomerKeyMd5 Codec.string
        |> Codec.field "SSECustomerKey" .ssecustomerKey Codec.string
        |> Codec.field "SSECustomerAlgorithm" .ssecustomerAlgorithm Codec.string
        |> Codec.field "RequestPayer" .requestPayer requestPayerCodec
        |> Codec.field "ObjectLockRetainUntilDate" .objectLockRetainUntilDate objectLockRetainUntilDateCodec
        |> Codec.field "ObjectLockMode" .objectLockMode objectLockModeCodec
        |> Codec.field "ObjectLockLegalHoldStatus" .objectLockLegalHoldStatus objectLockLegalHoldStatusCodec
        |> Codec.field "Metadata" .metadata metadataCodec
        |> Codec.field "Key" .key objectKeyCodec
        |> Codec.field "GrantWriteACP" .grantWriteAcp Codec.string
        |> Codec.field "GrantReadACP" .grantReadAcp Codec.string
        |> Codec.field "GrantRead" .grantRead Codec.string
        |> Codec.field "GrantFullControl" .grantFullControl Codec.string
        |> Codec.field "Expires" .expires expiresCodec
        |> Codec.field "ContentType" .contentType Codec.string
        |> Codec.field "ContentMD5" .contentMd5 Codec.string
        |> Codec.field "ContentLength" .contentLength Codec.int
        |> Codec.field "ContentLanguage" .contentLanguage Codec.string
        |> Codec.field "ContentEncoding" .contentEncoding Codec.string
        |> Codec.field "ContentDisposition" .contentDisposition Codec.string
        |> Codec.field "CacheControl" .cacheControl Codec.string
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.field "Body" .body Codec.string
        |> Codec.field "ACL" .acl objectCannedAclcodec
        |> Codec.buildObject


{-| Codec for PutObjectOutput. -}
putObjectOutputCodec : Codec PutObjectOutput
putObjectOutputCodec =
    Codec.object PutObjectOutput
        |> Codec.field "VersionId" .versionId Codec.string
        |> Codec.field "ServerSideEncryption" .serverSideEncryption serverSideEncryptionCodec
        |> Codec.field "SSEKMSKeyId" .ssekmskeyId Codec.string
        |> Codec.field "SSEKMSEncryptionContext" .ssekmsencryptionContext Codec.string
        |> Codec.field "SSECustomerKeyMD5" .ssecustomerKeyMd5 Codec.string
        |> Codec.field "SSECustomerAlgorithm" .ssecustomerAlgorithm Codec.string
        |> Codec.field "RequestCharged" .requestCharged requestChargedCodec
        |> Codec.field "Expiration" .expiration Codec.string
        |> Codec.field "ETag" .etag Codec.string
        |> Codec.buildObject


{-| Codec for PutObjectLockConfigurationRequest. -}
putObjectLockConfigurationRequestCodec : Codec PutObjectLockConfigurationRequest
putObjectLockConfigurationRequestCodec =
    Codec.object PutObjectLockConfigurationRequest
        |> Codec.field "Token" .token Codec.string
        |> Codec.field "RequestPayer" .requestPayer requestPayerCodec
        |> Codec.field "ObjectLockConfiguration" .objectLockConfiguration objectLockConfigurationCodec
        |> Codec.field "ContentMD5" .contentMd5 Codec.string
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for PutObjectLockConfigurationOutput. -}
putObjectLockConfigurationOutputCodec : Codec PutObjectLockConfigurationOutput
putObjectLockConfigurationOutputCodec =
    Codec.object PutObjectLockConfigurationOutput
        |> Codec.field "RequestCharged" .requestCharged requestChargedCodec
        |> Codec.buildObject


{-| Codec for PutObjectLegalHoldRequest. -}
putObjectLegalHoldRequestCodec : Codec PutObjectLegalHoldRequest
putObjectLegalHoldRequestCodec =
    Codec.object PutObjectLegalHoldRequest
        |> Codec.field "VersionId" .versionId Codec.string
        |> Codec.field "RequestPayer" .requestPayer requestPayerCodec
        |> Codec.field "LegalHold" .legalHold objectLockLegalHoldCodec
        |> Codec.field "Key" .key objectKeyCodec
        |> Codec.field "ContentMD5" .contentMd5 Codec.string
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for PutObjectLegalHoldOutput. -}
putObjectLegalHoldOutputCodec : Codec PutObjectLegalHoldOutput
putObjectLegalHoldOutputCodec =
    Codec.object PutObjectLegalHoldOutput
        |> Codec.field "RequestCharged" .requestCharged requestChargedCodec
        |> Codec.buildObject


{-| Codec for PutObjectAclRequest. -}
putObjectAclRequestCodec : Codec PutObjectAclRequest
putObjectAclRequestCodec =
    Codec.object PutObjectAclRequest
        |> Codec.field "VersionId" .versionId Codec.string
        |> Codec.field "RequestPayer" .requestPayer requestPayerCodec
        |> Codec.field "Key" .key objectKeyCodec
        |> Codec.field "GrantWriteACP" .grantWriteAcp Codec.string
        |> Codec.field "GrantWrite" .grantWrite Codec.string
        |> Codec.field "GrantReadACP" .grantReadAcp Codec.string
        |> Codec.field "GrantRead" .grantRead Codec.string
        |> Codec.field "GrantFullControl" .grantFullControl Codec.string
        |> Codec.field "ContentMD5" .contentMd5 Codec.string
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.field "AccessControlPolicy" .accessControlPolicy accessControlPolicyCodec
        |> Codec.field "ACL" .acl objectCannedAclcodec
        |> Codec.buildObject


{-| Codec for PutObjectAclOutput. -}
putObjectAclOutputCodec : Codec PutObjectAclOutput
putObjectAclOutputCodec =
    Codec.object PutObjectAclOutput
        |> Codec.field "RequestCharged" .requestCharged requestChargedCodec
        |> Codec.buildObject


{-| Codec for PutBucketWebsiteRequest. -}
putBucketWebsiteRequestCodec : Codec PutBucketWebsiteRequest
putBucketWebsiteRequestCodec =
    Codec.object PutBucketWebsiteRequest
        |> Codec.field "WebsiteConfiguration" .websiteConfiguration websiteConfigurationCodec
        |> Codec.field "ContentMD5" .contentMd5 Codec.string
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for PutBucketVersioningRequest. -}
putBucketVersioningRequestCodec : Codec PutBucketVersioningRequest
putBucketVersioningRequestCodec =
    Codec.object PutBucketVersioningRequest
        |> Codec.field "VersioningConfiguration" .versioningConfiguration versioningConfigurationCodec
        |> Codec.field "MFA" .mfa Codec.string
        |> Codec.field "ContentMD5" .contentMd5 Codec.string
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for PutBucketTaggingRequest. -}
putBucketTaggingRequestCodec : Codec PutBucketTaggingRequest
putBucketTaggingRequestCodec =
    Codec.object PutBucketTaggingRequest
        |> Codec.field "Tagging" .tagging taggingCodec
        |> Codec.field "ContentMD5" .contentMd5 Codec.string
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for PutBucketRequestPaymentRequest. -}
putBucketRequestPaymentRequestCodec : Codec PutBucketRequestPaymentRequest
putBucketRequestPaymentRequestCodec =
    Codec.object PutBucketRequestPaymentRequest
        |> Codec.field "RequestPaymentConfiguration" .requestPaymentConfiguration requestPaymentConfigurationCodec
        |> Codec.field "ContentMD5" .contentMd5 Codec.string
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for PutBucketReplicationRequest. -}
putBucketReplicationRequestCodec : Codec PutBucketReplicationRequest
putBucketReplicationRequestCodec =
    Codec.object PutBucketReplicationRequest
        |> Codec.field "Token" .token Codec.string
        |> Codec.field "ReplicationConfiguration" .replicationConfiguration replicationConfigurationCodec
        |> Codec.field "ContentMD5" .contentMd5 Codec.string
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for PutBucketPolicyRequest. -}
putBucketPolicyRequestCodec : Codec PutBucketPolicyRequest
putBucketPolicyRequestCodec =
    Codec.object PutBucketPolicyRequest
        |> Codec.field "Policy" .policy Codec.string
        |> Codec.field "ContentMD5" .contentMd5 Codec.string
        |> Codec.field "ConfirmRemoveSelfBucketAccess" .confirmRemoveSelfBucketAccess Codec.bool
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for PutBucketNotificationRequest. -}
putBucketNotificationRequestCodec : Codec PutBucketNotificationRequest
putBucketNotificationRequestCodec =
    Codec.object PutBucketNotificationRequest
        |> Codec.field "NotificationConfiguration" .notificationConfiguration notificationConfigurationDeprecatedCodec
        |> Codec.field "ContentMD5" .contentMd5 Codec.string
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for PutBucketNotificationConfigurationRequest. -}
putBucketNotificationConfigurationRequestCodec : Codec PutBucketNotificationConfigurationRequest
putBucketNotificationConfigurationRequestCodec =
    Codec.object PutBucketNotificationConfigurationRequest
        |> Codec.field "NotificationConfiguration" .notificationConfiguration notificationConfigurationCodec
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for PutBucketMetricsConfigurationRequest. -}
putBucketMetricsConfigurationRequestCodec : Codec PutBucketMetricsConfigurationRequest
putBucketMetricsConfigurationRequestCodec =
    Codec.object PutBucketMetricsConfigurationRequest
        |> Codec.field "MetricsConfiguration" .metricsConfiguration metricsConfigurationCodec
        |> Codec.field "Id" .id Codec.string
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for PutBucketLoggingRequest. -}
putBucketLoggingRequestCodec : Codec PutBucketLoggingRequest
putBucketLoggingRequestCodec =
    Codec.object PutBucketLoggingRequest
        |> Codec.field "ContentMD5" .contentMd5 Codec.string
        |> Codec.field "BucketLoggingStatus" .bucketLoggingStatus bucketLoggingStatusCodec
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for PutBucketLifecycleRequest. -}
putBucketLifecycleRequestCodec : Codec PutBucketLifecycleRequest
putBucketLifecycleRequestCodec =
    Codec.object PutBucketLifecycleRequest
        |> Codec.field "LifecycleConfiguration" .lifecycleConfiguration lifecycleConfigurationCodec
        |> Codec.field "ContentMD5" .contentMd5 Codec.string
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for PutBucketLifecycleConfigurationRequest. -}
putBucketLifecycleConfigurationRequestCodec : Codec PutBucketLifecycleConfigurationRequest
putBucketLifecycleConfigurationRequestCodec =
    Codec.object PutBucketLifecycleConfigurationRequest
        |> Codec.field "LifecycleConfiguration" .lifecycleConfiguration bucketLifecycleConfigurationCodec
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for PutBucketInventoryConfigurationRequest. -}
putBucketInventoryConfigurationRequestCodec : Codec PutBucketInventoryConfigurationRequest
putBucketInventoryConfigurationRequestCodec =
    Codec.object PutBucketInventoryConfigurationRequest
        |> Codec.field "InventoryConfiguration" .inventoryConfiguration inventoryConfigurationCodec
        |> Codec.field "Id" .id Codec.string
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for PutBucketEncryptionRequest. -}
putBucketEncryptionRequestCodec : Codec PutBucketEncryptionRequest
putBucketEncryptionRequestCodec =
    Codec.object PutBucketEncryptionRequest
        |> Codec.field
            "ServerSideEncryptionConfiguration"
            .serverSideEncryptionConfiguration
            serverSideEncryptionConfigurationCodec
        |> Codec.field "ContentMD5" .contentMd5 Codec.string
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for PutBucketCorsRequest. -}
putBucketCorsRequestCodec : Codec PutBucketCorsRequest
putBucketCorsRequestCodec =
    Codec.object PutBucketCorsRequest
        |> Codec.field "ContentMD5" .contentMd5 Codec.string
        |> Codec.field "CORSConfiguration" .corsconfiguration corsconfigurationCodec
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for PutBucketAnalyticsConfigurationRequest. -}
putBucketAnalyticsConfigurationRequestCodec : Codec PutBucketAnalyticsConfigurationRequest
putBucketAnalyticsConfigurationRequestCodec =
    Codec.object PutBucketAnalyticsConfigurationRequest
        |> Codec.field "Id" .id Codec.string
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.field "AnalyticsConfiguration" .analyticsConfiguration analyticsConfigurationCodec
        |> Codec.buildObject


{-| Codec for PutBucketAclRequest. -}
putBucketAclRequestCodec : Codec PutBucketAclRequest
putBucketAclRequestCodec =
    Codec.object PutBucketAclRequest
        |> Codec.field "GrantWriteACP" .grantWriteAcp Codec.string
        |> Codec.field "GrantWrite" .grantWrite Codec.string
        |> Codec.field "GrantReadACP" .grantReadAcp Codec.string
        |> Codec.field "GrantRead" .grantRead Codec.string
        |> Codec.field "GrantFullControl" .grantFullControl Codec.string
        |> Codec.field "ContentMD5" .contentMd5 Codec.string
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.field "AccessControlPolicy" .accessControlPolicy accessControlPolicyCodec
        |> Codec.field "ACL" .acl bucketCannedAclcodec
        |> Codec.buildObject


{-| Codec for PutBucketAccelerateConfigurationRequest. -}
putBucketAccelerateConfigurationRequestCodec : Codec PutBucketAccelerateConfigurationRequest
putBucketAccelerateConfigurationRequestCodec =
    Codec.object PutBucketAccelerateConfigurationRequest
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.field "AccelerateConfiguration" .accelerateConfiguration accelerateConfigurationCodec
        |> Codec.buildObject


{-| Codec for PublicAccessBlockConfiguration. -}
publicAccessBlockConfigurationCodec : Codec PublicAccessBlockConfiguration
publicAccessBlockConfigurationCodec =
    Codec.object PublicAccessBlockConfiguration
        |> Codec.field "RestrictPublicBuckets" .restrictPublicBuckets Codec.bool
        |> Codec.field "IgnorePublicAcls" .ignorePublicAcls Codec.bool
        |> Codec.field "BlockPublicPolicy" .blockPublicPolicy Codec.bool
        |> Codec.field "BlockPublicAcls" .blockPublicAcls Codec.bool
        |> Codec.buildObject


{-| Codec for Protocol. -}
protocolCodec : Codec Protocol
protocolCodec =
    Codec.build (Enum.encoder protocol) (Enum.decoder protocol)


{-| Codec for ProgressEvent. -}
progressEventCodec : Codec ProgressEvent
progressEventCodec =
    Codec.object ProgressEvent |> Codec.field "Details" .details progressCodec |> Codec.buildObject


{-| Codec for Progress. -}
progressCodec : Codec Progress
progressCodec =
    Codec.object Progress
        |> Codec.field "BytesScanned" .bytesScanned Codec.int
        |> Codec.field "BytesReturned" .bytesReturned Codec.int
        |> Codec.field "BytesProcessed" .bytesProcessed Codec.int
        |> Codec.buildObject


{-| Codec for Priority. -}
priorityCodec : Codec Priority
priorityCodec =
    Codec.int


{-| Codec for Prefix. -}
prefixCodec : Codec Prefix
prefixCodec =
    Codec.string


{-| Codec for PolicyStatus. -}
policyStatusCodec : Codec PolicyStatus
policyStatusCodec =
    Codec.object PolicyStatus |> Codec.field "IsPublic" .isPublic Codec.bool |> Codec.buildObject


{-| Codec for Policy. -}
policyCodec : Codec Policy
policyCodec =
    Codec.string


{-| Codec for Permission. -}
permissionCodec : Codec Permission
permissionCodec =
    Codec.build (Enum.encoder permission) (Enum.decoder permission)


{-| Codec for Payer. -}
payerCodec : Codec Payer
payerCodec =
    Codec.build (Enum.encoder payer) (Enum.decoder payer)


{-| Codec for PartsCount. -}
partsCountCodec : Codec PartsCount
partsCountCodec =
    Codec.int


{-| Codec for Parts. -}
partsCodec : Codec Parts
partsCodec =
    Codec.list partCodec


{-| Codec for PartNumberMarker. -}
partNumberMarkerCodec : Codec PartNumberMarker
partNumberMarkerCodec =
    Codec.int


{-| Codec for PartNumber. -}
partNumberCodec : Codec PartNumber
partNumberCodec =
    Codec.int


{-| Codec for Part. -}
partCodec : Codec Part
partCodec =
    Codec.object Part
        |> Codec.field "Size" .size Codec.int
        |> Codec.field "PartNumber" .partNumber Codec.int
        |> Codec.field "LastModified" .lastModified lastModifiedCodec
        |> Codec.field "ETag" .etag Codec.string
        |> Codec.buildObject


{-| Codec for ParquetInput. -}
parquetInputCodec : Codec ParquetInput
parquetInputCodec =
    Codec.object ParquetInput |> Codec.buildObject


{-| Codec for OwnerOverride. -}
ownerOverrideCodec : Codec OwnerOverride
ownerOverrideCodec =
    Codec.build (Enum.encoder ownerOverride) (Enum.decoder ownerOverride)


{-| Codec for Owner. -}
ownerCodec : Codec Owner
ownerCodec =
    Codec.object Owner
        |> Codec.field "ID" .id Codec.string
        |> Codec.field "DisplayName" .displayName Codec.string
        |> Codec.buildObject


{-| Codec for OutputSerialization. -}
outputSerializationCodec : Codec OutputSerialization
outputSerializationCodec =
    Codec.object OutputSerialization
        |> Codec.field "JSON" .json jsonoutputCodec
        |> Codec.field "CSV" .csv csvoutputCodec
        |> Codec.buildObject


{-| Codec for OutputLocation. -}
outputLocationCodec : Codec OutputLocation
outputLocationCodec =
    Codec.object OutputLocation |> Codec.field "S3" .s3 s3LocationCodec |> Codec.buildObject


{-| Codec for ObjectVersionStorageClass. -}
objectVersionStorageClassCodec : Codec ObjectVersionStorageClass
objectVersionStorageClassCodec =
    Codec.build (Enum.encoder objectVersionStorageClass) (Enum.decoder objectVersionStorageClass)


{-| Codec for ObjectVersionList. -}
objectVersionListCodec : Codec ObjectVersionList
objectVersionListCodec =
    Codec.list objectVersionCodec


{-| Codec for ObjectVersionId. -}
objectVersionIdCodec : Codec ObjectVersionId
objectVersionIdCodec =
    Codec.string


{-| Codec for ObjectVersion. -}
objectVersionCodec : Codec ObjectVersion
objectVersionCodec =
    Codec.object ObjectVersion
        |> Codec.field "VersionId" .versionId Codec.string
        |> Codec.field "StorageClass" .storageClass objectVersionStorageClassCodec
        |> Codec.field "Size" .size Codec.int
        |> Codec.field "Owner" .owner ownerCodec
        |> Codec.field "LastModified" .lastModified lastModifiedCodec
        |> Codec.field "Key" .key objectKeyCodec
        |> Codec.field "IsLatest" .isLatest Codec.bool
        |> Codec.field "ETag" .etag Codec.string
        |> Codec.buildObject


{-| Codec for ObjectStorageClass. -}
objectStorageClassCodec : Codec ObjectStorageClass
objectStorageClassCodec =
    Codec.build (Enum.encoder objectStorageClass) (Enum.decoder objectStorageClass)


{-| Codec for ObjectLockToken. -}
objectLockTokenCodec : Codec ObjectLockToken
objectLockTokenCodec =
    Codec.string


{-| Codec for ObjectLockRule. -}
objectLockRuleCodec : Codec ObjectLockRule
objectLockRuleCodec =
    Codec.object ObjectLockRule
        |> Codec.field "DefaultRetention" .defaultRetention defaultRetentionCodec
        |> Codec.buildObject


{-| Codec for ObjectLockRetentionMode. -}
objectLockRetentionModeCodec : Codec ObjectLockRetentionMode
objectLockRetentionModeCodec =
    Codec.build (Enum.encoder objectLockRetentionMode) (Enum.decoder objectLockRetentionMode)


{-| Codec for ObjectLockRetention. -}
objectLockRetentionCodec : Codec ObjectLockRetention
objectLockRetentionCodec =
    Codec.object ObjectLockRetention
        |> Codec.field "RetainUntilDate" .retainUntilDate dateCodec
        |> Codec.field "Mode" .mode objectLockRetentionModeCodec
        |> Codec.buildObject


{-| Codec for ObjectLockRetainUntilDate. -}
objectLockRetainUntilDateCodec : Codec ObjectLockRetainUntilDate
objectLockRetainUntilDateCodec =
    Codec.string


{-| Codec for ObjectLockMode. -}
objectLockModeCodec : Codec ObjectLockMode
objectLockModeCodec =
    Codec.build (Enum.encoder objectLockMode) (Enum.decoder objectLockMode)


{-| Codec for ObjectLockLegalHoldStatus. -}
objectLockLegalHoldStatusCodec : Codec ObjectLockLegalHoldStatus
objectLockLegalHoldStatusCodec =
    Codec.build (Enum.encoder objectLockLegalHoldStatus) (Enum.decoder objectLockLegalHoldStatus)


{-| Codec for ObjectLockLegalHold. -}
objectLockLegalHoldCodec : Codec ObjectLockLegalHold
objectLockLegalHoldCodec =
    Codec.object ObjectLockLegalHold |> Codec.field "Status" .status objectLockLegalHoldStatusCodec |> Codec.buildObject


{-| Codec for ObjectLockEnabledForBucket. -}
objectLockEnabledForBucketCodec : Codec ObjectLockEnabledForBucket
objectLockEnabledForBucketCodec =
    Codec.bool


{-| Codec for ObjectLockEnabled. -}
objectLockEnabledCodec : Codec ObjectLockEnabled
objectLockEnabledCodec =
    Codec.build (Enum.encoder objectLockEnabled) (Enum.decoder objectLockEnabled)


{-| Codec for ObjectLockConfiguration. -}
objectLockConfigurationCodec : Codec ObjectLockConfiguration
objectLockConfigurationCodec =
    Codec.object ObjectLockConfiguration
        |> Codec.field "Rule" .rule objectLockRuleCodec
        |> Codec.field "ObjectLockEnabled" .objectLockEnabled objectLockEnabledCodec
        |> Codec.buildObject


{-| Codec for ObjectList. -}
objectListCodec : Codec ObjectList
objectListCodec =
    Codec.list objectCodec


{-| Codec for ObjectKey. -}
objectKeyCodec : Codec ObjectKey
objectKeyCodec =
    Codec.build (Refined.encoder objectKey) (Refined.decoder objectKey)


{-| Codec for ObjectIdentifierList. -}
objectIdentifierListCodec : Codec ObjectIdentifierList
objectIdentifierListCodec =
    Codec.list objectIdentifierCodec


{-| Codec for ObjectIdentifier. -}
objectIdentifierCodec : Codec ObjectIdentifier
objectIdentifierCodec =
    Codec.object ObjectIdentifier
        |> Codec.field "VersionId" .versionId Codec.string
        |> Codec.field "Key" .key objectKeyCodec
        |> Codec.buildObject


{-| Codec for ObjectCannedAcl. -}
objectCannedAclcodec : Codec ObjectCannedAcl
objectCannedAclcodec =
    Codec.build (Enum.encoder objectCannedAcl) (Enum.decoder objectCannedAcl)


{-| Codec for Object. -}
objectCodec : Codec Object
objectCodec =
    Codec.object Object
        |> Codec.field "StorageClass" .storageClass objectStorageClassCodec
        |> Codec.field "Size" .size Codec.int
        |> Codec.field "Owner" .owner ownerCodec
        |> Codec.field "LastModified" .lastModified lastModifiedCodec
        |> Codec.field "Key" .key objectKeyCodec
        |> Codec.field "ETag" .etag Codec.string
        |> Codec.buildObject


{-| Codec for NotificationId. -}
notificationIdCodec : Codec NotificationId
notificationIdCodec =
    Codec.string


{-| Codec for NotificationConfigurationFilter. -}
notificationConfigurationFilterCodec : Codec NotificationConfigurationFilter
notificationConfigurationFilterCodec =
    Codec.object NotificationConfigurationFilter |> Codec.field "Key" .key s3KeyFilterCodec |> Codec.buildObject


{-| Codec for NotificationConfigurationDeprecated. -}
notificationConfigurationDeprecatedCodec : Codec NotificationConfigurationDeprecated
notificationConfigurationDeprecatedCodec =
    Codec.object NotificationConfigurationDeprecated
        |> Codec.field "TopicConfiguration" .topicConfiguration topicConfigurationDeprecatedCodec
        |> Codec.field "QueueConfiguration" .queueConfiguration queueConfigurationDeprecatedCodec
        |> Codec.field "CloudFunctionConfiguration" .cloudFunctionConfiguration cloudFunctionConfigurationCodec
        |> Codec.buildObject


{-| Codec for NotificationConfiguration. -}
notificationConfigurationCodec : Codec NotificationConfiguration
notificationConfigurationCodec =
    Codec.object NotificationConfiguration
        |> Codec.field "TopicConfigurations" .topicConfigurations topicConfigurationListCodec
        |> Codec.field "QueueConfigurations" .queueConfigurations queueConfigurationListCodec
        |> Codec.field "LambdaFunctionConfigurations" .lambdaFunctionConfigurations lambdaFunctionConfigurationListCodec
        |> Codec.buildObject


{-| Codec for NoncurrentVersionTransitionList. -}
noncurrentVersionTransitionListCodec : Codec NoncurrentVersionTransitionList
noncurrentVersionTransitionListCodec =
    Codec.list noncurrentVersionTransitionCodec


{-| Codec for NoncurrentVersionTransition. -}
noncurrentVersionTransitionCodec : Codec NoncurrentVersionTransition
noncurrentVersionTransitionCodec =
    Codec.object NoncurrentVersionTransition
        |> Codec.field "StorageClass" .storageClass transitionStorageClassCodec
        |> Codec.field "NoncurrentDays" .noncurrentDays Codec.int
        |> Codec.buildObject


{-| Codec for NoncurrentVersionExpiration. -}
noncurrentVersionExpirationCodec : Codec NoncurrentVersionExpiration
noncurrentVersionExpirationCodec =
    Codec.object NoncurrentVersionExpiration
        |> Codec.field "NoncurrentDays" .noncurrentDays Codec.int
        |> Codec.buildObject


{-| Codec for NextVersionIdMarker. -}
nextVersionIdMarkerCodec : Codec NextVersionIdMarker
nextVersionIdMarkerCodec =
    Codec.string


{-| Codec for NextUploadIdMarker. -}
nextUploadIdMarkerCodec : Codec NextUploadIdMarker
nextUploadIdMarkerCodec =
    Codec.string


{-| Codec for NextToken. -}
nextTokenCodec : Codec NextToken
nextTokenCodec =
    Codec.string


{-| Codec for NextPartNumberMarker. -}
nextPartNumberMarkerCodec : Codec NextPartNumberMarker
nextPartNumberMarkerCodec =
    Codec.int


{-| Codec for NextMarker. -}
nextMarkerCodec : Codec NextMarker
nextMarkerCodec =
    Codec.string


{-| Codec for NextKeyMarker. -}
nextKeyMarkerCodec : Codec NextKeyMarker
nextKeyMarkerCodec =
    Codec.string


{-| Codec for MultipartUploadList. -}
multipartUploadListCodec : Codec MultipartUploadList
multipartUploadListCodec =
    Codec.list multipartUploadCodec


{-| Codec for MultipartUploadId. -}
multipartUploadIdCodec : Codec MultipartUploadId
multipartUploadIdCodec =
    Codec.string


{-| Codec for MultipartUpload. -}
multipartUploadCodec : Codec MultipartUpload
multipartUploadCodec =
    Codec.object MultipartUpload
        |> Codec.field "UploadId" .uploadId Codec.string
        |> Codec.field "StorageClass" .storageClass storageClassCodec
        |> Codec.field "Owner" .owner ownerCodec
        |> Codec.field "Key" .key objectKeyCodec
        |> Codec.field "Initiator" .initiator initiatorCodec
        |> Codec.field "Initiated" .initiated initiatedCodec
        |> Codec.buildObject


{-| Codec for MissingMeta. -}
missingMetaCodec : Codec MissingMeta
missingMetaCodec =
    Codec.int


{-| Codec for MetricsId. -}
metricsIdCodec : Codec MetricsId
metricsIdCodec =
    Codec.string


{-| Codec for MetricsFilter. -}
metricsFilterCodec : Codec MetricsFilter
metricsFilterCodec =
    Codec.object MetricsFilter
        |> Codec.field "Tag" .tag tagCodec
        |> Codec.field "Prefix" .prefix Codec.string
        |> Codec.field "And" .and metricsAndOperatorCodec
        |> Codec.buildObject


{-| Codec for MetricsConfigurationList. -}
metricsConfigurationListCodec : Codec MetricsConfigurationList
metricsConfigurationListCodec =
    Codec.list metricsConfigurationCodec


{-| Codec for MetricsConfiguration. -}
metricsConfigurationCodec : Codec MetricsConfiguration
metricsConfigurationCodec =
    Codec.object MetricsConfiguration
        |> Codec.field "Id" .id Codec.string
        |> Codec.field "Filter" .filter metricsFilterCodec
        |> Codec.buildObject


{-| Codec for MetricsAndOperator. -}
metricsAndOperatorCodec : Codec MetricsAndOperator
metricsAndOperatorCodec =
    Codec.object MetricsAndOperator
        |> Codec.field "Tags" .tags tagSetCodec
        |> Codec.field "Prefix" .prefix Codec.string
        |> Codec.buildObject


{-| Codec for MetadataValue. -}
metadataValueCodec : Codec MetadataValue
metadataValueCodec =
    Codec.string


{-| Codec for MetadataKey. -}
metadataKeyCodec : Codec MetadataKey
metadataKeyCodec =
    Codec.string


{-| Codec for MetadataEntry. -}
metadataEntryCodec : Codec MetadataEntry
metadataEntryCodec =
    Codec.object MetadataEntry
        |> Codec.field "Value" .value Codec.string
        |> Codec.field "Name" .name Codec.string
        |> Codec.buildObject


{-| Codec for MetadataDirective. -}
metadataDirectiveCodec : Codec MetadataDirective
metadataDirectiveCodec =
    Codec.build (Enum.encoder metadataDirective) (Enum.decoder metadataDirective)


{-| Codec for Metadata. -}
metadataCodec : Codec Metadata
metadataCodec =
    Codec.dict Codec.string


{-| Codec for Message. -}
messageCodec : Codec Message
messageCodec =
    Codec.string


{-| Codec for MaxUploads. -}
maxUploadsCodec : Codec MaxUploads
maxUploadsCodec =
    Codec.int


{-| Codec for MaxParts. -}
maxPartsCodec : Codec MaxParts
maxPartsCodec =
    Codec.int


{-| Codec for MaxKeys. -}
maxKeysCodec : Codec MaxKeys
maxKeysCodec =
    Codec.int


{-| Codec for MaxAgeSeconds. -}
maxAgeSecondsCodec : Codec MaxAgeSeconds
maxAgeSecondsCodec =
    Codec.int


{-| Codec for Marker. -}
markerCodec : Codec Marker
markerCodec =
    Codec.string


{-| Codec for MfadeleteStatus. -}
mfadeleteStatusCodec : Codec MfadeleteStatus
mfadeleteStatusCodec =
    Codec.build (Enum.encoder mfadeleteStatus) (Enum.decoder mfadeleteStatus)


{-| Codec for Mfadelete. -}
mfadeleteCodec : Codec Mfadelete
mfadeleteCodec =
    Codec.build (Enum.encoder mfadelete) (Enum.decoder mfadelete)


{-| Codec for Mfa. -}
mfacodec : Codec Mfa
mfacodec =
    Codec.string


{-| Codec for LoggingEnabled. -}
loggingEnabledCodec : Codec LoggingEnabled
loggingEnabledCodec =
    Codec.object LoggingEnabled
        |> Codec.field "TargetPrefix" .targetPrefix Codec.string
        |> Codec.field "TargetGrants" .targetGrants targetGrantsCodec
        |> Codec.field "TargetBucket" .targetBucket Codec.string
        |> Codec.buildObject


{-| Codec for LocationPrefix. -}
locationPrefixCodec : Codec LocationPrefix
locationPrefixCodec =
    Codec.string


{-| Codec for Location. -}
locationCodec : Codec Location
locationCodec =
    Codec.string


{-| Codec for ListPartsRequest. -}
listPartsRequestCodec : Codec ListPartsRequest
listPartsRequestCodec =
    Codec.object ListPartsRequest
        |> Codec.field "UploadId" .uploadId Codec.string
        |> Codec.field "RequestPayer" .requestPayer requestPayerCodec
        |> Codec.field "PartNumberMarker" .partNumberMarker Codec.int
        |> Codec.field "MaxParts" .maxParts Codec.int
        |> Codec.field "Key" .key objectKeyCodec
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for ListPartsOutput. -}
listPartsOutputCodec : Codec ListPartsOutput
listPartsOutputCodec =
    Codec.object ListPartsOutput
        |> Codec.field "UploadId" .uploadId Codec.string
        |> Codec.field "StorageClass" .storageClass storageClassCodec
        |> Codec.field "RequestCharged" .requestCharged requestChargedCodec
        |> Codec.field "Parts" .parts partsCodec
        |> Codec.field "PartNumberMarker" .partNumberMarker Codec.int
        |> Codec.field "Owner" .owner ownerCodec
        |> Codec.field "NextPartNumberMarker" .nextPartNumberMarker Codec.int
        |> Codec.field "MaxParts" .maxParts Codec.int
        |> Codec.field "Key" .key objectKeyCodec
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.field "Initiator" .initiator initiatorCodec
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.field "AbortRuleId" .abortRuleId Codec.string
        |> Codec.field "AbortDate" .abortDate abortDateCodec
        |> Codec.buildObject


{-| Codec for ListObjectsV2Request. -}
listObjectsV2RequestCodec : Codec ListObjectsV2Request
listObjectsV2RequestCodec =
    Codec.object ListObjectsV2Request
        |> Codec.field "StartAfter" .startAfter Codec.string
        |> Codec.field "RequestPayer" .requestPayer requestPayerCodec
        |> Codec.field "Prefix" .prefix Codec.string
        |> Codec.field "MaxKeys" .maxKeys Codec.int
        |> Codec.field "FetchOwner" .fetchOwner Codec.bool
        |> Codec.field "EncodingType" .encodingType encodingTypeCodec
        |> Codec.field "Delimiter" .delimiter Codec.string
        |> Codec.field "ContinuationToken" .continuationToken Codec.string
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for ListObjectsV2Output. -}
listObjectsV2OutputCodec : Codec ListObjectsV2Output
listObjectsV2OutputCodec =
    Codec.object ListObjectsV2Output
        |> Codec.field "StartAfter" .startAfter Codec.string
        |> Codec.field "Prefix" .prefix Codec.string
        |> Codec.field "NextContinuationToken" .nextContinuationToken Codec.string
        |> Codec.field "Name" .name Codec.string
        |> Codec.field "MaxKeys" .maxKeys Codec.int
        |> Codec.field "KeyCount" .keyCount Codec.int
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.field "EncodingType" .encodingType encodingTypeCodec
        |> Codec.field "Delimiter" .delimiter Codec.string
        |> Codec.field "ContinuationToken" .continuationToken Codec.string
        |> Codec.field "Contents" .contents objectListCodec
        |> Codec.field "CommonPrefixes" .commonPrefixes commonPrefixListCodec
        |> Codec.buildObject


{-| Codec for ListObjectsRequest. -}
listObjectsRequestCodec : Codec ListObjectsRequest
listObjectsRequestCodec =
    Codec.object ListObjectsRequest
        |> Codec.field "RequestPayer" .requestPayer requestPayerCodec
        |> Codec.field "Prefix" .prefix Codec.string
        |> Codec.field "MaxKeys" .maxKeys Codec.int
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "EncodingType" .encodingType encodingTypeCodec
        |> Codec.field "Delimiter" .delimiter Codec.string
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for ListObjectsOutput. -}
listObjectsOutputCodec : Codec ListObjectsOutput
listObjectsOutputCodec =
    Codec.object ListObjectsOutput
        |> Codec.field "Prefix" .prefix Codec.string
        |> Codec.field "NextMarker" .nextMarker Codec.string
        |> Codec.field "Name" .name Codec.string
        |> Codec.field "MaxKeys" .maxKeys Codec.int
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.field "EncodingType" .encodingType encodingTypeCodec
        |> Codec.field "Delimiter" .delimiter Codec.string
        |> Codec.field "Contents" .contents objectListCodec
        |> Codec.field "CommonPrefixes" .commonPrefixes commonPrefixListCodec
        |> Codec.buildObject


{-| Codec for ListObjectVersionsRequest. -}
listObjectVersionsRequestCodec : Codec ListObjectVersionsRequest
listObjectVersionsRequestCodec =
    Codec.object ListObjectVersionsRequest
        |> Codec.field "VersionIdMarker" .versionIdMarker Codec.string
        |> Codec.field "Prefix" .prefix Codec.string
        |> Codec.field "MaxKeys" .maxKeys Codec.int
        |> Codec.field "KeyMarker" .keyMarker Codec.string
        |> Codec.field "EncodingType" .encodingType encodingTypeCodec
        |> Codec.field "Delimiter" .delimiter Codec.string
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for ListObjectVersionsOutput. -}
listObjectVersionsOutputCodec : Codec ListObjectVersionsOutput
listObjectVersionsOutputCodec =
    Codec.object ListObjectVersionsOutput
        |> Codec.field "Versions" .versions objectVersionListCodec
        |> Codec.field "VersionIdMarker" .versionIdMarker Codec.string
        |> Codec.field "Prefix" .prefix Codec.string
        |> Codec.field "NextVersionIdMarker" .nextVersionIdMarker Codec.string
        |> Codec.field "NextKeyMarker" .nextKeyMarker Codec.string
        |> Codec.field "Name" .name Codec.string
        |> Codec.field "MaxKeys" .maxKeys Codec.int
        |> Codec.field "KeyMarker" .keyMarker Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.field "EncodingType" .encodingType encodingTypeCodec
        |> Codec.field "Delimiter" .delimiter Codec.string
        |> Codec.field "DeleteMarkers" .deleteMarkers deleteMarkersCodec
        |> Codec.field "CommonPrefixes" .commonPrefixes commonPrefixListCodec
        |> Codec.buildObject


{-| Codec for ListMultipartUploadsRequest. -}
listMultipartUploadsRequestCodec : Codec ListMultipartUploadsRequest
listMultipartUploadsRequestCodec =
    Codec.object ListMultipartUploadsRequest
        |> Codec.field "UploadIdMarker" .uploadIdMarker Codec.string
        |> Codec.field "Prefix" .prefix Codec.string
        |> Codec.field "MaxUploads" .maxUploads Codec.int
        |> Codec.field "KeyMarker" .keyMarker Codec.string
        |> Codec.field "EncodingType" .encodingType encodingTypeCodec
        |> Codec.field "Delimiter" .delimiter Codec.string
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for ListMultipartUploadsOutput. -}
listMultipartUploadsOutputCodec : Codec ListMultipartUploadsOutput
listMultipartUploadsOutputCodec =
    Codec.object ListMultipartUploadsOutput
        |> Codec.field "Uploads" .uploads multipartUploadListCodec
        |> Codec.field "UploadIdMarker" .uploadIdMarker Codec.string
        |> Codec.field "Prefix" .prefix Codec.string
        |> Codec.field "NextUploadIdMarker" .nextUploadIdMarker Codec.string
        |> Codec.field "NextKeyMarker" .nextKeyMarker Codec.string
        |> Codec.field "MaxUploads" .maxUploads Codec.int
        |> Codec.field "KeyMarker" .keyMarker Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.field "EncodingType" .encodingType encodingTypeCodec
        |> Codec.field "Delimiter" .delimiter Codec.string
        |> Codec.field "CommonPrefixes" .commonPrefixes commonPrefixListCodec
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for ListBucketsOutput. -}
listBucketsOutputCodec : Codec ListBucketsOutput
listBucketsOutputCodec =
    Codec.object ListBucketsOutput
        |> Codec.field "Owner" .owner ownerCodec
        |> Codec.field "Buckets" .buckets bucketsCodec
        |> Codec.buildObject


{-| Codec for ListBucketMetricsConfigurationsRequest. -}
listBucketMetricsConfigurationsRequestCodec : Codec ListBucketMetricsConfigurationsRequest
listBucketMetricsConfigurationsRequestCodec =
    Codec.object ListBucketMetricsConfigurationsRequest
        |> Codec.field "ContinuationToken" .continuationToken Codec.string
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for ListBucketMetricsConfigurationsOutput. -}
listBucketMetricsConfigurationsOutputCodec : Codec ListBucketMetricsConfigurationsOutput
listBucketMetricsConfigurationsOutputCodec =
    Codec.object ListBucketMetricsConfigurationsOutput
        |> Codec.field "NextContinuationToken" .nextContinuationToken Codec.string
        |> Codec.field "MetricsConfigurationList" .metricsConfigurationList metricsConfigurationListCodec
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.field "ContinuationToken" .continuationToken Codec.string
        |> Codec.buildObject


{-| Codec for ListBucketInventoryConfigurationsRequest. -}
listBucketInventoryConfigurationsRequestCodec : Codec ListBucketInventoryConfigurationsRequest
listBucketInventoryConfigurationsRequestCodec =
    Codec.object ListBucketInventoryConfigurationsRequest
        |> Codec.field "ContinuationToken" .continuationToken Codec.string
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for ListBucketInventoryConfigurationsOutput. -}
listBucketInventoryConfigurationsOutputCodec : Codec ListBucketInventoryConfigurationsOutput
listBucketInventoryConfigurationsOutputCodec =
    Codec.object ListBucketInventoryConfigurationsOutput
        |> Codec.field "NextContinuationToken" .nextContinuationToken Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.field "InventoryConfigurationList" .inventoryConfigurationList inventoryConfigurationListCodec
        |> Codec.field "ContinuationToken" .continuationToken Codec.string
        |> Codec.buildObject


{-| Codec for ListBucketAnalyticsConfigurationsRequest. -}
listBucketAnalyticsConfigurationsRequestCodec : Codec ListBucketAnalyticsConfigurationsRequest
listBucketAnalyticsConfigurationsRequestCodec =
    Codec.object ListBucketAnalyticsConfigurationsRequest
        |> Codec.field "ContinuationToken" .continuationToken Codec.string
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for ListBucketAnalyticsConfigurationsOutput. -}
listBucketAnalyticsConfigurationsOutputCodec : Codec ListBucketAnalyticsConfigurationsOutput
listBucketAnalyticsConfigurationsOutputCodec =
    Codec.object ListBucketAnalyticsConfigurationsOutput
        |> Codec.field "NextContinuationToken" .nextContinuationToken Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.field "ContinuationToken" .continuationToken Codec.string
        |> Codec.field "AnalyticsConfigurationList" .analyticsConfigurationList analyticsConfigurationListCodec
        |> Codec.buildObject


{-| Codec for LifecycleRules. -}
lifecycleRulesCodec : Codec LifecycleRules
lifecycleRulesCodec =
    Codec.list lifecycleRuleCodec


{-| Codec for LifecycleRuleFilter. -}
lifecycleRuleFilterCodec : Codec LifecycleRuleFilter
lifecycleRuleFilterCodec =
    Codec.object LifecycleRuleFilter
        |> Codec.field "Tag" .tag tagCodec
        |> Codec.field "Prefix" .prefix Codec.string
        |> Codec.field "And" .and lifecycleRuleAndOperatorCodec
        |> Codec.buildObject


{-| Codec for LifecycleRuleAndOperator. -}
lifecycleRuleAndOperatorCodec : Codec LifecycleRuleAndOperator
lifecycleRuleAndOperatorCodec =
    Codec.object LifecycleRuleAndOperator
        |> Codec.field "Tags" .tags tagSetCodec
        |> Codec.field "Prefix" .prefix Codec.string
        |> Codec.buildObject


{-| Codec for LifecycleRule. -}
lifecycleRuleCodec : Codec LifecycleRule
lifecycleRuleCodec =
    Codec.object LifecycleRule
        |> Codec.field "Transitions" .transitions transitionListCodec
        |> Codec.field "Status" .status expirationStatusCodec
        |> Codec.field "Prefix" .prefix Codec.string
        |> Codec.field "NoncurrentVersionTransitions" .noncurrentVersionTransitions noncurrentVersionTransitionListCodec
        |> Codec.field "NoncurrentVersionExpiration" .noncurrentVersionExpiration noncurrentVersionExpirationCodec
        |> Codec.field "ID" .id Codec.string
        |> Codec.field "Filter" .filter lifecycleRuleFilterCodec
        |> Codec.field "Expiration" .expiration lifecycleExpirationCodec
        |> Codec.field
            "AbortIncompleteMultipartUpload"
            .abortIncompleteMultipartUpload
            abortIncompleteMultipartUploadCodec
        |> Codec.buildObject


{-| Codec for LifecycleExpiration. -}
lifecycleExpirationCodec : Codec LifecycleExpiration
lifecycleExpirationCodec =
    Codec.object LifecycleExpiration
        |> Codec.field "ExpiredObjectDeleteMarker" .expiredObjectDeleteMarker Codec.bool
        |> Codec.field "Days" .days Codec.int
        |> Codec.field "Date" .date dateCodec
        |> Codec.buildObject


{-| Codec for LifecycleConfiguration. -}
lifecycleConfigurationCodec : Codec LifecycleConfiguration
lifecycleConfigurationCodec =
    Codec.object LifecycleConfiguration |> Codec.field "Rules" .rules rulesCodec |> Codec.buildObject


{-| Codec for LastModified. -}
lastModifiedCodec : Codec LastModified
lastModifiedCodec =
    Codec.string


{-| Codec for LambdaFunctionConfigurationList. -}
lambdaFunctionConfigurationListCodec : Codec LambdaFunctionConfigurationList
lambdaFunctionConfigurationListCodec =
    Codec.list lambdaFunctionConfigurationCodec


{-| Codec for LambdaFunctionConfiguration. -}
lambdaFunctionConfigurationCodec : Codec LambdaFunctionConfiguration
lambdaFunctionConfigurationCodec =
    Codec.object LambdaFunctionConfiguration
        |> Codec.field "LambdaFunctionArn" .lambdaFunctionArn Codec.string
        |> Codec.field "Id" .id Codec.string
        |> Codec.field "Filter" .filter notificationConfigurationFilterCodec
        |> Codec.field "Events" .events eventListCodec
        |> Codec.buildObject


{-| Codec for LambdaFunctionArn. -}
lambdaFunctionArnCodec : Codec LambdaFunctionArn
lambdaFunctionArnCodec =
    Codec.string


{-| Codec for KeyPrefixEquals. -}
keyPrefixEqualsCodec : Codec KeyPrefixEquals
keyPrefixEqualsCodec =
    Codec.string


{-| Codec for KeyMarker. -}
keyMarkerCodec : Codec KeyMarker
keyMarkerCodec =
    Codec.string


{-| Codec for KeyCount. -}
keyCountCodec : Codec KeyCount
keyCountCodec =
    Codec.int


{-| Codec for Kmscontext. -}
kmscontextCodec : Codec Kmscontext
kmscontextCodec =
    Codec.string


{-| Codec for Jsontype. -}
jsontypeCodec : Codec Jsontype
jsontypeCodec =
    Codec.build (Enum.encoder jsontype) (Enum.decoder jsontype)


{-| Codec for Jsonoutput. -}
jsonoutputCodec : Codec Jsonoutput
jsonoutputCodec =
    Codec.object Jsonoutput |> Codec.field "RecordDelimiter" .recordDelimiter Codec.string |> Codec.buildObject


{-| Codec for Jsoninput. -}
jsoninputCodec : Codec Jsoninput
jsoninputCodec =
    Codec.object Jsoninput |> Codec.field "Type" .type_ jsontypeCodec |> Codec.buildObject


{-| Codec for IsTruncated. -}
isTruncatedCodec : Codec IsTruncated
isTruncatedCodec =
    Codec.bool


{-| Codec for IsPublic. -}
isPublicCodec : Codec IsPublic
isPublicCodec =
    Codec.bool


{-| Codec for IsLatest. -}
isLatestCodec : Codec IsLatest
isLatestCodec =
    Codec.bool


{-| Codec for IsEnabled. -}
isEnabledCodec : Codec IsEnabled
isEnabledCodec =
    Codec.bool


{-| Codec for InventorySchedule. -}
inventoryScheduleCodec : Codec InventorySchedule
inventoryScheduleCodec =
    Codec.object InventorySchedule |> Codec.field "Frequency" .frequency inventoryFrequencyCodec |> Codec.buildObject


{-| Codec for InventoryS3BucketDestination. -}
inventoryS3BucketDestinationCodec : Codec InventoryS3BucketDestination
inventoryS3BucketDestinationCodec =
    Codec.object InventoryS3BucketDestination
        |> Codec.field "Prefix" .prefix Codec.string
        |> Codec.field "Format" .format inventoryFormatCodec
        |> Codec.field "Encryption" .encryption inventoryEncryptionCodec
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.field "AccountId" .accountId Codec.string
        |> Codec.buildObject


{-| Codec for InventoryOptionalFields. -}
inventoryOptionalFieldsCodec : Codec InventoryOptionalFields
inventoryOptionalFieldsCodec =
    Codec.list inventoryOptionalFieldCodec


{-| Codec for InventoryOptionalField. -}
inventoryOptionalFieldCodec : Codec InventoryOptionalField
inventoryOptionalFieldCodec =
    Codec.build (Enum.encoder inventoryOptionalField) (Enum.decoder inventoryOptionalField)


{-| Codec for InventoryIncludedObjectVersions. -}
inventoryIncludedObjectVersionsCodec : Codec InventoryIncludedObjectVersions
inventoryIncludedObjectVersionsCodec =
    Codec.build (Enum.encoder inventoryIncludedObjectVersions) (Enum.decoder inventoryIncludedObjectVersions)


{-| Codec for InventoryId. -}
inventoryIdCodec : Codec InventoryId
inventoryIdCodec =
    Codec.string


{-| Codec for InventoryFrequency. -}
inventoryFrequencyCodec : Codec InventoryFrequency
inventoryFrequencyCodec =
    Codec.build (Enum.encoder inventoryFrequency) (Enum.decoder inventoryFrequency)


{-| Codec for InventoryFormat. -}
inventoryFormatCodec : Codec InventoryFormat
inventoryFormatCodec =
    Codec.build (Enum.encoder inventoryFormat) (Enum.decoder inventoryFormat)


{-| Codec for InventoryFilter. -}
inventoryFilterCodec : Codec InventoryFilter
inventoryFilterCodec =
    Codec.object InventoryFilter |> Codec.field "Prefix" .prefix Codec.string |> Codec.buildObject


{-| Codec for InventoryEncryption. -}
inventoryEncryptionCodec : Codec InventoryEncryption
inventoryEncryptionCodec =
    Codec.object InventoryEncryption
        |> Codec.field "SSES3" .sses3 sses3Codec
        |> Codec.field "SSEKMS" .ssekms ssekmscodec
        |> Codec.buildObject


{-| Codec for InventoryDestination. -}
inventoryDestinationCodec : Codec InventoryDestination
inventoryDestinationCodec =
    Codec.object InventoryDestination
        |> Codec.field "S3BucketDestination" .s3BucketDestination inventoryS3BucketDestinationCodec
        |> Codec.buildObject


{-| Codec for InventoryConfigurationList. -}
inventoryConfigurationListCodec : Codec InventoryConfigurationList
inventoryConfigurationListCodec =
    Codec.list inventoryConfigurationCodec


{-| Codec for InventoryConfiguration. -}
inventoryConfigurationCodec : Codec InventoryConfiguration
inventoryConfigurationCodec =
    Codec.object InventoryConfiguration
        |> Codec.field "Schedule" .schedule inventoryScheduleCodec
        |> Codec.field "OptionalFields" .optionalFields inventoryOptionalFieldsCodec
        |> Codec.field "IsEnabled" .isEnabled Codec.bool
        |> Codec.field "IncludedObjectVersions" .includedObjectVersions inventoryIncludedObjectVersionsCodec
        |> Codec.field "Id" .id Codec.string
        |> Codec.field "Filter" .filter inventoryFilterCodec
        |> Codec.field "Destination" .destination inventoryDestinationCodec
        |> Codec.buildObject


{-| Codec for InputSerialization. -}
inputSerializationCodec : Codec InputSerialization
inputSerializationCodec =
    Codec.object InputSerialization
        |> Codec.field "Parquet" .parquet parquetInputCodec
        |> Codec.field "JSON" .json jsoninputCodec
        |> Codec.field "CompressionType" .compressionType compressionTypeCodec
        |> Codec.field "CSV" .csv csvinputCodec
        |> Codec.buildObject


{-| Codec for Initiator. -}
initiatorCodec : Codec Initiator
initiatorCodec =
    Codec.object Initiator
        |> Codec.field "ID" .id Codec.string
        |> Codec.field "DisplayName" .displayName Codec.string
        |> Codec.buildObject


{-| Codec for Initiated. -}
initiatedCodec : Codec Initiated
initiatedCodec =
    Codec.string


{-| Codec for IndexDocument. -}
indexDocumentCodec : Codec IndexDocument
indexDocumentCodec =
    Codec.object IndexDocument |> Codec.field "Suffix" .suffix Codec.string |> Codec.buildObject


{-| Codec for IfUnmodifiedSince. -}
ifUnmodifiedSinceCodec : Codec IfUnmodifiedSince
ifUnmodifiedSinceCodec =
    Codec.string


{-| Codec for IfNoneMatch. -}
ifNoneMatchCodec : Codec IfNoneMatch
ifNoneMatchCodec =
    Codec.string


{-| Codec for IfModifiedSince. -}
ifModifiedSinceCodec : Codec IfModifiedSince
ifModifiedSinceCodec =
    Codec.string


{-| Codec for IfMatch. -}
ifMatchCodec : Codec IfMatch
ifMatchCodec =
    Codec.string


{-| Codec for Id. -}
idcodec : Codec Id
idcodec =
    Codec.string


{-| Codec for HttpRedirectCode. -}
httpRedirectCodeCodec : Codec HttpRedirectCode
httpRedirectCodeCodec =
    Codec.string


{-| Codec for HttpErrorCodeReturnedEquals. -}
httpErrorCodeReturnedEqualsCodec : Codec HttpErrorCodeReturnedEquals
httpErrorCodeReturnedEqualsCodec =
    Codec.string


{-| Codec for HostName. -}
hostNameCodec : Codec HostName
hostNameCodec =
    Codec.string


{-| Codec for HeadObjectRequest. -}
headObjectRequestCodec : Codec HeadObjectRequest
headObjectRequestCodec =
    Codec.object HeadObjectRequest
        |> Codec.field "VersionId" .versionId Codec.string
        |> Codec.field "SSECustomerKeyMD5" .ssecustomerKeyMd5 Codec.string
        |> Codec.field "SSECustomerKey" .ssecustomerKey Codec.string
        |> Codec.field "SSECustomerAlgorithm" .ssecustomerAlgorithm Codec.string
        |> Codec.field "RequestPayer" .requestPayer requestPayerCodec
        |> Codec.field "Range" .range Codec.string
        |> Codec.field "PartNumber" .partNumber Codec.int
        |> Codec.field "Key" .key objectKeyCodec
        |> Codec.field "IfUnmodifiedSince" .ifUnmodifiedSince ifUnmodifiedSinceCodec
        |> Codec.field "IfNoneMatch" .ifNoneMatch Codec.string
        |> Codec.field "IfModifiedSince" .ifModifiedSince ifModifiedSinceCodec
        |> Codec.field "IfMatch" .ifMatch Codec.string
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for HeadObjectOutput. -}
headObjectOutputCodec : Codec HeadObjectOutput
headObjectOutputCodec =
    Codec.object HeadObjectOutput
        |> Codec.field "WebsiteRedirectLocation" .websiteRedirectLocation Codec.string
        |> Codec.field "VersionId" .versionId Codec.string
        |> Codec.field "StorageClass" .storageClass storageClassCodec
        |> Codec.field "ServerSideEncryption" .serverSideEncryption serverSideEncryptionCodec
        |> Codec.field "SSEKMSKeyId" .ssekmskeyId Codec.string
        |> Codec.field "SSECustomerKeyMD5" .ssecustomerKeyMd5 Codec.string
        |> Codec.field "SSECustomerAlgorithm" .ssecustomerAlgorithm Codec.string
        |> Codec.field "Restore" .restore Codec.string
        |> Codec.field "RequestCharged" .requestCharged requestChargedCodec
        |> Codec.field "ReplicationStatus" .replicationStatus replicationStatusCodec
        |> Codec.field "PartsCount" .partsCount Codec.int
        |> Codec.field "ObjectLockRetainUntilDate" .objectLockRetainUntilDate objectLockRetainUntilDateCodec
        |> Codec.field "ObjectLockMode" .objectLockMode objectLockModeCodec
        |> Codec.field "ObjectLockLegalHoldStatus" .objectLockLegalHoldStatus objectLockLegalHoldStatusCodec
        |> Codec.field "MissingMeta" .missingMeta Codec.int
        |> Codec.field "Metadata" .metadata metadataCodec
        |> Codec.field "LastModified" .lastModified lastModifiedCodec
        |> Codec.field "Expires" .expires expiresCodec
        |> Codec.field "Expiration" .expiration Codec.string
        |> Codec.field "ETag" .etag Codec.string
        |> Codec.field "DeleteMarker" .deleteMarker Codec.bool
        |> Codec.field "ContentType" .contentType Codec.string
        |> Codec.field "ContentLength" .contentLength Codec.int
        |> Codec.field "ContentLanguage" .contentLanguage Codec.string
        |> Codec.field "ContentEncoding" .contentEncoding Codec.string
        |> Codec.field "ContentDisposition" .contentDisposition Codec.string
        |> Codec.field "CacheControl" .cacheControl Codec.string
        |> Codec.field "AcceptRanges" .acceptRanges Codec.string
        |> Codec.buildObject


{-| Codec for HeadBucketRequest. -}
headBucketRequestCodec : Codec HeadBucketRequest
headBucketRequestCodec =
    Codec.object HeadBucketRequest |> Codec.field "Bucket" .bucket Codec.string |> Codec.buildObject


{-| Codec for Grants. -}
grantsCodec : Codec Grants
grantsCodec =
    Codec.list grantCodec


{-| Codec for Grantee. -}
granteeCodec : Codec Grantee
granteeCodec =
    Codec.object Grantee
        |> Codec.field "URI" .uri Codec.string
        |> Codec.field "Type" .type_ typeCodec
        |> Codec.field "ID" .id Codec.string
        |> Codec.field "EmailAddress" .emailAddress Codec.string
        |> Codec.field "DisplayName" .displayName Codec.string
        |> Codec.buildObject


{-| Codec for GrantWriteAcp. -}
grantWriteAcpcodec : Codec GrantWriteAcp
grantWriteAcpcodec =
    Codec.string


{-| Codec for GrantWrite. -}
grantWriteCodec : Codec GrantWrite
grantWriteCodec =
    Codec.string


{-| Codec for GrantReadAcp. -}
grantReadAcpcodec : Codec GrantReadAcp
grantReadAcpcodec =
    Codec.string


{-| Codec for GrantRead. -}
grantReadCodec : Codec GrantRead
grantReadCodec =
    Codec.string


{-| Codec for GrantFullControl. -}
grantFullControlCodec : Codec GrantFullControl
grantFullControlCodec =
    Codec.string


{-| Codec for Grant. -}
grantCodec : Codec Grant
grantCodec =
    Codec.object Grant
        |> Codec.field "Permission" .permission permissionCodec
        |> Codec.field "Grantee" .grantee granteeCodec
        |> Codec.buildObject


{-| Codec for GlacierJobParameters. -}
glacierJobParametersCodec : Codec GlacierJobParameters
glacierJobParametersCodec =
    Codec.object GlacierJobParameters |> Codec.field "Tier" .tier tierCodec |> Codec.buildObject


{-| Codec for GetPublicAccessBlockRequest. -}
getPublicAccessBlockRequestCodec : Codec GetPublicAccessBlockRequest
getPublicAccessBlockRequestCodec =
    Codec.object GetPublicAccessBlockRequest |> Codec.field "Bucket" .bucket Codec.string |> Codec.buildObject


{-| Codec for GetPublicAccessBlockOutput. -}
getPublicAccessBlockOutputCodec : Codec GetPublicAccessBlockOutput
getPublicAccessBlockOutputCodec =
    Codec.object GetPublicAccessBlockOutput
        |> Codec.field
            "PublicAccessBlockConfiguration"
            .publicAccessBlockConfiguration
            publicAccessBlockConfigurationCodec
        |> Codec.buildObject


{-| Codec for GetObjectTorrentRequest. -}
getObjectTorrentRequestCodec : Codec GetObjectTorrentRequest
getObjectTorrentRequestCodec =
    Codec.object GetObjectTorrentRequest
        |> Codec.field "RequestPayer" .requestPayer requestPayerCodec
        |> Codec.field "Key" .key objectKeyCodec
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for GetObjectTorrentOutput. -}
getObjectTorrentOutputCodec : Codec GetObjectTorrentOutput
getObjectTorrentOutputCodec =
    Codec.object GetObjectTorrentOutput
        |> Codec.field "RequestCharged" .requestCharged requestChargedCodec
        |> Codec.field "Body" .body Codec.string
        |> Codec.buildObject


{-| Codec for GetObjectTaggingRequest. -}
getObjectTaggingRequestCodec : Codec GetObjectTaggingRequest
getObjectTaggingRequestCodec =
    Codec.object GetObjectTaggingRequest
        |> Codec.field "VersionId" .versionId Codec.string
        |> Codec.field "Key" .key objectKeyCodec
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for GetObjectTaggingOutput. -}
getObjectTaggingOutputCodec : Codec GetObjectTaggingOutput
getObjectTaggingOutputCodec =
    Codec.object GetObjectTaggingOutput
        |> Codec.field "VersionId" .versionId Codec.string
        |> Codec.field "TagSet" .tagSet tagSetCodec
        |> Codec.buildObject


{-| Codec for GetObjectRetentionRequest. -}
getObjectRetentionRequestCodec : Codec GetObjectRetentionRequest
getObjectRetentionRequestCodec =
    Codec.object GetObjectRetentionRequest
        |> Codec.field "VersionId" .versionId Codec.string
        |> Codec.field "RequestPayer" .requestPayer requestPayerCodec
        |> Codec.field "Key" .key objectKeyCodec
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for GetObjectRetentionOutput. -}
getObjectRetentionOutputCodec : Codec GetObjectRetentionOutput
getObjectRetentionOutputCodec =
    Codec.object GetObjectRetentionOutput
        |> Codec.field "Retention" .retention objectLockRetentionCodec
        |> Codec.buildObject


{-| Codec for GetObjectRequest. -}
getObjectRequestCodec : Codec GetObjectRequest
getObjectRequestCodec =
    Codec.object GetObjectRequest
        |> Codec.field "VersionId" .versionId Codec.string
        |> Codec.field "SSECustomerKeyMD5" .ssecustomerKeyMd5 Codec.string
        |> Codec.field "SSECustomerKey" .ssecustomerKey Codec.string
        |> Codec.field "SSECustomerAlgorithm" .ssecustomerAlgorithm Codec.string
        |> Codec.field "ResponseExpires" .responseExpires responseExpiresCodec
        |> Codec.field "ResponseContentType" .responseContentType Codec.string
        |> Codec.field "ResponseContentLanguage" .responseContentLanguage Codec.string
        |> Codec.field "ResponseContentEncoding" .responseContentEncoding Codec.string
        |> Codec.field "ResponseContentDisposition" .responseContentDisposition Codec.string
        |> Codec.field "ResponseCacheControl" .responseCacheControl Codec.string
        |> Codec.field "RequestPayer" .requestPayer requestPayerCodec
        |> Codec.field "Range" .range Codec.string
        |> Codec.field "PartNumber" .partNumber Codec.int
        |> Codec.field "Key" .key objectKeyCodec
        |> Codec.field "IfUnmodifiedSince" .ifUnmodifiedSince ifUnmodifiedSinceCodec
        |> Codec.field "IfNoneMatch" .ifNoneMatch Codec.string
        |> Codec.field "IfModifiedSince" .ifModifiedSince ifModifiedSinceCodec
        |> Codec.field "IfMatch" .ifMatch Codec.string
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for GetObjectOutput. -}
getObjectOutputCodec : Codec GetObjectOutput
getObjectOutputCodec =
    Codec.object GetObjectOutput
        |> Codec.field "WebsiteRedirectLocation" .websiteRedirectLocation Codec.string
        |> Codec.field "VersionId" .versionId Codec.string
        |> Codec.field "TagCount" .tagCount Codec.int
        |> Codec.field "StorageClass" .storageClass storageClassCodec
        |> Codec.field "ServerSideEncryption" .serverSideEncryption serverSideEncryptionCodec
        |> Codec.field "SSEKMSKeyId" .ssekmskeyId Codec.string
        |> Codec.field "SSECustomerKeyMD5" .ssecustomerKeyMd5 Codec.string
        |> Codec.field "SSECustomerAlgorithm" .ssecustomerAlgorithm Codec.string
        |> Codec.field "Restore" .restore Codec.string
        |> Codec.field "RequestCharged" .requestCharged requestChargedCodec
        |> Codec.field "ReplicationStatus" .replicationStatus replicationStatusCodec
        |> Codec.field "PartsCount" .partsCount Codec.int
        |> Codec.field "ObjectLockRetainUntilDate" .objectLockRetainUntilDate objectLockRetainUntilDateCodec
        |> Codec.field "ObjectLockMode" .objectLockMode objectLockModeCodec
        |> Codec.field "ObjectLockLegalHoldStatus" .objectLockLegalHoldStatus objectLockLegalHoldStatusCodec
        |> Codec.field "MissingMeta" .missingMeta Codec.int
        |> Codec.field "Metadata" .metadata metadataCodec
        |> Codec.field "LastModified" .lastModified lastModifiedCodec
        |> Codec.field "Expires" .expires expiresCodec
        |> Codec.field "Expiration" .expiration Codec.string
        |> Codec.field "ETag" .etag Codec.string
        |> Codec.field "DeleteMarker" .deleteMarker Codec.bool
        |> Codec.field "ContentType" .contentType Codec.string
        |> Codec.field "ContentRange" .contentRange Codec.string
        |> Codec.field "ContentLength" .contentLength Codec.int
        |> Codec.field "ContentLanguage" .contentLanguage Codec.string
        |> Codec.field "ContentEncoding" .contentEncoding Codec.string
        |> Codec.field "ContentDisposition" .contentDisposition Codec.string
        |> Codec.field "CacheControl" .cacheControl Codec.string
        |> Codec.field "Body" .body Codec.string
        |> Codec.field "AcceptRanges" .acceptRanges Codec.string
        |> Codec.buildObject


{-| Codec for GetObjectLockConfigurationRequest. -}
getObjectLockConfigurationRequestCodec : Codec GetObjectLockConfigurationRequest
getObjectLockConfigurationRequestCodec =
    Codec.object GetObjectLockConfigurationRequest |> Codec.field "Bucket" .bucket Codec.string |> Codec.buildObject


{-| Codec for GetObjectLockConfigurationOutput. -}
getObjectLockConfigurationOutputCodec : Codec GetObjectLockConfigurationOutput
getObjectLockConfigurationOutputCodec =
    Codec.object GetObjectLockConfigurationOutput
        |> Codec.field "ObjectLockConfiguration" .objectLockConfiguration objectLockConfigurationCodec
        |> Codec.buildObject


{-| Codec for GetObjectLegalHoldRequest. -}
getObjectLegalHoldRequestCodec : Codec GetObjectLegalHoldRequest
getObjectLegalHoldRequestCodec =
    Codec.object GetObjectLegalHoldRequest
        |> Codec.field "VersionId" .versionId Codec.string
        |> Codec.field "RequestPayer" .requestPayer requestPayerCodec
        |> Codec.field "Key" .key objectKeyCodec
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for GetObjectLegalHoldOutput. -}
getObjectLegalHoldOutputCodec : Codec GetObjectLegalHoldOutput
getObjectLegalHoldOutputCodec =
    Codec.object GetObjectLegalHoldOutput
        |> Codec.field "LegalHold" .legalHold objectLockLegalHoldCodec
        |> Codec.buildObject


{-| Codec for GetObjectAclRequest. -}
getObjectAclRequestCodec : Codec GetObjectAclRequest
getObjectAclRequestCodec =
    Codec.object GetObjectAclRequest
        |> Codec.field "VersionId" .versionId Codec.string
        |> Codec.field "RequestPayer" .requestPayer requestPayerCodec
        |> Codec.field "Key" .key objectKeyCodec
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for GetObjectAclOutput. -}
getObjectAclOutputCodec : Codec GetObjectAclOutput
getObjectAclOutputCodec =
    Codec.object GetObjectAclOutput
        |> Codec.field "RequestCharged" .requestCharged requestChargedCodec
        |> Codec.field "Owner" .owner ownerCodec
        |> Codec.field "Grants" .grants grantsCodec
        |> Codec.buildObject


{-| Codec for GetBucketWebsiteRequest. -}
getBucketWebsiteRequestCodec : Codec GetBucketWebsiteRequest
getBucketWebsiteRequestCodec =
    Codec.object GetBucketWebsiteRequest |> Codec.field "Bucket" .bucket Codec.string |> Codec.buildObject


{-| Codec for GetBucketWebsiteOutput. -}
getBucketWebsiteOutputCodec : Codec GetBucketWebsiteOutput
getBucketWebsiteOutputCodec =
    Codec.object GetBucketWebsiteOutput
        |> Codec.field "RoutingRules" .routingRules routingRulesCodec
        |> Codec.field "RedirectAllRequestsTo" .redirectAllRequestsTo redirectAllRequestsToCodec
        |> Codec.field "IndexDocument" .indexDocument indexDocumentCodec
        |> Codec.field "ErrorDocument" .errorDocument errorDocumentCodec
        |> Codec.buildObject


{-| Codec for GetBucketVersioningRequest. -}
getBucketVersioningRequestCodec : Codec GetBucketVersioningRequest
getBucketVersioningRequestCodec =
    Codec.object GetBucketVersioningRequest |> Codec.field "Bucket" .bucket Codec.string |> Codec.buildObject


{-| Codec for GetBucketVersioningOutput. -}
getBucketVersioningOutputCodec : Codec GetBucketVersioningOutput
getBucketVersioningOutputCodec =
    Codec.object GetBucketVersioningOutput
        |> Codec.field "Status" .status bucketVersioningStatusCodec
        |> Codec.field "MFADelete" .mfadelete mfadeleteStatusCodec
        |> Codec.buildObject


{-| Codec for GetBucketTaggingRequest. -}
getBucketTaggingRequestCodec : Codec GetBucketTaggingRequest
getBucketTaggingRequestCodec =
    Codec.object GetBucketTaggingRequest |> Codec.field "Bucket" .bucket Codec.string |> Codec.buildObject


{-| Codec for GetBucketTaggingOutput. -}
getBucketTaggingOutputCodec : Codec GetBucketTaggingOutput
getBucketTaggingOutputCodec =
    Codec.object GetBucketTaggingOutput |> Codec.field "TagSet" .tagSet tagSetCodec |> Codec.buildObject


{-| Codec for GetBucketRequestPaymentRequest. -}
getBucketRequestPaymentRequestCodec : Codec GetBucketRequestPaymentRequest
getBucketRequestPaymentRequestCodec =
    Codec.object GetBucketRequestPaymentRequest |> Codec.field "Bucket" .bucket Codec.string |> Codec.buildObject


{-| Codec for GetBucketRequestPaymentOutput. -}
getBucketRequestPaymentOutputCodec : Codec GetBucketRequestPaymentOutput
getBucketRequestPaymentOutputCodec =
    Codec.object GetBucketRequestPaymentOutput |> Codec.field "Payer" .payer payerCodec |> Codec.buildObject


{-| Codec for GetBucketReplicationRequest. -}
getBucketReplicationRequestCodec : Codec GetBucketReplicationRequest
getBucketReplicationRequestCodec =
    Codec.object GetBucketReplicationRequest |> Codec.field "Bucket" .bucket Codec.string |> Codec.buildObject


{-| Codec for GetBucketReplicationOutput. -}
getBucketReplicationOutputCodec : Codec GetBucketReplicationOutput
getBucketReplicationOutputCodec =
    Codec.object GetBucketReplicationOutput
        |> Codec.field "ReplicationConfiguration" .replicationConfiguration replicationConfigurationCodec
        |> Codec.buildObject


{-| Codec for GetBucketPolicyStatusRequest. -}
getBucketPolicyStatusRequestCodec : Codec GetBucketPolicyStatusRequest
getBucketPolicyStatusRequestCodec =
    Codec.object GetBucketPolicyStatusRequest |> Codec.field "Bucket" .bucket Codec.string |> Codec.buildObject


{-| Codec for GetBucketPolicyStatusOutput. -}
getBucketPolicyStatusOutputCodec : Codec GetBucketPolicyStatusOutput
getBucketPolicyStatusOutputCodec =
    Codec.object GetBucketPolicyStatusOutput
        |> Codec.field "PolicyStatus" .policyStatus policyStatusCodec
        |> Codec.buildObject


{-| Codec for GetBucketPolicyRequest. -}
getBucketPolicyRequestCodec : Codec GetBucketPolicyRequest
getBucketPolicyRequestCodec =
    Codec.object GetBucketPolicyRequest |> Codec.field "Bucket" .bucket Codec.string |> Codec.buildObject


{-| Codec for GetBucketPolicyOutput. -}
getBucketPolicyOutputCodec : Codec GetBucketPolicyOutput
getBucketPolicyOutputCodec =
    Codec.object GetBucketPolicyOutput |> Codec.field "Policy" .policy Codec.string |> Codec.buildObject


{-| Codec for GetBucketNotificationConfigurationRequest. -}
getBucketNotificationConfigurationRequestCodec : Codec GetBucketNotificationConfigurationRequest
getBucketNotificationConfigurationRequestCodec =
    Codec.object GetBucketNotificationConfigurationRequest
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for GetBucketMetricsConfigurationRequest. -}
getBucketMetricsConfigurationRequestCodec : Codec GetBucketMetricsConfigurationRequest
getBucketMetricsConfigurationRequestCodec =
    Codec.object GetBucketMetricsConfigurationRequest
        |> Codec.field "Id" .id Codec.string
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for GetBucketMetricsConfigurationOutput. -}
getBucketMetricsConfigurationOutputCodec : Codec GetBucketMetricsConfigurationOutput
getBucketMetricsConfigurationOutputCodec =
    Codec.object GetBucketMetricsConfigurationOutput
        |> Codec.field "MetricsConfiguration" .metricsConfiguration metricsConfigurationCodec
        |> Codec.buildObject


{-| Codec for GetBucketLoggingRequest. -}
getBucketLoggingRequestCodec : Codec GetBucketLoggingRequest
getBucketLoggingRequestCodec =
    Codec.object GetBucketLoggingRequest |> Codec.field "Bucket" .bucket Codec.string |> Codec.buildObject


{-| Codec for GetBucketLoggingOutput. -}
getBucketLoggingOutputCodec : Codec GetBucketLoggingOutput
getBucketLoggingOutputCodec =
    Codec.object GetBucketLoggingOutput
        |> Codec.field "LoggingEnabled" .loggingEnabled loggingEnabledCodec
        |> Codec.buildObject


{-| Codec for GetBucketLocationRequest. -}
getBucketLocationRequestCodec : Codec GetBucketLocationRequest
getBucketLocationRequestCodec =
    Codec.object GetBucketLocationRequest |> Codec.field "Bucket" .bucket Codec.string |> Codec.buildObject


{-| Codec for GetBucketLocationOutput. -}
getBucketLocationOutputCodec : Codec GetBucketLocationOutput
getBucketLocationOutputCodec =
    Codec.object GetBucketLocationOutput
        |> Codec.field "LocationConstraint" .locationConstraint bucketLocationConstraintCodec
        |> Codec.buildObject


{-| Codec for GetBucketLifecycleRequest. -}
getBucketLifecycleRequestCodec : Codec GetBucketLifecycleRequest
getBucketLifecycleRequestCodec =
    Codec.object GetBucketLifecycleRequest |> Codec.field "Bucket" .bucket Codec.string |> Codec.buildObject


{-| Codec for GetBucketLifecycleOutput. -}
getBucketLifecycleOutputCodec : Codec GetBucketLifecycleOutput
getBucketLifecycleOutputCodec =
    Codec.object GetBucketLifecycleOutput |> Codec.field "Rules" .rules rulesCodec |> Codec.buildObject


{-| Codec for GetBucketLifecycleConfigurationRequest. -}
getBucketLifecycleConfigurationRequestCodec : Codec GetBucketLifecycleConfigurationRequest
getBucketLifecycleConfigurationRequestCodec =
    Codec.object GetBucketLifecycleConfigurationRequest
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for GetBucketLifecycleConfigurationOutput. -}
getBucketLifecycleConfigurationOutputCodec : Codec GetBucketLifecycleConfigurationOutput
getBucketLifecycleConfigurationOutputCodec =
    Codec.object GetBucketLifecycleConfigurationOutput
        |> Codec.field "Rules" .rules lifecycleRulesCodec
        |> Codec.buildObject


{-| Codec for GetBucketInventoryConfigurationRequest. -}
getBucketInventoryConfigurationRequestCodec : Codec GetBucketInventoryConfigurationRequest
getBucketInventoryConfigurationRequestCodec =
    Codec.object GetBucketInventoryConfigurationRequest
        |> Codec.field "Id" .id Codec.string
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for GetBucketInventoryConfigurationOutput. -}
getBucketInventoryConfigurationOutputCodec : Codec GetBucketInventoryConfigurationOutput
getBucketInventoryConfigurationOutputCodec =
    Codec.object GetBucketInventoryConfigurationOutput
        |> Codec.field "InventoryConfiguration" .inventoryConfiguration inventoryConfigurationCodec
        |> Codec.buildObject


{-| Codec for GetBucketEncryptionRequest. -}
getBucketEncryptionRequestCodec : Codec GetBucketEncryptionRequest
getBucketEncryptionRequestCodec =
    Codec.object GetBucketEncryptionRequest |> Codec.field "Bucket" .bucket Codec.string |> Codec.buildObject


{-| Codec for GetBucketEncryptionOutput. -}
getBucketEncryptionOutputCodec : Codec GetBucketEncryptionOutput
getBucketEncryptionOutputCodec =
    Codec.object GetBucketEncryptionOutput
        |> Codec.field
            "ServerSideEncryptionConfiguration"
            .serverSideEncryptionConfiguration
            serverSideEncryptionConfigurationCodec
        |> Codec.buildObject


{-| Codec for GetBucketCorsRequest. -}
getBucketCorsRequestCodec : Codec GetBucketCorsRequest
getBucketCorsRequestCodec =
    Codec.object GetBucketCorsRequest |> Codec.field "Bucket" .bucket Codec.string |> Codec.buildObject


{-| Codec for GetBucketCorsOutput. -}
getBucketCorsOutputCodec : Codec GetBucketCorsOutput
getBucketCorsOutputCodec =
    Codec.object GetBucketCorsOutput |> Codec.field "CORSRules" .corsrules corsrulesCodec |> Codec.buildObject


{-| Codec for GetBucketAnalyticsConfigurationRequest. -}
getBucketAnalyticsConfigurationRequestCodec : Codec GetBucketAnalyticsConfigurationRequest
getBucketAnalyticsConfigurationRequestCodec =
    Codec.object GetBucketAnalyticsConfigurationRequest
        |> Codec.field "Id" .id Codec.string
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for GetBucketAnalyticsConfigurationOutput. -}
getBucketAnalyticsConfigurationOutputCodec : Codec GetBucketAnalyticsConfigurationOutput
getBucketAnalyticsConfigurationOutputCodec =
    Codec.object GetBucketAnalyticsConfigurationOutput
        |> Codec.field "AnalyticsConfiguration" .analyticsConfiguration analyticsConfigurationCodec
        |> Codec.buildObject


{-| Codec for GetBucketAclRequest. -}
getBucketAclRequestCodec : Codec GetBucketAclRequest
getBucketAclRequestCodec =
    Codec.object GetBucketAclRequest |> Codec.field "Bucket" .bucket Codec.string |> Codec.buildObject


{-| Codec for GetBucketAclOutput. -}
getBucketAclOutputCodec : Codec GetBucketAclOutput
getBucketAclOutputCodec =
    Codec.object GetBucketAclOutput
        |> Codec.field "Owner" .owner ownerCodec
        |> Codec.field "Grants" .grants grantsCodec
        |> Codec.buildObject


{-| Codec for GetBucketAccelerateConfigurationRequest. -}
getBucketAccelerateConfigurationRequestCodec : Codec GetBucketAccelerateConfigurationRequest
getBucketAccelerateConfigurationRequestCodec =
    Codec.object GetBucketAccelerateConfigurationRequest
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for GetBucketAccelerateConfigurationOutput. -}
getBucketAccelerateConfigurationOutputCodec : Codec GetBucketAccelerateConfigurationOutput
getBucketAccelerateConfigurationOutputCodec =
    Codec.object GetBucketAccelerateConfigurationOutput
        |> Codec.field "Status" .status bucketAccelerateStatusCodec
        |> Codec.buildObject


{-| Codec for FilterRuleValue. -}
filterRuleValueCodec : Codec FilterRuleValue
filterRuleValueCodec =
    Codec.string


{-| Codec for FilterRuleName. -}
filterRuleNameCodec : Codec FilterRuleName
filterRuleNameCodec =
    Codec.build (Enum.encoder filterRuleName) (Enum.decoder filterRuleName)


{-| Codec for FilterRuleList. -}
filterRuleListCodec : Codec FilterRuleList
filterRuleListCodec =
    Codec.list filterRuleCodec


{-| Codec for FilterRule. -}
filterRuleCodec : Codec FilterRule
filterRuleCodec =
    Codec.object FilterRule
        |> Codec.field "Value" .value Codec.string
        |> Codec.field "Name" .name filterRuleNameCodec
        |> Codec.buildObject


{-| Codec for FileHeaderInfo. -}
fileHeaderInfoCodec : Codec FileHeaderInfo
fileHeaderInfoCodec =
    Codec.build (Enum.encoder fileHeaderInfo) (Enum.decoder fileHeaderInfo)


{-| Codec for FieldDelimiter. -}
fieldDelimiterCodec : Codec FieldDelimiter
fieldDelimiterCodec =
    Codec.string


{-| Codec for FetchOwner. -}
fetchOwnerCodec : Codec FetchOwner
fetchOwnerCodec =
    Codec.bool


{-| Codec for ExpressionType. -}
expressionTypeCodec : Codec ExpressionType
expressionTypeCodec =
    Codec.build (Enum.encoder expressionType) (Enum.decoder expressionType)


{-| Codec for Expression. -}
expressionCodec : Codec Expression
expressionCodec =
    Codec.string


{-| Codec for ExposeHeaders. -}
exposeHeadersCodec : Codec ExposeHeaders
exposeHeadersCodec =
    Codec.list Codec.string


{-| Codec for ExposeHeader. -}
exposeHeaderCodec : Codec ExposeHeader
exposeHeaderCodec =
    Codec.string


{-| Codec for Expires. -}
expiresCodec : Codec Expires
expiresCodec =
    Codec.string


{-| Codec for ExpiredObjectDeleteMarker. -}
expiredObjectDeleteMarkerCodec : Codec ExpiredObjectDeleteMarker
expiredObjectDeleteMarkerCodec =
    Codec.bool


{-| Codec for ExpirationStatus. -}
expirationStatusCodec : Codec ExpirationStatus
expirationStatusCodec =
    Codec.build (Enum.encoder expirationStatus) (Enum.decoder expirationStatus)


{-| Codec for Expiration. -}
expirationCodec : Codec Expiration
expirationCodec =
    Codec.string


{-| Codec for EventList. -}
eventListCodec : Codec EventList
eventListCodec =
    Codec.list eventCodec


{-| Codec for Event. -}
eventCodec : Codec Event
eventCodec =
    Codec.build (Enum.encoder event) (Enum.decoder event)


{-| Codec for Errors. -}
errorsCodec : Codec Errors
errorsCodec =
    Codec.list errorCodec


{-| Codec for ErrorDocument. -}
errorDocumentCodec : Codec ErrorDocument
errorDocumentCodec =
    Codec.object ErrorDocument |> Codec.field "Key" .key objectKeyCodec |> Codec.buildObject


{-| Codec for Error. -}
errorCodec : Codec Error
errorCodec =
    Codec.object Error
        |> Codec.field "VersionId" .versionId Codec.string
        |> Codec.field "Message" .message Codec.string
        |> Codec.field "Key" .key objectKeyCodec
        |> Codec.field "Code" .code Codec.string
        |> Codec.buildObject


{-| Codec for EndEvent. -}
endEventCodec : Codec EndEvent
endEventCodec =
    Codec.object EndEvent |> Codec.buildObject


{-| Codec for EncryptionConfiguration. -}
encryptionConfigurationCodec : Codec EncryptionConfiguration
encryptionConfigurationCodec =
    Codec.object EncryptionConfiguration
        |> Codec.field "ReplicaKmsKeyID" .replicaKmsKeyId Codec.string
        |> Codec.buildObject


{-| Codec for Encryption. -}
encryptionCodec : Codec Encryption
encryptionCodec =
    Codec.object Encryption
        |> Codec.field "KMSKeyId" .kmskeyId Codec.string
        |> Codec.field "KMSContext" .kmscontext Codec.string
        |> Codec.field "EncryptionType" .encryptionType serverSideEncryptionCodec
        |> Codec.buildObject


{-| Codec for EncodingType. -}
encodingTypeCodec : Codec EncodingType
encodingTypeCodec =
    Codec.build (Enum.encoder encodingType) (Enum.decoder encodingType)


{-| Codec for EnableRequestProgress. -}
enableRequestProgressCodec : Codec EnableRequestProgress
enableRequestProgressCodec =
    Codec.bool


{-| Codec for EmailAddress. -}
emailAddressCodec : Codec EmailAddress
emailAddressCodec =
    Codec.string


{-| Codec for Etag. -}
etagCodec : Codec Etag
etagCodec =
    Codec.string


{-| Codec for DisplayName. -}
displayNameCodec : Codec DisplayName
displayNameCodec =
    Codec.string


{-| Codec for Destination. -}
destinationCodec : Codec Destination
destinationCodec =
    Codec.object Destination
        |> Codec.field "StorageClass" .storageClass storageClassCodec
        |> Codec.field "EncryptionConfiguration" .encryptionConfiguration encryptionConfigurationCodec
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.field "Account" .account Codec.string
        |> Codec.field "AccessControlTranslation" .accessControlTranslation accessControlTranslationCodec
        |> Codec.buildObject


{-| Codec for Description. -}
descriptionCodec : Codec Description
descriptionCodec =
    Codec.string


{-| Codec for Delimiter. -}
delimiterCodec : Codec Delimiter
delimiterCodec =
    Codec.string


{-| Codec for DeletedObjects. -}
deletedObjectsCodec : Codec DeletedObjects
deletedObjectsCodec =
    Codec.list deletedObjectCodec


{-| Codec for DeletedObject. -}
deletedObjectCodec : Codec DeletedObject
deletedObjectCodec =
    Codec.object DeletedObject
        |> Codec.field "VersionId" .versionId Codec.string
        |> Codec.field "Key" .key objectKeyCodec
        |> Codec.field "DeleteMarkerVersionId" .deleteMarkerVersionId Codec.string
        |> Codec.field "DeleteMarker" .deleteMarker Codec.bool
        |> Codec.buildObject


{-| Codec for DeletePublicAccessBlockRequest. -}
deletePublicAccessBlockRequestCodec : Codec DeletePublicAccessBlockRequest
deletePublicAccessBlockRequestCodec =
    Codec.object DeletePublicAccessBlockRequest |> Codec.field "Bucket" .bucket Codec.string |> Codec.buildObject


{-| Codec for DeleteObjectsRequest. -}
deleteObjectsRequestCodec : Codec DeleteObjectsRequest
deleteObjectsRequestCodec =
    Codec.object DeleteObjectsRequest
        |> Codec.field "RequestPayer" .requestPayer requestPayerCodec
        |> Codec.field "MFA" .mfa Codec.string
        |> Codec.field "Delete" .delete deleteCodec
        |> Codec.field "BypassGovernanceRetention" .bypassGovernanceRetention Codec.bool
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for DeleteObjectsOutput. -}
deleteObjectsOutputCodec : Codec DeleteObjectsOutput
deleteObjectsOutputCodec =
    Codec.object DeleteObjectsOutput
        |> Codec.field "RequestCharged" .requestCharged requestChargedCodec
        |> Codec.field "Errors" .errors errorsCodec
        |> Codec.field "Deleted" .deleted deletedObjectsCodec
        |> Codec.buildObject


{-| Codec for DeleteObjectTaggingRequest. -}
deleteObjectTaggingRequestCodec : Codec DeleteObjectTaggingRequest
deleteObjectTaggingRequestCodec =
    Codec.object DeleteObjectTaggingRequest
        |> Codec.field "VersionId" .versionId Codec.string
        |> Codec.field "Key" .key objectKeyCodec
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for DeleteObjectTaggingOutput. -}
deleteObjectTaggingOutputCodec : Codec DeleteObjectTaggingOutput
deleteObjectTaggingOutputCodec =
    Codec.object DeleteObjectTaggingOutput |> Codec.field "VersionId" .versionId Codec.string |> Codec.buildObject


{-| Codec for DeleteObjectRequest. -}
deleteObjectRequestCodec : Codec DeleteObjectRequest
deleteObjectRequestCodec =
    Codec.object DeleteObjectRequest
        |> Codec.field "VersionId" .versionId Codec.string
        |> Codec.field "RequestPayer" .requestPayer requestPayerCodec
        |> Codec.field "MFA" .mfa Codec.string
        |> Codec.field "Key" .key objectKeyCodec
        |> Codec.field "BypassGovernanceRetention" .bypassGovernanceRetention Codec.bool
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for DeleteObjectOutput. -}
deleteObjectOutputCodec : Codec DeleteObjectOutput
deleteObjectOutputCodec =
    Codec.object DeleteObjectOutput
        |> Codec.field "VersionId" .versionId Codec.string
        |> Codec.field "RequestCharged" .requestCharged requestChargedCodec
        |> Codec.field "DeleteMarker" .deleteMarker Codec.bool
        |> Codec.buildObject


{-| Codec for DeleteMarkers. -}
deleteMarkersCodec : Codec DeleteMarkers
deleteMarkersCodec =
    Codec.list deleteMarkerEntryCodec


{-| Codec for DeleteMarkerVersionId. -}
deleteMarkerVersionIdCodec : Codec DeleteMarkerVersionId
deleteMarkerVersionIdCodec =
    Codec.string


{-| Codec for DeleteMarkerReplicationStatus. -}
deleteMarkerReplicationStatusCodec : Codec DeleteMarkerReplicationStatus
deleteMarkerReplicationStatusCodec =
    Codec.build (Enum.encoder deleteMarkerReplicationStatus) (Enum.decoder deleteMarkerReplicationStatus)


{-| Codec for DeleteMarkerReplication. -}
deleteMarkerReplicationCodec : Codec DeleteMarkerReplication
deleteMarkerReplicationCodec =
    Codec.object DeleteMarkerReplication
        |> Codec.field "Status" .status deleteMarkerReplicationStatusCodec
        |> Codec.buildObject


{-| Codec for DeleteMarkerEntry. -}
deleteMarkerEntryCodec : Codec DeleteMarkerEntry
deleteMarkerEntryCodec =
    Codec.object DeleteMarkerEntry
        |> Codec.field "VersionId" .versionId Codec.string
        |> Codec.field "Owner" .owner ownerCodec
        |> Codec.field "LastModified" .lastModified lastModifiedCodec
        |> Codec.field "Key" .key objectKeyCodec
        |> Codec.field "IsLatest" .isLatest Codec.bool
        |> Codec.buildObject


{-| Codec for DeleteMarker. -}
deleteMarkerCodec : Codec DeleteMarker
deleteMarkerCodec =
    Codec.bool


{-| Codec for DeleteBucketWebsiteRequest. -}
deleteBucketWebsiteRequestCodec : Codec DeleteBucketWebsiteRequest
deleteBucketWebsiteRequestCodec =
    Codec.object DeleteBucketWebsiteRequest |> Codec.field "Bucket" .bucket Codec.string |> Codec.buildObject


{-| Codec for DeleteBucketTaggingRequest. -}
deleteBucketTaggingRequestCodec : Codec DeleteBucketTaggingRequest
deleteBucketTaggingRequestCodec =
    Codec.object DeleteBucketTaggingRequest |> Codec.field "Bucket" .bucket Codec.string |> Codec.buildObject


{-| Codec for DeleteBucketRequest. -}
deleteBucketRequestCodec : Codec DeleteBucketRequest
deleteBucketRequestCodec =
    Codec.object DeleteBucketRequest |> Codec.field "Bucket" .bucket Codec.string |> Codec.buildObject


{-| Codec for DeleteBucketReplicationRequest. -}
deleteBucketReplicationRequestCodec : Codec DeleteBucketReplicationRequest
deleteBucketReplicationRequestCodec =
    Codec.object DeleteBucketReplicationRequest |> Codec.field "Bucket" .bucket Codec.string |> Codec.buildObject


{-| Codec for DeleteBucketPolicyRequest. -}
deleteBucketPolicyRequestCodec : Codec DeleteBucketPolicyRequest
deleteBucketPolicyRequestCodec =
    Codec.object DeleteBucketPolicyRequest |> Codec.field "Bucket" .bucket Codec.string |> Codec.buildObject


{-| Codec for DeleteBucketMetricsConfigurationRequest. -}
deleteBucketMetricsConfigurationRequestCodec : Codec DeleteBucketMetricsConfigurationRequest
deleteBucketMetricsConfigurationRequestCodec =
    Codec.object DeleteBucketMetricsConfigurationRequest
        |> Codec.field "Id" .id Codec.string
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for DeleteBucketLifecycleRequest. -}
deleteBucketLifecycleRequestCodec : Codec DeleteBucketLifecycleRequest
deleteBucketLifecycleRequestCodec =
    Codec.object DeleteBucketLifecycleRequest |> Codec.field "Bucket" .bucket Codec.string |> Codec.buildObject


{-| Codec for DeleteBucketInventoryConfigurationRequest. -}
deleteBucketInventoryConfigurationRequestCodec : Codec DeleteBucketInventoryConfigurationRequest
deleteBucketInventoryConfigurationRequestCodec =
    Codec.object DeleteBucketInventoryConfigurationRequest
        |> Codec.field "Id" .id Codec.string
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for DeleteBucketEncryptionRequest. -}
deleteBucketEncryptionRequestCodec : Codec DeleteBucketEncryptionRequest
deleteBucketEncryptionRequestCodec =
    Codec.object DeleteBucketEncryptionRequest |> Codec.field "Bucket" .bucket Codec.string |> Codec.buildObject


{-| Codec for DeleteBucketCorsRequest. -}
deleteBucketCorsRequestCodec : Codec DeleteBucketCorsRequest
deleteBucketCorsRequestCodec =
    Codec.object DeleteBucketCorsRequest |> Codec.field "Bucket" .bucket Codec.string |> Codec.buildObject


{-| Codec for DeleteBucketAnalyticsConfigurationRequest. -}
deleteBucketAnalyticsConfigurationRequestCodec : Codec DeleteBucketAnalyticsConfigurationRequest
deleteBucketAnalyticsConfigurationRequestCodec =
    Codec.object DeleteBucketAnalyticsConfigurationRequest
        |> Codec.field "Id" .id Codec.string
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for Delete. -}
deleteCodec : Codec Delete
deleteCodec =
    Codec.object Delete
        |> Codec.field "Quiet" .quiet Codec.bool
        |> Codec.field "Objects" .objects objectIdentifierListCodec
        |> Codec.buildObject


{-| Codec for DefaultRetention. -}
defaultRetentionCodec : Codec DefaultRetention
defaultRetentionCodec =
    Codec.object DefaultRetention
        |> Codec.field "Years" .years Codec.int
        |> Codec.field "Mode" .mode objectLockRetentionModeCodec
        |> Codec.field "Days" .days Codec.int
        |> Codec.buildObject


{-| Codec for DaysAfterInitiation. -}
daysAfterInitiationCodec : Codec DaysAfterInitiation
daysAfterInitiationCodec =
    Codec.int


{-| Codec for Days. -}
daysCodec : Codec Days
daysCodec =
    Codec.int


{-| Codec for Date. -}
dateCodec : Codec Date
dateCodec =
    Codec.string


{-| Codec for CreationDate. -}
creationDateCodec : Codec CreationDate
creationDateCodec =
    Codec.string


{-| Codec for CreateMultipartUploadRequest. -}
createMultipartUploadRequestCodec : Codec CreateMultipartUploadRequest
createMultipartUploadRequestCodec =
    Codec.object CreateMultipartUploadRequest
        |> Codec.field "WebsiteRedirectLocation" .websiteRedirectLocation Codec.string
        |> Codec.field "Tagging" .tagging Codec.string
        |> Codec.field "StorageClass" .storageClass storageClassCodec
        |> Codec.field "ServerSideEncryption" .serverSideEncryption serverSideEncryptionCodec
        |> Codec.field "SSEKMSKeyId" .ssekmskeyId Codec.string
        |> Codec.field "SSEKMSEncryptionContext" .ssekmsencryptionContext Codec.string
        |> Codec.field "SSECustomerKeyMD5" .ssecustomerKeyMd5 Codec.string
        |> Codec.field "SSECustomerKey" .ssecustomerKey Codec.string
        |> Codec.field "SSECustomerAlgorithm" .ssecustomerAlgorithm Codec.string
        |> Codec.field "RequestPayer" .requestPayer requestPayerCodec
        |> Codec.field "ObjectLockRetainUntilDate" .objectLockRetainUntilDate objectLockRetainUntilDateCodec
        |> Codec.field "ObjectLockMode" .objectLockMode objectLockModeCodec
        |> Codec.field "ObjectLockLegalHoldStatus" .objectLockLegalHoldStatus objectLockLegalHoldStatusCodec
        |> Codec.field "Metadata" .metadata metadataCodec
        |> Codec.field "Key" .key objectKeyCodec
        |> Codec.field "GrantWriteACP" .grantWriteAcp Codec.string
        |> Codec.field "GrantReadACP" .grantReadAcp Codec.string
        |> Codec.field "GrantRead" .grantRead Codec.string
        |> Codec.field "GrantFullControl" .grantFullControl Codec.string
        |> Codec.field "Expires" .expires expiresCodec
        |> Codec.field "ContentType" .contentType Codec.string
        |> Codec.field "ContentLanguage" .contentLanguage Codec.string
        |> Codec.field "ContentEncoding" .contentEncoding Codec.string
        |> Codec.field "ContentDisposition" .contentDisposition Codec.string
        |> Codec.field "CacheControl" .cacheControl Codec.string
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.field "ACL" .acl objectCannedAclcodec
        |> Codec.buildObject


{-| Codec for CreateMultipartUploadOutput. -}
createMultipartUploadOutputCodec : Codec CreateMultipartUploadOutput
createMultipartUploadOutputCodec =
    Codec.object CreateMultipartUploadOutput
        |> Codec.field "UploadId" .uploadId Codec.string
        |> Codec.field "ServerSideEncryption" .serverSideEncryption serverSideEncryptionCodec
        |> Codec.field "SSEKMSKeyId" .ssekmskeyId Codec.string
        |> Codec.field "SSEKMSEncryptionContext" .ssekmsencryptionContext Codec.string
        |> Codec.field "SSECustomerKeyMD5" .ssecustomerKeyMd5 Codec.string
        |> Codec.field "SSECustomerAlgorithm" .ssecustomerAlgorithm Codec.string
        |> Codec.field "RequestCharged" .requestCharged requestChargedCodec
        |> Codec.field "Key" .key objectKeyCodec
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.field "AbortRuleId" .abortRuleId Codec.string
        |> Codec.field "AbortDate" .abortDate abortDateCodec
        |> Codec.buildObject


{-| Codec for CreateBucketRequest. -}
createBucketRequestCodec : Codec CreateBucketRequest
createBucketRequestCodec =
    Codec.object CreateBucketRequest
        |> Codec.field "ObjectLockEnabledForBucket" .objectLockEnabledForBucket Codec.bool
        |> Codec.field "GrantWriteACP" .grantWriteAcp Codec.string
        |> Codec.field "GrantWrite" .grantWrite Codec.string
        |> Codec.field "GrantReadACP" .grantReadAcp Codec.string
        |> Codec.field "GrantRead" .grantRead Codec.string
        |> Codec.field "GrantFullControl" .grantFullControl Codec.string
        |> Codec.field "CreateBucketConfiguration" .createBucketConfiguration createBucketConfigurationCodec
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.field "ACL" .acl bucketCannedAclcodec
        |> Codec.buildObject


{-| Codec for CreateBucketOutput. -}
createBucketOutputCodec : Codec CreateBucketOutput
createBucketOutputCodec =
    Codec.object CreateBucketOutput |> Codec.field "Location" .location Codec.string |> Codec.buildObject


{-| Codec for CreateBucketConfiguration. -}
createBucketConfigurationCodec : Codec CreateBucketConfiguration
createBucketConfigurationCodec =
    Codec.object CreateBucketConfiguration
        |> Codec.field "LocationConstraint" .locationConstraint bucketLocationConstraintCodec
        |> Codec.buildObject


{-| Codec for CopySourceVersionId. -}
copySourceVersionIdCodec : Codec CopySourceVersionId
copySourceVersionIdCodec =
    Codec.string


{-| Codec for CopySourceSsecustomerKeyMd5. -}
copySourceSsecustomerKeyMd5Codec : Codec CopySourceSsecustomerKeyMd5
copySourceSsecustomerKeyMd5Codec =
    Codec.string


{-| Codec for CopySourceSsecustomerKey. -}
copySourceSsecustomerKeyCodec : Codec CopySourceSsecustomerKey
copySourceSsecustomerKeyCodec =
    Codec.string


{-| Codec for CopySourceSsecustomerAlgorithm. -}
copySourceSsecustomerAlgorithmCodec : Codec CopySourceSsecustomerAlgorithm
copySourceSsecustomerAlgorithmCodec =
    Codec.string


{-| Codec for CopySourceRange. -}
copySourceRangeCodec : Codec CopySourceRange
copySourceRangeCodec =
    Codec.string


{-| Codec for CopySourceIfUnmodifiedSince. -}
copySourceIfUnmodifiedSinceCodec : Codec CopySourceIfUnmodifiedSince
copySourceIfUnmodifiedSinceCodec =
    Codec.string


{-| Codec for CopySourceIfNoneMatch. -}
copySourceIfNoneMatchCodec : Codec CopySourceIfNoneMatch
copySourceIfNoneMatchCodec =
    Codec.string


{-| Codec for CopySourceIfModifiedSince. -}
copySourceIfModifiedSinceCodec : Codec CopySourceIfModifiedSince
copySourceIfModifiedSinceCodec =
    Codec.string


{-| Codec for CopySourceIfMatch. -}
copySourceIfMatchCodec : Codec CopySourceIfMatch
copySourceIfMatchCodec =
    Codec.string


{-| Codec for CopySource. -}
copySourceCodec : Codec CopySource
copySourceCodec =
    Codec.build (Refined.encoder copySource) (Refined.decoder copySource)


{-| Codec for CopyPartResult. -}
copyPartResultCodec : Codec CopyPartResult
copyPartResultCodec =
    Codec.object CopyPartResult
        |> Codec.field "LastModified" .lastModified lastModifiedCodec
        |> Codec.field "ETag" .etag Codec.string
        |> Codec.buildObject


{-| Codec for CopyObjectResult. -}
copyObjectResultCodec : Codec CopyObjectResult
copyObjectResultCodec =
    Codec.object CopyObjectResult
        |> Codec.field "LastModified" .lastModified lastModifiedCodec
        |> Codec.field "ETag" .etag Codec.string
        |> Codec.buildObject


{-| Codec for CopyObjectRequest. -}
copyObjectRequestCodec : Codec CopyObjectRequest
copyObjectRequestCodec =
    Codec.object CopyObjectRequest
        |> Codec.field "WebsiteRedirectLocation" .websiteRedirectLocation Codec.string
        |> Codec.field "TaggingDirective" .taggingDirective taggingDirectiveCodec
        |> Codec.field "Tagging" .tagging Codec.string
        |> Codec.field "StorageClass" .storageClass storageClassCodec
        |> Codec.field "ServerSideEncryption" .serverSideEncryption serverSideEncryptionCodec
        |> Codec.field "SSEKMSKeyId" .ssekmskeyId Codec.string
        |> Codec.field "SSEKMSEncryptionContext" .ssekmsencryptionContext Codec.string
        |> Codec.field "SSECustomerKeyMD5" .ssecustomerKeyMd5 Codec.string
        |> Codec.field "SSECustomerKey" .ssecustomerKey Codec.string
        |> Codec.field "SSECustomerAlgorithm" .ssecustomerAlgorithm Codec.string
        |> Codec.field "RequestPayer" .requestPayer requestPayerCodec
        |> Codec.field "ObjectLockRetainUntilDate" .objectLockRetainUntilDate objectLockRetainUntilDateCodec
        |> Codec.field "ObjectLockMode" .objectLockMode objectLockModeCodec
        |> Codec.field "ObjectLockLegalHoldStatus" .objectLockLegalHoldStatus objectLockLegalHoldStatusCodec
        |> Codec.field "MetadataDirective" .metadataDirective metadataDirectiveCodec
        |> Codec.field "Metadata" .metadata metadataCodec
        |> Codec.field "Key" .key objectKeyCodec
        |> Codec.field "GrantWriteACP" .grantWriteAcp Codec.string
        |> Codec.field "GrantReadACP" .grantReadAcp Codec.string
        |> Codec.field "GrantRead" .grantRead Codec.string
        |> Codec.field "GrantFullControl" .grantFullControl Codec.string
        |> Codec.field "Expires" .expires expiresCodec
        |> Codec.field "CopySourceSSECustomerKeyMD5" .copySourceSsecustomerKeyMd5 Codec.string
        |> Codec.field "CopySourceSSECustomerKey" .copySourceSsecustomerKey Codec.string
        |> Codec.field "CopySourceSSECustomerAlgorithm" .copySourceSsecustomerAlgorithm Codec.string
        |> Codec.field "CopySourceIfUnmodifiedSince" .copySourceIfUnmodifiedSince copySourceIfUnmodifiedSinceCodec
        |> Codec.field "CopySourceIfNoneMatch" .copySourceIfNoneMatch Codec.string
        |> Codec.field "CopySourceIfModifiedSince" .copySourceIfModifiedSince copySourceIfModifiedSinceCodec
        |> Codec.field "CopySourceIfMatch" .copySourceIfMatch Codec.string
        |> Codec.field "CopySource" .copySource copySourceCodec
        |> Codec.field "ContentType" .contentType Codec.string
        |> Codec.field "ContentLanguage" .contentLanguage Codec.string
        |> Codec.field "ContentEncoding" .contentEncoding Codec.string
        |> Codec.field "ContentDisposition" .contentDisposition Codec.string
        |> Codec.field "CacheControl" .cacheControl Codec.string
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.field "ACL" .acl objectCannedAclcodec
        |> Codec.buildObject


{-| Codec for CopyObjectOutput. -}
copyObjectOutputCodec : Codec CopyObjectOutput
copyObjectOutputCodec =
    Codec.object CopyObjectOutput
        |> Codec.field "VersionId" .versionId Codec.string
        |> Codec.field "ServerSideEncryption" .serverSideEncryption serverSideEncryptionCodec
        |> Codec.field "SSEKMSKeyId" .ssekmskeyId Codec.string
        |> Codec.field "SSEKMSEncryptionContext" .ssekmsencryptionContext Codec.string
        |> Codec.field "SSECustomerKeyMD5" .ssecustomerKeyMd5 Codec.string
        |> Codec.field "SSECustomerAlgorithm" .ssecustomerAlgorithm Codec.string
        |> Codec.field "RequestCharged" .requestCharged requestChargedCodec
        |> Codec.field "Expiration" .expiration Codec.string
        |> Codec.field "CopySourceVersionId" .copySourceVersionId Codec.string
        |> Codec.field "CopyObjectResult" .copyObjectResult copyObjectResultCodec
        |> Codec.buildObject


{-| Codec for ContinuationEvent. -}
continuationEventCodec : Codec ContinuationEvent
continuationEventCodec =
    Codec.object ContinuationEvent |> Codec.buildObject


{-| Codec for ContentType. -}
contentTypeCodec : Codec ContentType
contentTypeCodec =
    Codec.string


{-| Codec for ContentRange. -}
contentRangeCodec : Codec ContentRange
contentRangeCodec =
    Codec.string


{-| Codec for ContentMd5. -}
contentMd5Codec : Codec ContentMd5
contentMd5Codec =
    Codec.string


{-| Codec for ContentLength. -}
contentLengthCodec : Codec ContentLength
contentLengthCodec =
    Codec.int


{-| Codec for ContentLanguage. -}
contentLanguageCodec : Codec ContentLanguage
contentLanguageCodec =
    Codec.string


{-| Codec for ContentEncoding. -}
contentEncodingCodec : Codec ContentEncoding
contentEncodingCodec =
    Codec.string


{-| Codec for ContentDisposition. -}
contentDispositionCodec : Codec ContentDisposition
contentDispositionCodec =
    Codec.string


{-| Codec for ConfirmRemoveSelfBucketAccess. -}
confirmRemoveSelfBucketAccessCodec : Codec ConfirmRemoveSelfBucketAccess
confirmRemoveSelfBucketAccessCodec =
    Codec.bool


{-| Codec for Condition. -}
conditionCodec : Codec Condition
conditionCodec =
    Codec.object Condition
        |> Codec.field "KeyPrefixEquals" .keyPrefixEquals Codec.string
        |> Codec.field "HttpErrorCodeReturnedEquals" .httpErrorCodeReturnedEquals Codec.string
        |> Codec.buildObject


{-| Codec for CompressionType. -}
compressionTypeCodec : Codec CompressionType
compressionTypeCodec =
    Codec.build (Enum.encoder compressionType) (Enum.decoder compressionType)


{-| Codec for CompletedPartList. -}
completedPartListCodec : Codec CompletedPartList
completedPartListCodec =
    Codec.list completedPartCodec


{-| Codec for CompletedPart. -}
completedPartCodec : Codec CompletedPart
completedPartCodec =
    Codec.object CompletedPart
        |> Codec.field "PartNumber" .partNumber Codec.int
        |> Codec.field "ETag" .etag Codec.string
        |> Codec.buildObject


{-| Codec for CompletedMultipartUpload. -}
completedMultipartUploadCodec : Codec CompletedMultipartUpload
completedMultipartUploadCodec =
    Codec.object CompletedMultipartUpload |> Codec.field "Parts" .parts completedPartListCodec |> Codec.buildObject


{-| Codec for CompleteMultipartUploadRequest. -}
completeMultipartUploadRequestCodec : Codec CompleteMultipartUploadRequest
completeMultipartUploadRequestCodec =
    Codec.object CompleteMultipartUploadRequest
        |> Codec.field "UploadId" .uploadId Codec.string
        |> Codec.field "RequestPayer" .requestPayer requestPayerCodec
        |> Codec.field "MultipartUpload" .multipartUpload completedMultipartUploadCodec
        |> Codec.field "Key" .key objectKeyCodec
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for CompleteMultipartUploadOutput. -}
completeMultipartUploadOutputCodec : Codec CompleteMultipartUploadOutput
completeMultipartUploadOutputCodec =
    Codec.object CompleteMultipartUploadOutput
        |> Codec.field "VersionId" .versionId Codec.string
        |> Codec.field "ServerSideEncryption" .serverSideEncryption serverSideEncryptionCodec
        |> Codec.field "SSEKMSKeyId" .ssekmskeyId Codec.string
        |> Codec.field "RequestCharged" .requestCharged requestChargedCodec
        |> Codec.field "Location" .location Codec.string
        |> Codec.field "Key" .key objectKeyCodec
        |> Codec.field "Expiration" .expiration Codec.string
        |> Codec.field "ETag" .etag Codec.string
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for CommonPrefixList. -}
commonPrefixListCodec : Codec CommonPrefixList
commonPrefixListCodec =
    Codec.list commonPrefixCodec


{-| Codec for CommonPrefix. -}
commonPrefixCodec : Codec CommonPrefix
commonPrefixCodec =
    Codec.object CommonPrefix |> Codec.field "Prefix" .prefix Codec.string |> Codec.buildObject


{-| Codec for Comments. -}
commentsCodec : Codec Comments
commentsCodec =
    Codec.string


{-| Codec for Code. -}
codeCodec : Codec Code
codeCodec =
    Codec.string


{-| Codec for CloudFunctionInvocationRole. -}
cloudFunctionInvocationRoleCodec : Codec CloudFunctionInvocationRole
cloudFunctionInvocationRoleCodec =
    Codec.string


{-| Codec for CloudFunctionConfiguration. -}
cloudFunctionConfigurationCodec : Codec CloudFunctionConfiguration
cloudFunctionConfigurationCodec =
    Codec.object CloudFunctionConfiguration
        |> Codec.field "InvocationRole" .invocationRole Codec.string
        |> Codec.field "Id" .id Codec.string
        |> Codec.field "Events" .events eventListCodec
        |> Codec.field "Event" .event eventCodec
        |> Codec.field "CloudFunction" .cloudFunction Codec.string
        |> Codec.buildObject


{-| Codec for CloudFunction. -}
cloudFunctionCodec : Codec CloudFunction
cloudFunctionCodec =
    Codec.string


{-| Codec for CacheControl. -}
cacheControlCodec : Codec CacheControl
cacheControlCodec =
    Codec.string


{-| Codec for Csvoutput. -}
csvoutputCodec : Codec Csvoutput
csvoutputCodec =
    Codec.object Csvoutput
        |> Codec.field "RecordDelimiter" .recordDelimiter Codec.string
        |> Codec.field "QuoteFields" .quoteFields quoteFieldsCodec
        |> Codec.field "QuoteEscapeCharacter" .quoteEscapeCharacter Codec.string
        |> Codec.field "QuoteCharacter" .quoteCharacter Codec.string
        |> Codec.field "FieldDelimiter" .fieldDelimiter Codec.string
        |> Codec.buildObject


{-| Codec for Csvinput. -}
csvinputCodec : Codec Csvinput
csvinputCodec =
    Codec.object Csvinput
        |> Codec.field "RecordDelimiter" .recordDelimiter Codec.string
        |> Codec.field "QuoteEscapeCharacter" .quoteEscapeCharacter Codec.string
        |> Codec.field "QuoteCharacter" .quoteCharacter Codec.string
        |> Codec.field "FileHeaderInfo" .fileHeaderInfo fileHeaderInfoCodec
        |> Codec.field "FieldDelimiter" .fieldDelimiter Codec.string
        |> Codec.field "Comments" .comments Codec.string
        |> Codec.field "AllowQuotedRecordDelimiter" .allowQuotedRecordDelimiter Codec.bool
        |> Codec.buildObject


{-| Codec for Corsrules. -}
corsrulesCodec : Codec Corsrules
corsrulesCodec =
    Codec.list corsruleCodec


{-| Codec for Corsrule. -}
corsruleCodec : Codec Corsrule
corsruleCodec =
    Codec.object Corsrule
        |> Codec.field "MaxAgeSeconds" .maxAgeSeconds Codec.int
        |> Codec.field "ExposeHeaders" .exposeHeaders exposeHeadersCodec
        |> Codec.field "AllowedOrigins" .allowedOrigins allowedOriginsCodec
        |> Codec.field "AllowedMethods" .allowedMethods allowedMethodsCodec
        |> Codec.field "AllowedHeaders" .allowedHeaders allowedHeadersCodec
        |> Codec.buildObject


{-| Codec for Corsconfiguration. -}
corsconfigurationCodec : Codec Corsconfiguration
corsconfigurationCodec =
    Codec.object Corsconfiguration |> Codec.field "CORSRules" .corsrules corsrulesCodec |> Codec.buildObject


{-| Codec for BytesScanned. -}
bytesScannedCodec : Codec BytesScanned
bytesScannedCodec =
    Codec.int


{-| Codec for BytesReturned. -}
bytesReturnedCodec : Codec BytesReturned
bytesReturnedCodec =
    Codec.int


{-| Codec for BytesProcessed. -}
bytesProcessedCodec : Codec BytesProcessed
bytesProcessedCodec =
    Codec.int


{-| Codec for BypassGovernanceRetention. -}
bypassGovernanceRetentionCodec : Codec BypassGovernanceRetention
bypassGovernanceRetentionCodec =
    Codec.bool


{-| Codec for Buckets. -}
bucketsCodec : Codec Buckets
bucketsCodec =
    Codec.list bucketCodec


{-| Codec for BucketVersioningStatus. -}
bucketVersioningStatusCodec : Codec BucketVersioningStatus
bucketVersioningStatusCodec =
    Codec.build (Enum.encoder bucketVersioningStatus) (Enum.decoder bucketVersioningStatus)


{-| Codec for BucketName. -}
bucketNameCodec : Codec BucketName
bucketNameCodec =
    Codec.string


{-| Codec for BucketLogsPermission. -}
bucketLogsPermissionCodec : Codec BucketLogsPermission
bucketLogsPermissionCodec =
    Codec.build (Enum.encoder bucketLogsPermission) (Enum.decoder bucketLogsPermission)


{-| Codec for BucketLoggingStatus. -}
bucketLoggingStatusCodec : Codec BucketLoggingStatus
bucketLoggingStatusCodec =
    Codec.object BucketLoggingStatus
        |> Codec.field "LoggingEnabled" .loggingEnabled loggingEnabledCodec
        |> Codec.buildObject


{-| Codec for BucketLocationConstraint. -}
bucketLocationConstraintCodec : Codec BucketLocationConstraint
bucketLocationConstraintCodec =
    Codec.build (Enum.encoder bucketLocationConstraint) (Enum.decoder bucketLocationConstraint)


{-| Codec for BucketLifecycleConfiguration. -}
bucketLifecycleConfigurationCodec : Codec BucketLifecycleConfiguration
bucketLifecycleConfigurationCodec =
    Codec.object BucketLifecycleConfiguration |> Codec.field "Rules" .rules lifecycleRulesCodec |> Codec.buildObject


{-| Codec for BucketCannedAcl. -}
bucketCannedAclcodec : Codec BucketCannedAcl
bucketCannedAclcodec =
    Codec.build (Enum.encoder bucketCannedAcl) (Enum.decoder bucketCannedAcl)


{-| Codec for BucketAccelerateStatus. -}
bucketAccelerateStatusCodec : Codec BucketAccelerateStatus
bucketAccelerateStatusCodec =
    Codec.build (Enum.encoder bucketAccelerateStatus) (Enum.decoder bucketAccelerateStatus)


{-| Codec for Bucket. -}
bucketCodec : Codec Bucket
bucketCodec =
    Codec.object Bucket
        |> Codec.field "Name" .name Codec.string
        |> Codec.field "CreationDate" .creationDate creationDateCodec
        |> Codec.buildObject


{-| Codec for Body. -}
bodyCodec : Codec Body
bodyCodec =
    Codec.string


{-| Codec for AnalyticsS3ExportFileFormat. -}
analyticsS3ExportFileFormatCodec : Codec AnalyticsS3ExportFileFormat
analyticsS3ExportFileFormatCodec =
    Codec.build (Enum.encoder analyticsS3ExportFileFormat) (Enum.decoder analyticsS3ExportFileFormat)


{-| Codec for AnalyticsS3BucketDestination. -}
analyticsS3BucketDestinationCodec : Codec AnalyticsS3BucketDestination
analyticsS3BucketDestinationCodec =
    Codec.object AnalyticsS3BucketDestination
        |> Codec.field "Prefix" .prefix Codec.string
        |> Codec.field "Format" .format analyticsS3ExportFileFormatCodec
        |> Codec.field "BucketAccountId" .bucketAccountId Codec.string
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for AnalyticsId. -}
analyticsIdCodec : Codec AnalyticsId
analyticsIdCodec =
    Codec.string


{-| Codec for AnalyticsFilter. -}
analyticsFilterCodec : Codec AnalyticsFilter
analyticsFilterCodec =
    Codec.object AnalyticsFilter
        |> Codec.field "Tag" .tag tagCodec
        |> Codec.field "Prefix" .prefix Codec.string
        |> Codec.field "And" .and analyticsAndOperatorCodec
        |> Codec.buildObject


{-| Codec for AnalyticsExportDestination. -}
analyticsExportDestinationCodec : Codec AnalyticsExportDestination
analyticsExportDestinationCodec =
    Codec.object AnalyticsExportDestination
        |> Codec.field "S3BucketDestination" .s3BucketDestination analyticsS3BucketDestinationCodec
        |> Codec.buildObject


{-| Codec for AnalyticsConfigurationList. -}
analyticsConfigurationListCodec : Codec AnalyticsConfigurationList
analyticsConfigurationListCodec =
    Codec.list analyticsConfigurationCodec


{-| Codec for AnalyticsConfiguration. -}
analyticsConfigurationCodec : Codec AnalyticsConfiguration
analyticsConfigurationCodec =
    Codec.object AnalyticsConfiguration
        |> Codec.field "StorageClassAnalysis" .storageClassAnalysis storageClassAnalysisCodec
        |> Codec.field "Id" .id Codec.string
        |> Codec.field "Filter" .filter analyticsFilterCodec
        |> Codec.buildObject


{-| Codec for AnalyticsAndOperator. -}
analyticsAndOperatorCodec : Codec AnalyticsAndOperator
analyticsAndOperatorCodec =
    Codec.object AnalyticsAndOperator
        |> Codec.field "Tags" .tags tagSetCodec
        |> Codec.field "Prefix" .prefix Codec.string
        |> Codec.buildObject


{-| Codec for AllowedOrigins. -}
allowedOriginsCodec : Codec AllowedOrigins
allowedOriginsCodec =
    Codec.list Codec.string


{-| Codec for AllowedOrigin. -}
allowedOriginCodec : Codec AllowedOrigin
allowedOriginCodec =
    Codec.string


{-| Codec for AllowedMethods. -}
allowedMethodsCodec : Codec AllowedMethods
allowedMethodsCodec =
    Codec.list Codec.string


{-| Codec for AllowedMethod. -}
allowedMethodCodec : Codec AllowedMethod
allowedMethodCodec =
    Codec.string


{-| Codec for AllowedHeaders. -}
allowedHeadersCodec : Codec AllowedHeaders
allowedHeadersCodec =
    Codec.list Codec.string


{-| Codec for AllowedHeader. -}
allowedHeaderCodec : Codec AllowedHeader
allowedHeaderCodec =
    Codec.string


{-| Codec for AllowQuotedRecordDelimiter. -}
allowQuotedRecordDelimiterCodec : Codec AllowQuotedRecordDelimiter
allowQuotedRecordDelimiterCodec =
    Codec.bool


{-| Codec for AccountId. -}
accountIdCodec : Codec AccountId
accountIdCodec =
    Codec.string


{-| Codec for AccessControlTranslation. -}
accessControlTranslationCodec : Codec AccessControlTranslation
accessControlTranslationCodec =
    Codec.object AccessControlTranslation |> Codec.field "Owner" .owner ownerOverrideCodec |> Codec.buildObject


{-| Codec for AccessControlPolicy. -}
accessControlPolicyCodec : Codec AccessControlPolicy
accessControlPolicyCodec =
    Codec.object AccessControlPolicy
        |> Codec.field "Owner" .owner ownerCodec
        |> Codec.field "Grants" .grants grantsCodec
        |> Codec.buildObject


{-| Codec for AcceptRanges. -}
acceptRangesCodec : Codec AcceptRanges
acceptRangesCodec =
    Codec.string


{-| Codec for AccelerateConfiguration. -}
accelerateConfigurationCodec : Codec AccelerateConfiguration
accelerateConfigurationCodec =
    Codec.object AccelerateConfiguration
        |> Codec.field "Status" .status bucketAccelerateStatusCodec
        |> Codec.buildObject


{-| Codec for AbortRuleId. -}
abortRuleIdCodec : Codec AbortRuleId
abortRuleIdCodec =
    Codec.string


{-| Codec for AbortMultipartUploadRequest. -}
abortMultipartUploadRequestCodec : Codec AbortMultipartUploadRequest
abortMultipartUploadRequestCodec =
    Codec.object AbortMultipartUploadRequest
        |> Codec.field "UploadId" .uploadId Codec.string
        |> Codec.field "RequestPayer" .requestPayer requestPayerCodec
        |> Codec.field "Key" .key objectKeyCodec
        |> Codec.field "Bucket" .bucket Codec.string
        |> Codec.buildObject


{-| Codec for AbortMultipartUploadOutput. -}
abortMultipartUploadOutputCodec : Codec AbortMultipartUploadOutput
abortMultipartUploadOutputCodec =
    Codec.object AbortMultipartUploadOutput
        |> Codec.field "RequestCharged" .requestCharged requestChargedCodec
        |> Codec.buildObject


{-| Codec for AbortIncompleteMultipartUpload. -}
abortIncompleteMultipartUploadCodec : Codec AbortIncompleteMultipartUpload
abortIncompleteMultipartUploadCodec =
    Codec.object AbortIncompleteMultipartUpload
        |> Codec.field "DaysAfterInitiation" .daysAfterInitiation Codec.int
        |> Codec.buildObject


{-| Codec for AbortDate. -}
abortDateCodec : Codec AbortDate
abortDateCodec =
    Codec.string
