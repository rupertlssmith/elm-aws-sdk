module AWS.Rds exposing (service)

import AWS.Core.Decode
import AWS.Core.Http
import AWS.Core.Service
import Codec exposing (Codec)
import Enum exposing (Enum)


{-| Configuration for this service. -}
service : AWS.Core.Service.Service
service =
    let
        optionsFn =
            AWS.Core.Service.setXmlNamespace "http://rds.amazonaws.com/doc/2014-10-31/"
    in
    AWS.Core.Service.defineGlobal "rds" "2014-10-31" AWS.Core.Service.QUERY AWS.Core.Service.SignV4 optionsFn


{-| AWS Endpoint. -}
stopDbinstance : StopDbinstanceMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StopDbinstanceResult)
stopDbinstance req =
    let
        jsonBody =
            req |> Codec.encoder stopDbinstanceMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "StopDbinstance"
                (AWS.Core.Decode.ResultDecoder "StopDBInstanceResult" (Codec.decoder stopDbinstanceResultCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
stopDbcluster : StopDbclusterMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StopDbclusterResult)
stopDbcluster req =
    let
        jsonBody =
            req |> Codec.encoder stopDbclusterMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "StopDbcluster"
                (AWS.Core.Decode.ResultDecoder "StopDBClusterResult" (Codec.decoder stopDbclusterResultCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
stopActivityStream :
    StopActivityStreamRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StopActivityStreamResponse)
stopActivityStream req =
    let
        jsonBody =
            req |> Codec.encoder stopActivityStreamRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "StopActivityStream"
                (AWS.Core.Decode.ResultDecoder
                    "StopActivityStreamResponse"
                    (Codec.decoder stopActivityStreamResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
startDbinstance :
    StartDbinstanceMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartDbinstanceResult)
startDbinstance req =
    let
        jsonBody =
            req |> Codec.encoder startDbinstanceMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "StartDbinstance"
                (AWS.Core.Decode.ResultDecoder "StartDBInstanceResult" (Codec.decoder startDbinstanceResultCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
startDbcluster : StartDbclusterMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartDbclusterResult)
startDbcluster req =
    let
        jsonBody =
            req |> Codec.encoder startDbclusterMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "StartDbcluster"
                (AWS.Core.Decode.ResultDecoder "StartDBClusterResult" (Codec.decoder startDbclusterResultCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
startActivityStream :
    StartActivityStreamRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartActivityStreamResponse)
startActivityStream req =
    let
        jsonBody =
            req |> Codec.encoder startActivityStreamRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "StartActivityStream"
                (AWS.Core.Decode.ResultDecoder
                    "StartActivityStreamResponse"
                    (Codec.decoder startActivityStreamResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
revokeDbsecurityGroupIngress :
    RevokeDbsecurityGroupIngressMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RevokeDbsecurityGroupIngressResult)
revokeDbsecurityGroupIngress req =
    let
        jsonBody =
            req |> Codec.encoder revokeDbsecurityGroupIngressMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "RevokeDbsecurityGroupIngress"
                (AWS.Core.Decode.ResultDecoder
                    "RevokeDBSecurityGroupIngressResult"
                    (Codec.decoder revokeDbsecurityGroupIngressResultCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
restoreDbinstanceToPointInTime :
    RestoreDbinstanceToPointInTimeMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RestoreDbinstanceToPointInTimeResult)
restoreDbinstanceToPointInTime req =
    let
        jsonBody =
            req |> Codec.encoder restoreDbinstanceToPointInTimeMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "RestoreDbinstanceToPointInTime"
                (AWS.Core.Decode.ResultDecoder
                    "RestoreDBInstanceToPointInTimeResult"
                    (Codec.decoder restoreDbinstanceToPointInTimeResultCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
restoreDbinstanceFromS3 :
    RestoreDbinstanceFromS3Message
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RestoreDbinstanceFromS3Result)
restoreDbinstanceFromS3 req =
    let
        jsonBody =
            req |> Codec.encoder restoreDbinstanceFromS3MessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "RestoreDbinstanceFromS3"
                (AWS.Core.Decode.ResultDecoder
                    "RestoreDBInstanceFromS3Result"
                    (Codec.decoder restoreDbinstanceFromS3ResultCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
restoreDbinstanceFromDbsnapshot :
    RestoreDbinstanceFromDbsnapshotMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RestoreDbinstanceFromDbsnapshotResult)
restoreDbinstanceFromDbsnapshot req =
    let
        jsonBody =
            req |> Codec.encoder restoreDbinstanceFromDbsnapshotMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "RestoreDbinstanceFromDbsnapshot"
                (AWS.Core.Decode.ResultDecoder
                    "RestoreDBInstanceFromDBSnapshotResult"
                    (Codec.decoder restoreDbinstanceFromDbsnapshotResultCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
restoreDbclusterToPointInTime :
    RestoreDbclusterToPointInTimeMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RestoreDbclusterToPointInTimeResult)
restoreDbclusterToPointInTime req =
    let
        jsonBody =
            req |> Codec.encoder restoreDbclusterToPointInTimeMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "RestoreDbclusterToPointInTime"
                (AWS.Core.Decode.ResultDecoder
                    "RestoreDBClusterToPointInTimeResult"
                    (Codec.decoder restoreDbclusterToPointInTimeResultCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
restoreDbclusterFromSnapshot :
    RestoreDbclusterFromSnapshotMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RestoreDbclusterFromSnapshotResult)
restoreDbclusterFromSnapshot req =
    let
        jsonBody =
            req |> Codec.encoder restoreDbclusterFromSnapshotMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "RestoreDbclusterFromSnapshot"
                (AWS.Core.Decode.ResultDecoder
                    "RestoreDBClusterFromSnapshotResult"
                    (Codec.decoder restoreDbclusterFromSnapshotResultCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
restoreDbclusterFromS3 :
    RestoreDbclusterFromS3Message
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RestoreDbclusterFromS3Result)
restoreDbclusterFromS3 req =
    let
        jsonBody =
            req |> Codec.encoder restoreDbclusterFromS3MessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "RestoreDbclusterFromS3"
                (AWS.Core.Decode.ResultDecoder
                    "RestoreDBClusterFromS3Result"
                    (Codec.decoder restoreDbclusterFromS3ResultCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
resetDbparameterGroup :
    ResetDbparameterGroupMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DbparameterGroupNameMessage)
resetDbparameterGroup req =
    let
        jsonBody =
            req |> Codec.encoder resetDbparameterGroupMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ResetDbparameterGroup"
                (AWS.Core.Decode.ResultDecoder
                    "DBParameterGroupNameMessage"
                    (Codec.decoder dbparameterGroupNameMessageCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
resetDbclusterParameterGroup :
    ResetDbclusterParameterGroupMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DbclusterParameterGroupNameMessage)
resetDbclusterParameterGroup req =
    let
        jsonBody =
            req |> Codec.encoder resetDbclusterParameterGroupMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ResetDbclusterParameterGroup"
                (AWS.Core.Decode.ResultDecoder
                    "DBClusterParameterGroupNameMessage"
                    (Codec.decoder dbclusterParameterGroupNameMessageCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
removeTagsFromResource : RemoveTagsFromResourceMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
removeTagsFromResource req =
    let
        jsonBody =
            req |> Codec.encoder removeTagsFromResourceMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "RemoveTagsFromResource" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
removeSourceIdentifierFromSubscription :
    RemoveSourceIdentifierFromSubscriptionMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RemoveSourceIdentifierFromSubscriptionResult)
removeSourceIdentifierFromSubscription req =
    let
        jsonBody =
            req |> Codec.encoder removeSourceIdentifierFromSubscriptionMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "RemoveSourceIdentifierFromSubscription"
                (AWS.Core.Decode.ResultDecoder
                    "RemoveSourceIdentifierFromSubscriptionResult"
                    (Codec.decoder removeSourceIdentifierFromSubscriptionResultCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
removeRoleFromDbinstance : RemoveRoleFromDbinstanceMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
removeRoleFromDbinstance req =
    let
        jsonBody =
            req |> Codec.encoder removeRoleFromDbinstanceMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "RemoveRoleFromDbinstance" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
removeRoleFromDbcluster : RemoveRoleFromDbclusterMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
removeRoleFromDbcluster req =
    let
        jsonBody =
            req |> Codec.encoder removeRoleFromDbclusterMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "RemoveRoleFromDbcluster" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
removeFromGlobalCluster :
    RemoveFromGlobalClusterMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RemoveFromGlobalClusterResult)
removeFromGlobalCluster req =
    let
        jsonBody =
            req |> Codec.encoder removeFromGlobalClusterMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "RemoveFromGlobalCluster"
                (AWS.Core.Decode.ResultDecoder
                    "RemoveFromGlobalClusterResult"
                    (Codec.decoder removeFromGlobalClusterResultCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
rebootDbinstance :
    RebootDbinstanceMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RebootDbinstanceResult)
rebootDbinstance req =
    let
        jsonBody =
            req |> Codec.encoder rebootDbinstanceMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "RebootDbinstance"
                (AWS.Core.Decode.ResultDecoder "RebootDBInstanceResult" (Codec.decoder rebootDbinstanceResultCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
purchaseReservedDbinstancesOffering :
    PurchaseReservedDbinstancesOfferingMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PurchaseReservedDbinstancesOfferingResult)
purchaseReservedDbinstancesOffering req =
    let
        jsonBody =
            req |> Codec.encoder purchaseReservedDbinstancesOfferingMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "PurchaseReservedDbinstancesOffering"
                (AWS.Core.Decode.ResultDecoder
                    "PurchaseReservedDBInstancesOfferingResult"
                    (Codec.decoder purchaseReservedDbinstancesOfferingResultCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
promoteReadReplicaDbcluster :
    PromoteReadReplicaDbclusterMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PromoteReadReplicaDbclusterResult)
promoteReadReplicaDbcluster req =
    let
        jsonBody =
            req |> Codec.encoder promoteReadReplicaDbclusterMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "PromoteReadReplicaDbcluster"
                (AWS.Core.Decode.ResultDecoder
                    "PromoteReadReplicaDBClusterResult"
                    (Codec.decoder promoteReadReplicaDbclusterResultCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
promoteReadReplica :
    PromoteReadReplicaMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PromoteReadReplicaResult)
promoteReadReplica req =
    let
        jsonBody =
            req |> Codec.encoder promoteReadReplicaMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "PromoteReadReplica"
                (AWS.Core.Decode.ResultDecoder "PromoteReadReplicaResult" (Codec.decoder promoteReadReplicaResultCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
modifyOptionGroup :
    ModifyOptionGroupMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyOptionGroupResult)
modifyOptionGroup req =
    let
        jsonBody =
            req |> Codec.encoder modifyOptionGroupMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ModifyOptionGroup"
                (AWS.Core.Decode.ResultDecoder "ModifyOptionGroupResult" (Codec.decoder modifyOptionGroupResultCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
modifyGlobalCluster :
    ModifyGlobalClusterMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyGlobalClusterResult)
modifyGlobalCluster req =
    let
        jsonBody =
            req |> Codec.encoder modifyGlobalClusterMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ModifyGlobalCluster"
                (AWS.Core.Decode.ResultDecoder
                    "ModifyGlobalClusterResult"
                    (Codec.decoder modifyGlobalClusterResultCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
modifyEventSubscription :
    ModifyEventSubscriptionMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyEventSubscriptionResult)
modifyEventSubscription req =
    let
        jsonBody =
            req |> Codec.encoder modifyEventSubscriptionMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ModifyEventSubscription"
                (AWS.Core.Decode.ResultDecoder
                    "ModifyEventSubscriptionResult"
                    (Codec.decoder modifyEventSubscriptionResultCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
modifyDbsubnetGroup :
    ModifyDbsubnetGroupMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyDbsubnetGroupResult)
modifyDbsubnetGroup req =
    let
        jsonBody =
            req |> Codec.encoder modifyDbsubnetGroupMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ModifyDbsubnetGroup"
                (AWS.Core.Decode.ResultDecoder
                    "ModifyDBSubnetGroupResult"
                    (Codec.decoder modifyDbsubnetGroupResultCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
modifyDbsnapshotAttribute :
    ModifyDbsnapshotAttributeMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyDbsnapshotAttributeResult)
modifyDbsnapshotAttribute req =
    let
        jsonBody =
            req |> Codec.encoder modifyDbsnapshotAttributeMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ModifyDbsnapshotAttribute"
                (AWS.Core.Decode.ResultDecoder
                    "ModifyDBSnapshotAttributeResult"
                    (Codec.decoder modifyDbsnapshotAttributeResultCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
modifyDbsnapshot :
    ModifyDbsnapshotMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyDbsnapshotResult)
modifyDbsnapshot req =
    let
        jsonBody =
            req |> Codec.encoder modifyDbsnapshotMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ModifyDbsnapshot"
                (AWS.Core.Decode.ResultDecoder "ModifyDBSnapshotResult" (Codec.decoder modifyDbsnapshotResultCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
modifyDbparameterGroup :
    ModifyDbparameterGroupMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DbparameterGroupNameMessage)
modifyDbparameterGroup req =
    let
        jsonBody =
            req |> Codec.encoder modifyDbparameterGroupMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ModifyDbparameterGroup"
                (AWS.Core.Decode.ResultDecoder
                    "DBParameterGroupNameMessage"
                    (Codec.decoder dbparameterGroupNameMessageCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
modifyDbinstance :
    ModifyDbinstanceMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyDbinstanceResult)
modifyDbinstance req =
    let
        jsonBody =
            req |> Codec.encoder modifyDbinstanceMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ModifyDbinstance"
                (AWS.Core.Decode.ResultDecoder "ModifyDBInstanceResult" (Codec.decoder modifyDbinstanceResultCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
modifyDbclusterSnapshotAttribute :
    ModifyDbclusterSnapshotAttributeMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyDbclusterSnapshotAttributeResult)
modifyDbclusterSnapshotAttribute req =
    let
        jsonBody =
            req |> Codec.encoder modifyDbclusterSnapshotAttributeMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ModifyDbclusterSnapshotAttribute"
                (AWS.Core.Decode.ResultDecoder
                    "ModifyDBClusterSnapshotAttributeResult"
                    (Codec.decoder modifyDbclusterSnapshotAttributeResultCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
modifyDbclusterParameterGroup :
    ModifyDbclusterParameterGroupMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DbclusterParameterGroupNameMessage)
modifyDbclusterParameterGroup req =
    let
        jsonBody =
            req |> Codec.encoder modifyDbclusterParameterGroupMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ModifyDbclusterParameterGroup"
                (AWS.Core.Decode.ResultDecoder
                    "DBClusterParameterGroupNameMessage"
                    (Codec.decoder dbclusterParameterGroupNameMessageCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
modifyDbclusterEndpoint :
    ModifyDbclusterEndpointMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DbclusterEndpoint)
modifyDbclusterEndpoint req =
    let
        jsonBody =
            req |> Codec.encoder modifyDbclusterEndpointMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ModifyDbclusterEndpoint"
                (AWS.Core.Decode.ResultDecoder "DBClusterEndpoint" (Codec.decoder dbclusterEndpointCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
modifyDbcluster :
    ModifyDbclusterMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyDbclusterResult)
modifyDbcluster req =
    let
        jsonBody =
            req |> Codec.encoder modifyDbclusterMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ModifyDbcluster"
                (AWS.Core.Decode.ResultDecoder "ModifyDBClusterResult" (Codec.decoder modifyDbclusterResultCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
modifyCurrentDbclusterCapacity :
    ModifyCurrentDbclusterCapacityMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DbclusterCapacityInfo)
modifyCurrentDbclusterCapacity req =
    let
        jsonBody =
            req |> Codec.encoder modifyCurrentDbclusterCapacityMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ModifyCurrentDbclusterCapacity"
                (AWS.Core.Decode.ResultDecoder "DBClusterCapacityInfo" (Codec.decoder dbclusterCapacityInfoCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listTagsForResource :
    ListTagsForResourceMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TagListMessage)
listTagsForResource req =
    let
        jsonBody =
            req |> Codec.encoder listTagsForResourceMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListTagsForResource"
                (AWS.Core.Decode.ResultDecoder "TagListMessage" (Codec.decoder tagListMessageCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
failoverDbcluster :
    FailoverDbclusterMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper FailoverDbclusterResult)
failoverDbcluster req =
    let
        jsonBody =
            req |> Codec.encoder failoverDbclusterMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "FailoverDbcluster"
                (AWS.Core.Decode.ResultDecoder "FailoverDBClusterResult" (Codec.decoder failoverDbclusterResultCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
downloadDblogFilePortion :
    DownloadDblogFilePortionMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DownloadDblogFilePortionDetails)
downloadDblogFilePortion req =
    let
        jsonBody =
            req |> Codec.encoder downloadDblogFilePortionMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DownloadDblogFilePortion"
                (AWS.Core.Decode.ResultDecoder
                    "DownloadDBLogFilePortionDetails"
                    (Codec.decoder downloadDblogFilePortionDetailsCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeValidDbinstanceModifications :
    DescribeValidDbinstanceModificationsMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeValidDbinstanceModificationsResult)
describeValidDbinstanceModifications req =
    let
        jsonBody =
            req |> Codec.encoder describeValidDbinstanceModificationsMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeValidDbinstanceModifications"
                (AWS.Core.Decode.ResultDecoder
                    "DescribeValidDBInstanceModificationsResult"
                    (Codec.decoder describeValidDbinstanceModificationsResultCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeSourceRegions :
    DescribeSourceRegionsMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SourceRegionMessage)
describeSourceRegions req =
    let
        jsonBody =
            req |> Codec.encoder describeSourceRegionsMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeSourceRegions"
                (AWS.Core.Decode.ResultDecoder "SourceRegionMessage" (Codec.decoder sourceRegionMessageCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeReservedDbinstancesOfferings :
    DescribeReservedDbinstancesOfferingsMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ReservedDbinstancesOfferingMessage)
describeReservedDbinstancesOfferings req =
    let
        jsonBody =
            req |> Codec.encoder describeReservedDbinstancesOfferingsMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeReservedDbinstancesOfferings"
                (AWS.Core.Decode.ResultDecoder
                    "ReservedDBInstancesOfferingMessage"
                    (Codec.decoder reservedDbinstancesOfferingMessageCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeReservedDbinstances :
    DescribeReservedDbinstancesMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ReservedDbinstanceMessage)
describeReservedDbinstances req =
    let
        jsonBody =
            req |> Codec.encoder describeReservedDbinstancesMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeReservedDbinstances"
                (AWS.Core.Decode.ResultDecoder
                    "ReservedDBInstanceMessage"
                    (Codec.decoder reservedDbinstanceMessageCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describePendingMaintenanceActions :
    DescribePendingMaintenanceActionsMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PendingMaintenanceActionsMessage)
describePendingMaintenanceActions req =
    let
        jsonBody =
            req |> Codec.encoder describePendingMaintenanceActionsMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribePendingMaintenanceActions"
                (AWS.Core.Decode.ResultDecoder
                    "PendingMaintenanceActionsMessage"
                    (Codec.decoder pendingMaintenanceActionsMessageCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeOrderableDbinstanceOptions :
    DescribeOrderableDbinstanceOptionsMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper OrderableDbinstanceOptionsMessage)
describeOrderableDbinstanceOptions req =
    let
        jsonBody =
            req |> Codec.encoder describeOrderableDbinstanceOptionsMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeOrderableDbinstanceOptions"
                (AWS.Core.Decode.ResultDecoder
                    "OrderableDBInstanceOptionsMessage"
                    (Codec.decoder orderableDbinstanceOptionsMessageCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeOptionGroups :
    DescribeOptionGroupsMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper OptionGroups)
describeOptionGroups req =
    let
        jsonBody =
            req |> Codec.encoder describeOptionGroupsMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeOptionGroups"
                (AWS.Core.Decode.ResultDecoder "OptionGroups" (Codec.decoder optionGroupsCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeOptionGroupOptions :
    DescribeOptionGroupOptionsMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper OptionGroupOptionsMessage)
describeOptionGroupOptions req =
    let
        jsonBody =
            req |> Codec.encoder describeOptionGroupOptionsMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeOptionGroupOptions"
                (AWS.Core.Decode.ResultDecoder
                    "OptionGroupOptionsMessage"
                    (Codec.decoder optionGroupOptionsMessageCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeGlobalClusters :
    DescribeGlobalClustersMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GlobalClustersMessage)
describeGlobalClusters req =
    let
        jsonBody =
            req |> Codec.encoder describeGlobalClustersMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeGlobalClusters"
                (AWS.Core.Decode.ResultDecoder "GlobalClustersMessage" (Codec.decoder globalClustersMessageCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeEvents : DescribeEventsMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper EventsMessage)
describeEvents req =
    let
        jsonBody =
            req |> Codec.encoder describeEventsMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeEvents"
                (AWS.Core.Decode.ResultDecoder "EventsMessage" (Codec.decoder eventsMessageCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeEventSubscriptions :
    DescribeEventSubscriptionsMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper EventSubscriptionsMessage)
describeEventSubscriptions req =
    let
        jsonBody =
            req |> Codec.encoder describeEventSubscriptionsMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeEventSubscriptions"
                (AWS.Core.Decode.ResultDecoder
                    "EventSubscriptionsMessage"
                    (Codec.decoder eventSubscriptionsMessageCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeEventCategories :
    DescribeEventCategoriesMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper EventCategoriesMessage)
describeEventCategories req =
    let
        jsonBody =
            req |> Codec.encoder describeEventCategoriesMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeEventCategories"
                (AWS.Core.Decode.ResultDecoder "EventCategoriesMessage" (Codec.decoder eventCategoriesMessageCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeEngineDefaultParameters :
    DescribeEngineDefaultParametersMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeEngineDefaultParametersResult)
describeEngineDefaultParameters req =
    let
        jsonBody =
            req |> Codec.encoder describeEngineDefaultParametersMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeEngineDefaultParameters"
                (AWS.Core.Decode.ResultDecoder
                    "DescribeEngineDefaultParametersResult"
                    (Codec.decoder describeEngineDefaultParametersResultCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeEngineDefaultClusterParameters :
    DescribeEngineDefaultClusterParametersMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeEngineDefaultClusterParametersResult)
describeEngineDefaultClusterParameters req =
    let
        jsonBody =
            req |> Codec.encoder describeEngineDefaultClusterParametersMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeEngineDefaultClusterParameters"
                (AWS.Core.Decode.ResultDecoder
                    "DescribeEngineDefaultClusterParametersResult"
                    (Codec.decoder describeEngineDefaultClusterParametersResultCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeDbsubnetGroups :
    DescribeDbsubnetGroupsMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DbsubnetGroupMessage)
describeDbsubnetGroups req =
    let
        jsonBody =
            req |> Codec.encoder describeDbsubnetGroupsMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeDbsubnetGroups"
                (AWS.Core.Decode.ResultDecoder "DBSubnetGroupMessage" (Codec.decoder dbsubnetGroupMessageCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeDbsnapshots :
    DescribeDbsnapshotsMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DbsnapshotMessage)
describeDbsnapshots req =
    let
        jsonBody =
            req |> Codec.encoder describeDbsnapshotsMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeDbsnapshots"
                (AWS.Core.Decode.ResultDecoder "DBSnapshotMessage" (Codec.decoder dbsnapshotMessageCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeDbsnapshotAttributes :
    DescribeDbsnapshotAttributesMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeDbsnapshotAttributesResult)
describeDbsnapshotAttributes req =
    let
        jsonBody =
            req |> Codec.encoder describeDbsnapshotAttributesMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeDbsnapshotAttributes"
                (AWS.Core.Decode.ResultDecoder
                    "DescribeDBSnapshotAttributesResult"
                    (Codec.decoder describeDbsnapshotAttributesResultCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeDbsecurityGroups :
    DescribeDbsecurityGroupsMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DbsecurityGroupMessage)
describeDbsecurityGroups req =
    let
        jsonBody =
            req |> Codec.encoder describeDbsecurityGroupsMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeDbsecurityGroups"
                (AWS.Core.Decode.ResultDecoder "DBSecurityGroupMessage" (Codec.decoder dbsecurityGroupMessageCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeDbparameters :
    DescribeDbparametersMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DbparameterGroupDetails)
describeDbparameters req =
    let
        jsonBody =
            req |> Codec.encoder describeDbparametersMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeDbparameters"
                (AWS.Core.Decode.ResultDecoder "DBParameterGroupDetails" (Codec.decoder dbparameterGroupDetailsCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeDbparameterGroups :
    DescribeDbparameterGroupsMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DbparameterGroupsMessage)
describeDbparameterGroups req =
    let
        jsonBody =
            req |> Codec.encoder describeDbparameterGroupsMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeDbparameterGroups"
                (AWS.Core.Decode.ResultDecoder "DBParameterGroupsMessage" (Codec.decoder dbparameterGroupsMessageCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeDblogFiles :
    DescribeDblogFilesMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeDblogFilesResponse)
describeDblogFiles req =
    let
        jsonBody =
            req |> Codec.encoder describeDblogFilesMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeDblogFiles"
                (AWS.Core.Decode.ResultDecoder
                    "DescribeDBLogFilesResponse"
                    (Codec.decoder describeDblogFilesResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeDbinstances :
    DescribeDbinstancesMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DbinstanceMessage)
describeDbinstances req =
    let
        jsonBody =
            req |> Codec.encoder describeDbinstancesMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeDbinstances"
                (AWS.Core.Decode.ResultDecoder "DBInstanceMessage" (Codec.decoder dbinstanceMessageCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeDbinstanceAutomatedBackups :
    DescribeDbinstanceAutomatedBackupsMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DbinstanceAutomatedBackupMessage)
describeDbinstanceAutomatedBackups req =
    let
        jsonBody =
            req |> Codec.encoder describeDbinstanceAutomatedBackupsMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeDbinstanceAutomatedBackups"
                (AWS.Core.Decode.ResultDecoder
                    "DBInstanceAutomatedBackupMessage"
                    (Codec.decoder dbinstanceAutomatedBackupMessageCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeDbengineVersions :
    DescribeDbengineVersionsMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DbengineVersionMessage)
describeDbengineVersions req =
    let
        jsonBody =
            req |> Codec.encoder describeDbengineVersionsMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeDbengineVersions"
                (AWS.Core.Decode.ResultDecoder "DBEngineVersionMessage" (Codec.decoder dbengineVersionMessageCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeDbclusters :
    DescribeDbclustersMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DbclusterMessage)
describeDbclusters req =
    let
        jsonBody =
            req |> Codec.encoder describeDbclustersMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeDbclusters"
                (AWS.Core.Decode.ResultDecoder "DBClusterMessage" (Codec.decoder dbclusterMessageCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeDbclusterSnapshots :
    DescribeDbclusterSnapshotsMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DbclusterSnapshotMessage)
describeDbclusterSnapshots req =
    let
        jsonBody =
            req |> Codec.encoder describeDbclusterSnapshotsMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeDbclusterSnapshots"
                (AWS.Core.Decode.ResultDecoder "DBClusterSnapshotMessage" (Codec.decoder dbclusterSnapshotMessageCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeDbclusterSnapshotAttributes :
    DescribeDbclusterSnapshotAttributesMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeDbclusterSnapshotAttributesResult)
describeDbclusterSnapshotAttributes req =
    let
        jsonBody =
            req |> Codec.encoder describeDbclusterSnapshotAttributesMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeDbclusterSnapshotAttributes"
                (AWS.Core.Decode.ResultDecoder
                    "DescribeDBClusterSnapshotAttributesResult"
                    (Codec.decoder describeDbclusterSnapshotAttributesResultCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeDbclusterParameters :
    DescribeDbclusterParametersMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DbclusterParameterGroupDetails)
describeDbclusterParameters req =
    let
        jsonBody =
            req |> Codec.encoder describeDbclusterParametersMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeDbclusterParameters"
                (AWS.Core.Decode.ResultDecoder
                    "DBClusterParameterGroupDetails"
                    (Codec.decoder dbclusterParameterGroupDetailsCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeDbclusterParameterGroups :
    DescribeDbclusterParameterGroupsMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DbclusterParameterGroupsMessage)
describeDbclusterParameterGroups req =
    let
        jsonBody =
            req |> Codec.encoder describeDbclusterParameterGroupsMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeDbclusterParameterGroups"
                (AWS.Core.Decode.ResultDecoder
                    "DBClusterParameterGroupsMessage"
                    (Codec.decoder dbclusterParameterGroupsMessageCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeDbclusterEndpoints :
    DescribeDbclusterEndpointsMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DbclusterEndpointMessage)
describeDbclusterEndpoints req =
    let
        jsonBody =
            req |> Codec.encoder describeDbclusterEndpointsMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeDbclusterEndpoints"
                (AWS.Core.Decode.ResultDecoder "DBClusterEndpointMessage" (Codec.decoder dbclusterEndpointMessageCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeDbclusterBacktracks :
    DescribeDbclusterBacktracksMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DbclusterBacktrackMessage)
describeDbclusterBacktracks req =
    let
        jsonBody =
            req |> Codec.encoder describeDbclusterBacktracksMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeDbclusterBacktracks"
                (AWS.Core.Decode.ResultDecoder
                    "DBClusterBacktrackMessage"
                    (Codec.decoder dbclusterBacktrackMessageCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeCertificates :
    DescribeCertificatesMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CertificateMessage)
describeCertificates req =
    let
        jsonBody =
            req |> Codec.encoder describeCertificatesMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeCertificates"
                (AWS.Core.Decode.ResultDecoder "CertificateMessage" (Codec.decoder certificateMessageCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeAccountAttributes :
    DescribeAccountAttributesMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AccountAttributesMessage)
describeAccountAttributes req =
    let
        jsonBody =
            req |> Codec.encoder describeAccountAttributesMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeAccountAttributes"
                (AWS.Core.Decode.ResultDecoder "AccountAttributesMessage" (Codec.decoder accountAttributesMessageCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteOptionGroup : DeleteOptionGroupMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteOptionGroup req =
    let
        jsonBody =
            req |> Codec.encoder deleteOptionGroupMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteOptionGroup" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteGlobalCluster :
    DeleteGlobalClusterMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteGlobalClusterResult)
deleteGlobalCluster req =
    let
        jsonBody =
            req |> Codec.encoder deleteGlobalClusterMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DeleteGlobalCluster"
                (AWS.Core.Decode.ResultDecoder
                    "DeleteGlobalClusterResult"
                    (Codec.decoder deleteGlobalClusterResultCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteEventSubscription :
    DeleteEventSubscriptionMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteEventSubscriptionResult)
deleteEventSubscription req =
    let
        jsonBody =
            req |> Codec.encoder deleteEventSubscriptionMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DeleteEventSubscription"
                (AWS.Core.Decode.ResultDecoder
                    "DeleteEventSubscriptionResult"
                    (Codec.decoder deleteEventSubscriptionResultCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteDbsubnetGroup : DeleteDbsubnetGroupMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteDbsubnetGroup req =
    let
        jsonBody =
            req |> Codec.encoder deleteDbsubnetGroupMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteDbsubnetGroup" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteDbsnapshot :
    DeleteDbsnapshotMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteDbsnapshotResult)
deleteDbsnapshot req =
    let
        jsonBody =
            req |> Codec.encoder deleteDbsnapshotMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DeleteDbsnapshot"
                (AWS.Core.Decode.ResultDecoder "DeleteDBSnapshotResult" (Codec.decoder deleteDbsnapshotResultCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteDbsecurityGroup : DeleteDbsecurityGroupMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteDbsecurityGroup req =
    let
        jsonBody =
            req |> Codec.encoder deleteDbsecurityGroupMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteDbsecurityGroup" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteDbparameterGroup : DeleteDbparameterGroupMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteDbparameterGroup req =
    let
        jsonBody =
            req |> Codec.encoder deleteDbparameterGroupMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteDbparameterGroup" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteDbinstanceAutomatedBackup :
    DeleteDbinstanceAutomatedBackupMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteDbinstanceAutomatedBackupResult)
deleteDbinstanceAutomatedBackup req =
    let
        jsonBody =
            req |> Codec.encoder deleteDbinstanceAutomatedBackupMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DeleteDbinstanceAutomatedBackup"
                (AWS.Core.Decode.ResultDecoder
                    "DeleteDBInstanceAutomatedBackupResult"
                    (Codec.decoder deleteDbinstanceAutomatedBackupResultCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteDbinstance :
    DeleteDbinstanceMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteDbinstanceResult)
deleteDbinstance req =
    let
        jsonBody =
            req |> Codec.encoder deleteDbinstanceMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DeleteDbinstance"
                (AWS.Core.Decode.ResultDecoder "DeleteDBInstanceResult" (Codec.decoder deleteDbinstanceResultCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteDbclusterSnapshot :
    DeleteDbclusterSnapshotMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteDbclusterSnapshotResult)
deleteDbclusterSnapshot req =
    let
        jsonBody =
            req |> Codec.encoder deleteDbclusterSnapshotMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DeleteDbclusterSnapshot"
                (AWS.Core.Decode.ResultDecoder
                    "DeleteDBClusterSnapshotResult"
                    (Codec.decoder deleteDbclusterSnapshotResultCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteDbclusterParameterGroup :
    DeleteDbclusterParameterGroupMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteDbclusterParameterGroup req =
    let
        jsonBody =
            req |> Codec.encoder deleteDbclusterParameterGroupMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteDbclusterParameterGroup" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteDbclusterEndpoint :
    DeleteDbclusterEndpointMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DbclusterEndpoint)
deleteDbclusterEndpoint req =
    let
        jsonBody =
            req |> Codec.encoder deleteDbclusterEndpointMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DeleteDbclusterEndpoint"
                (AWS.Core.Decode.ResultDecoder "DBClusterEndpoint" (Codec.decoder dbclusterEndpointCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteDbcluster :
    DeleteDbclusterMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteDbclusterResult)
deleteDbcluster req =
    let
        jsonBody =
            req |> Codec.encoder deleteDbclusterMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DeleteDbcluster"
                (AWS.Core.Decode.ResultDecoder "DeleteDBClusterResult" (Codec.decoder deleteDbclusterResultCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createOptionGroup :
    CreateOptionGroupMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateOptionGroupResult)
createOptionGroup req =
    let
        jsonBody =
            req |> Codec.encoder createOptionGroupMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateOptionGroup"
                (AWS.Core.Decode.ResultDecoder "CreateOptionGroupResult" (Codec.decoder createOptionGroupResultCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createGlobalCluster :
    CreateGlobalClusterMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateGlobalClusterResult)
createGlobalCluster req =
    let
        jsonBody =
            req |> Codec.encoder createGlobalClusterMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateGlobalCluster"
                (AWS.Core.Decode.ResultDecoder
                    "CreateGlobalClusterResult"
                    (Codec.decoder createGlobalClusterResultCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createEventSubscription :
    CreateEventSubscriptionMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateEventSubscriptionResult)
createEventSubscription req =
    let
        jsonBody =
            req |> Codec.encoder createEventSubscriptionMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateEventSubscription"
                (AWS.Core.Decode.ResultDecoder
                    "CreateEventSubscriptionResult"
                    (Codec.decoder createEventSubscriptionResultCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createDbsubnetGroup :
    CreateDbsubnetGroupMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDbsubnetGroupResult)
createDbsubnetGroup req =
    let
        jsonBody =
            req |> Codec.encoder createDbsubnetGroupMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateDbsubnetGroup"
                (AWS.Core.Decode.ResultDecoder
                    "CreateDBSubnetGroupResult"
                    (Codec.decoder createDbsubnetGroupResultCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createDbsnapshot :
    CreateDbsnapshotMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDbsnapshotResult)
createDbsnapshot req =
    let
        jsonBody =
            req |> Codec.encoder createDbsnapshotMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateDbsnapshot"
                (AWS.Core.Decode.ResultDecoder "CreateDBSnapshotResult" (Codec.decoder createDbsnapshotResultCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createDbsecurityGroup :
    CreateDbsecurityGroupMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDbsecurityGroupResult)
createDbsecurityGroup req =
    let
        jsonBody =
            req |> Codec.encoder createDbsecurityGroupMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateDbsecurityGroup"
                (AWS.Core.Decode.ResultDecoder
                    "CreateDBSecurityGroupResult"
                    (Codec.decoder createDbsecurityGroupResultCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createDbparameterGroup :
    CreateDbparameterGroupMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDbparameterGroupResult)
createDbparameterGroup req =
    let
        jsonBody =
            req |> Codec.encoder createDbparameterGroupMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateDbparameterGroup"
                (AWS.Core.Decode.ResultDecoder
                    "CreateDBParameterGroupResult"
                    (Codec.decoder createDbparameterGroupResultCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createDbinstanceReadReplica :
    CreateDbinstanceReadReplicaMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDbinstanceReadReplicaResult)
createDbinstanceReadReplica req =
    let
        jsonBody =
            req |> Codec.encoder createDbinstanceReadReplicaMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateDbinstanceReadReplica"
                (AWS.Core.Decode.ResultDecoder
                    "CreateDBInstanceReadReplicaResult"
                    (Codec.decoder createDbinstanceReadReplicaResultCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createDbinstance :
    CreateDbinstanceMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDbinstanceResult)
createDbinstance req =
    let
        jsonBody =
            req |> Codec.encoder createDbinstanceMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateDbinstance"
                (AWS.Core.Decode.ResultDecoder "CreateDBInstanceResult" (Codec.decoder createDbinstanceResultCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createDbclusterSnapshot :
    CreateDbclusterSnapshotMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDbclusterSnapshotResult)
createDbclusterSnapshot req =
    let
        jsonBody =
            req |> Codec.encoder createDbclusterSnapshotMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateDbclusterSnapshot"
                (AWS.Core.Decode.ResultDecoder
                    "CreateDBClusterSnapshotResult"
                    (Codec.decoder createDbclusterSnapshotResultCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createDbclusterParameterGroup :
    CreateDbclusterParameterGroupMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDbclusterParameterGroupResult)
createDbclusterParameterGroup req =
    let
        jsonBody =
            req |> Codec.encoder createDbclusterParameterGroupMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateDbclusterParameterGroup"
                (AWS.Core.Decode.ResultDecoder
                    "CreateDBClusterParameterGroupResult"
                    (Codec.decoder createDbclusterParameterGroupResultCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createDbclusterEndpoint :
    CreateDbclusterEndpointMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DbclusterEndpoint)
createDbclusterEndpoint req =
    let
        jsonBody =
            req |> Codec.encoder createDbclusterEndpointMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateDbclusterEndpoint"
                (AWS.Core.Decode.ResultDecoder "DBClusterEndpoint" (Codec.decoder dbclusterEndpointCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createDbcluster :
    CreateDbclusterMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDbclusterResult)
createDbcluster req =
    let
        jsonBody =
            req |> Codec.encoder createDbclusterMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateDbcluster"
                (AWS.Core.Decode.ResultDecoder "CreateDBClusterResult" (Codec.decoder createDbclusterResultCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
copyOptionGroup :
    CopyOptionGroupMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CopyOptionGroupResult)
copyOptionGroup req =
    let
        jsonBody =
            req |> Codec.encoder copyOptionGroupMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CopyOptionGroup"
                (AWS.Core.Decode.ResultDecoder "CopyOptionGroupResult" (Codec.decoder copyOptionGroupResultCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
copyDbsnapshot : CopyDbsnapshotMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CopyDbsnapshotResult)
copyDbsnapshot req =
    let
        jsonBody =
            req |> Codec.encoder copyDbsnapshotMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CopyDbsnapshot"
                (AWS.Core.Decode.ResultDecoder "CopyDBSnapshotResult" (Codec.decoder copyDbsnapshotResultCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
copyDbparameterGroup :
    CopyDbparameterGroupMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CopyDbparameterGroupResult)
copyDbparameterGroup req =
    let
        jsonBody =
            req |> Codec.encoder copyDbparameterGroupMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CopyDbparameterGroup"
                (AWS.Core.Decode.ResultDecoder
                    "CopyDBParameterGroupResult"
                    (Codec.decoder copyDbparameterGroupResultCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
copyDbclusterSnapshot :
    CopyDbclusterSnapshotMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CopyDbclusterSnapshotResult)
copyDbclusterSnapshot req =
    let
        jsonBody =
            req |> Codec.encoder copyDbclusterSnapshotMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CopyDbclusterSnapshot"
                (AWS.Core.Decode.ResultDecoder
                    "CopyDBClusterSnapshotResult"
                    (Codec.decoder copyDbclusterSnapshotResultCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
copyDbclusterParameterGroup :
    CopyDbclusterParameterGroupMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CopyDbclusterParameterGroupResult)
copyDbclusterParameterGroup req =
    let
        jsonBody =
            req |> Codec.encoder copyDbclusterParameterGroupMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CopyDbclusterParameterGroup"
                (AWS.Core.Decode.ResultDecoder
                    "CopyDBClusterParameterGroupResult"
                    (Codec.decoder copyDbclusterParameterGroupResultCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
backtrackDbcluster :
    BacktrackDbclusterMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DbclusterBacktrack)
backtrackDbcluster req =
    let
        jsonBody =
            req |> Codec.encoder backtrackDbclusterMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "BacktrackDbcluster"
                (AWS.Core.Decode.ResultDecoder "DBClusterBacktrack" (Codec.decoder dbclusterBacktrackCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
authorizeDbsecurityGroupIngress :
    AuthorizeDbsecurityGroupIngressMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AuthorizeDbsecurityGroupIngressResult)
authorizeDbsecurityGroupIngress req =
    let
        jsonBody =
            req |> Codec.encoder authorizeDbsecurityGroupIngressMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "AuthorizeDbsecurityGroupIngress"
                (AWS.Core.Decode.ResultDecoder
                    "AuthorizeDBSecurityGroupIngressResult"
                    (Codec.decoder authorizeDbsecurityGroupIngressResultCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
applyPendingMaintenanceAction :
    ApplyPendingMaintenanceActionMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ApplyPendingMaintenanceActionResult)
applyPendingMaintenanceAction req =
    let
        jsonBody =
            req |> Codec.encoder applyPendingMaintenanceActionMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ApplyPendingMaintenanceAction"
                (AWS.Core.Decode.ResultDecoder
                    "ApplyPendingMaintenanceActionResult"
                    (Codec.decoder applyPendingMaintenanceActionResultCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
addTagsToResource : AddTagsToResourceMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
addTagsToResource req =
    let
        jsonBody =
            req |> Codec.encoder addTagsToResourceMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "AddTagsToResource" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
addSourceIdentifierToSubscription :
    AddSourceIdentifierToSubscriptionMessage
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AddSourceIdentifierToSubscriptionResult)
addSourceIdentifierToSubscription req =
    let
        jsonBody =
            req |> Codec.encoder addSourceIdentifierToSubscriptionMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "AddSourceIdentifierToSubscription"
                (AWS.Core.Decode.ResultDecoder
                    "AddSourceIdentifierToSubscriptionResult"
                    (Codec.decoder addSourceIdentifierToSubscriptionResultCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
addRoleToDbinstance : AddRoleToDbinstanceMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
addRoleToDbinstance req =
    let
        jsonBody =
            req |> Codec.encoder addRoleToDbinstanceMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "AddRoleToDbinstance" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
addRoleToDbcluster : AddRoleToDbclusterMessage -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
addRoleToDbcluster req =
    let
        jsonBody =
            req |> Codec.encoder addRoleToDbclusterMessageCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "AddRoleToDbcluster" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


type alias AccountAttributesMessage =
    { accountQuotas : AccountQuotaList }


type alias AccountQuota =
    { used : Int, max : Int, accountQuotaName : String }


type alias AccountQuotaList =
    List AccountQuota


type ActivityStreamMode
    = ActivityStreamModeSync
    | ActivityStreamModeAsync


activityStreamMode : Enum ActivityStreamMode
activityStreamMode =
    Enum.define
        [ ActivityStreamModeSync, ActivityStreamModeAsync ]
        (\val ->
            case val of
                ActivityStreamModeSync ->
                    "sync"

                ActivityStreamModeAsync ->
                    "async"
        )


type ActivityStreamStatus
    = ActivityStreamStatusStopped
    | ActivityStreamStatusStarting
    | ActivityStreamStatusStarted
    | ActivityStreamStatusStopping


activityStreamStatus : Enum ActivityStreamStatus
activityStreamStatus =
    Enum.define
        [ ActivityStreamStatusStopped
        , ActivityStreamStatusStarting
        , ActivityStreamStatusStarted
        , ActivityStreamStatusStopping
        ]
        (\val ->
            case val of
                ActivityStreamStatusStopped ->
                    "stopped"

                ActivityStreamStatusStarting ->
                    "starting"

                ActivityStreamStatusStarted ->
                    "started"

                ActivityStreamStatusStopping ->
                    "stopping"
        )


type alias AddRoleToDbclusterMessage =
    { roleArn : String, featureName : String, dbclusterIdentifier : String }


type alias AddRoleToDbinstanceMessage =
    { roleArn : String, featureName : String, dbinstanceIdentifier : String }


type alias AddSourceIdentifierToSubscriptionMessage =
    { subscriptionName : String, sourceIdentifier : String }


type alias AddSourceIdentifierToSubscriptionResult =
    { eventSubscription : EventSubscription }


type alias AddTagsToResourceMessage =
    { tags : TagList, resourceName : String }


type ApplyMethod
    = ApplyMethodImmediate
    | ApplyMethodPendingReboot


applyMethod : Enum ApplyMethod
applyMethod =
    Enum.define
        [ ApplyMethodImmediate, ApplyMethodPendingReboot ]
        (\val ->
            case val of
                ApplyMethodImmediate ->
                    "immediate"

                ApplyMethodPendingReboot ->
                    "pending-reboot"
        )


type alias ApplyPendingMaintenanceActionMessage =
    { resourceIdentifier : String, optInType : String, applyAction : String }


type alias ApplyPendingMaintenanceActionResult =
    { resourcePendingMaintenanceActions : ResourcePendingMaintenanceActions }


type alias AttributeValueList =
    List String


type alias AuthorizeDbsecurityGroupIngressMessage =
    { ec2SecurityGroupOwnerId : String
    , ec2SecurityGroupName : String
    , ec2SecurityGroupId : String
    , dbsecurityGroupName : String
    , cidrip : String
    }


type alias AuthorizeDbsecurityGroupIngressResult =
    { dbsecurityGroup : DbsecurityGroup }


type alias AvailabilityZone =
    { name : String }


type alias AvailabilityZoneList =
    List AvailabilityZone


type alias AvailabilityZones =
    List String


type alias AvailableProcessorFeature =
    { name : String, defaultValue : String, allowedValues : String }


type alias AvailableProcessorFeatureList =
    List AvailableProcessorFeature


type alias BacktrackDbclusterMessage =
    { useEarliestTimeOnPointInTimeUnavailable : Bool, force : Bool, dbclusterIdentifier : String, backtrackTo : Tstamp }


type alias Boolean =
    Bool


type alias BooleanOptional =
    Bool


type alias Certificate =
    { validTill : Tstamp
    , validFrom : Tstamp
    , thumbprint : String
    , certificateType : String
    , certificateIdentifier : String
    , certificateArn : String
    }


type alias CertificateList =
    List Certificate


type alias CertificateMessage =
    { marker : String, certificates : CertificateList }


type alias CharacterSet =
    { characterSetName : String, characterSetDescription : String }


type alias CloudwatchLogsExportConfiguration =
    { enableLogTypes : LogTypeList, disableLogTypes : LogTypeList }


type alias CopyDbclusterParameterGroupMessage =
    { targetDbclusterParameterGroupIdentifier : String
    , targetDbclusterParameterGroupDescription : String
    , tags : TagList
    , sourceDbclusterParameterGroupIdentifier : String
    }


type alias CopyDbclusterParameterGroupResult =
    { dbclusterParameterGroup : DbclusterParameterGroup }


type alias CopyDbclusterSnapshotMessage =
    { targetDbclusterSnapshotIdentifier : String
    , tags : TagList
    , sourceRegion : String
    , sourceDbclusterSnapshotIdentifier : String
    , preSignedUrl : String
    , kmsKeyId : String
    , copyTags : Bool
    }


type alias CopyDbclusterSnapshotResult =
    { dbclusterSnapshot : DbclusterSnapshot }


type alias CopyDbparameterGroupMessage =
    { targetDbparameterGroupIdentifier : String
    , targetDbparameterGroupDescription : String
    , tags : TagList
    , sourceDbparameterGroupIdentifier : String
    }


type alias CopyDbparameterGroupResult =
    { dbparameterGroup : DbparameterGroup }


type alias CopyDbsnapshotMessage =
    { targetDbsnapshotIdentifier : String
    , tags : TagList
    , sourceRegion : String
    , sourceDbsnapshotIdentifier : String
    , preSignedUrl : String
    , optionGroupName : String
    , kmsKeyId : String
    , copyTags : Bool
    }


type alias CopyDbsnapshotResult =
    { dbsnapshot : Dbsnapshot }


type alias CopyOptionGroupMessage =
    { targetOptionGroupIdentifier : String
    , targetOptionGroupDescription : String
    , tags : TagList
    , sourceOptionGroupIdentifier : String
    }


type alias CopyOptionGroupResult =
    { optionGroup : OptionGroup }


type alias CreateDbclusterEndpointMessage =
    { staticMembers : StringList
    , excludedMembers : StringList
    , endpointType : String
    , dbclusterIdentifier : String
    , dbclusterEndpointIdentifier : String
    }


type alias CreateDbclusterMessage =
    { vpcSecurityGroupIds : VpcSecurityGroupIdList
    , tags : TagList
    , storageEncrypted : Bool
    , sourceRegion : String
    , scalingConfiguration : ScalingConfiguration
    , replicationSourceIdentifier : String
    , preferredMaintenanceWindow : String
    , preferredBackupWindow : String
    , preSignedUrl : String
    , port : Int
    , optionGroupName : String
    , masterUsername : String
    , masterUserPassword : String
    , kmsKeyId : String
    , globalClusterIdentifier : String
    , engineVersion : String
    , engineMode : String
    , engine : String
    , enableIamdatabaseAuthentication : Bool
    , enableCloudwatchLogsExports : LogTypeList
    , deletionProtection : Bool
    , databaseName : String
    , dbsubnetGroupName : String
    , dbclusterParameterGroupName : String
    , dbclusterIdentifier : String
    , copyTagsToSnapshot : Bool
    , characterSetName : String
    , backupRetentionPeriod : Int
    , backtrackWindow : Int
    , availabilityZones : AvailabilityZones
    }


type alias CreateDbclusterParameterGroupMessage =
    { tags : TagList, description : String, dbparameterGroupFamily : String, dbclusterParameterGroupName : String }


type alias CreateDbclusterParameterGroupResult =
    { dbclusterParameterGroup : DbclusterParameterGroup }


type alias CreateDbclusterResult =
    { dbcluster : Dbcluster }


type alias CreateDbclusterSnapshotMessage =
    { tags : TagList, dbclusterSnapshotIdentifier : String, dbclusterIdentifier : String }


type alias CreateDbclusterSnapshotResult =
    { dbclusterSnapshot : DbclusterSnapshot }


type alias CreateDbinstanceMessage =
    { vpcSecurityGroupIds : VpcSecurityGroupIdList
    , timezone : String
    , tdeCredentialPassword : String
    , tdeCredentialArn : String
    , tags : TagList
    , storageType : String
    , storageEncrypted : Bool
    , publiclyAccessible : Bool
    , promotionTier : Int
    , processorFeatures : ProcessorFeatureList
    , preferredMaintenanceWindow : String
    , preferredBackupWindow : String
    , port : Int
    , performanceInsightsRetentionPeriod : Int
    , performanceInsightsKmskeyId : String
    , optionGroupName : String
    , multiAz : Bool
    , monitoringRoleArn : String
    , monitoringInterval : Int
    , maxAllocatedStorage : Int
    , masterUsername : String
    , masterUserPassword : String
    , licenseModel : String
    , kmsKeyId : String
    , iops : Int
    , engineVersion : String
    , engine : String
    , enablePerformanceInsights : Bool
    , enableIamdatabaseAuthentication : Bool
    , enableCloudwatchLogsExports : LogTypeList
    , domainIamroleName : String
    , domain : String
    , deletionProtection : Bool
    , dbsubnetGroupName : String
    , dbsecurityGroups : DbsecurityGroupNameList
    , dbparameterGroupName : String
    , dbname : String
    , dbinstanceIdentifier : String
    , dbinstanceClass : String
    , dbclusterIdentifier : String
    , copyTagsToSnapshot : Bool
    , characterSetName : String
    , backupRetentionPeriod : Int
    , availabilityZone : String
    , autoMinorVersionUpgrade : Bool
    , allocatedStorage : Int
    }


type alias CreateDbinstanceReadReplicaMessage =
    { vpcSecurityGroupIds : VpcSecurityGroupIdList
    , useDefaultProcessorFeatures : Bool
    , tags : TagList
    , storageType : String
    , sourceRegion : String
    , sourceDbinstanceIdentifier : String
    , publiclyAccessible : Bool
    , processorFeatures : ProcessorFeatureList
    , preSignedUrl : String
    , port : Int
    , performanceInsightsRetentionPeriod : Int
    , performanceInsightsKmskeyId : String
    , optionGroupName : String
    , multiAz : Bool
    , monitoringRoleArn : String
    , monitoringInterval : Int
    , kmsKeyId : String
    , iops : Int
    , enablePerformanceInsights : Bool
    , enableIamdatabaseAuthentication : Bool
    , enableCloudwatchLogsExports : LogTypeList
    , deletionProtection : Bool
    , dbsubnetGroupName : String
    , dbinstanceIdentifier : String
    , dbinstanceClass : String
    , copyTagsToSnapshot : Bool
    , availabilityZone : String
    , autoMinorVersionUpgrade : Bool
    }


type alias CreateDbinstanceReadReplicaResult =
    { dbinstance : Dbinstance }


type alias CreateDbinstanceResult =
    { dbinstance : Dbinstance }


type alias CreateDbparameterGroupMessage =
    { tags : TagList, description : String, dbparameterGroupName : String, dbparameterGroupFamily : String }


type alias CreateDbparameterGroupResult =
    { dbparameterGroup : DbparameterGroup }


type alias CreateDbsecurityGroupMessage =
    { tags : TagList, dbsecurityGroupName : String, dbsecurityGroupDescription : String }


type alias CreateDbsecurityGroupResult =
    { dbsecurityGroup : DbsecurityGroup }


type alias CreateDbsnapshotMessage =
    { tags : TagList, dbsnapshotIdentifier : String, dbinstanceIdentifier : String }


type alias CreateDbsnapshotResult =
    { dbsnapshot : Dbsnapshot }


type alias CreateDbsubnetGroupMessage =
    { tags : TagList, subnetIds : SubnetIdentifierList, dbsubnetGroupName : String, dbsubnetGroupDescription : String }


type alias CreateDbsubnetGroupResult =
    { dbsubnetGroup : DbsubnetGroup }


type alias CreateEventSubscriptionMessage =
    { tags : TagList
    , subscriptionName : String
    , sourceType : String
    , sourceIds : SourceIdsList
    , snsTopicArn : String
    , eventCategories : EventCategoriesList
    , enabled : Bool
    }


type alias CreateEventSubscriptionResult =
    { eventSubscription : EventSubscription }


type alias CreateGlobalClusterMessage =
    { storageEncrypted : Bool
    , sourceDbclusterIdentifier : String
    , globalClusterIdentifier : String
    , engineVersion : String
    , engine : String
    , deletionProtection : Bool
    , databaseName : String
    }


type alias CreateGlobalClusterResult =
    { globalCluster : GlobalCluster }


type alias CreateOptionGroupMessage =
    { tags : TagList
    , optionGroupName : String
    , optionGroupDescription : String
    , majorEngineVersion : String
    , engineName : String
    }


type alias CreateOptionGroupResult =
    { optionGroup : OptionGroup }


type alias Dbcluster =
    { vpcSecurityGroups : VpcSecurityGroupMembershipList
    , storageEncrypted : Bool
    , status : String
    , scalingConfigurationInfo : ScalingConfigurationInfo
    , replicationSourceIdentifier : String
    , readerEndpoint : String
    , readReplicaIdentifiers : ReadReplicaIdentifierList
    , preferredMaintenanceWindow : String
    , preferredBackupWindow : String
    , port : Int
    , percentProgress : String
    , multiAz : Bool
    , masterUsername : String
    , latestRestorableTime : Tstamp
    , kmsKeyId : String
    , iamdatabaseAuthenticationEnabled : Bool
    , httpEndpointEnabled : Bool
    , hostedZoneId : String
    , engineVersion : String
    , engineMode : String
    , engine : String
    , endpoint : String
    , enabledCloudwatchLogsExports : LogTypeList
    , earliestRestorableTime : Tstamp
    , earliestBacktrackTime : Tstamp
    , deletionProtection : Bool
    , dbClusterResourceId : String
    , databaseName : String
    , dbsubnetGroup : String
    , dbclusterParameterGroup : String
    , dbclusterOptionGroupMemberships : DbclusterOptionGroupMemberships
    , dbclusterMembers : DbclusterMemberList
    , dbclusterIdentifier : String
    , dbclusterArn : String
    , customEndpoints : StringList
    , crossAccountClone : Bool
    , copyTagsToSnapshot : Bool
    , clusterCreateTime : Tstamp
    , cloneGroupId : String
    , characterSetName : String
    , capacity : Int
    , backupRetentionPeriod : Int
    , backtrackWindow : Int
    , backtrackConsumedChangeRecords : Int
    , availabilityZones : AvailabilityZones
    , associatedRoles : DbclusterRoles
    , allocatedStorage : Int
    , activityStreamStatus : ActivityStreamStatus
    , activityStreamMode : ActivityStreamMode
    , activityStreamKmsKeyId : String
    , activityStreamKinesisStreamName : String
    }


type alias DbclusterBacktrack =
    { status : String
    , dbclusterIdentifier : String
    , backtrackedFrom : Tstamp
    , backtrackTo : Tstamp
    , backtrackRequestCreationTime : Tstamp
    , backtrackIdentifier : String
    }


type alias DbclusterBacktrackList =
    List DbclusterBacktrack


type alias DbclusterBacktrackMessage =
    { marker : String, dbclusterBacktracks : DbclusterBacktrackList }


type alias DbclusterCapacityInfo =
    { timeoutAction : String
    , secondsBeforeTimeout : Int
    , pendingCapacity : Int
    , dbclusterIdentifier : String
    , currentCapacity : Int
    }


type alias DbclusterEndpoint =
    { status : String
    , staticMembers : StringList
    , excludedMembers : StringList
    , endpointType : String
    , endpoint : String
    , dbclusterIdentifier : String
    , dbclusterEndpointResourceIdentifier : String
    , dbclusterEndpointIdentifier : String
    , dbclusterEndpointArn : String
    , customEndpointType : String
    }


type alias DbclusterEndpointList =
    List DbclusterEndpoint


type alias DbclusterEndpointMessage =
    { marker : String, dbclusterEndpoints : DbclusterEndpointList }


type alias DbclusterList =
    List Dbcluster


type alias DbclusterMember =
    { promotionTier : Int
    , isClusterWriter : Bool
    , dbinstanceIdentifier : String
    , dbclusterParameterGroupStatus : String
    }


type alias DbclusterMemberList =
    List DbclusterMember


type alias DbclusterMessage =
    { marker : String, dbclusters : DbclusterList }


type alias DbclusterOptionGroupMemberships =
    List DbclusterOptionGroupStatus


type alias DbclusterOptionGroupStatus =
    { status : String, dbclusterOptionGroupName : String }


type alias DbclusterParameterGroup =
    { description : String
    , dbparameterGroupFamily : String
    , dbclusterParameterGroupName : String
    , dbclusterParameterGroupArn : String
    }


type alias DbclusterParameterGroupDetails =
    { parameters : ParametersList, marker : String }


type alias DbclusterParameterGroupList =
    List DbclusterParameterGroup


type alias DbclusterParameterGroupNameMessage =
    { dbclusterParameterGroupName : String }


type alias DbclusterParameterGroupsMessage =
    { marker : String, dbclusterParameterGroups : DbclusterParameterGroupList }


type alias DbclusterRole =
    { status : String, roleArn : String, featureName : String }


type alias DbclusterRoles =
    List DbclusterRole


type alias DbclusterSnapshot =
    { vpcId : String
    , storageEncrypted : Bool
    , status : String
    , sourceDbclusterSnapshotArn : String
    , snapshotType : String
    , snapshotCreateTime : Tstamp
    , port : Int
    , percentProgress : Int
    , masterUsername : String
    , licenseModel : String
    , kmsKeyId : String
    , iamdatabaseAuthenticationEnabled : Bool
    , engineVersion : String
    , engine : String
    , dbclusterSnapshotIdentifier : String
    , dbclusterSnapshotArn : String
    , dbclusterIdentifier : String
    , clusterCreateTime : Tstamp
    , availabilityZones : AvailabilityZones
    , allocatedStorage : Int
    }


type alias DbclusterSnapshotAttribute =
    { attributeValues : AttributeValueList, attributeName : String }


type alias DbclusterSnapshotAttributeList =
    List DbclusterSnapshotAttribute


type alias DbclusterSnapshotAttributesResult =
    { dbclusterSnapshotIdentifier : String, dbclusterSnapshotAttributes : DbclusterSnapshotAttributeList }


type alias DbclusterSnapshotList =
    List DbclusterSnapshot


type alias DbclusterSnapshotMessage =
    { marker : String, dbclusterSnapshots : DbclusterSnapshotList }


type alias DbengineVersion =
    { validUpgradeTarget : ValidUpgradeTargetList
    , supportsReadReplica : Bool
    , supportsLogExportsToCloudwatchLogs : Bool
    , supportedTimezones : SupportedTimezonesList
    , supportedFeatureNames : FeatureNameList
    , supportedEngineModes : EngineModeList
    , supportedCharacterSets : SupportedCharacterSetsList
    , status : String
    , exportableLogTypes : LogTypeList
    , engineVersion : String
    , engine : String
    , defaultCharacterSet : CharacterSet
    , dbparameterGroupFamily : String
    , dbengineVersionDescription : String
    , dbengineDescription : String
    }


type alias DbengineVersionList =
    List DbengineVersion


type alias DbengineVersionMessage =
    { marker : String, dbengineVersions : DbengineVersionList }


type alias Dbinstance =
    { vpcSecurityGroups : VpcSecurityGroupMembershipList
    , timezone : String
    , tdeCredentialArn : String
    , storageType : String
    , storageEncrypted : Bool
    , statusInfos : DbinstanceStatusInfoList
    , secondaryAvailabilityZone : String
    , readReplicaSourceDbinstanceIdentifier : String
    , readReplicaDbinstanceIdentifiers : ReadReplicaDbinstanceIdentifierList
    , readReplicaDbclusterIdentifiers : ReadReplicaDbclusterIdentifierList
    , publiclyAccessible : Bool
    , promotionTier : Int
    , processorFeatures : ProcessorFeatureList
    , preferredMaintenanceWindow : String
    , preferredBackupWindow : String
    , performanceInsightsRetentionPeriod : Int
    , performanceInsightsKmskeyId : String
    , performanceInsightsEnabled : Bool
    , pendingModifiedValues : PendingModifiedValues
    , optionGroupMemberships : OptionGroupMembershipList
    , multiAz : Bool
    , monitoringRoleArn : String
    , monitoringInterval : Int
    , maxAllocatedStorage : Int
    , masterUsername : String
    , listenerEndpoint : Endpoint
    , licenseModel : String
    , latestRestorableTime : Tstamp
    , kmsKeyId : String
    , iops : Int
    , instanceCreateTime : Tstamp
    , iamdatabaseAuthenticationEnabled : Bool
    , enhancedMonitoringResourceArn : String
    , engineVersion : String
    , engine : String
    , endpoint : Endpoint
    , enabledCloudwatchLogsExports : LogTypeList
    , domainMemberships : DomainMembershipList
    , deletionProtection : Bool
    , dbiResourceId : String
    , dbInstancePort : Int
    , dbsubnetGroup : DbsubnetGroup
    , dbsecurityGroups : DbsecurityGroupMembershipList
    , dbparameterGroups : DbparameterGroupStatusList
    , dbname : String
    , dbinstanceStatus : String
    , dbinstanceIdentifier : String
    , dbinstanceClass : String
    , dbinstanceArn : String
    , dbclusterIdentifier : String
    , copyTagsToSnapshot : Bool
    , characterSetName : String
    , cacertificateIdentifier : String
    , backupRetentionPeriod : Int
    , availabilityZone : String
    , autoMinorVersionUpgrade : Bool
    , associatedRoles : DbinstanceRoles
    , allocatedStorage : Int
    }


type alias DbinstanceAutomatedBackup =
    { vpcId : String
    , timezone : String
    , tdeCredentialArn : String
    , storageType : String
    , status : String
    , restoreWindow : RestoreWindow
    , region : String
    , port : Int
    , optionGroupName : String
    , masterUsername : String
    , licenseModel : String
    , kmsKeyId : String
    , iops : Int
    , instanceCreateTime : Tstamp
    , iamdatabaseAuthenticationEnabled : Bool
    , engineVersion : String
    , engine : String
    , encrypted : Bool
    , dbiResourceId : String
    , dbinstanceIdentifier : String
    , dbinstanceArn : String
    , availabilityZone : String
    , allocatedStorage : Int
    }


type alias DbinstanceAutomatedBackupList =
    List DbinstanceAutomatedBackup


type alias DbinstanceAutomatedBackupMessage =
    { marker : String, dbinstanceAutomatedBackups : DbinstanceAutomatedBackupList }


type alias DbinstanceList =
    List Dbinstance


type alias DbinstanceMessage =
    { marker : String, dbinstances : DbinstanceList }


type alias DbinstanceRole =
    { status : String, roleArn : String, featureName : String }


type alias DbinstanceRoles =
    List DbinstanceRole


type alias DbinstanceStatusInfo =
    { statusType : String, status : String, normal : Bool, message : String }


type alias DbinstanceStatusInfoList =
    List DbinstanceStatusInfo


type alias DbparameterGroup =
    { description : String
    , dbparameterGroupName : String
    , dbparameterGroupFamily : String
    , dbparameterGroupArn : String
    }


type alias DbparameterGroupDetails =
    { parameters : ParametersList, marker : String }


type alias DbparameterGroupList =
    List DbparameterGroup


type alias DbparameterGroupNameMessage =
    { dbparameterGroupName : String }


type alias DbparameterGroupStatus =
    { parameterApplyStatus : String, dbparameterGroupName : String }


type alias DbparameterGroupStatusList =
    List DbparameterGroupStatus


type alias DbparameterGroupsMessage =
    { marker : String, dbparameterGroups : DbparameterGroupList }


type alias DbsecurityGroup =
    { vpcId : String
    , ownerId : String
    , ipranges : IprangeList
    , ec2SecurityGroups : Ec2SecurityGroupList
    , dbsecurityGroupName : String
    , dbsecurityGroupDescription : String
    , dbsecurityGroupArn : String
    }


type alias DbsecurityGroupMembership =
    { status : String, dbsecurityGroupName : String }


type alias DbsecurityGroupMembershipList =
    List DbsecurityGroupMembership


type alias DbsecurityGroupMessage =
    { marker : String, dbsecurityGroups : DbsecurityGroups }


type alias DbsecurityGroupNameList =
    List String


type alias DbsecurityGroups =
    List DbsecurityGroup


type alias Dbsnapshot =
    { vpcId : String
    , timezone : String
    , tdeCredentialArn : String
    , storageType : String
    , status : String
    , sourceRegion : String
    , sourceDbsnapshotIdentifier : String
    , snapshotType : String
    , snapshotCreateTime : Tstamp
    , processorFeatures : ProcessorFeatureList
    , port : Int
    , percentProgress : Int
    , optionGroupName : String
    , masterUsername : String
    , licenseModel : String
    , kmsKeyId : String
    , iops : Int
    , instanceCreateTime : Tstamp
    , iamdatabaseAuthenticationEnabled : Bool
    , engineVersion : String
    , engine : String
    , encrypted : Bool
    , dbiResourceId : String
    , dbsnapshotIdentifier : String
    , dbsnapshotArn : String
    , dbinstanceIdentifier : String
    , availabilityZone : String
    , allocatedStorage : Int
    }


type alias DbsnapshotAttribute =
    { attributeValues : AttributeValueList, attributeName : String }


type alias DbsnapshotAttributeList =
    List DbsnapshotAttribute


type alias DbsnapshotAttributesResult =
    { dbsnapshotIdentifier : String, dbsnapshotAttributes : DbsnapshotAttributeList }


type alias DbsnapshotList =
    List Dbsnapshot


type alias DbsnapshotMessage =
    { marker : String, dbsnapshots : DbsnapshotList }


type alias DbsubnetGroup =
    { vpcId : String
    , subnets : SubnetList
    , subnetGroupStatus : String
    , dbsubnetGroupName : String
    , dbsubnetGroupDescription : String
    , dbsubnetGroupArn : String
    }


type alias DbsubnetGroupMessage =
    { marker : String, dbsubnetGroups : DbsubnetGroups }


type alias DbsubnetGroups =
    List DbsubnetGroup


type alias DeleteDbclusterEndpointMessage =
    { dbclusterEndpointIdentifier : String }


type alias DeleteDbclusterMessage =
    { skipFinalSnapshot : Bool, finalDbsnapshotIdentifier : String, dbclusterIdentifier : String }


type alias DeleteDbclusterParameterGroupMessage =
    { dbclusterParameterGroupName : String }


type alias DeleteDbclusterResult =
    { dbcluster : Dbcluster }


type alias DeleteDbclusterSnapshotMessage =
    { dbclusterSnapshotIdentifier : String }


type alias DeleteDbclusterSnapshotResult =
    { dbclusterSnapshot : DbclusterSnapshot }


type alias DeleteDbinstanceAutomatedBackupMessage =
    { dbiResourceId : String }


type alias DeleteDbinstanceAutomatedBackupResult =
    { dbinstanceAutomatedBackup : DbinstanceAutomatedBackup }


type alias DeleteDbinstanceMessage =
    { skipFinalSnapshot : Bool
    , finalDbsnapshotIdentifier : String
    , deleteAutomatedBackups : Bool
    , dbinstanceIdentifier : String
    }


type alias DeleteDbinstanceResult =
    { dbinstance : Dbinstance }


type alias DeleteDbparameterGroupMessage =
    { dbparameterGroupName : String }


type alias DeleteDbsecurityGroupMessage =
    { dbsecurityGroupName : String }


type alias DeleteDbsnapshotMessage =
    { dbsnapshotIdentifier : String }


type alias DeleteDbsnapshotResult =
    { dbsnapshot : Dbsnapshot }


type alias DeleteDbsubnetGroupMessage =
    { dbsubnetGroupName : String }


type alias DeleteEventSubscriptionMessage =
    { subscriptionName : String }


type alias DeleteEventSubscriptionResult =
    { eventSubscription : EventSubscription }


type alias DeleteGlobalClusterMessage =
    { globalClusterIdentifier : String }


type alias DeleteGlobalClusterResult =
    { globalCluster : GlobalCluster }


type alias DeleteOptionGroupMessage =
    { optionGroupName : String }


type alias DescribeAccountAttributesMessage =
    {}


type alias DescribeCertificatesMessage =
    { maxRecords : Int, marker : String, filters : FilterList, certificateIdentifier : String }


type alias DescribeDbclusterBacktracksMessage =
    { maxRecords : Int
    , marker : String
    , filters : FilterList
    , dbclusterIdentifier : String
    , backtrackIdentifier : String
    }


type alias DescribeDbclusterEndpointsMessage =
    { maxRecords : Int
    , marker : String
    , filters : FilterList
    , dbclusterIdentifier : String
    , dbclusterEndpointIdentifier : String
    }


type alias DescribeDbclusterParameterGroupsMessage =
    { maxRecords : Int, marker : String, filters : FilterList, dbclusterParameterGroupName : String }


type alias DescribeDbclusterParametersMessage =
    { source : String, maxRecords : Int, marker : String, filters : FilterList, dbclusterParameterGroupName : String }


type alias DescribeDbclusterSnapshotAttributesMessage =
    { dbclusterSnapshotIdentifier : String }


type alias DescribeDbclusterSnapshotAttributesResult =
    { dbclusterSnapshotAttributesResult : DbclusterSnapshotAttributesResult }


type alias DescribeDbclusterSnapshotsMessage =
    { snapshotType : String
    , maxRecords : Int
    , marker : String
    , includeShared : Bool
    , includePublic : Bool
    , filters : FilterList
    , dbclusterSnapshotIdentifier : String
    , dbclusterIdentifier : String
    }


type alias DescribeDbclustersMessage =
    { maxRecords : Int, marker : String, includeShared : Bool, filters : FilterList, dbclusterIdentifier : String }


type alias DescribeDbengineVersionsMessage =
    { maxRecords : Int
    , marker : String
    , listSupportedTimezones : Bool
    , listSupportedCharacterSets : Bool
    , includeAll : Bool
    , filters : FilterList
    , engineVersion : String
    , engine : String
    , defaultOnly : Bool
    , dbparameterGroupFamily : String
    }


type alias DescribeDbinstanceAutomatedBackupsMessage =
    { maxRecords : Int, marker : String, filters : FilterList, dbiResourceId : String, dbinstanceIdentifier : String }


type alias DescribeDbinstancesMessage =
    { maxRecords : Int, marker : String, filters : FilterList, dbinstanceIdentifier : String }


type alias DescribeDblogFilesDetails =
    { size : Int, logFileName : String, lastWritten : Int }


type alias DescribeDblogFilesList =
    List DescribeDblogFilesDetails


type alias DescribeDblogFilesMessage =
    { maxRecords : Int
    , marker : String
    , filters : FilterList
    , filenameContains : String
    , fileSize : Int
    , fileLastWritten : Int
    , dbinstanceIdentifier : String
    }


type alias DescribeDblogFilesResponse =
    { marker : String, describeDblogFiles : DescribeDblogFilesList }


type alias DescribeDbparameterGroupsMessage =
    { maxRecords : Int, marker : String, filters : FilterList, dbparameterGroupName : String }


type alias DescribeDbparametersMessage =
    { source : String, maxRecords : Int, marker : String, filters : FilterList, dbparameterGroupName : String }


type alias DescribeDbsecurityGroupsMessage =
    { maxRecords : Int, marker : String, filters : FilterList, dbsecurityGroupName : String }


type alias DescribeDbsnapshotAttributesMessage =
    { dbsnapshotIdentifier : String }


type alias DescribeDbsnapshotAttributesResult =
    { dbsnapshotAttributesResult : DbsnapshotAttributesResult }


type alias DescribeDbsnapshotsMessage =
    { snapshotType : String
    , maxRecords : Int
    , marker : String
    , includeShared : Bool
    , includePublic : Bool
    , filters : FilterList
    , dbiResourceId : String
    , dbsnapshotIdentifier : String
    , dbinstanceIdentifier : String
    }


type alias DescribeDbsubnetGroupsMessage =
    { maxRecords : Int, marker : String, filters : FilterList, dbsubnetGroupName : String }


type alias DescribeEngineDefaultClusterParametersMessage =
    { maxRecords : Int, marker : String, filters : FilterList, dbparameterGroupFamily : String }


type alias DescribeEngineDefaultClusterParametersResult =
    { engineDefaults : EngineDefaults }


type alias DescribeEngineDefaultParametersMessage =
    { maxRecords : Int, marker : String, filters : FilterList, dbparameterGroupFamily : String }


type alias DescribeEngineDefaultParametersResult =
    { engineDefaults : EngineDefaults }


type alias DescribeEventCategoriesMessage =
    { sourceType : String, filters : FilterList }


type alias DescribeEventSubscriptionsMessage =
    { subscriptionName : String, maxRecords : Int, marker : String, filters : FilterList }


type alias DescribeEventsMessage =
    { startTime : Tstamp
    , sourceType : SourceType
    , sourceIdentifier : String
    , maxRecords : Int
    , marker : String
    , filters : FilterList
    , eventCategories : EventCategoriesList
    , endTime : Tstamp
    , duration : Int
    }


type alias DescribeGlobalClustersMessage =
    { maxRecords : Int, marker : String, globalClusterIdentifier : String, filters : FilterList }


type alias DescribeOptionGroupOptionsMessage =
    { maxRecords : Int, marker : String, majorEngineVersion : String, filters : FilterList, engineName : String }


type alias DescribeOptionGroupsMessage =
    { optionGroupName : String
    , maxRecords : Int
    , marker : String
    , majorEngineVersion : String
    , filters : FilterList
    , engineName : String
    }


type alias DescribeOrderableDbinstanceOptionsMessage =
    { vpc : Bool
    , maxRecords : Int
    , marker : String
    , licenseModel : String
    , filters : FilterList
    , engineVersion : String
    , engine : String
    , dbinstanceClass : String
    }


type alias DescribePendingMaintenanceActionsMessage =
    { resourceIdentifier : String, maxRecords : Int, marker : String, filters : FilterList }


type alias DescribeReservedDbinstancesMessage =
    { reservedDbinstancesOfferingId : String
    , reservedDbinstanceId : String
    , productDescription : String
    , offeringType : String
    , multiAz : Bool
    , maxRecords : Int
    , marker : String
    , filters : FilterList
    , duration : String
    , dbinstanceClass : String
    }


type alias DescribeReservedDbinstancesOfferingsMessage =
    { reservedDbinstancesOfferingId : String
    , productDescription : String
    , offeringType : String
    , multiAz : Bool
    , maxRecords : Int
    , marker : String
    , filters : FilterList
    , duration : String
    , dbinstanceClass : String
    }


type alias DescribeSourceRegionsMessage =
    { regionName : String, maxRecords : Int, marker : String, filters : FilterList }


type alias DescribeValidDbinstanceModificationsMessage =
    { dbinstanceIdentifier : String }


type alias DescribeValidDbinstanceModificationsResult =
    { validDbinstanceModificationsMessage : ValidDbinstanceModificationsMessage }


type alias DomainMembership =
    { status : String, iamroleName : String, fqdn : String, domain : String }


type alias DomainMembershipList =
    List DomainMembership


type alias Double =
    Float


type alias DoubleOptional =
    Float


type alias DoubleRange =
    { to : Float, from : Float }


type alias DoubleRangeList =
    List DoubleRange


type alias DownloadDblogFilePortionDetails =
    { marker : String, logFileData : String, additionalDataPending : Bool }


type alias DownloadDblogFilePortionMessage =
    { numberOfLines : Int, marker : String, logFileName : String, dbinstanceIdentifier : String }


type alias Ec2SecurityGroup =
    { status : String, ec2SecurityGroupOwnerId : String, ec2SecurityGroupName : String, ec2SecurityGroupId : String }


type alias Ec2SecurityGroupList =
    List Ec2SecurityGroup


type alias Endpoint =
    { port : Int, hostedZoneId : String, address : String }


type alias EngineDefaults =
    { parameters : ParametersList, marker : String, dbparameterGroupFamily : String }


type alias EngineModeList =
    List String


type alias Event =
    { sourceType : SourceType
    , sourceIdentifier : String
    , sourceArn : String
    , message : String
    , eventCategories : EventCategoriesList
    , date : Tstamp
    }


type alias EventCategoriesList =
    List String


type alias EventCategoriesMap =
    { sourceType : String, eventCategories : EventCategoriesList }


type alias EventCategoriesMapList =
    List EventCategoriesMap


type alias EventCategoriesMessage =
    { eventCategoriesMapList : EventCategoriesMapList }


type alias EventList =
    List Event


type alias EventSubscription =
    { subscriptionCreationTime : String
    , status : String
    , sourceType : String
    , sourceIdsList : SourceIdsList
    , snsTopicArn : String
    , eventSubscriptionArn : String
    , eventCategoriesList : EventCategoriesList
    , enabled : Bool
    , customerAwsId : String
    , custSubscriptionId : String
    }


type alias EventSubscriptionsList =
    List EventSubscription


type alias EventSubscriptionsMessage =
    { marker : String, eventSubscriptionsList : EventSubscriptionsList }


type alias EventsMessage =
    { marker : String, events : EventList }


type alias FailoverDbclusterMessage =
    { targetDbinstanceIdentifier : String, dbclusterIdentifier : String }


type alias FailoverDbclusterResult =
    { dbcluster : Dbcluster }


type alias FeatureNameList =
    List String


type alias Filter =
    { values : FilterValueList, name : String }


type alias FilterList =
    List Filter


type alias FilterValueList =
    List String


type alias GlobalCluster =
    { storageEncrypted : Bool
    , status : String
    , globalClusterResourceId : String
    , globalClusterMembers : GlobalClusterMemberList
    , globalClusterIdentifier : String
    , globalClusterArn : String
    , engineVersion : String
    , engine : String
    , deletionProtection : Bool
    , databaseName : String
    }


type alias GlobalClusterList =
    List GlobalCluster


type alias GlobalClusterMember =
    { readers : ReadersArnList, isWriter : Bool, dbclusterArn : String }


type alias GlobalClusterMemberList =
    List GlobalClusterMember


type alias GlobalClustersMessage =
    { marker : String, globalClusters : GlobalClusterList }


type alias Iprange =
    { status : String, cidrip : String }


type alias IprangeList =
    List Iprange


type alias Integer =
    Int


type alias IntegerOptional =
    Int


type alias KeyList =
    List String


type alias ListTagsForResourceMessage =
    { resourceName : String, filters : FilterList }


type alias LogTypeList =
    List String


type alias Long =
    Int


type alias LongOptional =
    Int


type alias MinimumEngineVersionPerAllowedValue =
    { minimumEngineVersion : String, allowedValue : String }


type alias MinimumEngineVersionPerAllowedValueList =
    List MinimumEngineVersionPerAllowedValue


type alias ModifyCurrentDbclusterCapacityMessage =
    { timeoutAction : String, secondsBeforeTimeout : Int, dbclusterIdentifier : String, capacity : Int }


type alias ModifyDbclusterEndpointMessage =
    { staticMembers : StringList
    , excludedMembers : StringList
    , endpointType : String
    , dbclusterEndpointIdentifier : String
    }


type alias ModifyDbclusterMessage =
    { vpcSecurityGroupIds : VpcSecurityGroupIdList
    , scalingConfiguration : ScalingConfiguration
    , preferredMaintenanceWindow : String
    , preferredBackupWindow : String
    , port : Int
    , optionGroupName : String
    , newDbclusterIdentifier : String
    , masterUserPassword : String
    , engineVersion : String
    , enableIamdatabaseAuthentication : Bool
    , enableHttpEndpoint : Bool
    , deletionProtection : Bool
    , dbinstanceParameterGroupName : String
    , dbclusterParameterGroupName : String
    , dbclusterIdentifier : String
    , copyTagsToSnapshot : Bool
    , cloudwatchLogsExportConfiguration : CloudwatchLogsExportConfiguration
    , backupRetentionPeriod : Int
    , backtrackWindow : Int
    , applyImmediately : Bool
    , allowMajorVersionUpgrade : Bool
    }


type alias ModifyDbclusterParameterGroupMessage =
    { parameters : ParametersList, dbclusterParameterGroupName : String }


type alias ModifyDbclusterResult =
    { dbcluster : Dbcluster }


type alias ModifyDbclusterSnapshotAttributeMessage =
    { valuesToRemove : AttributeValueList
    , valuesToAdd : AttributeValueList
    , dbclusterSnapshotIdentifier : String
    , attributeName : String
    }


type alias ModifyDbclusterSnapshotAttributeResult =
    { dbclusterSnapshotAttributesResult : DbclusterSnapshotAttributesResult }


type alias ModifyDbinstanceMessage =
    { vpcSecurityGroupIds : VpcSecurityGroupIdList
    , useDefaultProcessorFeatures : Bool
    , tdeCredentialPassword : String
    , tdeCredentialArn : String
    , storageType : String
    , publiclyAccessible : Bool
    , promotionTier : Int
    , processorFeatures : ProcessorFeatureList
    , preferredMaintenanceWindow : String
    , preferredBackupWindow : String
    , performanceInsightsRetentionPeriod : Int
    , performanceInsightsKmskeyId : String
    , optionGroupName : String
    , newDbinstanceIdentifier : String
    , multiAz : Bool
    , monitoringRoleArn : String
    , monitoringInterval : Int
    , maxAllocatedStorage : Int
    , masterUserPassword : String
    , licenseModel : String
    , iops : Int
    , engineVersion : String
    , enablePerformanceInsights : Bool
    , enableIamdatabaseAuthentication : Bool
    , domainIamroleName : String
    , domain : String
    , deletionProtection : Bool
    , dbsubnetGroupName : String
    , dbsecurityGroups : DbsecurityGroupNameList
    , dbportNumber : Int
    , dbparameterGroupName : String
    , dbinstanceIdentifier : String
    , dbinstanceClass : String
    , copyTagsToSnapshot : Bool
    , cloudwatchLogsExportConfiguration : CloudwatchLogsExportConfiguration
    , cacertificateIdentifier : String
    , backupRetentionPeriod : Int
    , autoMinorVersionUpgrade : Bool
    , applyImmediately : Bool
    , allowMajorVersionUpgrade : Bool
    , allocatedStorage : Int
    }


type alias ModifyDbinstanceResult =
    { dbinstance : Dbinstance }


type alias ModifyDbparameterGroupMessage =
    { parameters : ParametersList, dbparameterGroupName : String }


type alias ModifyDbsnapshotAttributeMessage =
    { valuesToRemove : AttributeValueList
    , valuesToAdd : AttributeValueList
    , dbsnapshotIdentifier : String
    , attributeName : String
    }


type alias ModifyDbsnapshotAttributeResult =
    { dbsnapshotAttributesResult : DbsnapshotAttributesResult }


type alias ModifyDbsnapshotMessage =
    { optionGroupName : String, engineVersion : String, dbsnapshotIdentifier : String }


type alias ModifyDbsnapshotResult =
    { dbsnapshot : Dbsnapshot }


type alias ModifyDbsubnetGroupMessage =
    { subnetIds : SubnetIdentifierList, dbsubnetGroupName : String, dbsubnetGroupDescription : String }


type alias ModifyDbsubnetGroupResult =
    { dbsubnetGroup : DbsubnetGroup }


type alias ModifyEventSubscriptionMessage =
    { subscriptionName : String
    , sourceType : String
    , snsTopicArn : String
    , eventCategories : EventCategoriesList
    , enabled : Bool
    }


type alias ModifyEventSubscriptionResult =
    { eventSubscription : EventSubscription }


type alias ModifyGlobalClusterMessage =
    { newGlobalClusterIdentifier : String, globalClusterIdentifier : String, deletionProtection : Bool }


type alias ModifyGlobalClusterResult =
    { globalCluster : GlobalCluster }


type alias ModifyOptionGroupMessage =
    { optionsToRemove : OptionNamesList
    , optionsToInclude : OptionConfigurationList
    , optionGroupName : String
    , applyImmediately : Bool
    }


type alias ModifyOptionGroupResult =
    { optionGroup : OptionGroup }


type alias Option =
    { vpcSecurityGroupMemberships : VpcSecurityGroupMembershipList
    , port : Int
    , persistent : Bool
    , permanent : Bool
    , optionVersion : String
    , optionSettings : OptionSettingConfigurationList
    , optionName : String
    , optionDescription : String
    , dbsecurityGroupMemberships : DbsecurityGroupMembershipList
    }


type alias OptionConfiguration =
    { vpcSecurityGroupMemberships : VpcSecurityGroupIdList
    , port : Int
    , optionVersion : String
    , optionSettings : OptionSettingsList
    , optionName : String
    , dbsecurityGroupMemberships : DbsecurityGroupNameList
    }


type alias OptionConfigurationList =
    List OptionConfiguration


type alias OptionGroup =
    { vpcId : String
    , options : OptionsList
    , optionGroupName : String
    , optionGroupDescription : String
    , optionGroupArn : String
    , majorEngineVersion : String
    , engineName : String
    , allowsVpcAndNonVpcInstanceMemberships : Bool
    }


type alias OptionGroupMembership =
    { status : String, optionGroupName : String }


type alias OptionGroupMembershipList =
    List OptionGroupMembership


type alias OptionGroupOption =
    { vpcOnly : Bool
    , supportsOptionVersionDowngrade : Bool
    , requiresAutoMinorEngineVersionUpgrade : Bool
    , portRequired : Bool
    , persistent : Bool
    , permanent : Bool
    , optionsDependedOn : OptionsDependedOn
    , optionsConflictsWith : OptionsConflictsWith
    , optionGroupOptionVersions : OptionGroupOptionVersionsList
    , optionGroupOptionSettings : OptionGroupOptionSettingsList
    , name : String
    , minimumRequiredMinorEngineVersion : String
    , majorEngineVersion : String
    , engineName : String
    , description : String
    , defaultPort : Int
    }


type alias OptionGroupOptionSetting =
    { settingName : String
    , settingDescription : String
    , minimumEngineVersionPerAllowedValue : MinimumEngineVersionPerAllowedValueList
    , isRequired : Bool
    , isModifiable : Bool
    , defaultValue : String
    , applyType : String
    , allowedValues : String
    }


type alias OptionGroupOptionSettingsList =
    List OptionGroupOptionSetting


type alias OptionGroupOptionVersionsList =
    List OptionVersion


type alias OptionGroupOptionsList =
    List OptionGroupOption


type alias OptionGroupOptionsMessage =
    { optionGroupOptions : OptionGroupOptionsList, marker : String }


type alias OptionGroups =
    { optionGroupsList : OptionGroupsList, marker : String }


type alias OptionGroupsList =
    List OptionGroup


type alias OptionNamesList =
    List String


type alias OptionSetting =
    { value : String
    , name : String
    , isModifiable : Bool
    , isCollection : Bool
    , description : String
    , defaultValue : String
    , dataType : String
    , applyType : String
    , allowedValues : String
    }


type alias OptionSettingConfigurationList =
    List OptionSetting


type alias OptionSettingsList =
    List OptionSetting


type alias OptionVersion =
    { version : String, isDefault : Bool }


type alias OptionsConflictsWith =
    List String


type alias OptionsDependedOn =
    List String


type alias OptionsList =
    List Option


type alias OrderableDbinstanceOption =
    { vpc : Bool
    , supportsStorageEncryption : Bool
    , supportsStorageAutoscaling : Bool
    , supportsPerformanceInsights : Bool
    , supportsIops : Bool
    , supportsIamdatabaseAuthentication : Bool
    , supportsEnhancedMonitoring : Bool
    , supportedEngineModes : EngineModeList
    , storageType : String
    , readReplicaCapable : Bool
    , multiAzcapable : Bool
    , minStorageSize : Int
    , minIopsPerGib : Float
    , minIopsPerDbInstance : Int
    , maxStorageSize : Int
    , maxIopsPerGib : Float
    , maxIopsPerDbInstance : Int
    , licenseModel : String
    , engineVersion : String
    , engine : String
    , dbinstanceClass : String
    , availableProcessorFeatures : AvailableProcessorFeatureList
    , availabilityZones : AvailabilityZoneList
    }


type alias OrderableDbinstanceOptionsList =
    List OrderableDbinstanceOption


type alias OrderableDbinstanceOptionsMessage =
    { orderableDbinstanceOptions : OrderableDbinstanceOptionsList, marker : String }


type alias Parameter =
    { supportedEngineModes : EngineModeList
    , source : String
    , parameterValue : String
    , parameterName : String
    , minimumEngineVersion : String
    , isModifiable : Bool
    , description : String
    , dataType : String
    , applyType : String
    , applyMethod : ApplyMethod
    , allowedValues : String
    }


type alias ParametersList =
    List Parameter


type alias PendingCloudwatchLogsExports =
    { logTypesToEnable : LogTypeList, logTypesToDisable : LogTypeList }


type alias PendingMaintenanceAction =
    { optInStatus : String
    , forcedApplyDate : Tstamp
    , description : String
    , currentApplyDate : Tstamp
    , autoAppliedAfterDate : Tstamp
    , action : String
    }


type alias PendingMaintenanceActionDetails =
    List PendingMaintenanceAction


type alias PendingMaintenanceActions =
    List ResourcePendingMaintenanceActions


type alias PendingMaintenanceActionsMessage =
    { pendingMaintenanceActions : PendingMaintenanceActions, marker : String }


type alias PendingModifiedValues =
    { storageType : String
    , processorFeatures : ProcessorFeatureList
    , port : Int
    , pendingCloudwatchLogsExports : PendingCloudwatchLogsExports
    , multiAz : Bool
    , masterUserPassword : String
    , licenseModel : String
    , iops : Int
    , engineVersion : String
    , dbsubnetGroupName : String
    , dbinstanceIdentifier : String
    , dbinstanceClass : String
    , cacertificateIdentifier : String
    , backupRetentionPeriod : Int
    , allocatedStorage : Int
    }


type alias ProcessorFeature =
    { value : String, name : String }


type alias ProcessorFeatureList =
    List ProcessorFeature


type alias PromoteReadReplicaDbclusterMessage =
    { dbclusterIdentifier : String }


type alias PromoteReadReplicaDbclusterResult =
    { dbcluster : Dbcluster }


type alias PromoteReadReplicaMessage =
    { preferredBackupWindow : String, dbinstanceIdentifier : String, backupRetentionPeriod : Int }


type alias PromoteReadReplicaResult =
    { dbinstance : Dbinstance }


type alias PurchaseReservedDbinstancesOfferingMessage =
    { tags : TagList, reservedDbinstancesOfferingId : String, reservedDbinstanceId : String, dbinstanceCount : Int }


type alias PurchaseReservedDbinstancesOfferingResult =
    { reservedDbinstance : ReservedDbinstance }


type alias Range =
    { to : Int, step : Int, from : Int }


type alias RangeList =
    List Range


type alias ReadReplicaDbclusterIdentifierList =
    List String


type alias ReadReplicaDbinstanceIdentifierList =
    List String


type alias ReadReplicaIdentifierList =
    List String


type alias ReadersArnList =
    List String


type alias RebootDbinstanceMessage =
    { forceFailover : Bool, dbinstanceIdentifier : String }


type alias RebootDbinstanceResult =
    { dbinstance : Dbinstance }


type alias RecurringCharge =
    { recurringChargeFrequency : String, recurringChargeAmount : Float }


type alias RecurringChargeList =
    List RecurringCharge


type alias RemoveFromGlobalClusterMessage =
    { globalClusterIdentifier : String, dbClusterIdentifier : String }


type alias RemoveFromGlobalClusterResult =
    { globalCluster : GlobalCluster }


type alias RemoveRoleFromDbclusterMessage =
    { roleArn : String, featureName : String, dbclusterIdentifier : String }


type alias RemoveRoleFromDbinstanceMessage =
    { roleArn : String, featureName : String, dbinstanceIdentifier : String }


type alias RemoveSourceIdentifierFromSubscriptionMessage =
    { subscriptionName : String, sourceIdentifier : String }


type alias RemoveSourceIdentifierFromSubscriptionResult =
    { eventSubscription : EventSubscription }


type alias RemoveTagsFromResourceMessage =
    { tagKeys : KeyList, resourceName : String }


type alias ReservedDbinstance =
    { usagePrice : Float
    , state : String
    , startTime : Tstamp
    , reservedDbinstancesOfferingId : String
    , reservedDbinstanceId : String
    , reservedDbinstanceArn : String
    , recurringCharges : RecurringChargeList
    , productDescription : String
    , offeringType : String
    , multiAz : Bool
    , fixedPrice : Float
    , duration : Int
    , dbinstanceCount : Int
    , dbinstanceClass : String
    , currencyCode : String
    }


type alias ReservedDbinstanceList =
    List ReservedDbinstance


type alias ReservedDbinstanceMessage =
    { reservedDbinstances : ReservedDbinstanceList, marker : String }


type alias ReservedDbinstancesOffering =
    { usagePrice : Float
    , reservedDbinstancesOfferingId : String
    , recurringCharges : RecurringChargeList
    , productDescription : String
    , offeringType : String
    , multiAz : Bool
    , fixedPrice : Float
    , duration : Int
    , dbinstanceClass : String
    , currencyCode : String
    }


type alias ReservedDbinstancesOfferingList =
    List ReservedDbinstancesOffering


type alias ReservedDbinstancesOfferingMessage =
    { reservedDbinstancesOfferings : ReservedDbinstancesOfferingList, marker : String }


type alias ResetDbclusterParameterGroupMessage =
    { resetAllParameters : Bool, parameters : ParametersList, dbclusterParameterGroupName : String }


type alias ResetDbparameterGroupMessage =
    { resetAllParameters : Bool, parameters : ParametersList, dbparameterGroupName : String }


type alias ResourcePendingMaintenanceActions =
    { resourceIdentifier : String, pendingMaintenanceActionDetails : PendingMaintenanceActionDetails }


type alias RestoreDbclusterFromS3Message =
    { vpcSecurityGroupIds : VpcSecurityGroupIdList
    , tags : TagList
    , storageEncrypted : Bool
    , sourceEngineVersion : String
    , sourceEngine : String
    , s3Prefix : String
    , s3IngestionRoleArn : String
    , s3BucketName : String
    , preferredMaintenanceWindow : String
    , preferredBackupWindow : String
    , port : Int
    , optionGroupName : String
    , masterUsername : String
    , masterUserPassword : String
    , kmsKeyId : String
    , engineVersion : String
    , engine : String
    , enableIamdatabaseAuthentication : Bool
    , enableCloudwatchLogsExports : LogTypeList
    , deletionProtection : Bool
    , databaseName : String
    , dbsubnetGroupName : String
    , dbclusterParameterGroupName : String
    , dbclusterIdentifier : String
    , copyTagsToSnapshot : Bool
    , characterSetName : String
    , backupRetentionPeriod : Int
    , backtrackWindow : Int
    , availabilityZones : AvailabilityZones
    }


type alias RestoreDbclusterFromS3Result =
    { dbcluster : Dbcluster }


type alias RestoreDbclusterFromSnapshotMessage =
    { vpcSecurityGroupIds : VpcSecurityGroupIdList
    , tags : TagList
    , snapshotIdentifier : String
    , scalingConfiguration : ScalingConfiguration
    , port : Int
    , optionGroupName : String
    , kmsKeyId : String
    , engineVersion : String
    , engineMode : String
    , engine : String
    , enableIamdatabaseAuthentication : Bool
    , enableCloudwatchLogsExports : LogTypeList
    , deletionProtection : Bool
    , databaseName : String
    , dbsubnetGroupName : String
    , dbclusterParameterGroupName : String
    , dbclusterIdentifier : String
    , copyTagsToSnapshot : Bool
    , backtrackWindow : Int
    , availabilityZones : AvailabilityZones
    }


type alias RestoreDbclusterFromSnapshotResult =
    { dbcluster : Dbcluster }


type alias RestoreDbclusterToPointInTimeMessage =
    { vpcSecurityGroupIds : VpcSecurityGroupIdList
    , useLatestRestorableTime : Bool
    , tags : TagList
    , sourceDbclusterIdentifier : String
    , restoreType : String
    , restoreToTime : Tstamp
    , port : Int
    , optionGroupName : String
    , kmsKeyId : String
    , enableIamdatabaseAuthentication : Bool
    , enableCloudwatchLogsExports : LogTypeList
    , deletionProtection : Bool
    , dbsubnetGroupName : String
    , dbclusterParameterGroupName : String
    , dbclusterIdentifier : String
    , copyTagsToSnapshot : Bool
    , backtrackWindow : Int
    }


type alias RestoreDbclusterToPointInTimeResult =
    { dbcluster : Dbcluster }


type alias RestoreDbinstanceFromDbsnapshotMessage =
    { vpcSecurityGroupIds : VpcSecurityGroupIdList
    , useDefaultProcessorFeatures : Bool
    , tdeCredentialPassword : String
    , tdeCredentialArn : String
    , tags : TagList
    , storageType : String
    , publiclyAccessible : Bool
    , processorFeatures : ProcessorFeatureList
    , port : Int
    , optionGroupName : String
    , multiAz : Bool
    , licenseModel : String
    , iops : Int
    , engine : String
    , enableIamdatabaseAuthentication : Bool
    , enableCloudwatchLogsExports : LogTypeList
    , domainIamroleName : String
    , domain : String
    , deletionProtection : Bool
    , dbsubnetGroupName : String
    , dbsnapshotIdentifier : String
    , dbparameterGroupName : String
    , dbname : String
    , dbinstanceIdentifier : String
    , dbinstanceClass : String
    , copyTagsToSnapshot : Bool
    , availabilityZone : String
    , autoMinorVersionUpgrade : Bool
    }


type alias RestoreDbinstanceFromDbsnapshotResult =
    { dbinstance : Dbinstance }


type alias RestoreDbinstanceFromS3Message =
    { vpcSecurityGroupIds : VpcSecurityGroupIdList
    , useDefaultProcessorFeatures : Bool
    , tags : TagList
    , storageType : String
    , storageEncrypted : Bool
    , sourceEngineVersion : String
    , sourceEngine : String
    , s3Prefix : String
    , s3IngestionRoleArn : String
    , s3BucketName : String
    , publiclyAccessible : Bool
    , processorFeatures : ProcessorFeatureList
    , preferredMaintenanceWindow : String
    , preferredBackupWindow : String
    , port : Int
    , performanceInsightsRetentionPeriod : Int
    , performanceInsightsKmskeyId : String
    , optionGroupName : String
    , multiAz : Bool
    , monitoringRoleArn : String
    , monitoringInterval : Int
    , masterUsername : String
    , masterUserPassword : String
    , licenseModel : String
    , kmsKeyId : String
    , iops : Int
    , engineVersion : String
    , engine : String
    , enablePerformanceInsights : Bool
    , enableIamdatabaseAuthentication : Bool
    , enableCloudwatchLogsExports : LogTypeList
    , deletionProtection : Bool
    , dbsubnetGroupName : String
    , dbsecurityGroups : DbsecurityGroupNameList
    , dbparameterGroupName : String
    , dbname : String
    , dbinstanceIdentifier : String
    , dbinstanceClass : String
    , copyTagsToSnapshot : Bool
    , backupRetentionPeriod : Int
    , availabilityZone : String
    , autoMinorVersionUpgrade : Bool
    , allocatedStorage : Int
    }


type alias RestoreDbinstanceFromS3Result =
    { dbinstance : Dbinstance }


type alias RestoreDbinstanceToPointInTimeMessage =
    { vpcSecurityGroupIds : VpcSecurityGroupIdList
    , useLatestRestorableTime : Bool
    , useDefaultProcessorFeatures : Bool
    , tdeCredentialPassword : String
    , tdeCredentialArn : String
    , targetDbinstanceIdentifier : String
    , tags : TagList
    , storageType : String
    , sourceDbiResourceId : String
    , sourceDbinstanceIdentifier : String
    , restoreTime : Tstamp
    , publiclyAccessible : Bool
    , processorFeatures : ProcessorFeatureList
    , port : Int
    , optionGroupName : String
    , multiAz : Bool
    , licenseModel : String
    , iops : Int
    , engine : String
    , enableIamdatabaseAuthentication : Bool
    , enableCloudwatchLogsExports : LogTypeList
    , domainIamroleName : String
    , domain : String
    , deletionProtection : Bool
    , dbsubnetGroupName : String
    , dbparameterGroupName : String
    , dbname : String
    , dbinstanceClass : String
    , copyTagsToSnapshot : Bool
    , availabilityZone : String
    , autoMinorVersionUpgrade : Bool
    }


type alias RestoreDbinstanceToPointInTimeResult =
    { dbinstance : Dbinstance }


type alias RestoreWindow =
    { latestTime : Tstamp, earliestTime : Tstamp }


type alias RevokeDbsecurityGroupIngressMessage =
    { ec2SecurityGroupOwnerId : String
    , ec2SecurityGroupName : String
    , ec2SecurityGroupId : String
    , dbsecurityGroupName : String
    , cidrip : String
    }


type alias RevokeDbsecurityGroupIngressResult =
    { dbsecurityGroup : DbsecurityGroup }


type alias ScalingConfiguration =
    { timeoutAction : String, secondsUntilAutoPause : Int, minCapacity : Int, maxCapacity : Int, autoPause : Bool }


type alias ScalingConfigurationInfo =
    { timeoutAction : String, secondsUntilAutoPause : Int, minCapacity : Int, maxCapacity : Int, autoPause : Bool }


type alias SourceIdsList =
    List String


type alias SourceRegion =
    { status : String, regionName : String, endpoint : String }


type alias SourceRegionList =
    List SourceRegion


type alias SourceRegionMessage =
    { sourceRegions : SourceRegionList, marker : String }


type SourceType
    = SourceTypeDbInstance
    | SourceTypeDbParameterGroup
    | SourceTypeDbSecurityGroup
    | SourceTypeDbSnapshot
    | SourceTypeDbCluster
    | SourceTypeDbClusterSnapshot


sourceType : Enum SourceType
sourceType =
    Enum.define
        [ SourceTypeDbInstance
        , SourceTypeDbParameterGroup
        , SourceTypeDbSecurityGroup
        , SourceTypeDbSnapshot
        , SourceTypeDbCluster
        , SourceTypeDbClusterSnapshot
        ]
        (\val ->
            case val of
                SourceTypeDbInstance ->
                    "db-instance"

                SourceTypeDbParameterGroup ->
                    "db-parameter-group"

                SourceTypeDbSecurityGroup ->
                    "db-security-group"

                SourceTypeDbSnapshot ->
                    "db-snapshot"

                SourceTypeDbCluster ->
                    "db-cluster"

                SourceTypeDbClusterSnapshot ->
                    "db-cluster-snapshot"
        )


type alias StartActivityStreamRequest =
    { resourceArn : String, mode : ActivityStreamMode, kmsKeyId : String, applyImmediately : Bool }


type alias StartActivityStreamResponse =
    { status : ActivityStreamStatus
    , mode : ActivityStreamMode
    , kmsKeyId : String
    , kinesisStreamName : String
    , applyImmediately : Bool
    }


type alias StartDbclusterMessage =
    { dbclusterIdentifier : String }


type alias StartDbclusterResult =
    { dbcluster : Dbcluster }


type alias StartDbinstanceMessage =
    { dbinstanceIdentifier : String }


type alias StartDbinstanceResult =
    { dbinstance : Dbinstance }


type alias StopActivityStreamRequest =
    { resourceArn : String, applyImmediately : Bool }


type alias StopActivityStreamResponse =
    { status : ActivityStreamStatus, kmsKeyId : String, kinesisStreamName : String }


type alias StopDbclusterMessage =
    { dbclusterIdentifier : String }


type alias StopDbclusterResult =
    { dbcluster : Dbcluster }


type alias StopDbinstanceMessage =
    { dbsnapshotIdentifier : String, dbinstanceIdentifier : String }


type alias StopDbinstanceResult =
    { dbinstance : Dbinstance }


type alias String_ =
    String


type alias StringList =
    List String


type alias Subnet =
    { subnetStatus : String, subnetIdentifier : String, subnetAvailabilityZone : AvailabilityZone }


type alias SubnetIdentifierList =
    List String


type alias SubnetList =
    List Subnet


type alias SupportedCharacterSetsList =
    List CharacterSet


type alias SupportedTimezonesList =
    List Timezone


type alias Tstamp =
    String


type alias Tag =
    { value : String, key : String }


type alias TagList =
    List Tag


type alias TagListMessage =
    { tagList : TagList }


type alias Timezone =
    { timezoneName : String }


type alias UpgradeTarget =
    { isMajorVersionUpgrade : Bool, engineVersion : String, engine : String, description : String, autoUpgrade : Bool }


type alias ValidDbinstanceModificationsMessage =
    { validProcessorFeatures : AvailableProcessorFeatureList, storage : ValidStorageOptionsList }


type alias ValidStorageOptions =
    { supportsStorageAutoscaling : Bool
    , storageType : String
    , storageSize : RangeList
    , provisionedIops : RangeList
    , iopsToStorageRatio : DoubleRangeList
    }


type alias ValidStorageOptionsList =
    List ValidStorageOptions


type alias ValidUpgradeTargetList =
    List UpgradeTarget


type alias VpcSecurityGroupIdList =
    List String


type alias VpcSecurityGroupMembership =
    { vpcSecurityGroupId : String, status : String }


type alias VpcSecurityGroupMembershipList =
    List VpcSecurityGroupMembership


{-| Codec for VpcSecurityGroupMembershipList. -}
vpcSecurityGroupMembershipListCodec : Codec VpcSecurityGroupMembershipList
vpcSecurityGroupMembershipListCodec =
    Codec.list vpcSecurityGroupMembershipCodec


{-| Codec for VpcSecurityGroupMembership. -}
vpcSecurityGroupMembershipCodec : Codec VpcSecurityGroupMembership
vpcSecurityGroupMembershipCodec =
    Codec.object VpcSecurityGroupMembership
        |> Codec.field "VpcSecurityGroupId" .vpcSecurityGroupId Codec.string
        |> Codec.field "Status" .status Codec.string
        |> Codec.buildObject


{-| Codec for VpcSecurityGroupIdList. -}
vpcSecurityGroupIdListCodec : Codec VpcSecurityGroupIdList
vpcSecurityGroupIdListCodec =
    Codec.list Codec.string


{-| Codec for ValidUpgradeTargetList. -}
validUpgradeTargetListCodec : Codec ValidUpgradeTargetList
validUpgradeTargetListCodec =
    Codec.list upgradeTargetCodec


{-| Codec for ValidStorageOptionsList. -}
validStorageOptionsListCodec : Codec ValidStorageOptionsList
validStorageOptionsListCodec =
    Codec.list validStorageOptionsCodec


{-| Codec for ValidStorageOptions. -}
validStorageOptionsCodec : Codec ValidStorageOptions
validStorageOptionsCodec =
    Codec.object ValidStorageOptions
        |> Codec.field "SupportsStorageAutoscaling" .supportsStorageAutoscaling Codec.bool
        |> Codec.field "StorageType" .storageType Codec.string
        |> Codec.field "StorageSize" .storageSize rangeListCodec
        |> Codec.field "ProvisionedIops" .provisionedIops rangeListCodec
        |> Codec.field "IopsToStorageRatio" .iopsToStorageRatio doubleRangeListCodec
        |> Codec.buildObject


{-| Codec for ValidDbinstanceModificationsMessage. -}
validDbinstanceModificationsMessageCodec : Codec ValidDbinstanceModificationsMessage
validDbinstanceModificationsMessageCodec =
    Codec.object ValidDbinstanceModificationsMessage
        |> Codec.field "ValidProcessorFeatures" .validProcessorFeatures availableProcessorFeatureListCodec
        |> Codec.field "Storage" .storage validStorageOptionsListCodec
        |> Codec.buildObject


{-| Codec for UpgradeTarget. -}
upgradeTargetCodec : Codec UpgradeTarget
upgradeTargetCodec =
    Codec.object UpgradeTarget
        |> Codec.field "IsMajorVersionUpgrade" .isMajorVersionUpgrade Codec.bool
        |> Codec.field "EngineVersion" .engineVersion Codec.string
        |> Codec.field "Engine" .engine Codec.string
        |> Codec.field "Description" .description Codec.string
        |> Codec.field "AutoUpgrade" .autoUpgrade Codec.bool
        |> Codec.buildObject


{-| Codec for Timezone. -}
timezoneCodec : Codec Timezone
timezoneCodec =
    Codec.object Timezone |> Codec.field "TimezoneName" .timezoneName Codec.string |> Codec.buildObject


{-| Codec for TagListMessage. -}
tagListMessageCodec : Codec TagListMessage
tagListMessageCodec =
    Codec.object TagListMessage |> Codec.field "TagList" .tagList tagListCodec |> Codec.buildObject


{-| Codec for TagList. -}
tagListCodec : Codec TagList
tagListCodec =
    Codec.list tagCodec


{-| Codec for Tag. -}
tagCodec : Codec Tag
tagCodec =
    Codec.object Tag
        |> Codec.field "Value" .value Codec.string
        |> Codec.field "Key" .key Codec.string
        |> Codec.buildObject


{-| Codec for Tstamp. -}
tstampCodec : Codec Tstamp
tstampCodec =
    Codec.string


{-| Codec for SupportedTimezonesList. -}
supportedTimezonesListCodec : Codec SupportedTimezonesList
supportedTimezonesListCodec =
    Codec.list timezoneCodec


{-| Codec for SupportedCharacterSetsList. -}
supportedCharacterSetsListCodec : Codec SupportedCharacterSetsList
supportedCharacterSetsListCodec =
    Codec.list characterSetCodec


{-| Codec for SubnetList. -}
subnetListCodec : Codec SubnetList
subnetListCodec =
    Codec.list subnetCodec


{-| Codec for SubnetIdentifierList. -}
subnetIdentifierListCodec : Codec SubnetIdentifierList
subnetIdentifierListCodec =
    Codec.list Codec.string


{-| Codec for Subnet. -}
subnetCodec : Codec Subnet
subnetCodec =
    Codec.object Subnet
        |> Codec.field "SubnetStatus" .subnetStatus Codec.string
        |> Codec.field "SubnetIdentifier" .subnetIdentifier Codec.string
        |> Codec.field "SubnetAvailabilityZone" .subnetAvailabilityZone availabilityZoneCodec
        |> Codec.buildObject


{-| Codec for StringList. -}
stringListCodec : Codec StringList
stringListCodec =
    Codec.list Codec.string


{-| Codec for String_. -}
stringCodec : Codec String_
stringCodec =
    Codec.string


{-| Codec for StopDbinstanceResult. -}
stopDbinstanceResultCodec : Codec StopDbinstanceResult
stopDbinstanceResultCodec =
    Codec.object StopDbinstanceResult |> Codec.field "DBInstance" .dbinstance dbinstanceCodec |> Codec.buildObject


{-| Codec for StopDbinstanceMessage. -}
stopDbinstanceMessageCodec : Codec StopDbinstanceMessage
stopDbinstanceMessageCodec =
    Codec.object StopDbinstanceMessage
        |> Codec.field "DBSnapshotIdentifier" .dbsnapshotIdentifier Codec.string
        |> Codec.field "DBInstanceIdentifier" .dbinstanceIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for StopDbclusterResult. -}
stopDbclusterResultCodec : Codec StopDbclusterResult
stopDbclusterResultCodec =
    Codec.object StopDbclusterResult |> Codec.field "DBCluster" .dbcluster dbclusterCodec |> Codec.buildObject


{-| Codec for StopDbclusterMessage. -}
stopDbclusterMessageCodec : Codec StopDbclusterMessage
stopDbclusterMessageCodec =
    Codec.object StopDbclusterMessage
        |> Codec.field "DBClusterIdentifier" .dbclusterIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for StopActivityStreamResponse. -}
stopActivityStreamResponseCodec : Codec StopActivityStreamResponse
stopActivityStreamResponseCodec =
    Codec.object StopActivityStreamResponse
        |> Codec.field "Status" .status activityStreamStatusCodec
        |> Codec.field "KmsKeyId" .kmsKeyId Codec.string
        |> Codec.field "KinesisStreamName" .kinesisStreamName Codec.string
        |> Codec.buildObject


{-| Codec for StopActivityStreamRequest. -}
stopActivityStreamRequestCodec : Codec StopActivityStreamRequest
stopActivityStreamRequestCodec =
    Codec.object StopActivityStreamRequest
        |> Codec.field "ResourceArn" .resourceArn Codec.string
        |> Codec.field "ApplyImmediately" .applyImmediately Codec.bool
        |> Codec.buildObject


{-| Codec for StartDbinstanceResult. -}
startDbinstanceResultCodec : Codec StartDbinstanceResult
startDbinstanceResultCodec =
    Codec.object StartDbinstanceResult |> Codec.field "DBInstance" .dbinstance dbinstanceCodec |> Codec.buildObject


{-| Codec for StartDbinstanceMessage. -}
startDbinstanceMessageCodec : Codec StartDbinstanceMessage
startDbinstanceMessageCodec =
    Codec.object StartDbinstanceMessage
        |> Codec.field "DBInstanceIdentifier" .dbinstanceIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for StartDbclusterResult. -}
startDbclusterResultCodec : Codec StartDbclusterResult
startDbclusterResultCodec =
    Codec.object StartDbclusterResult |> Codec.field "DBCluster" .dbcluster dbclusterCodec |> Codec.buildObject


{-| Codec for StartDbclusterMessage. -}
startDbclusterMessageCodec : Codec StartDbclusterMessage
startDbclusterMessageCodec =
    Codec.object StartDbclusterMessage
        |> Codec.field "DBClusterIdentifier" .dbclusterIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for StartActivityStreamResponse. -}
startActivityStreamResponseCodec : Codec StartActivityStreamResponse
startActivityStreamResponseCodec =
    Codec.object StartActivityStreamResponse
        |> Codec.field "Status" .status activityStreamStatusCodec
        |> Codec.field "Mode" .mode activityStreamModeCodec
        |> Codec.field "KmsKeyId" .kmsKeyId Codec.string
        |> Codec.field "KinesisStreamName" .kinesisStreamName Codec.string
        |> Codec.field "ApplyImmediately" .applyImmediately Codec.bool
        |> Codec.buildObject


{-| Codec for StartActivityStreamRequest. -}
startActivityStreamRequestCodec : Codec StartActivityStreamRequest
startActivityStreamRequestCodec =
    Codec.object StartActivityStreamRequest
        |> Codec.field "ResourceArn" .resourceArn Codec.string
        |> Codec.field "Mode" .mode activityStreamModeCodec
        |> Codec.field "KmsKeyId" .kmsKeyId Codec.string
        |> Codec.field "ApplyImmediately" .applyImmediately Codec.bool
        |> Codec.buildObject


{-| Codec for SourceType. -}
sourceTypeCodec : Codec SourceType
sourceTypeCodec =
    Codec.build (Enum.encoder sourceType) (Enum.decoder sourceType)


{-| Codec for SourceRegionMessage. -}
sourceRegionMessageCodec : Codec SourceRegionMessage
sourceRegionMessageCodec =
    Codec.object SourceRegionMessage
        |> Codec.field "SourceRegions" .sourceRegions sourceRegionListCodec
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.buildObject


{-| Codec for SourceRegionList. -}
sourceRegionListCodec : Codec SourceRegionList
sourceRegionListCodec =
    Codec.list sourceRegionCodec


{-| Codec for SourceRegion. -}
sourceRegionCodec : Codec SourceRegion
sourceRegionCodec =
    Codec.object SourceRegion
        |> Codec.field "Status" .status Codec.string
        |> Codec.field "RegionName" .regionName Codec.string
        |> Codec.field "Endpoint" .endpoint Codec.string
        |> Codec.buildObject


{-| Codec for SourceIdsList. -}
sourceIdsListCodec : Codec SourceIdsList
sourceIdsListCodec =
    Codec.list Codec.string


{-| Codec for ScalingConfigurationInfo. -}
scalingConfigurationInfoCodec : Codec ScalingConfigurationInfo
scalingConfigurationInfoCodec =
    Codec.object ScalingConfigurationInfo
        |> Codec.field "TimeoutAction" .timeoutAction Codec.string
        |> Codec.field "SecondsUntilAutoPause" .secondsUntilAutoPause Codec.int
        |> Codec.field "MinCapacity" .minCapacity Codec.int
        |> Codec.field "MaxCapacity" .maxCapacity Codec.int
        |> Codec.field "AutoPause" .autoPause Codec.bool
        |> Codec.buildObject


{-| Codec for ScalingConfiguration. -}
scalingConfigurationCodec : Codec ScalingConfiguration
scalingConfigurationCodec =
    Codec.object ScalingConfiguration
        |> Codec.field "TimeoutAction" .timeoutAction Codec.string
        |> Codec.field "SecondsUntilAutoPause" .secondsUntilAutoPause Codec.int
        |> Codec.field "MinCapacity" .minCapacity Codec.int
        |> Codec.field "MaxCapacity" .maxCapacity Codec.int
        |> Codec.field "AutoPause" .autoPause Codec.bool
        |> Codec.buildObject


{-| Codec for RevokeDbsecurityGroupIngressResult. -}
revokeDbsecurityGroupIngressResultCodec : Codec RevokeDbsecurityGroupIngressResult
revokeDbsecurityGroupIngressResultCodec =
    Codec.object RevokeDbsecurityGroupIngressResult
        |> Codec.field "DBSecurityGroup" .dbsecurityGroup dbsecurityGroupCodec
        |> Codec.buildObject


{-| Codec for RevokeDbsecurityGroupIngressMessage. -}
revokeDbsecurityGroupIngressMessageCodec : Codec RevokeDbsecurityGroupIngressMessage
revokeDbsecurityGroupIngressMessageCodec =
    Codec.object RevokeDbsecurityGroupIngressMessage
        |> Codec.field "EC2SecurityGroupOwnerId" .ec2SecurityGroupOwnerId Codec.string
        |> Codec.field "EC2SecurityGroupName" .ec2SecurityGroupName Codec.string
        |> Codec.field "EC2SecurityGroupId" .ec2SecurityGroupId Codec.string
        |> Codec.field "DBSecurityGroupName" .dbsecurityGroupName Codec.string
        |> Codec.field "CIDRIP" .cidrip Codec.string
        |> Codec.buildObject


{-| Codec for RestoreWindow. -}
restoreWindowCodec : Codec RestoreWindow
restoreWindowCodec =
    Codec.object RestoreWindow
        |> Codec.field "LatestTime" .latestTime tstampCodec
        |> Codec.field "EarliestTime" .earliestTime tstampCodec
        |> Codec.buildObject


{-| Codec for RestoreDbinstanceToPointInTimeResult. -}
restoreDbinstanceToPointInTimeResultCodec : Codec RestoreDbinstanceToPointInTimeResult
restoreDbinstanceToPointInTimeResultCodec =
    Codec.object RestoreDbinstanceToPointInTimeResult
        |> Codec.field "DBInstance" .dbinstance dbinstanceCodec
        |> Codec.buildObject


{-| Codec for RestoreDbinstanceToPointInTimeMessage. -}
restoreDbinstanceToPointInTimeMessageCodec : Codec RestoreDbinstanceToPointInTimeMessage
restoreDbinstanceToPointInTimeMessageCodec =
    Codec.object RestoreDbinstanceToPointInTimeMessage
        |> Codec.field "VpcSecurityGroupIds" .vpcSecurityGroupIds vpcSecurityGroupIdListCodec
        |> Codec.field "UseLatestRestorableTime" .useLatestRestorableTime Codec.bool
        |> Codec.field "UseDefaultProcessorFeatures" .useDefaultProcessorFeatures Codec.bool
        |> Codec.field "TdeCredentialPassword" .tdeCredentialPassword Codec.string
        |> Codec.field "TdeCredentialArn" .tdeCredentialArn Codec.string
        |> Codec.field "TargetDBInstanceIdentifier" .targetDbinstanceIdentifier Codec.string
        |> Codec.field "Tags" .tags tagListCodec
        |> Codec.field "StorageType" .storageType Codec.string
        |> Codec.field "SourceDbiResourceId" .sourceDbiResourceId Codec.string
        |> Codec.field "SourceDBInstanceIdentifier" .sourceDbinstanceIdentifier Codec.string
        |> Codec.field "RestoreTime" .restoreTime tstampCodec
        |> Codec.field "PubliclyAccessible" .publiclyAccessible Codec.bool
        |> Codec.field "ProcessorFeatures" .processorFeatures processorFeatureListCodec
        |> Codec.field "Port" .port Codec.int
        |> Codec.field "OptionGroupName" .optionGroupName Codec.string
        |> Codec.field "MultiAZ" .multiAz Codec.bool
        |> Codec.field "LicenseModel" .licenseModel Codec.string
        |> Codec.field "Iops" .iops Codec.int
        |> Codec.field "Engine" .engine Codec.string
        |> Codec.field "EnableIAMDatabaseAuthentication" .enableIamdatabaseAuthentication Codec.bool
        |> Codec.field "EnableCloudwatchLogsExports" .enableCloudwatchLogsExports logTypeListCodec
        |> Codec.field "DomainIAMRoleName" .domainIamroleName Codec.string
        |> Codec.field "Domain" .domain Codec.string
        |> Codec.field "DeletionProtection" .deletionProtection Codec.bool
        |> Codec.field "DBSubnetGroupName" .dbsubnetGroupName Codec.string
        |> Codec.field "DBParameterGroupName" .dbparameterGroupName Codec.string
        |> Codec.field "DBName" .dbname Codec.string
        |> Codec.field "DBInstanceClass" .dbinstanceClass Codec.string
        |> Codec.field "CopyTagsToSnapshot" .copyTagsToSnapshot Codec.bool
        |> Codec.field "AvailabilityZone" .availabilityZone Codec.string
        |> Codec.field "AutoMinorVersionUpgrade" .autoMinorVersionUpgrade Codec.bool
        |> Codec.buildObject


{-| Codec for RestoreDbinstanceFromS3Result. -}
restoreDbinstanceFromS3ResultCodec : Codec RestoreDbinstanceFromS3Result
restoreDbinstanceFromS3ResultCodec =
    Codec.object RestoreDbinstanceFromS3Result
        |> Codec.field "DBInstance" .dbinstance dbinstanceCodec
        |> Codec.buildObject


{-| Codec for RestoreDbinstanceFromS3Message. -}
restoreDbinstanceFromS3MessageCodec : Codec RestoreDbinstanceFromS3Message
restoreDbinstanceFromS3MessageCodec =
    Codec.object RestoreDbinstanceFromS3Message
        |> Codec.field "VpcSecurityGroupIds" .vpcSecurityGroupIds vpcSecurityGroupIdListCodec
        |> Codec.field "UseDefaultProcessorFeatures" .useDefaultProcessorFeatures Codec.bool
        |> Codec.field "Tags" .tags tagListCodec
        |> Codec.field "StorageType" .storageType Codec.string
        |> Codec.field "StorageEncrypted" .storageEncrypted Codec.bool
        |> Codec.field "SourceEngineVersion" .sourceEngineVersion Codec.string
        |> Codec.field "SourceEngine" .sourceEngine Codec.string
        |> Codec.field "S3Prefix" .s3Prefix Codec.string
        |> Codec.field "S3IngestionRoleArn" .s3IngestionRoleArn Codec.string
        |> Codec.field "S3BucketName" .s3BucketName Codec.string
        |> Codec.field "PubliclyAccessible" .publiclyAccessible Codec.bool
        |> Codec.field "ProcessorFeatures" .processorFeatures processorFeatureListCodec
        |> Codec.field "PreferredMaintenanceWindow" .preferredMaintenanceWindow Codec.string
        |> Codec.field "PreferredBackupWindow" .preferredBackupWindow Codec.string
        |> Codec.field "Port" .port Codec.int
        |> Codec.field "PerformanceInsightsRetentionPeriod" .performanceInsightsRetentionPeriod Codec.int
        |> Codec.field "PerformanceInsightsKMSKeyId" .performanceInsightsKmskeyId Codec.string
        |> Codec.field "OptionGroupName" .optionGroupName Codec.string
        |> Codec.field "MultiAZ" .multiAz Codec.bool
        |> Codec.field "MonitoringRoleArn" .monitoringRoleArn Codec.string
        |> Codec.field "MonitoringInterval" .monitoringInterval Codec.int
        |> Codec.field "MasterUsername" .masterUsername Codec.string
        |> Codec.field "MasterUserPassword" .masterUserPassword Codec.string
        |> Codec.field "LicenseModel" .licenseModel Codec.string
        |> Codec.field "KmsKeyId" .kmsKeyId Codec.string
        |> Codec.field "Iops" .iops Codec.int
        |> Codec.field "EngineVersion" .engineVersion Codec.string
        |> Codec.field "Engine" .engine Codec.string
        |> Codec.field "EnablePerformanceInsights" .enablePerformanceInsights Codec.bool
        |> Codec.field "EnableIAMDatabaseAuthentication" .enableIamdatabaseAuthentication Codec.bool
        |> Codec.field "EnableCloudwatchLogsExports" .enableCloudwatchLogsExports logTypeListCodec
        |> Codec.field "DeletionProtection" .deletionProtection Codec.bool
        |> Codec.field "DBSubnetGroupName" .dbsubnetGroupName Codec.string
        |> Codec.field "DBSecurityGroups" .dbsecurityGroups dbsecurityGroupNameListCodec
        |> Codec.field "DBParameterGroupName" .dbparameterGroupName Codec.string
        |> Codec.field "DBName" .dbname Codec.string
        |> Codec.field "DBInstanceIdentifier" .dbinstanceIdentifier Codec.string
        |> Codec.field "DBInstanceClass" .dbinstanceClass Codec.string
        |> Codec.field "CopyTagsToSnapshot" .copyTagsToSnapshot Codec.bool
        |> Codec.field "BackupRetentionPeriod" .backupRetentionPeriod Codec.int
        |> Codec.field "AvailabilityZone" .availabilityZone Codec.string
        |> Codec.field "AutoMinorVersionUpgrade" .autoMinorVersionUpgrade Codec.bool
        |> Codec.field "AllocatedStorage" .allocatedStorage Codec.int
        |> Codec.buildObject


{-| Codec for RestoreDbinstanceFromDbsnapshotResult. -}
restoreDbinstanceFromDbsnapshotResultCodec : Codec RestoreDbinstanceFromDbsnapshotResult
restoreDbinstanceFromDbsnapshotResultCodec =
    Codec.object RestoreDbinstanceFromDbsnapshotResult
        |> Codec.field "DBInstance" .dbinstance dbinstanceCodec
        |> Codec.buildObject


{-| Codec for RestoreDbinstanceFromDbsnapshotMessage. -}
restoreDbinstanceFromDbsnapshotMessageCodec : Codec RestoreDbinstanceFromDbsnapshotMessage
restoreDbinstanceFromDbsnapshotMessageCodec =
    Codec.object RestoreDbinstanceFromDbsnapshotMessage
        |> Codec.field "VpcSecurityGroupIds" .vpcSecurityGroupIds vpcSecurityGroupIdListCodec
        |> Codec.field "UseDefaultProcessorFeatures" .useDefaultProcessorFeatures Codec.bool
        |> Codec.field "TdeCredentialPassword" .tdeCredentialPassword Codec.string
        |> Codec.field "TdeCredentialArn" .tdeCredentialArn Codec.string
        |> Codec.field "Tags" .tags tagListCodec
        |> Codec.field "StorageType" .storageType Codec.string
        |> Codec.field "PubliclyAccessible" .publiclyAccessible Codec.bool
        |> Codec.field "ProcessorFeatures" .processorFeatures processorFeatureListCodec
        |> Codec.field "Port" .port Codec.int
        |> Codec.field "OptionGroupName" .optionGroupName Codec.string
        |> Codec.field "MultiAZ" .multiAz Codec.bool
        |> Codec.field "LicenseModel" .licenseModel Codec.string
        |> Codec.field "Iops" .iops Codec.int
        |> Codec.field "Engine" .engine Codec.string
        |> Codec.field "EnableIAMDatabaseAuthentication" .enableIamdatabaseAuthentication Codec.bool
        |> Codec.field "EnableCloudwatchLogsExports" .enableCloudwatchLogsExports logTypeListCodec
        |> Codec.field "DomainIAMRoleName" .domainIamroleName Codec.string
        |> Codec.field "Domain" .domain Codec.string
        |> Codec.field "DeletionProtection" .deletionProtection Codec.bool
        |> Codec.field "DBSubnetGroupName" .dbsubnetGroupName Codec.string
        |> Codec.field "DBSnapshotIdentifier" .dbsnapshotIdentifier Codec.string
        |> Codec.field "DBParameterGroupName" .dbparameterGroupName Codec.string
        |> Codec.field "DBName" .dbname Codec.string
        |> Codec.field "DBInstanceIdentifier" .dbinstanceIdentifier Codec.string
        |> Codec.field "DBInstanceClass" .dbinstanceClass Codec.string
        |> Codec.field "CopyTagsToSnapshot" .copyTagsToSnapshot Codec.bool
        |> Codec.field "AvailabilityZone" .availabilityZone Codec.string
        |> Codec.field "AutoMinorVersionUpgrade" .autoMinorVersionUpgrade Codec.bool
        |> Codec.buildObject


{-| Codec for RestoreDbclusterToPointInTimeResult. -}
restoreDbclusterToPointInTimeResultCodec : Codec RestoreDbclusterToPointInTimeResult
restoreDbclusterToPointInTimeResultCodec =
    Codec.object RestoreDbclusterToPointInTimeResult
        |> Codec.field "DBCluster" .dbcluster dbclusterCodec
        |> Codec.buildObject


{-| Codec for RestoreDbclusterToPointInTimeMessage. -}
restoreDbclusterToPointInTimeMessageCodec : Codec RestoreDbclusterToPointInTimeMessage
restoreDbclusterToPointInTimeMessageCodec =
    Codec.object RestoreDbclusterToPointInTimeMessage
        |> Codec.field "VpcSecurityGroupIds" .vpcSecurityGroupIds vpcSecurityGroupIdListCodec
        |> Codec.field "UseLatestRestorableTime" .useLatestRestorableTime Codec.bool
        |> Codec.field "Tags" .tags tagListCodec
        |> Codec.field "SourceDBClusterIdentifier" .sourceDbclusterIdentifier Codec.string
        |> Codec.field "RestoreType" .restoreType Codec.string
        |> Codec.field "RestoreToTime" .restoreToTime tstampCodec
        |> Codec.field "Port" .port Codec.int
        |> Codec.field "OptionGroupName" .optionGroupName Codec.string
        |> Codec.field "KmsKeyId" .kmsKeyId Codec.string
        |> Codec.field "EnableIAMDatabaseAuthentication" .enableIamdatabaseAuthentication Codec.bool
        |> Codec.field "EnableCloudwatchLogsExports" .enableCloudwatchLogsExports logTypeListCodec
        |> Codec.field "DeletionProtection" .deletionProtection Codec.bool
        |> Codec.field "DBSubnetGroupName" .dbsubnetGroupName Codec.string
        |> Codec.field "DBClusterParameterGroupName" .dbclusterParameterGroupName Codec.string
        |> Codec.field "DBClusterIdentifier" .dbclusterIdentifier Codec.string
        |> Codec.field "CopyTagsToSnapshot" .copyTagsToSnapshot Codec.bool
        |> Codec.field "BacktrackWindow" .backtrackWindow Codec.int
        |> Codec.buildObject


{-| Codec for RestoreDbclusterFromSnapshotResult. -}
restoreDbclusterFromSnapshotResultCodec : Codec RestoreDbclusterFromSnapshotResult
restoreDbclusterFromSnapshotResultCodec =
    Codec.object RestoreDbclusterFromSnapshotResult
        |> Codec.field "DBCluster" .dbcluster dbclusterCodec
        |> Codec.buildObject


{-| Codec for RestoreDbclusterFromSnapshotMessage. -}
restoreDbclusterFromSnapshotMessageCodec : Codec RestoreDbclusterFromSnapshotMessage
restoreDbclusterFromSnapshotMessageCodec =
    Codec.object RestoreDbclusterFromSnapshotMessage
        |> Codec.field "VpcSecurityGroupIds" .vpcSecurityGroupIds vpcSecurityGroupIdListCodec
        |> Codec.field "Tags" .tags tagListCodec
        |> Codec.field "SnapshotIdentifier" .snapshotIdentifier Codec.string
        |> Codec.field "ScalingConfiguration" .scalingConfiguration scalingConfigurationCodec
        |> Codec.field "Port" .port Codec.int
        |> Codec.field "OptionGroupName" .optionGroupName Codec.string
        |> Codec.field "KmsKeyId" .kmsKeyId Codec.string
        |> Codec.field "EngineVersion" .engineVersion Codec.string
        |> Codec.field "EngineMode" .engineMode Codec.string
        |> Codec.field "Engine" .engine Codec.string
        |> Codec.field "EnableIAMDatabaseAuthentication" .enableIamdatabaseAuthentication Codec.bool
        |> Codec.field "EnableCloudwatchLogsExports" .enableCloudwatchLogsExports logTypeListCodec
        |> Codec.field "DeletionProtection" .deletionProtection Codec.bool
        |> Codec.field "DatabaseName" .databaseName Codec.string
        |> Codec.field "DBSubnetGroupName" .dbsubnetGroupName Codec.string
        |> Codec.field "DBClusterParameterGroupName" .dbclusterParameterGroupName Codec.string
        |> Codec.field "DBClusterIdentifier" .dbclusterIdentifier Codec.string
        |> Codec.field "CopyTagsToSnapshot" .copyTagsToSnapshot Codec.bool
        |> Codec.field "BacktrackWindow" .backtrackWindow Codec.int
        |> Codec.field "AvailabilityZones" .availabilityZones availabilityZonesCodec
        |> Codec.buildObject


{-| Codec for RestoreDbclusterFromS3Result. -}
restoreDbclusterFromS3ResultCodec : Codec RestoreDbclusterFromS3Result
restoreDbclusterFromS3ResultCodec =
    Codec.object RestoreDbclusterFromS3Result |> Codec.field "DBCluster" .dbcluster dbclusterCodec |> Codec.buildObject


{-| Codec for RestoreDbclusterFromS3Message. -}
restoreDbclusterFromS3MessageCodec : Codec RestoreDbclusterFromS3Message
restoreDbclusterFromS3MessageCodec =
    Codec.object RestoreDbclusterFromS3Message
        |> Codec.field "VpcSecurityGroupIds" .vpcSecurityGroupIds vpcSecurityGroupIdListCodec
        |> Codec.field "Tags" .tags tagListCodec
        |> Codec.field "StorageEncrypted" .storageEncrypted Codec.bool
        |> Codec.field "SourceEngineVersion" .sourceEngineVersion Codec.string
        |> Codec.field "SourceEngine" .sourceEngine Codec.string
        |> Codec.field "S3Prefix" .s3Prefix Codec.string
        |> Codec.field "S3IngestionRoleArn" .s3IngestionRoleArn Codec.string
        |> Codec.field "S3BucketName" .s3BucketName Codec.string
        |> Codec.field "PreferredMaintenanceWindow" .preferredMaintenanceWindow Codec.string
        |> Codec.field "PreferredBackupWindow" .preferredBackupWindow Codec.string
        |> Codec.field "Port" .port Codec.int
        |> Codec.field "OptionGroupName" .optionGroupName Codec.string
        |> Codec.field "MasterUsername" .masterUsername Codec.string
        |> Codec.field "MasterUserPassword" .masterUserPassword Codec.string
        |> Codec.field "KmsKeyId" .kmsKeyId Codec.string
        |> Codec.field "EngineVersion" .engineVersion Codec.string
        |> Codec.field "Engine" .engine Codec.string
        |> Codec.field "EnableIAMDatabaseAuthentication" .enableIamdatabaseAuthentication Codec.bool
        |> Codec.field "EnableCloudwatchLogsExports" .enableCloudwatchLogsExports logTypeListCodec
        |> Codec.field "DeletionProtection" .deletionProtection Codec.bool
        |> Codec.field "DatabaseName" .databaseName Codec.string
        |> Codec.field "DBSubnetGroupName" .dbsubnetGroupName Codec.string
        |> Codec.field "DBClusterParameterGroupName" .dbclusterParameterGroupName Codec.string
        |> Codec.field "DBClusterIdentifier" .dbclusterIdentifier Codec.string
        |> Codec.field "CopyTagsToSnapshot" .copyTagsToSnapshot Codec.bool
        |> Codec.field "CharacterSetName" .characterSetName Codec.string
        |> Codec.field "BackupRetentionPeriod" .backupRetentionPeriod Codec.int
        |> Codec.field "BacktrackWindow" .backtrackWindow Codec.int
        |> Codec.field "AvailabilityZones" .availabilityZones availabilityZonesCodec
        |> Codec.buildObject


{-| Codec for ResourcePendingMaintenanceActions. -}
resourcePendingMaintenanceActionsCodec : Codec ResourcePendingMaintenanceActions
resourcePendingMaintenanceActionsCodec =
    Codec.object ResourcePendingMaintenanceActions
        |> Codec.field "ResourceIdentifier" .resourceIdentifier Codec.string
        |> Codec.field
            "PendingMaintenanceActionDetails"
            .pendingMaintenanceActionDetails
            pendingMaintenanceActionDetailsCodec
        |> Codec.buildObject


{-| Codec for ResetDbparameterGroupMessage. -}
resetDbparameterGroupMessageCodec : Codec ResetDbparameterGroupMessage
resetDbparameterGroupMessageCodec =
    Codec.object ResetDbparameterGroupMessage
        |> Codec.field "ResetAllParameters" .resetAllParameters Codec.bool
        |> Codec.field "Parameters" .parameters parametersListCodec
        |> Codec.field "DBParameterGroupName" .dbparameterGroupName Codec.string
        |> Codec.buildObject


{-| Codec for ResetDbclusterParameterGroupMessage. -}
resetDbclusterParameterGroupMessageCodec : Codec ResetDbclusterParameterGroupMessage
resetDbclusterParameterGroupMessageCodec =
    Codec.object ResetDbclusterParameterGroupMessage
        |> Codec.field "ResetAllParameters" .resetAllParameters Codec.bool
        |> Codec.field "Parameters" .parameters parametersListCodec
        |> Codec.field "DBClusterParameterGroupName" .dbclusterParameterGroupName Codec.string
        |> Codec.buildObject


{-| Codec for ReservedDbinstancesOfferingMessage. -}
reservedDbinstancesOfferingMessageCodec : Codec ReservedDbinstancesOfferingMessage
reservedDbinstancesOfferingMessageCodec =
    Codec.object ReservedDbinstancesOfferingMessage
        |> Codec.field "ReservedDBInstancesOfferings" .reservedDbinstancesOfferings reservedDbinstancesOfferingListCodec
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.buildObject


{-| Codec for ReservedDbinstancesOfferingList. -}
reservedDbinstancesOfferingListCodec : Codec ReservedDbinstancesOfferingList
reservedDbinstancesOfferingListCodec =
    Codec.list reservedDbinstancesOfferingCodec


{-| Codec for ReservedDbinstancesOffering. -}
reservedDbinstancesOfferingCodec : Codec ReservedDbinstancesOffering
reservedDbinstancesOfferingCodec =
    Codec.object ReservedDbinstancesOffering
        |> Codec.field "UsagePrice" .usagePrice Codec.float
        |> Codec.field "ReservedDBInstancesOfferingId" .reservedDbinstancesOfferingId Codec.string
        |> Codec.field "RecurringCharges" .recurringCharges recurringChargeListCodec
        |> Codec.field "ProductDescription" .productDescription Codec.string
        |> Codec.field "OfferingType" .offeringType Codec.string
        |> Codec.field "MultiAZ" .multiAz Codec.bool
        |> Codec.field "FixedPrice" .fixedPrice Codec.float
        |> Codec.field "Duration" .duration Codec.int
        |> Codec.field "DBInstanceClass" .dbinstanceClass Codec.string
        |> Codec.field "CurrencyCode" .currencyCode Codec.string
        |> Codec.buildObject


{-| Codec for ReservedDbinstanceMessage. -}
reservedDbinstanceMessageCodec : Codec ReservedDbinstanceMessage
reservedDbinstanceMessageCodec =
    Codec.object ReservedDbinstanceMessage
        |> Codec.field "ReservedDBInstances" .reservedDbinstances reservedDbinstanceListCodec
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.buildObject


{-| Codec for ReservedDbinstanceList. -}
reservedDbinstanceListCodec : Codec ReservedDbinstanceList
reservedDbinstanceListCodec =
    Codec.list reservedDbinstanceCodec


{-| Codec for ReservedDbinstance. -}
reservedDbinstanceCodec : Codec ReservedDbinstance
reservedDbinstanceCodec =
    Codec.object ReservedDbinstance
        |> Codec.field "UsagePrice" .usagePrice Codec.float
        |> Codec.field "State" .state Codec.string
        |> Codec.field "StartTime" .startTime tstampCodec
        |> Codec.field "ReservedDBInstancesOfferingId" .reservedDbinstancesOfferingId Codec.string
        |> Codec.field "ReservedDBInstanceId" .reservedDbinstanceId Codec.string
        |> Codec.field "ReservedDBInstanceArn" .reservedDbinstanceArn Codec.string
        |> Codec.field "RecurringCharges" .recurringCharges recurringChargeListCodec
        |> Codec.field "ProductDescription" .productDescription Codec.string
        |> Codec.field "OfferingType" .offeringType Codec.string
        |> Codec.field "MultiAZ" .multiAz Codec.bool
        |> Codec.field "FixedPrice" .fixedPrice Codec.float
        |> Codec.field "Duration" .duration Codec.int
        |> Codec.field "DBInstanceCount" .dbinstanceCount Codec.int
        |> Codec.field "DBInstanceClass" .dbinstanceClass Codec.string
        |> Codec.field "CurrencyCode" .currencyCode Codec.string
        |> Codec.buildObject


{-| Codec for RemoveTagsFromResourceMessage. -}
removeTagsFromResourceMessageCodec : Codec RemoveTagsFromResourceMessage
removeTagsFromResourceMessageCodec =
    Codec.object RemoveTagsFromResourceMessage
        |> Codec.field "TagKeys" .tagKeys keyListCodec
        |> Codec.field "ResourceName" .resourceName Codec.string
        |> Codec.buildObject


{-| Codec for RemoveSourceIdentifierFromSubscriptionResult. -}
removeSourceIdentifierFromSubscriptionResultCodec : Codec RemoveSourceIdentifierFromSubscriptionResult
removeSourceIdentifierFromSubscriptionResultCodec =
    Codec.object RemoveSourceIdentifierFromSubscriptionResult
        |> Codec.field "EventSubscription" .eventSubscription eventSubscriptionCodec
        |> Codec.buildObject


{-| Codec for RemoveSourceIdentifierFromSubscriptionMessage. -}
removeSourceIdentifierFromSubscriptionMessageCodec : Codec RemoveSourceIdentifierFromSubscriptionMessage
removeSourceIdentifierFromSubscriptionMessageCodec =
    Codec.object RemoveSourceIdentifierFromSubscriptionMessage
        |> Codec.field "SubscriptionName" .subscriptionName Codec.string
        |> Codec.field "SourceIdentifier" .sourceIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for RemoveRoleFromDbinstanceMessage. -}
removeRoleFromDbinstanceMessageCodec : Codec RemoveRoleFromDbinstanceMessage
removeRoleFromDbinstanceMessageCodec =
    Codec.object RemoveRoleFromDbinstanceMessage
        |> Codec.field "RoleArn" .roleArn Codec.string
        |> Codec.field "FeatureName" .featureName Codec.string
        |> Codec.field "DBInstanceIdentifier" .dbinstanceIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for RemoveRoleFromDbclusterMessage. -}
removeRoleFromDbclusterMessageCodec : Codec RemoveRoleFromDbclusterMessage
removeRoleFromDbclusterMessageCodec =
    Codec.object RemoveRoleFromDbclusterMessage
        |> Codec.field "RoleArn" .roleArn Codec.string
        |> Codec.field "FeatureName" .featureName Codec.string
        |> Codec.field "DBClusterIdentifier" .dbclusterIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for RemoveFromGlobalClusterResult. -}
removeFromGlobalClusterResultCodec : Codec RemoveFromGlobalClusterResult
removeFromGlobalClusterResultCodec =
    Codec.object RemoveFromGlobalClusterResult
        |> Codec.field "GlobalCluster" .globalCluster globalClusterCodec
        |> Codec.buildObject


{-| Codec for RemoveFromGlobalClusterMessage. -}
removeFromGlobalClusterMessageCodec : Codec RemoveFromGlobalClusterMessage
removeFromGlobalClusterMessageCodec =
    Codec.object RemoveFromGlobalClusterMessage
        |> Codec.field "GlobalClusterIdentifier" .globalClusterIdentifier Codec.string
        |> Codec.field "DbClusterIdentifier" .dbClusterIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for RecurringChargeList. -}
recurringChargeListCodec : Codec RecurringChargeList
recurringChargeListCodec =
    Codec.list recurringChargeCodec


{-| Codec for RecurringCharge. -}
recurringChargeCodec : Codec RecurringCharge
recurringChargeCodec =
    Codec.object RecurringCharge
        |> Codec.field "RecurringChargeFrequency" .recurringChargeFrequency Codec.string
        |> Codec.field "RecurringChargeAmount" .recurringChargeAmount Codec.float
        |> Codec.buildObject


{-| Codec for RebootDbinstanceResult. -}
rebootDbinstanceResultCodec : Codec RebootDbinstanceResult
rebootDbinstanceResultCodec =
    Codec.object RebootDbinstanceResult |> Codec.field "DBInstance" .dbinstance dbinstanceCodec |> Codec.buildObject


{-| Codec for RebootDbinstanceMessage. -}
rebootDbinstanceMessageCodec : Codec RebootDbinstanceMessage
rebootDbinstanceMessageCodec =
    Codec.object RebootDbinstanceMessage
        |> Codec.field "ForceFailover" .forceFailover Codec.bool
        |> Codec.field "DBInstanceIdentifier" .dbinstanceIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for ReadersArnList. -}
readersArnListCodec : Codec ReadersArnList
readersArnListCodec =
    Codec.list Codec.string


{-| Codec for ReadReplicaIdentifierList. -}
readReplicaIdentifierListCodec : Codec ReadReplicaIdentifierList
readReplicaIdentifierListCodec =
    Codec.list Codec.string


{-| Codec for ReadReplicaDbinstanceIdentifierList. -}
readReplicaDbinstanceIdentifierListCodec : Codec ReadReplicaDbinstanceIdentifierList
readReplicaDbinstanceIdentifierListCodec =
    Codec.list Codec.string


{-| Codec for ReadReplicaDbclusterIdentifierList. -}
readReplicaDbclusterIdentifierListCodec : Codec ReadReplicaDbclusterIdentifierList
readReplicaDbclusterIdentifierListCodec =
    Codec.list Codec.string


{-| Codec for RangeList. -}
rangeListCodec : Codec RangeList
rangeListCodec =
    Codec.list rangeCodec


{-| Codec for Range. -}
rangeCodec : Codec Range
rangeCodec =
    Codec.object Range
        |> Codec.field "To" .to Codec.int
        |> Codec.field "Step" .step Codec.int
        |> Codec.field "From" .from Codec.int
        |> Codec.buildObject


{-| Codec for PurchaseReservedDbinstancesOfferingResult. -}
purchaseReservedDbinstancesOfferingResultCodec : Codec PurchaseReservedDbinstancesOfferingResult
purchaseReservedDbinstancesOfferingResultCodec =
    Codec.object PurchaseReservedDbinstancesOfferingResult
        |> Codec.field "ReservedDBInstance" .reservedDbinstance reservedDbinstanceCodec
        |> Codec.buildObject


{-| Codec for PurchaseReservedDbinstancesOfferingMessage. -}
purchaseReservedDbinstancesOfferingMessageCodec : Codec PurchaseReservedDbinstancesOfferingMessage
purchaseReservedDbinstancesOfferingMessageCodec =
    Codec.object PurchaseReservedDbinstancesOfferingMessage
        |> Codec.field "Tags" .tags tagListCodec
        |> Codec.field "ReservedDBInstancesOfferingId" .reservedDbinstancesOfferingId Codec.string
        |> Codec.field "ReservedDBInstanceId" .reservedDbinstanceId Codec.string
        |> Codec.field "DBInstanceCount" .dbinstanceCount Codec.int
        |> Codec.buildObject


{-| Codec for PromoteReadReplicaResult. -}
promoteReadReplicaResultCodec : Codec PromoteReadReplicaResult
promoteReadReplicaResultCodec =
    Codec.object PromoteReadReplicaResult |> Codec.field "DBInstance" .dbinstance dbinstanceCodec |> Codec.buildObject


{-| Codec for PromoteReadReplicaMessage. -}
promoteReadReplicaMessageCodec : Codec PromoteReadReplicaMessage
promoteReadReplicaMessageCodec =
    Codec.object PromoteReadReplicaMessage
        |> Codec.field "PreferredBackupWindow" .preferredBackupWindow Codec.string
        |> Codec.field "DBInstanceIdentifier" .dbinstanceIdentifier Codec.string
        |> Codec.field "BackupRetentionPeriod" .backupRetentionPeriod Codec.int
        |> Codec.buildObject


{-| Codec for PromoteReadReplicaDbclusterResult. -}
promoteReadReplicaDbclusterResultCodec : Codec PromoteReadReplicaDbclusterResult
promoteReadReplicaDbclusterResultCodec =
    Codec.object PromoteReadReplicaDbclusterResult
        |> Codec.field "DBCluster" .dbcluster dbclusterCodec
        |> Codec.buildObject


{-| Codec for PromoteReadReplicaDbclusterMessage. -}
promoteReadReplicaDbclusterMessageCodec : Codec PromoteReadReplicaDbclusterMessage
promoteReadReplicaDbclusterMessageCodec =
    Codec.object PromoteReadReplicaDbclusterMessage
        |> Codec.field "DBClusterIdentifier" .dbclusterIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for ProcessorFeatureList. -}
processorFeatureListCodec : Codec ProcessorFeatureList
processorFeatureListCodec =
    Codec.list processorFeatureCodec


{-| Codec for ProcessorFeature. -}
processorFeatureCodec : Codec ProcessorFeature
processorFeatureCodec =
    Codec.object ProcessorFeature
        |> Codec.field "Value" .value Codec.string
        |> Codec.field "Name" .name Codec.string
        |> Codec.buildObject


{-| Codec for PendingModifiedValues. -}
pendingModifiedValuesCodec : Codec PendingModifiedValues
pendingModifiedValuesCodec =
    Codec.object PendingModifiedValues
        |> Codec.field "StorageType" .storageType Codec.string
        |> Codec.field "ProcessorFeatures" .processorFeatures processorFeatureListCodec
        |> Codec.field "Port" .port Codec.int
        |> Codec.field "PendingCloudwatchLogsExports" .pendingCloudwatchLogsExports pendingCloudwatchLogsExportsCodec
        |> Codec.field "MultiAZ" .multiAz Codec.bool
        |> Codec.field "MasterUserPassword" .masterUserPassword Codec.string
        |> Codec.field "LicenseModel" .licenseModel Codec.string
        |> Codec.field "Iops" .iops Codec.int
        |> Codec.field "EngineVersion" .engineVersion Codec.string
        |> Codec.field "DBSubnetGroupName" .dbsubnetGroupName Codec.string
        |> Codec.field "DBInstanceIdentifier" .dbinstanceIdentifier Codec.string
        |> Codec.field "DBInstanceClass" .dbinstanceClass Codec.string
        |> Codec.field "CACertificateIdentifier" .cacertificateIdentifier Codec.string
        |> Codec.field "BackupRetentionPeriod" .backupRetentionPeriod Codec.int
        |> Codec.field "AllocatedStorage" .allocatedStorage Codec.int
        |> Codec.buildObject


{-| Codec for PendingMaintenanceActionsMessage. -}
pendingMaintenanceActionsMessageCodec : Codec PendingMaintenanceActionsMessage
pendingMaintenanceActionsMessageCodec =
    Codec.object PendingMaintenanceActionsMessage
        |> Codec.field "PendingMaintenanceActions" .pendingMaintenanceActions pendingMaintenanceActionsCodec
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.buildObject


{-| Codec for PendingMaintenanceActions. -}
pendingMaintenanceActionsCodec : Codec PendingMaintenanceActions
pendingMaintenanceActionsCodec =
    Codec.list resourcePendingMaintenanceActionsCodec


{-| Codec for PendingMaintenanceActionDetails. -}
pendingMaintenanceActionDetailsCodec : Codec PendingMaintenanceActionDetails
pendingMaintenanceActionDetailsCodec =
    Codec.list pendingMaintenanceActionCodec


{-| Codec for PendingMaintenanceAction. -}
pendingMaintenanceActionCodec : Codec PendingMaintenanceAction
pendingMaintenanceActionCodec =
    Codec.object PendingMaintenanceAction
        |> Codec.field "OptInStatus" .optInStatus Codec.string
        |> Codec.field "ForcedApplyDate" .forcedApplyDate tstampCodec
        |> Codec.field "Description" .description Codec.string
        |> Codec.field "CurrentApplyDate" .currentApplyDate tstampCodec
        |> Codec.field "AutoAppliedAfterDate" .autoAppliedAfterDate tstampCodec
        |> Codec.field "Action" .action Codec.string
        |> Codec.buildObject


{-| Codec for PendingCloudwatchLogsExports. -}
pendingCloudwatchLogsExportsCodec : Codec PendingCloudwatchLogsExports
pendingCloudwatchLogsExportsCodec =
    Codec.object PendingCloudwatchLogsExports
        |> Codec.field "LogTypesToEnable" .logTypesToEnable logTypeListCodec
        |> Codec.field "LogTypesToDisable" .logTypesToDisable logTypeListCodec
        |> Codec.buildObject


{-| Codec for ParametersList. -}
parametersListCodec : Codec ParametersList
parametersListCodec =
    Codec.list parameterCodec


{-| Codec for Parameter. -}
parameterCodec : Codec Parameter
parameterCodec =
    Codec.object Parameter
        |> Codec.field "SupportedEngineModes" .supportedEngineModes engineModeListCodec
        |> Codec.field "Source" .source Codec.string
        |> Codec.field "ParameterValue" .parameterValue Codec.string
        |> Codec.field "ParameterName" .parameterName Codec.string
        |> Codec.field "MinimumEngineVersion" .minimumEngineVersion Codec.string
        |> Codec.field "IsModifiable" .isModifiable Codec.bool
        |> Codec.field "Description" .description Codec.string
        |> Codec.field "DataType" .dataType Codec.string
        |> Codec.field "ApplyType" .applyType Codec.string
        |> Codec.field "ApplyMethod" .applyMethod applyMethodCodec
        |> Codec.field "AllowedValues" .allowedValues Codec.string
        |> Codec.buildObject


{-| Codec for OrderableDbinstanceOptionsMessage. -}
orderableDbinstanceOptionsMessageCodec : Codec OrderableDbinstanceOptionsMessage
orderableDbinstanceOptionsMessageCodec =
    Codec.object OrderableDbinstanceOptionsMessage
        |> Codec.field "OrderableDBInstanceOptions" .orderableDbinstanceOptions orderableDbinstanceOptionsListCodec
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.buildObject


{-| Codec for OrderableDbinstanceOptionsList. -}
orderableDbinstanceOptionsListCodec : Codec OrderableDbinstanceOptionsList
orderableDbinstanceOptionsListCodec =
    Codec.list orderableDbinstanceOptionCodec


{-| Codec for OrderableDbinstanceOption. -}
orderableDbinstanceOptionCodec : Codec OrderableDbinstanceOption
orderableDbinstanceOptionCodec =
    Codec.object OrderableDbinstanceOption
        |> Codec.field "Vpc" .vpc Codec.bool
        |> Codec.field "SupportsStorageEncryption" .supportsStorageEncryption Codec.bool
        |> Codec.field "SupportsStorageAutoscaling" .supportsStorageAutoscaling Codec.bool
        |> Codec.field "SupportsPerformanceInsights" .supportsPerformanceInsights Codec.bool
        |> Codec.field "SupportsIops" .supportsIops Codec.bool
        |> Codec.field "SupportsIAMDatabaseAuthentication" .supportsIamdatabaseAuthentication Codec.bool
        |> Codec.field "SupportsEnhancedMonitoring" .supportsEnhancedMonitoring Codec.bool
        |> Codec.field "SupportedEngineModes" .supportedEngineModes engineModeListCodec
        |> Codec.field "StorageType" .storageType Codec.string
        |> Codec.field "ReadReplicaCapable" .readReplicaCapable Codec.bool
        |> Codec.field "MultiAZCapable" .multiAzcapable Codec.bool
        |> Codec.field "MinStorageSize" .minStorageSize Codec.int
        |> Codec.field "MinIopsPerGib" .minIopsPerGib Codec.float
        |> Codec.field "MinIopsPerDbInstance" .minIopsPerDbInstance Codec.int
        |> Codec.field "MaxStorageSize" .maxStorageSize Codec.int
        |> Codec.field "MaxIopsPerGib" .maxIopsPerGib Codec.float
        |> Codec.field "MaxIopsPerDbInstance" .maxIopsPerDbInstance Codec.int
        |> Codec.field "LicenseModel" .licenseModel Codec.string
        |> Codec.field "EngineVersion" .engineVersion Codec.string
        |> Codec.field "Engine" .engine Codec.string
        |> Codec.field "DBInstanceClass" .dbinstanceClass Codec.string
        |> Codec.field "AvailableProcessorFeatures" .availableProcessorFeatures availableProcessorFeatureListCodec
        |> Codec.field "AvailabilityZones" .availabilityZones availabilityZoneListCodec
        |> Codec.buildObject


{-| Codec for OptionsList. -}
optionsListCodec : Codec OptionsList
optionsListCodec =
    Codec.list optionCodec


{-| Codec for OptionsDependedOn. -}
optionsDependedOnCodec : Codec OptionsDependedOn
optionsDependedOnCodec =
    Codec.list Codec.string


{-| Codec for OptionsConflictsWith. -}
optionsConflictsWithCodec : Codec OptionsConflictsWith
optionsConflictsWithCodec =
    Codec.list Codec.string


{-| Codec for OptionVersion. -}
optionVersionCodec : Codec OptionVersion
optionVersionCodec =
    Codec.object OptionVersion
        |> Codec.field "Version" .version Codec.string
        |> Codec.field "IsDefault" .isDefault Codec.bool
        |> Codec.buildObject


{-| Codec for OptionSettingsList. -}
optionSettingsListCodec : Codec OptionSettingsList
optionSettingsListCodec =
    Codec.list optionSettingCodec


{-| Codec for OptionSettingConfigurationList. -}
optionSettingConfigurationListCodec : Codec OptionSettingConfigurationList
optionSettingConfigurationListCodec =
    Codec.list optionSettingCodec


{-| Codec for OptionSetting. -}
optionSettingCodec : Codec OptionSetting
optionSettingCodec =
    Codec.object OptionSetting
        |> Codec.field "Value" .value Codec.string
        |> Codec.field "Name" .name Codec.string
        |> Codec.field "IsModifiable" .isModifiable Codec.bool
        |> Codec.field "IsCollection" .isCollection Codec.bool
        |> Codec.field "Description" .description Codec.string
        |> Codec.field "DefaultValue" .defaultValue Codec.string
        |> Codec.field "DataType" .dataType Codec.string
        |> Codec.field "ApplyType" .applyType Codec.string
        |> Codec.field "AllowedValues" .allowedValues Codec.string
        |> Codec.buildObject


{-| Codec for OptionNamesList. -}
optionNamesListCodec : Codec OptionNamesList
optionNamesListCodec =
    Codec.list Codec.string


{-| Codec for OptionGroupsList. -}
optionGroupsListCodec : Codec OptionGroupsList
optionGroupsListCodec =
    Codec.list optionGroupCodec


{-| Codec for OptionGroups. -}
optionGroupsCodec : Codec OptionGroups
optionGroupsCodec =
    Codec.object OptionGroups
        |> Codec.field "OptionGroupsList" .optionGroupsList optionGroupsListCodec
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.buildObject


{-| Codec for OptionGroupOptionsMessage. -}
optionGroupOptionsMessageCodec : Codec OptionGroupOptionsMessage
optionGroupOptionsMessageCodec =
    Codec.object OptionGroupOptionsMessage
        |> Codec.field "OptionGroupOptions" .optionGroupOptions optionGroupOptionsListCodec
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.buildObject


{-| Codec for OptionGroupOptionsList. -}
optionGroupOptionsListCodec : Codec OptionGroupOptionsList
optionGroupOptionsListCodec =
    Codec.list optionGroupOptionCodec


{-| Codec for OptionGroupOptionVersionsList. -}
optionGroupOptionVersionsListCodec : Codec OptionGroupOptionVersionsList
optionGroupOptionVersionsListCodec =
    Codec.list optionVersionCodec


{-| Codec for OptionGroupOptionSettingsList. -}
optionGroupOptionSettingsListCodec : Codec OptionGroupOptionSettingsList
optionGroupOptionSettingsListCodec =
    Codec.list optionGroupOptionSettingCodec


{-| Codec for OptionGroupOptionSetting. -}
optionGroupOptionSettingCodec : Codec OptionGroupOptionSetting
optionGroupOptionSettingCodec =
    Codec.object OptionGroupOptionSetting
        |> Codec.field "SettingName" .settingName Codec.string
        |> Codec.field "SettingDescription" .settingDescription Codec.string
        |> Codec.field
            "MinimumEngineVersionPerAllowedValue"
            .minimumEngineVersionPerAllowedValue
            minimumEngineVersionPerAllowedValueListCodec
        |> Codec.field "IsRequired" .isRequired Codec.bool
        |> Codec.field "IsModifiable" .isModifiable Codec.bool
        |> Codec.field "DefaultValue" .defaultValue Codec.string
        |> Codec.field "ApplyType" .applyType Codec.string
        |> Codec.field "AllowedValues" .allowedValues Codec.string
        |> Codec.buildObject


{-| Codec for OptionGroupOption. -}
optionGroupOptionCodec : Codec OptionGroupOption
optionGroupOptionCodec =
    Codec.object OptionGroupOption
        |> Codec.field "VpcOnly" .vpcOnly Codec.bool
        |> Codec.field "SupportsOptionVersionDowngrade" .supportsOptionVersionDowngrade Codec.bool
        |> Codec.field "RequiresAutoMinorEngineVersionUpgrade" .requiresAutoMinorEngineVersionUpgrade Codec.bool
        |> Codec.field "PortRequired" .portRequired Codec.bool
        |> Codec.field "Persistent" .persistent Codec.bool
        |> Codec.field "Permanent" .permanent Codec.bool
        |> Codec.field "OptionsDependedOn" .optionsDependedOn optionsDependedOnCodec
        |> Codec.field "OptionsConflictsWith" .optionsConflictsWith optionsConflictsWithCodec
        |> Codec.field "OptionGroupOptionVersions" .optionGroupOptionVersions optionGroupOptionVersionsListCodec
        |> Codec.field "OptionGroupOptionSettings" .optionGroupOptionSettings optionGroupOptionSettingsListCodec
        |> Codec.field "Name" .name Codec.string
        |> Codec.field "MinimumRequiredMinorEngineVersion" .minimumRequiredMinorEngineVersion Codec.string
        |> Codec.field "MajorEngineVersion" .majorEngineVersion Codec.string
        |> Codec.field "EngineName" .engineName Codec.string
        |> Codec.field "Description" .description Codec.string
        |> Codec.field "DefaultPort" .defaultPort Codec.int
        |> Codec.buildObject


{-| Codec for OptionGroupMembershipList. -}
optionGroupMembershipListCodec : Codec OptionGroupMembershipList
optionGroupMembershipListCodec =
    Codec.list optionGroupMembershipCodec


{-| Codec for OptionGroupMembership. -}
optionGroupMembershipCodec : Codec OptionGroupMembership
optionGroupMembershipCodec =
    Codec.object OptionGroupMembership
        |> Codec.field "Status" .status Codec.string
        |> Codec.field "OptionGroupName" .optionGroupName Codec.string
        |> Codec.buildObject


{-| Codec for OptionGroup. -}
optionGroupCodec : Codec OptionGroup
optionGroupCodec =
    Codec.object OptionGroup
        |> Codec.field "VpcId" .vpcId Codec.string
        |> Codec.field "Options" .options optionsListCodec
        |> Codec.field "OptionGroupName" .optionGroupName Codec.string
        |> Codec.field "OptionGroupDescription" .optionGroupDescription Codec.string
        |> Codec.field "OptionGroupArn" .optionGroupArn Codec.string
        |> Codec.field "MajorEngineVersion" .majorEngineVersion Codec.string
        |> Codec.field "EngineName" .engineName Codec.string
        |> Codec.field "AllowsVpcAndNonVpcInstanceMemberships" .allowsVpcAndNonVpcInstanceMemberships Codec.bool
        |> Codec.buildObject


{-| Codec for OptionConfigurationList. -}
optionConfigurationListCodec : Codec OptionConfigurationList
optionConfigurationListCodec =
    Codec.list optionConfigurationCodec


{-| Codec for OptionConfiguration. -}
optionConfigurationCodec : Codec OptionConfiguration
optionConfigurationCodec =
    Codec.object OptionConfiguration
        |> Codec.field "VpcSecurityGroupMemberships" .vpcSecurityGroupMemberships vpcSecurityGroupIdListCodec
        |> Codec.field "Port" .port Codec.int
        |> Codec.field "OptionVersion" .optionVersion Codec.string
        |> Codec.field "OptionSettings" .optionSettings optionSettingsListCodec
        |> Codec.field "OptionName" .optionName Codec.string
        |> Codec.field "DBSecurityGroupMemberships" .dbsecurityGroupMemberships dbsecurityGroupNameListCodec
        |> Codec.buildObject


{-| Codec for Option. -}
optionCodec : Codec Option
optionCodec =
    Codec.object Option
        |> Codec.field "VpcSecurityGroupMemberships" .vpcSecurityGroupMemberships vpcSecurityGroupMembershipListCodec
        |> Codec.field "Port" .port Codec.int
        |> Codec.field "Persistent" .persistent Codec.bool
        |> Codec.field "Permanent" .permanent Codec.bool
        |> Codec.field "OptionVersion" .optionVersion Codec.string
        |> Codec.field "OptionSettings" .optionSettings optionSettingConfigurationListCodec
        |> Codec.field "OptionName" .optionName Codec.string
        |> Codec.field "OptionDescription" .optionDescription Codec.string
        |> Codec.field "DBSecurityGroupMemberships" .dbsecurityGroupMemberships dbsecurityGroupMembershipListCodec
        |> Codec.buildObject


{-| Codec for ModifyOptionGroupResult. -}
modifyOptionGroupResultCodec : Codec ModifyOptionGroupResult
modifyOptionGroupResultCodec =
    Codec.object ModifyOptionGroupResult |> Codec.field "OptionGroup" .optionGroup optionGroupCodec |> Codec.buildObject


{-| Codec for ModifyOptionGroupMessage. -}
modifyOptionGroupMessageCodec : Codec ModifyOptionGroupMessage
modifyOptionGroupMessageCodec =
    Codec.object ModifyOptionGroupMessage
        |> Codec.field "OptionsToRemove" .optionsToRemove optionNamesListCodec
        |> Codec.field "OptionsToInclude" .optionsToInclude optionConfigurationListCodec
        |> Codec.field "OptionGroupName" .optionGroupName Codec.string
        |> Codec.field "ApplyImmediately" .applyImmediately Codec.bool
        |> Codec.buildObject


{-| Codec for ModifyGlobalClusterResult. -}
modifyGlobalClusterResultCodec : Codec ModifyGlobalClusterResult
modifyGlobalClusterResultCodec =
    Codec.object ModifyGlobalClusterResult
        |> Codec.field "GlobalCluster" .globalCluster globalClusterCodec
        |> Codec.buildObject


{-| Codec for ModifyGlobalClusterMessage. -}
modifyGlobalClusterMessageCodec : Codec ModifyGlobalClusterMessage
modifyGlobalClusterMessageCodec =
    Codec.object ModifyGlobalClusterMessage
        |> Codec.field "NewGlobalClusterIdentifier" .newGlobalClusterIdentifier Codec.string
        |> Codec.field "GlobalClusterIdentifier" .globalClusterIdentifier Codec.string
        |> Codec.field "DeletionProtection" .deletionProtection Codec.bool
        |> Codec.buildObject


{-| Codec for ModifyEventSubscriptionResult. -}
modifyEventSubscriptionResultCodec : Codec ModifyEventSubscriptionResult
modifyEventSubscriptionResultCodec =
    Codec.object ModifyEventSubscriptionResult
        |> Codec.field "EventSubscription" .eventSubscription eventSubscriptionCodec
        |> Codec.buildObject


{-| Codec for ModifyEventSubscriptionMessage. -}
modifyEventSubscriptionMessageCodec : Codec ModifyEventSubscriptionMessage
modifyEventSubscriptionMessageCodec =
    Codec.object ModifyEventSubscriptionMessage
        |> Codec.field "SubscriptionName" .subscriptionName Codec.string
        |> Codec.field "SourceType" .sourceType Codec.string
        |> Codec.field "SnsTopicArn" .snsTopicArn Codec.string
        |> Codec.field "EventCategories" .eventCategories eventCategoriesListCodec
        |> Codec.field "Enabled" .enabled Codec.bool
        |> Codec.buildObject


{-| Codec for ModifyDbsubnetGroupResult. -}
modifyDbsubnetGroupResultCodec : Codec ModifyDbsubnetGroupResult
modifyDbsubnetGroupResultCodec =
    Codec.object ModifyDbsubnetGroupResult
        |> Codec.field "DBSubnetGroup" .dbsubnetGroup dbsubnetGroupCodec
        |> Codec.buildObject


{-| Codec for ModifyDbsubnetGroupMessage. -}
modifyDbsubnetGroupMessageCodec : Codec ModifyDbsubnetGroupMessage
modifyDbsubnetGroupMessageCodec =
    Codec.object ModifyDbsubnetGroupMessage
        |> Codec.field "SubnetIds" .subnetIds subnetIdentifierListCodec
        |> Codec.field "DBSubnetGroupName" .dbsubnetGroupName Codec.string
        |> Codec.field "DBSubnetGroupDescription" .dbsubnetGroupDescription Codec.string
        |> Codec.buildObject


{-| Codec for ModifyDbsnapshotResult. -}
modifyDbsnapshotResultCodec : Codec ModifyDbsnapshotResult
modifyDbsnapshotResultCodec =
    Codec.object ModifyDbsnapshotResult |> Codec.field "DBSnapshot" .dbsnapshot dbsnapshotCodec |> Codec.buildObject


{-| Codec for ModifyDbsnapshotMessage. -}
modifyDbsnapshotMessageCodec : Codec ModifyDbsnapshotMessage
modifyDbsnapshotMessageCodec =
    Codec.object ModifyDbsnapshotMessage
        |> Codec.field "OptionGroupName" .optionGroupName Codec.string
        |> Codec.field "EngineVersion" .engineVersion Codec.string
        |> Codec.field "DBSnapshotIdentifier" .dbsnapshotIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for ModifyDbsnapshotAttributeResult. -}
modifyDbsnapshotAttributeResultCodec : Codec ModifyDbsnapshotAttributeResult
modifyDbsnapshotAttributeResultCodec =
    Codec.object ModifyDbsnapshotAttributeResult
        |> Codec.field "DBSnapshotAttributesResult" .dbsnapshotAttributesResult dbsnapshotAttributesResultCodec
        |> Codec.buildObject


{-| Codec for ModifyDbsnapshotAttributeMessage. -}
modifyDbsnapshotAttributeMessageCodec : Codec ModifyDbsnapshotAttributeMessage
modifyDbsnapshotAttributeMessageCodec =
    Codec.object ModifyDbsnapshotAttributeMessage
        |> Codec.field "ValuesToRemove" .valuesToRemove attributeValueListCodec
        |> Codec.field "ValuesToAdd" .valuesToAdd attributeValueListCodec
        |> Codec.field "DBSnapshotIdentifier" .dbsnapshotIdentifier Codec.string
        |> Codec.field "AttributeName" .attributeName Codec.string
        |> Codec.buildObject


{-| Codec for ModifyDbparameterGroupMessage. -}
modifyDbparameterGroupMessageCodec : Codec ModifyDbparameterGroupMessage
modifyDbparameterGroupMessageCodec =
    Codec.object ModifyDbparameterGroupMessage
        |> Codec.field "Parameters" .parameters parametersListCodec
        |> Codec.field "DBParameterGroupName" .dbparameterGroupName Codec.string
        |> Codec.buildObject


{-| Codec for ModifyDbinstanceResult. -}
modifyDbinstanceResultCodec : Codec ModifyDbinstanceResult
modifyDbinstanceResultCodec =
    Codec.object ModifyDbinstanceResult |> Codec.field "DBInstance" .dbinstance dbinstanceCodec |> Codec.buildObject


{-| Codec for ModifyDbinstanceMessage. -}
modifyDbinstanceMessageCodec : Codec ModifyDbinstanceMessage
modifyDbinstanceMessageCodec =
    Codec.object ModifyDbinstanceMessage
        |> Codec.field "VpcSecurityGroupIds" .vpcSecurityGroupIds vpcSecurityGroupIdListCodec
        |> Codec.field "UseDefaultProcessorFeatures" .useDefaultProcessorFeatures Codec.bool
        |> Codec.field "TdeCredentialPassword" .tdeCredentialPassword Codec.string
        |> Codec.field "TdeCredentialArn" .tdeCredentialArn Codec.string
        |> Codec.field "StorageType" .storageType Codec.string
        |> Codec.field "PubliclyAccessible" .publiclyAccessible Codec.bool
        |> Codec.field "PromotionTier" .promotionTier Codec.int
        |> Codec.field "ProcessorFeatures" .processorFeatures processorFeatureListCodec
        |> Codec.field "PreferredMaintenanceWindow" .preferredMaintenanceWindow Codec.string
        |> Codec.field "PreferredBackupWindow" .preferredBackupWindow Codec.string
        |> Codec.field "PerformanceInsightsRetentionPeriod" .performanceInsightsRetentionPeriod Codec.int
        |> Codec.field "PerformanceInsightsKMSKeyId" .performanceInsightsKmskeyId Codec.string
        |> Codec.field "OptionGroupName" .optionGroupName Codec.string
        |> Codec.field "NewDBInstanceIdentifier" .newDbinstanceIdentifier Codec.string
        |> Codec.field "MultiAZ" .multiAz Codec.bool
        |> Codec.field "MonitoringRoleArn" .monitoringRoleArn Codec.string
        |> Codec.field "MonitoringInterval" .monitoringInterval Codec.int
        |> Codec.field "MaxAllocatedStorage" .maxAllocatedStorage Codec.int
        |> Codec.field "MasterUserPassword" .masterUserPassword Codec.string
        |> Codec.field "LicenseModel" .licenseModel Codec.string
        |> Codec.field "Iops" .iops Codec.int
        |> Codec.field "EngineVersion" .engineVersion Codec.string
        |> Codec.field "EnablePerformanceInsights" .enablePerformanceInsights Codec.bool
        |> Codec.field "EnableIAMDatabaseAuthentication" .enableIamdatabaseAuthentication Codec.bool
        |> Codec.field "DomainIAMRoleName" .domainIamroleName Codec.string
        |> Codec.field "Domain" .domain Codec.string
        |> Codec.field "DeletionProtection" .deletionProtection Codec.bool
        |> Codec.field "DBSubnetGroupName" .dbsubnetGroupName Codec.string
        |> Codec.field "DBSecurityGroups" .dbsecurityGroups dbsecurityGroupNameListCodec
        |> Codec.field "DBPortNumber" .dbportNumber Codec.int
        |> Codec.field "DBParameterGroupName" .dbparameterGroupName Codec.string
        |> Codec.field "DBInstanceIdentifier" .dbinstanceIdentifier Codec.string
        |> Codec.field "DBInstanceClass" .dbinstanceClass Codec.string
        |> Codec.field "CopyTagsToSnapshot" .copyTagsToSnapshot Codec.bool
        |> Codec.field
            "CloudwatchLogsExportConfiguration"
            .cloudwatchLogsExportConfiguration
            cloudwatchLogsExportConfigurationCodec
        |> Codec.field "CACertificateIdentifier" .cacertificateIdentifier Codec.string
        |> Codec.field "BackupRetentionPeriod" .backupRetentionPeriod Codec.int
        |> Codec.field "AutoMinorVersionUpgrade" .autoMinorVersionUpgrade Codec.bool
        |> Codec.field "ApplyImmediately" .applyImmediately Codec.bool
        |> Codec.field "AllowMajorVersionUpgrade" .allowMajorVersionUpgrade Codec.bool
        |> Codec.field "AllocatedStorage" .allocatedStorage Codec.int
        |> Codec.buildObject


{-| Codec for ModifyDbclusterSnapshotAttributeResult. -}
modifyDbclusterSnapshotAttributeResultCodec : Codec ModifyDbclusterSnapshotAttributeResult
modifyDbclusterSnapshotAttributeResultCodec =
    Codec.object ModifyDbclusterSnapshotAttributeResult
        |> Codec.field
            "DBClusterSnapshotAttributesResult"
            .dbclusterSnapshotAttributesResult
            dbclusterSnapshotAttributesResultCodec
        |> Codec.buildObject


{-| Codec for ModifyDbclusterSnapshotAttributeMessage. -}
modifyDbclusterSnapshotAttributeMessageCodec : Codec ModifyDbclusterSnapshotAttributeMessage
modifyDbclusterSnapshotAttributeMessageCodec =
    Codec.object ModifyDbclusterSnapshotAttributeMessage
        |> Codec.field "ValuesToRemove" .valuesToRemove attributeValueListCodec
        |> Codec.field "ValuesToAdd" .valuesToAdd attributeValueListCodec
        |> Codec.field "DBClusterSnapshotIdentifier" .dbclusterSnapshotIdentifier Codec.string
        |> Codec.field "AttributeName" .attributeName Codec.string
        |> Codec.buildObject


{-| Codec for ModifyDbclusterResult. -}
modifyDbclusterResultCodec : Codec ModifyDbclusterResult
modifyDbclusterResultCodec =
    Codec.object ModifyDbclusterResult |> Codec.field "DBCluster" .dbcluster dbclusterCodec |> Codec.buildObject


{-| Codec for ModifyDbclusterParameterGroupMessage. -}
modifyDbclusterParameterGroupMessageCodec : Codec ModifyDbclusterParameterGroupMessage
modifyDbclusterParameterGroupMessageCodec =
    Codec.object ModifyDbclusterParameterGroupMessage
        |> Codec.field "Parameters" .parameters parametersListCodec
        |> Codec.field "DBClusterParameterGroupName" .dbclusterParameterGroupName Codec.string
        |> Codec.buildObject


{-| Codec for ModifyDbclusterMessage. -}
modifyDbclusterMessageCodec : Codec ModifyDbclusterMessage
modifyDbclusterMessageCodec =
    Codec.object ModifyDbclusterMessage
        |> Codec.field "VpcSecurityGroupIds" .vpcSecurityGroupIds vpcSecurityGroupIdListCodec
        |> Codec.field "ScalingConfiguration" .scalingConfiguration scalingConfigurationCodec
        |> Codec.field "PreferredMaintenanceWindow" .preferredMaintenanceWindow Codec.string
        |> Codec.field "PreferredBackupWindow" .preferredBackupWindow Codec.string
        |> Codec.field "Port" .port Codec.int
        |> Codec.field "OptionGroupName" .optionGroupName Codec.string
        |> Codec.field "NewDBClusterIdentifier" .newDbclusterIdentifier Codec.string
        |> Codec.field "MasterUserPassword" .masterUserPassword Codec.string
        |> Codec.field "EngineVersion" .engineVersion Codec.string
        |> Codec.field "EnableIAMDatabaseAuthentication" .enableIamdatabaseAuthentication Codec.bool
        |> Codec.field "EnableHttpEndpoint" .enableHttpEndpoint Codec.bool
        |> Codec.field "DeletionProtection" .deletionProtection Codec.bool
        |> Codec.field "DBInstanceParameterGroupName" .dbinstanceParameterGroupName Codec.string
        |> Codec.field "DBClusterParameterGroupName" .dbclusterParameterGroupName Codec.string
        |> Codec.field "DBClusterIdentifier" .dbclusterIdentifier Codec.string
        |> Codec.field "CopyTagsToSnapshot" .copyTagsToSnapshot Codec.bool
        |> Codec.field
            "CloudwatchLogsExportConfiguration"
            .cloudwatchLogsExportConfiguration
            cloudwatchLogsExportConfigurationCodec
        |> Codec.field "BackupRetentionPeriod" .backupRetentionPeriod Codec.int
        |> Codec.field "BacktrackWindow" .backtrackWindow Codec.int
        |> Codec.field "ApplyImmediately" .applyImmediately Codec.bool
        |> Codec.field "AllowMajorVersionUpgrade" .allowMajorVersionUpgrade Codec.bool
        |> Codec.buildObject


{-| Codec for ModifyDbclusterEndpointMessage. -}
modifyDbclusterEndpointMessageCodec : Codec ModifyDbclusterEndpointMessage
modifyDbclusterEndpointMessageCodec =
    Codec.object ModifyDbclusterEndpointMessage
        |> Codec.field "StaticMembers" .staticMembers stringListCodec
        |> Codec.field "ExcludedMembers" .excludedMembers stringListCodec
        |> Codec.field "EndpointType" .endpointType Codec.string
        |> Codec.field "DBClusterEndpointIdentifier" .dbclusterEndpointIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for ModifyCurrentDbclusterCapacityMessage. -}
modifyCurrentDbclusterCapacityMessageCodec : Codec ModifyCurrentDbclusterCapacityMessage
modifyCurrentDbclusterCapacityMessageCodec =
    Codec.object ModifyCurrentDbclusterCapacityMessage
        |> Codec.field "TimeoutAction" .timeoutAction Codec.string
        |> Codec.field "SecondsBeforeTimeout" .secondsBeforeTimeout Codec.int
        |> Codec.field "DBClusterIdentifier" .dbclusterIdentifier Codec.string
        |> Codec.field "Capacity" .capacity Codec.int
        |> Codec.buildObject


{-| Codec for MinimumEngineVersionPerAllowedValueList. -}
minimumEngineVersionPerAllowedValueListCodec : Codec MinimumEngineVersionPerAllowedValueList
minimumEngineVersionPerAllowedValueListCodec =
    Codec.list minimumEngineVersionPerAllowedValueCodec


{-| Codec for MinimumEngineVersionPerAllowedValue. -}
minimumEngineVersionPerAllowedValueCodec : Codec MinimumEngineVersionPerAllowedValue
minimumEngineVersionPerAllowedValueCodec =
    Codec.object MinimumEngineVersionPerAllowedValue
        |> Codec.field "MinimumEngineVersion" .minimumEngineVersion Codec.string
        |> Codec.field "AllowedValue" .allowedValue Codec.string
        |> Codec.buildObject


{-| Codec for LongOptional. -}
longOptionalCodec : Codec LongOptional
longOptionalCodec =
    Codec.int


{-| Codec for Long. -}
longCodec : Codec Long
longCodec =
    Codec.int


{-| Codec for LogTypeList. -}
logTypeListCodec : Codec LogTypeList
logTypeListCodec =
    Codec.list Codec.string


{-| Codec for ListTagsForResourceMessage. -}
listTagsForResourceMessageCodec : Codec ListTagsForResourceMessage
listTagsForResourceMessageCodec =
    Codec.object ListTagsForResourceMessage
        |> Codec.field "ResourceName" .resourceName Codec.string
        |> Codec.field "Filters" .filters filterListCodec
        |> Codec.buildObject


{-| Codec for KeyList. -}
keyListCodec : Codec KeyList
keyListCodec =
    Codec.list Codec.string


{-| Codec for IntegerOptional. -}
integerOptionalCodec : Codec IntegerOptional
integerOptionalCodec =
    Codec.int


{-| Codec for Integer. -}
integerCodec : Codec Integer
integerCodec =
    Codec.int


{-| Codec for IprangeList. -}
iprangeListCodec : Codec IprangeList
iprangeListCodec =
    Codec.list iprangeCodec


{-| Codec for Iprange. -}
iprangeCodec : Codec Iprange
iprangeCodec =
    Codec.object Iprange
        |> Codec.field "Status" .status Codec.string
        |> Codec.field "CIDRIP" .cidrip Codec.string
        |> Codec.buildObject


{-| Codec for GlobalClustersMessage. -}
globalClustersMessageCodec : Codec GlobalClustersMessage
globalClustersMessageCodec =
    Codec.object GlobalClustersMessage
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "GlobalClusters" .globalClusters globalClusterListCodec
        |> Codec.buildObject


{-| Codec for GlobalClusterMemberList. -}
globalClusterMemberListCodec : Codec GlobalClusterMemberList
globalClusterMemberListCodec =
    Codec.list globalClusterMemberCodec


{-| Codec for GlobalClusterMember. -}
globalClusterMemberCodec : Codec GlobalClusterMember
globalClusterMemberCodec =
    Codec.object GlobalClusterMember
        |> Codec.field "Readers" .readers readersArnListCodec
        |> Codec.field "IsWriter" .isWriter Codec.bool
        |> Codec.field "DBClusterArn" .dbclusterArn Codec.string
        |> Codec.buildObject


{-| Codec for GlobalClusterList. -}
globalClusterListCodec : Codec GlobalClusterList
globalClusterListCodec =
    Codec.list globalClusterCodec


{-| Codec for GlobalCluster. -}
globalClusterCodec : Codec GlobalCluster
globalClusterCodec =
    Codec.object GlobalCluster
        |> Codec.field "StorageEncrypted" .storageEncrypted Codec.bool
        |> Codec.field "Status" .status Codec.string
        |> Codec.field "GlobalClusterResourceId" .globalClusterResourceId Codec.string
        |> Codec.field "GlobalClusterMembers" .globalClusterMembers globalClusterMemberListCodec
        |> Codec.field "GlobalClusterIdentifier" .globalClusterIdentifier Codec.string
        |> Codec.field "GlobalClusterArn" .globalClusterArn Codec.string
        |> Codec.field "EngineVersion" .engineVersion Codec.string
        |> Codec.field "Engine" .engine Codec.string
        |> Codec.field "DeletionProtection" .deletionProtection Codec.bool
        |> Codec.field "DatabaseName" .databaseName Codec.string
        |> Codec.buildObject


{-| Codec for FilterValueList. -}
filterValueListCodec : Codec FilterValueList
filterValueListCodec =
    Codec.list Codec.string


{-| Codec for FilterList. -}
filterListCodec : Codec FilterList
filterListCodec =
    Codec.list filterCodec


{-| Codec for Filter. -}
filterCodec : Codec Filter
filterCodec =
    Codec.object Filter
        |> Codec.field "Values" .values filterValueListCodec
        |> Codec.field "Name" .name Codec.string
        |> Codec.buildObject


{-| Codec for FeatureNameList. -}
featureNameListCodec : Codec FeatureNameList
featureNameListCodec =
    Codec.list Codec.string


{-| Codec for FailoverDbclusterResult. -}
failoverDbclusterResultCodec : Codec FailoverDbclusterResult
failoverDbclusterResultCodec =
    Codec.object FailoverDbclusterResult |> Codec.field "DBCluster" .dbcluster dbclusterCodec |> Codec.buildObject


{-| Codec for FailoverDbclusterMessage. -}
failoverDbclusterMessageCodec : Codec FailoverDbclusterMessage
failoverDbclusterMessageCodec =
    Codec.object FailoverDbclusterMessage
        |> Codec.field "TargetDBInstanceIdentifier" .targetDbinstanceIdentifier Codec.string
        |> Codec.field "DBClusterIdentifier" .dbclusterIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for EventsMessage. -}
eventsMessageCodec : Codec EventsMessage
eventsMessageCodec =
    Codec.object EventsMessage
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "Events" .events eventListCodec
        |> Codec.buildObject


{-| Codec for EventSubscriptionsMessage. -}
eventSubscriptionsMessageCodec : Codec EventSubscriptionsMessage
eventSubscriptionsMessageCodec =
    Codec.object EventSubscriptionsMessage
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "EventSubscriptionsList" .eventSubscriptionsList eventSubscriptionsListCodec
        |> Codec.buildObject


{-| Codec for EventSubscriptionsList. -}
eventSubscriptionsListCodec : Codec EventSubscriptionsList
eventSubscriptionsListCodec =
    Codec.list eventSubscriptionCodec


{-| Codec for EventSubscription. -}
eventSubscriptionCodec : Codec EventSubscription
eventSubscriptionCodec =
    Codec.object EventSubscription
        |> Codec.field "SubscriptionCreationTime" .subscriptionCreationTime Codec.string
        |> Codec.field "Status" .status Codec.string
        |> Codec.field "SourceType" .sourceType Codec.string
        |> Codec.field "SourceIdsList" .sourceIdsList sourceIdsListCodec
        |> Codec.field "SnsTopicArn" .snsTopicArn Codec.string
        |> Codec.field "EventSubscriptionArn" .eventSubscriptionArn Codec.string
        |> Codec.field "EventCategoriesList" .eventCategoriesList eventCategoriesListCodec
        |> Codec.field "Enabled" .enabled Codec.bool
        |> Codec.field "CustomerAwsId" .customerAwsId Codec.string
        |> Codec.field "CustSubscriptionId" .custSubscriptionId Codec.string
        |> Codec.buildObject


{-| Codec for EventList. -}
eventListCodec : Codec EventList
eventListCodec =
    Codec.list eventCodec


{-| Codec for EventCategoriesMessage. -}
eventCategoriesMessageCodec : Codec EventCategoriesMessage
eventCategoriesMessageCodec =
    Codec.object EventCategoriesMessage
        |> Codec.field "EventCategoriesMapList" .eventCategoriesMapList eventCategoriesMapListCodec
        |> Codec.buildObject


{-| Codec for EventCategoriesMapList. -}
eventCategoriesMapListCodec : Codec EventCategoriesMapList
eventCategoriesMapListCodec =
    Codec.list eventCategoriesMapCodec


{-| Codec for EventCategoriesMap. -}
eventCategoriesMapCodec : Codec EventCategoriesMap
eventCategoriesMapCodec =
    Codec.object EventCategoriesMap
        |> Codec.field "SourceType" .sourceType Codec.string
        |> Codec.field "EventCategories" .eventCategories eventCategoriesListCodec
        |> Codec.buildObject


{-| Codec for EventCategoriesList. -}
eventCategoriesListCodec : Codec EventCategoriesList
eventCategoriesListCodec =
    Codec.list Codec.string


{-| Codec for Event. -}
eventCodec : Codec Event
eventCodec =
    Codec.object Event
        |> Codec.field "SourceType" .sourceType sourceTypeCodec
        |> Codec.field "SourceIdentifier" .sourceIdentifier Codec.string
        |> Codec.field "SourceArn" .sourceArn Codec.string
        |> Codec.field "Message" .message Codec.string
        |> Codec.field "EventCategories" .eventCategories eventCategoriesListCodec
        |> Codec.field "Date" .date tstampCodec
        |> Codec.buildObject


{-| Codec for EngineModeList. -}
engineModeListCodec : Codec EngineModeList
engineModeListCodec =
    Codec.list Codec.string


{-| Codec for EngineDefaults. -}
engineDefaultsCodec : Codec EngineDefaults
engineDefaultsCodec =
    Codec.object EngineDefaults
        |> Codec.field "Parameters" .parameters parametersListCodec
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "DBParameterGroupFamily" .dbparameterGroupFamily Codec.string
        |> Codec.buildObject


{-| Codec for Endpoint. -}
endpointCodec : Codec Endpoint
endpointCodec =
    Codec.object Endpoint
        |> Codec.field "Port" .port Codec.int
        |> Codec.field "HostedZoneId" .hostedZoneId Codec.string
        |> Codec.field "Address" .address Codec.string
        |> Codec.buildObject


{-| Codec for Ec2SecurityGroupList. -}
ec2SecurityGroupListCodec : Codec Ec2SecurityGroupList
ec2SecurityGroupListCodec =
    Codec.list ec2SecurityGroupCodec


{-| Codec for Ec2SecurityGroup. -}
ec2SecurityGroupCodec : Codec Ec2SecurityGroup
ec2SecurityGroupCodec =
    Codec.object Ec2SecurityGroup
        |> Codec.field "Status" .status Codec.string
        |> Codec.field "EC2SecurityGroupOwnerId" .ec2SecurityGroupOwnerId Codec.string
        |> Codec.field "EC2SecurityGroupName" .ec2SecurityGroupName Codec.string
        |> Codec.field "EC2SecurityGroupId" .ec2SecurityGroupId Codec.string
        |> Codec.buildObject


{-| Codec for DownloadDblogFilePortionMessage. -}
downloadDblogFilePortionMessageCodec : Codec DownloadDblogFilePortionMessage
downloadDblogFilePortionMessageCodec =
    Codec.object DownloadDblogFilePortionMessage
        |> Codec.field "NumberOfLines" .numberOfLines Codec.int
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "LogFileName" .logFileName Codec.string
        |> Codec.field "DBInstanceIdentifier" .dbinstanceIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for DownloadDblogFilePortionDetails. -}
downloadDblogFilePortionDetailsCodec : Codec DownloadDblogFilePortionDetails
downloadDblogFilePortionDetailsCodec =
    Codec.object DownloadDblogFilePortionDetails
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "LogFileData" .logFileData Codec.string
        |> Codec.field "AdditionalDataPending" .additionalDataPending Codec.bool
        |> Codec.buildObject


{-| Codec for DoubleRangeList. -}
doubleRangeListCodec : Codec DoubleRangeList
doubleRangeListCodec =
    Codec.list doubleRangeCodec


{-| Codec for DoubleRange. -}
doubleRangeCodec : Codec DoubleRange
doubleRangeCodec =
    Codec.object DoubleRange
        |> Codec.field "To" .to Codec.float
        |> Codec.field "From" .from Codec.float
        |> Codec.buildObject


{-| Codec for DoubleOptional. -}
doubleOptionalCodec : Codec DoubleOptional
doubleOptionalCodec =
    Codec.float


{-| Codec for Double. -}
doubleCodec : Codec Double
doubleCodec =
    Codec.float


{-| Codec for DomainMembershipList. -}
domainMembershipListCodec : Codec DomainMembershipList
domainMembershipListCodec =
    Codec.list domainMembershipCodec


{-| Codec for DomainMembership. -}
domainMembershipCodec : Codec DomainMembership
domainMembershipCodec =
    Codec.object DomainMembership
        |> Codec.field "Status" .status Codec.string
        |> Codec.field "IAMRoleName" .iamroleName Codec.string
        |> Codec.field "FQDN" .fqdn Codec.string
        |> Codec.field "Domain" .domain Codec.string
        |> Codec.buildObject


{-| Codec for DescribeValidDbinstanceModificationsResult. -}
describeValidDbinstanceModificationsResultCodec : Codec DescribeValidDbinstanceModificationsResult
describeValidDbinstanceModificationsResultCodec =
    Codec.object DescribeValidDbinstanceModificationsResult
        |> Codec.field
            "ValidDBInstanceModificationsMessage"
            .validDbinstanceModificationsMessage
            validDbinstanceModificationsMessageCodec
        |> Codec.buildObject


{-| Codec for DescribeValidDbinstanceModificationsMessage. -}
describeValidDbinstanceModificationsMessageCodec : Codec DescribeValidDbinstanceModificationsMessage
describeValidDbinstanceModificationsMessageCodec =
    Codec.object DescribeValidDbinstanceModificationsMessage
        |> Codec.field "DBInstanceIdentifier" .dbinstanceIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for DescribeSourceRegionsMessage. -}
describeSourceRegionsMessageCodec : Codec DescribeSourceRegionsMessage
describeSourceRegionsMessageCodec =
    Codec.object DescribeSourceRegionsMessage
        |> Codec.field "RegionName" .regionName Codec.string
        |> Codec.field "MaxRecords" .maxRecords Codec.int
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "Filters" .filters filterListCodec
        |> Codec.buildObject


{-| Codec for DescribeReservedDbinstancesOfferingsMessage. -}
describeReservedDbinstancesOfferingsMessageCodec : Codec DescribeReservedDbinstancesOfferingsMessage
describeReservedDbinstancesOfferingsMessageCodec =
    Codec.object DescribeReservedDbinstancesOfferingsMessage
        |> Codec.field "ReservedDBInstancesOfferingId" .reservedDbinstancesOfferingId Codec.string
        |> Codec.field "ProductDescription" .productDescription Codec.string
        |> Codec.field "OfferingType" .offeringType Codec.string
        |> Codec.field "MultiAZ" .multiAz Codec.bool
        |> Codec.field "MaxRecords" .maxRecords Codec.int
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "Filters" .filters filterListCodec
        |> Codec.field "Duration" .duration Codec.string
        |> Codec.field "DBInstanceClass" .dbinstanceClass Codec.string
        |> Codec.buildObject


{-| Codec for DescribeReservedDbinstancesMessage. -}
describeReservedDbinstancesMessageCodec : Codec DescribeReservedDbinstancesMessage
describeReservedDbinstancesMessageCodec =
    Codec.object DescribeReservedDbinstancesMessage
        |> Codec.field "ReservedDBInstancesOfferingId" .reservedDbinstancesOfferingId Codec.string
        |> Codec.field "ReservedDBInstanceId" .reservedDbinstanceId Codec.string
        |> Codec.field "ProductDescription" .productDescription Codec.string
        |> Codec.field "OfferingType" .offeringType Codec.string
        |> Codec.field "MultiAZ" .multiAz Codec.bool
        |> Codec.field "MaxRecords" .maxRecords Codec.int
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "Filters" .filters filterListCodec
        |> Codec.field "Duration" .duration Codec.string
        |> Codec.field "DBInstanceClass" .dbinstanceClass Codec.string
        |> Codec.buildObject


{-| Codec for DescribePendingMaintenanceActionsMessage. -}
describePendingMaintenanceActionsMessageCodec : Codec DescribePendingMaintenanceActionsMessage
describePendingMaintenanceActionsMessageCodec =
    Codec.object DescribePendingMaintenanceActionsMessage
        |> Codec.field "ResourceIdentifier" .resourceIdentifier Codec.string
        |> Codec.field "MaxRecords" .maxRecords Codec.int
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "Filters" .filters filterListCodec
        |> Codec.buildObject


{-| Codec for DescribeOrderableDbinstanceOptionsMessage. -}
describeOrderableDbinstanceOptionsMessageCodec : Codec DescribeOrderableDbinstanceOptionsMessage
describeOrderableDbinstanceOptionsMessageCodec =
    Codec.object DescribeOrderableDbinstanceOptionsMessage
        |> Codec.field "Vpc" .vpc Codec.bool
        |> Codec.field "MaxRecords" .maxRecords Codec.int
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "LicenseModel" .licenseModel Codec.string
        |> Codec.field "Filters" .filters filterListCodec
        |> Codec.field "EngineVersion" .engineVersion Codec.string
        |> Codec.field "Engine" .engine Codec.string
        |> Codec.field "DBInstanceClass" .dbinstanceClass Codec.string
        |> Codec.buildObject


{-| Codec for DescribeOptionGroupsMessage. -}
describeOptionGroupsMessageCodec : Codec DescribeOptionGroupsMessage
describeOptionGroupsMessageCodec =
    Codec.object DescribeOptionGroupsMessage
        |> Codec.field "OptionGroupName" .optionGroupName Codec.string
        |> Codec.field "MaxRecords" .maxRecords Codec.int
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "MajorEngineVersion" .majorEngineVersion Codec.string
        |> Codec.field "Filters" .filters filterListCodec
        |> Codec.field "EngineName" .engineName Codec.string
        |> Codec.buildObject


{-| Codec for DescribeOptionGroupOptionsMessage. -}
describeOptionGroupOptionsMessageCodec : Codec DescribeOptionGroupOptionsMessage
describeOptionGroupOptionsMessageCodec =
    Codec.object DescribeOptionGroupOptionsMessage
        |> Codec.field "MaxRecords" .maxRecords Codec.int
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "MajorEngineVersion" .majorEngineVersion Codec.string
        |> Codec.field "Filters" .filters filterListCodec
        |> Codec.field "EngineName" .engineName Codec.string
        |> Codec.buildObject


{-| Codec for DescribeGlobalClustersMessage. -}
describeGlobalClustersMessageCodec : Codec DescribeGlobalClustersMessage
describeGlobalClustersMessageCodec =
    Codec.object DescribeGlobalClustersMessage
        |> Codec.field "MaxRecords" .maxRecords Codec.int
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "GlobalClusterIdentifier" .globalClusterIdentifier Codec.string
        |> Codec.field "Filters" .filters filterListCodec
        |> Codec.buildObject


{-| Codec for DescribeEventsMessage. -}
describeEventsMessageCodec : Codec DescribeEventsMessage
describeEventsMessageCodec =
    Codec.object DescribeEventsMessage
        |> Codec.field "StartTime" .startTime tstampCodec
        |> Codec.field "SourceType" .sourceType sourceTypeCodec
        |> Codec.field "SourceIdentifier" .sourceIdentifier Codec.string
        |> Codec.field "MaxRecords" .maxRecords Codec.int
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "Filters" .filters filterListCodec
        |> Codec.field "EventCategories" .eventCategories eventCategoriesListCodec
        |> Codec.field "EndTime" .endTime tstampCodec
        |> Codec.field "Duration" .duration Codec.int
        |> Codec.buildObject


{-| Codec for DescribeEventSubscriptionsMessage. -}
describeEventSubscriptionsMessageCodec : Codec DescribeEventSubscriptionsMessage
describeEventSubscriptionsMessageCodec =
    Codec.object DescribeEventSubscriptionsMessage
        |> Codec.field "SubscriptionName" .subscriptionName Codec.string
        |> Codec.field "MaxRecords" .maxRecords Codec.int
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "Filters" .filters filterListCodec
        |> Codec.buildObject


{-| Codec for DescribeEventCategoriesMessage. -}
describeEventCategoriesMessageCodec : Codec DescribeEventCategoriesMessage
describeEventCategoriesMessageCodec =
    Codec.object DescribeEventCategoriesMessage
        |> Codec.field "SourceType" .sourceType Codec.string
        |> Codec.field "Filters" .filters filterListCodec
        |> Codec.buildObject


{-| Codec for DescribeEngineDefaultParametersResult. -}
describeEngineDefaultParametersResultCodec : Codec DescribeEngineDefaultParametersResult
describeEngineDefaultParametersResultCodec =
    Codec.object DescribeEngineDefaultParametersResult
        |> Codec.field "EngineDefaults" .engineDefaults engineDefaultsCodec
        |> Codec.buildObject


{-| Codec for DescribeEngineDefaultParametersMessage. -}
describeEngineDefaultParametersMessageCodec : Codec DescribeEngineDefaultParametersMessage
describeEngineDefaultParametersMessageCodec =
    Codec.object DescribeEngineDefaultParametersMessage
        |> Codec.field "MaxRecords" .maxRecords Codec.int
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "Filters" .filters filterListCodec
        |> Codec.field "DBParameterGroupFamily" .dbparameterGroupFamily Codec.string
        |> Codec.buildObject


{-| Codec for DescribeEngineDefaultClusterParametersResult. -}
describeEngineDefaultClusterParametersResultCodec : Codec DescribeEngineDefaultClusterParametersResult
describeEngineDefaultClusterParametersResultCodec =
    Codec.object DescribeEngineDefaultClusterParametersResult
        |> Codec.field "EngineDefaults" .engineDefaults engineDefaultsCodec
        |> Codec.buildObject


{-| Codec for DescribeEngineDefaultClusterParametersMessage. -}
describeEngineDefaultClusterParametersMessageCodec : Codec DescribeEngineDefaultClusterParametersMessage
describeEngineDefaultClusterParametersMessageCodec =
    Codec.object DescribeEngineDefaultClusterParametersMessage
        |> Codec.field "MaxRecords" .maxRecords Codec.int
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "Filters" .filters filterListCodec
        |> Codec.field "DBParameterGroupFamily" .dbparameterGroupFamily Codec.string
        |> Codec.buildObject


{-| Codec for DescribeDbsubnetGroupsMessage. -}
describeDbsubnetGroupsMessageCodec : Codec DescribeDbsubnetGroupsMessage
describeDbsubnetGroupsMessageCodec =
    Codec.object DescribeDbsubnetGroupsMessage
        |> Codec.field "MaxRecords" .maxRecords Codec.int
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "Filters" .filters filterListCodec
        |> Codec.field "DBSubnetGroupName" .dbsubnetGroupName Codec.string
        |> Codec.buildObject


{-| Codec for DescribeDbsnapshotsMessage. -}
describeDbsnapshotsMessageCodec : Codec DescribeDbsnapshotsMessage
describeDbsnapshotsMessageCodec =
    Codec.object DescribeDbsnapshotsMessage
        |> Codec.field "SnapshotType" .snapshotType Codec.string
        |> Codec.field "MaxRecords" .maxRecords Codec.int
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "IncludeShared" .includeShared Codec.bool
        |> Codec.field "IncludePublic" .includePublic Codec.bool
        |> Codec.field "Filters" .filters filterListCodec
        |> Codec.field "DbiResourceId" .dbiResourceId Codec.string
        |> Codec.field "DBSnapshotIdentifier" .dbsnapshotIdentifier Codec.string
        |> Codec.field "DBInstanceIdentifier" .dbinstanceIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for DescribeDbsnapshotAttributesResult. -}
describeDbsnapshotAttributesResultCodec : Codec DescribeDbsnapshotAttributesResult
describeDbsnapshotAttributesResultCodec =
    Codec.object DescribeDbsnapshotAttributesResult
        |> Codec.field "DBSnapshotAttributesResult" .dbsnapshotAttributesResult dbsnapshotAttributesResultCodec
        |> Codec.buildObject


{-| Codec for DescribeDbsnapshotAttributesMessage. -}
describeDbsnapshotAttributesMessageCodec : Codec DescribeDbsnapshotAttributesMessage
describeDbsnapshotAttributesMessageCodec =
    Codec.object DescribeDbsnapshotAttributesMessage
        |> Codec.field "DBSnapshotIdentifier" .dbsnapshotIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for DescribeDbsecurityGroupsMessage. -}
describeDbsecurityGroupsMessageCodec : Codec DescribeDbsecurityGroupsMessage
describeDbsecurityGroupsMessageCodec =
    Codec.object DescribeDbsecurityGroupsMessage
        |> Codec.field "MaxRecords" .maxRecords Codec.int
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "Filters" .filters filterListCodec
        |> Codec.field "DBSecurityGroupName" .dbsecurityGroupName Codec.string
        |> Codec.buildObject


{-| Codec for DescribeDbparametersMessage. -}
describeDbparametersMessageCodec : Codec DescribeDbparametersMessage
describeDbparametersMessageCodec =
    Codec.object DescribeDbparametersMessage
        |> Codec.field "Source" .source Codec.string
        |> Codec.field "MaxRecords" .maxRecords Codec.int
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "Filters" .filters filterListCodec
        |> Codec.field "DBParameterGroupName" .dbparameterGroupName Codec.string
        |> Codec.buildObject


{-| Codec for DescribeDbparameterGroupsMessage. -}
describeDbparameterGroupsMessageCodec : Codec DescribeDbparameterGroupsMessage
describeDbparameterGroupsMessageCodec =
    Codec.object DescribeDbparameterGroupsMessage
        |> Codec.field "MaxRecords" .maxRecords Codec.int
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "Filters" .filters filterListCodec
        |> Codec.field "DBParameterGroupName" .dbparameterGroupName Codec.string
        |> Codec.buildObject


{-| Codec for DescribeDblogFilesResponse. -}
describeDblogFilesResponseCodec : Codec DescribeDblogFilesResponse
describeDblogFilesResponseCodec =
    Codec.object DescribeDblogFilesResponse
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "DescribeDBLogFiles" .describeDblogFiles describeDblogFilesListCodec
        |> Codec.buildObject


{-| Codec for DescribeDblogFilesMessage. -}
describeDblogFilesMessageCodec : Codec DescribeDblogFilesMessage
describeDblogFilesMessageCodec =
    Codec.object DescribeDblogFilesMessage
        |> Codec.field "MaxRecords" .maxRecords Codec.int
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "Filters" .filters filterListCodec
        |> Codec.field "FilenameContains" .filenameContains Codec.string
        |> Codec.field "FileSize" .fileSize Codec.int
        |> Codec.field "FileLastWritten" .fileLastWritten Codec.int
        |> Codec.field "DBInstanceIdentifier" .dbinstanceIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for DescribeDblogFilesList. -}
describeDblogFilesListCodec : Codec DescribeDblogFilesList
describeDblogFilesListCodec =
    Codec.list describeDblogFilesDetailsCodec


{-| Codec for DescribeDblogFilesDetails. -}
describeDblogFilesDetailsCodec : Codec DescribeDblogFilesDetails
describeDblogFilesDetailsCodec =
    Codec.object DescribeDblogFilesDetails
        |> Codec.field "Size" .size Codec.int
        |> Codec.field "LogFileName" .logFileName Codec.string
        |> Codec.field "LastWritten" .lastWritten Codec.int
        |> Codec.buildObject


{-| Codec for DescribeDbinstancesMessage. -}
describeDbinstancesMessageCodec : Codec DescribeDbinstancesMessage
describeDbinstancesMessageCodec =
    Codec.object DescribeDbinstancesMessage
        |> Codec.field "MaxRecords" .maxRecords Codec.int
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "Filters" .filters filterListCodec
        |> Codec.field "DBInstanceIdentifier" .dbinstanceIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for DescribeDbinstanceAutomatedBackupsMessage. -}
describeDbinstanceAutomatedBackupsMessageCodec : Codec DescribeDbinstanceAutomatedBackupsMessage
describeDbinstanceAutomatedBackupsMessageCodec =
    Codec.object DescribeDbinstanceAutomatedBackupsMessage
        |> Codec.field "MaxRecords" .maxRecords Codec.int
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "Filters" .filters filterListCodec
        |> Codec.field "DbiResourceId" .dbiResourceId Codec.string
        |> Codec.field "DBInstanceIdentifier" .dbinstanceIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for DescribeDbengineVersionsMessage. -}
describeDbengineVersionsMessageCodec : Codec DescribeDbengineVersionsMessage
describeDbengineVersionsMessageCodec =
    Codec.object DescribeDbengineVersionsMessage
        |> Codec.field "MaxRecords" .maxRecords Codec.int
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "ListSupportedTimezones" .listSupportedTimezones Codec.bool
        |> Codec.field "ListSupportedCharacterSets" .listSupportedCharacterSets Codec.bool
        |> Codec.field "IncludeAll" .includeAll Codec.bool
        |> Codec.field "Filters" .filters filterListCodec
        |> Codec.field "EngineVersion" .engineVersion Codec.string
        |> Codec.field "Engine" .engine Codec.string
        |> Codec.field "DefaultOnly" .defaultOnly Codec.bool
        |> Codec.field "DBParameterGroupFamily" .dbparameterGroupFamily Codec.string
        |> Codec.buildObject


{-| Codec for DescribeDbclustersMessage. -}
describeDbclustersMessageCodec : Codec DescribeDbclustersMessage
describeDbclustersMessageCodec =
    Codec.object DescribeDbclustersMessage
        |> Codec.field "MaxRecords" .maxRecords Codec.int
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "IncludeShared" .includeShared Codec.bool
        |> Codec.field "Filters" .filters filterListCodec
        |> Codec.field "DBClusterIdentifier" .dbclusterIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for DescribeDbclusterSnapshotsMessage. -}
describeDbclusterSnapshotsMessageCodec : Codec DescribeDbclusterSnapshotsMessage
describeDbclusterSnapshotsMessageCodec =
    Codec.object DescribeDbclusterSnapshotsMessage
        |> Codec.field "SnapshotType" .snapshotType Codec.string
        |> Codec.field "MaxRecords" .maxRecords Codec.int
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "IncludeShared" .includeShared Codec.bool
        |> Codec.field "IncludePublic" .includePublic Codec.bool
        |> Codec.field "Filters" .filters filterListCodec
        |> Codec.field "DBClusterSnapshotIdentifier" .dbclusterSnapshotIdentifier Codec.string
        |> Codec.field "DBClusterIdentifier" .dbclusterIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for DescribeDbclusterSnapshotAttributesResult. -}
describeDbclusterSnapshotAttributesResultCodec : Codec DescribeDbclusterSnapshotAttributesResult
describeDbclusterSnapshotAttributesResultCodec =
    Codec.object DescribeDbclusterSnapshotAttributesResult
        |> Codec.field
            "DBClusterSnapshotAttributesResult"
            .dbclusterSnapshotAttributesResult
            dbclusterSnapshotAttributesResultCodec
        |> Codec.buildObject


{-| Codec for DescribeDbclusterSnapshotAttributesMessage. -}
describeDbclusterSnapshotAttributesMessageCodec : Codec DescribeDbclusterSnapshotAttributesMessage
describeDbclusterSnapshotAttributesMessageCodec =
    Codec.object DescribeDbclusterSnapshotAttributesMessage
        |> Codec.field "DBClusterSnapshotIdentifier" .dbclusterSnapshotIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for DescribeDbclusterParametersMessage. -}
describeDbclusterParametersMessageCodec : Codec DescribeDbclusterParametersMessage
describeDbclusterParametersMessageCodec =
    Codec.object DescribeDbclusterParametersMessage
        |> Codec.field "Source" .source Codec.string
        |> Codec.field "MaxRecords" .maxRecords Codec.int
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "Filters" .filters filterListCodec
        |> Codec.field "DBClusterParameterGroupName" .dbclusterParameterGroupName Codec.string
        |> Codec.buildObject


{-| Codec for DescribeDbclusterParameterGroupsMessage. -}
describeDbclusterParameterGroupsMessageCodec : Codec DescribeDbclusterParameterGroupsMessage
describeDbclusterParameterGroupsMessageCodec =
    Codec.object DescribeDbclusterParameterGroupsMessage
        |> Codec.field "MaxRecords" .maxRecords Codec.int
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "Filters" .filters filterListCodec
        |> Codec.field "DBClusterParameterGroupName" .dbclusterParameterGroupName Codec.string
        |> Codec.buildObject


{-| Codec for DescribeDbclusterEndpointsMessage. -}
describeDbclusterEndpointsMessageCodec : Codec DescribeDbclusterEndpointsMessage
describeDbclusterEndpointsMessageCodec =
    Codec.object DescribeDbclusterEndpointsMessage
        |> Codec.field "MaxRecords" .maxRecords Codec.int
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "Filters" .filters filterListCodec
        |> Codec.field "DBClusterIdentifier" .dbclusterIdentifier Codec.string
        |> Codec.field "DBClusterEndpointIdentifier" .dbclusterEndpointIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for DescribeDbclusterBacktracksMessage. -}
describeDbclusterBacktracksMessageCodec : Codec DescribeDbclusterBacktracksMessage
describeDbclusterBacktracksMessageCodec =
    Codec.object DescribeDbclusterBacktracksMessage
        |> Codec.field "MaxRecords" .maxRecords Codec.int
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "Filters" .filters filterListCodec
        |> Codec.field "DBClusterIdentifier" .dbclusterIdentifier Codec.string
        |> Codec.field "BacktrackIdentifier" .backtrackIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for DescribeCertificatesMessage. -}
describeCertificatesMessageCodec : Codec DescribeCertificatesMessage
describeCertificatesMessageCodec =
    Codec.object DescribeCertificatesMessage
        |> Codec.field "MaxRecords" .maxRecords Codec.int
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "Filters" .filters filterListCodec
        |> Codec.field "CertificateIdentifier" .certificateIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for DescribeAccountAttributesMessage. -}
describeAccountAttributesMessageCodec : Codec DescribeAccountAttributesMessage
describeAccountAttributesMessageCodec =
    Codec.object DescribeAccountAttributesMessage |> Codec.buildObject


{-| Codec for DeleteOptionGroupMessage. -}
deleteOptionGroupMessageCodec : Codec DeleteOptionGroupMessage
deleteOptionGroupMessageCodec =
    Codec.object DeleteOptionGroupMessage
        |> Codec.field "OptionGroupName" .optionGroupName Codec.string
        |> Codec.buildObject


{-| Codec for DeleteGlobalClusterResult. -}
deleteGlobalClusterResultCodec : Codec DeleteGlobalClusterResult
deleteGlobalClusterResultCodec =
    Codec.object DeleteGlobalClusterResult
        |> Codec.field "GlobalCluster" .globalCluster globalClusterCodec
        |> Codec.buildObject


{-| Codec for DeleteGlobalClusterMessage. -}
deleteGlobalClusterMessageCodec : Codec DeleteGlobalClusterMessage
deleteGlobalClusterMessageCodec =
    Codec.object DeleteGlobalClusterMessage
        |> Codec.field "GlobalClusterIdentifier" .globalClusterIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for DeleteEventSubscriptionResult. -}
deleteEventSubscriptionResultCodec : Codec DeleteEventSubscriptionResult
deleteEventSubscriptionResultCodec =
    Codec.object DeleteEventSubscriptionResult
        |> Codec.field "EventSubscription" .eventSubscription eventSubscriptionCodec
        |> Codec.buildObject


{-| Codec for DeleteEventSubscriptionMessage. -}
deleteEventSubscriptionMessageCodec : Codec DeleteEventSubscriptionMessage
deleteEventSubscriptionMessageCodec =
    Codec.object DeleteEventSubscriptionMessage
        |> Codec.field "SubscriptionName" .subscriptionName Codec.string
        |> Codec.buildObject


{-| Codec for DeleteDbsubnetGroupMessage. -}
deleteDbsubnetGroupMessageCodec : Codec DeleteDbsubnetGroupMessage
deleteDbsubnetGroupMessageCodec =
    Codec.object DeleteDbsubnetGroupMessage
        |> Codec.field "DBSubnetGroupName" .dbsubnetGroupName Codec.string
        |> Codec.buildObject


{-| Codec for DeleteDbsnapshotResult. -}
deleteDbsnapshotResultCodec : Codec DeleteDbsnapshotResult
deleteDbsnapshotResultCodec =
    Codec.object DeleteDbsnapshotResult |> Codec.field "DBSnapshot" .dbsnapshot dbsnapshotCodec |> Codec.buildObject


{-| Codec for DeleteDbsnapshotMessage. -}
deleteDbsnapshotMessageCodec : Codec DeleteDbsnapshotMessage
deleteDbsnapshotMessageCodec =
    Codec.object DeleteDbsnapshotMessage
        |> Codec.field "DBSnapshotIdentifier" .dbsnapshotIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for DeleteDbsecurityGroupMessage. -}
deleteDbsecurityGroupMessageCodec : Codec DeleteDbsecurityGroupMessage
deleteDbsecurityGroupMessageCodec =
    Codec.object DeleteDbsecurityGroupMessage
        |> Codec.field "DBSecurityGroupName" .dbsecurityGroupName Codec.string
        |> Codec.buildObject


{-| Codec for DeleteDbparameterGroupMessage. -}
deleteDbparameterGroupMessageCodec : Codec DeleteDbparameterGroupMessage
deleteDbparameterGroupMessageCodec =
    Codec.object DeleteDbparameterGroupMessage
        |> Codec.field "DBParameterGroupName" .dbparameterGroupName Codec.string
        |> Codec.buildObject


{-| Codec for DeleteDbinstanceResult. -}
deleteDbinstanceResultCodec : Codec DeleteDbinstanceResult
deleteDbinstanceResultCodec =
    Codec.object DeleteDbinstanceResult |> Codec.field "DBInstance" .dbinstance dbinstanceCodec |> Codec.buildObject


{-| Codec for DeleteDbinstanceMessage. -}
deleteDbinstanceMessageCodec : Codec DeleteDbinstanceMessage
deleteDbinstanceMessageCodec =
    Codec.object DeleteDbinstanceMessage
        |> Codec.field "SkipFinalSnapshot" .skipFinalSnapshot Codec.bool
        |> Codec.field "FinalDBSnapshotIdentifier" .finalDbsnapshotIdentifier Codec.string
        |> Codec.field "DeleteAutomatedBackups" .deleteAutomatedBackups Codec.bool
        |> Codec.field "DBInstanceIdentifier" .dbinstanceIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for DeleteDbinstanceAutomatedBackupResult. -}
deleteDbinstanceAutomatedBackupResultCodec : Codec DeleteDbinstanceAutomatedBackupResult
deleteDbinstanceAutomatedBackupResultCodec =
    Codec.object DeleteDbinstanceAutomatedBackupResult
        |> Codec.field "DBInstanceAutomatedBackup" .dbinstanceAutomatedBackup dbinstanceAutomatedBackupCodec
        |> Codec.buildObject


{-| Codec for DeleteDbinstanceAutomatedBackupMessage. -}
deleteDbinstanceAutomatedBackupMessageCodec : Codec DeleteDbinstanceAutomatedBackupMessage
deleteDbinstanceAutomatedBackupMessageCodec =
    Codec.object DeleteDbinstanceAutomatedBackupMessage
        |> Codec.field "DbiResourceId" .dbiResourceId Codec.string
        |> Codec.buildObject


{-| Codec for DeleteDbclusterSnapshotResult. -}
deleteDbclusterSnapshotResultCodec : Codec DeleteDbclusterSnapshotResult
deleteDbclusterSnapshotResultCodec =
    Codec.object DeleteDbclusterSnapshotResult
        |> Codec.field "DBClusterSnapshot" .dbclusterSnapshot dbclusterSnapshotCodec
        |> Codec.buildObject


{-| Codec for DeleteDbclusterSnapshotMessage. -}
deleteDbclusterSnapshotMessageCodec : Codec DeleteDbclusterSnapshotMessage
deleteDbclusterSnapshotMessageCodec =
    Codec.object DeleteDbclusterSnapshotMessage
        |> Codec.field "DBClusterSnapshotIdentifier" .dbclusterSnapshotIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for DeleteDbclusterResult. -}
deleteDbclusterResultCodec : Codec DeleteDbclusterResult
deleteDbclusterResultCodec =
    Codec.object DeleteDbclusterResult |> Codec.field "DBCluster" .dbcluster dbclusterCodec |> Codec.buildObject


{-| Codec for DeleteDbclusterParameterGroupMessage. -}
deleteDbclusterParameterGroupMessageCodec : Codec DeleteDbclusterParameterGroupMessage
deleteDbclusterParameterGroupMessageCodec =
    Codec.object DeleteDbclusterParameterGroupMessage
        |> Codec.field "DBClusterParameterGroupName" .dbclusterParameterGroupName Codec.string
        |> Codec.buildObject


{-| Codec for DeleteDbclusterMessage. -}
deleteDbclusterMessageCodec : Codec DeleteDbclusterMessage
deleteDbclusterMessageCodec =
    Codec.object DeleteDbclusterMessage
        |> Codec.field "SkipFinalSnapshot" .skipFinalSnapshot Codec.bool
        |> Codec.field "FinalDBSnapshotIdentifier" .finalDbsnapshotIdentifier Codec.string
        |> Codec.field "DBClusterIdentifier" .dbclusterIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for DeleteDbclusterEndpointMessage. -}
deleteDbclusterEndpointMessageCodec : Codec DeleteDbclusterEndpointMessage
deleteDbclusterEndpointMessageCodec =
    Codec.object DeleteDbclusterEndpointMessage
        |> Codec.field "DBClusterEndpointIdentifier" .dbclusterEndpointIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for DbsubnetGroups. -}
dbsubnetGroupsCodec : Codec DbsubnetGroups
dbsubnetGroupsCodec =
    Codec.list dbsubnetGroupCodec


{-| Codec for DbsubnetGroupMessage. -}
dbsubnetGroupMessageCodec : Codec DbsubnetGroupMessage
dbsubnetGroupMessageCodec =
    Codec.object DbsubnetGroupMessage
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "DBSubnetGroups" .dbsubnetGroups dbsubnetGroupsCodec
        |> Codec.buildObject


{-| Codec for DbsubnetGroup. -}
dbsubnetGroupCodec : Codec DbsubnetGroup
dbsubnetGroupCodec =
    Codec.object DbsubnetGroup
        |> Codec.field "VpcId" .vpcId Codec.string
        |> Codec.field "Subnets" .subnets subnetListCodec
        |> Codec.field "SubnetGroupStatus" .subnetGroupStatus Codec.string
        |> Codec.field "DBSubnetGroupName" .dbsubnetGroupName Codec.string
        |> Codec.field "DBSubnetGroupDescription" .dbsubnetGroupDescription Codec.string
        |> Codec.field "DBSubnetGroupArn" .dbsubnetGroupArn Codec.string
        |> Codec.buildObject


{-| Codec for DbsnapshotMessage. -}
dbsnapshotMessageCodec : Codec DbsnapshotMessage
dbsnapshotMessageCodec =
    Codec.object DbsnapshotMessage
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "DBSnapshots" .dbsnapshots dbsnapshotListCodec
        |> Codec.buildObject


{-| Codec for DbsnapshotList. -}
dbsnapshotListCodec : Codec DbsnapshotList
dbsnapshotListCodec =
    Codec.list dbsnapshotCodec


{-| Codec for DbsnapshotAttributesResult. -}
dbsnapshotAttributesResultCodec : Codec DbsnapshotAttributesResult
dbsnapshotAttributesResultCodec =
    Codec.object DbsnapshotAttributesResult
        |> Codec.field "DBSnapshotIdentifier" .dbsnapshotIdentifier Codec.string
        |> Codec.field "DBSnapshotAttributes" .dbsnapshotAttributes dbsnapshotAttributeListCodec
        |> Codec.buildObject


{-| Codec for DbsnapshotAttributeList. -}
dbsnapshotAttributeListCodec : Codec DbsnapshotAttributeList
dbsnapshotAttributeListCodec =
    Codec.list dbsnapshotAttributeCodec


{-| Codec for DbsnapshotAttribute. -}
dbsnapshotAttributeCodec : Codec DbsnapshotAttribute
dbsnapshotAttributeCodec =
    Codec.object DbsnapshotAttribute
        |> Codec.field "AttributeValues" .attributeValues attributeValueListCodec
        |> Codec.field "AttributeName" .attributeName Codec.string
        |> Codec.buildObject


{-| Codec for Dbsnapshot. -}
dbsnapshotCodec : Codec Dbsnapshot
dbsnapshotCodec =
    Codec.object Dbsnapshot
        |> Codec.field "VpcId" .vpcId Codec.string
        |> Codec.field "Timezone" .timezone Codec.string
        |> Codec.field "TdeCredentialArn" .tdeCredentialArn Codec.string
        |> Codec.field "StorageType" .storageType Codec.string
        |> Codec.field "Status" .status Codec.string
        |> Codec.field "SourceRegion" .sourceRegion Codec.string
        |> Codec.field "SourceDBSnapshotIdentifier" .sourceDbsnapshotIdentifier Codec.string
        |> Codec.field "SnapshotType" .snapshotType Codec.string
        |> Codec.field "SnapshotCreateTime" .snapshotCreateTime tstampCodec
        |> Codec.field "ProcessorFeatures" .processorFeatures processorFeatureListCodec
        |> Codec.field "Port" .port Codec.int
        |> Codec.field "PercentProgress" .percentProgress Codec.int
        |> Codec.field "OptionGroupName" .optionGroupName Codec.string
        |> Codec.field "MasterUsername" .masterUsername Codec.string
        |> Codec.field "LicenseModel" .licenseModel Codec.string
        |> Codec.field "KmsKeyId" .kmsKeyId Codec.string
        |> Codec.field "Iops" .iops Codec.int
        |> Codec.field "InstanceCreateTime" .instanceCreateTime tstampCodec
        |> Codec.field "IAMDatabaseAuthenticationEnabled" .iamdatabaseAuthenticationEnabled Codec.bool
        |> Codec.field "EngineVersion" .engineVersion Codec.string
        |> Codec.field "Engine" .engine Codec.string
        |> Codec.field "Encrypted" .encrypted Codec.bool
        |> Codec.field "DbiResourceId" .dbiResourceId Codec.string
        |> Codec.field "DBSnapshotIdentifier" .dbsnapshotIdentifier Codec.string
        |> Codec.field "DBSnapshotArn" .dbsnapshotArn Codec.string
        |> Codec.field "DBInstanceIdentifier" .dbinstanceIdentifier Codec.string
        |> Codec.field "AvailabilityZone" .availabilityZone Codec.string
        |> Codec.field "AllocatedStorage" .allocatedStorage Codec.int
        |> Codec.buildObject


{-| Codec for DbsecurityGroups. -}
dbsecurityGroupsCodec : Codec DbsecurityGroups
dbsecurityGroupsCodec =
    Codec.list dbsecurityGroupCodec


{-| Codec for DbsecurityGroupNameList. -}
dbsecurityGroupNameListCodec : Codec DbsecurityGroupNameList
dbsecurityGroupNameListCodec =
    Codec.list Codec.string


{-| Codec for DbsecurityGroupMessage. -}
dbsecurityGroupMessageCodec : Codec DbsecurityGroupMessage
dbsecurityGroupMessageCodec =
    Codec.object DbsecurityGroupMessage
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "DBSecurityGroups" .dbsecurityGroups dbsecurityGroupsCodec
        |> Codec.buildObject


{-| Codec for DbsecurityGroupMembershipList. -}
dbsecurityGroupMembershipListCodec : Codec DbsecurityGroupMembershipList
dbsecurityGroupMembershipListCodec =
    Codec.list dbsecurityGroupMembershipCodec


{-| Codec for DbsecurityGroupMembership. -}
dbsecurityGroupMembershipCodec : Codec DbsecurityGroupMembership
dbsecurityGroupMembershipCodec =
    Codec.object DbsecurityGroupMembership
        |> Codec.field "Status" .status Codec.string
        |> Codec.field "DBSecurityGroupName" .dbsecurityGroupName Codec.string
        |> Codec.buildObject


{-| Codec for DbsecurityGroup. -}
dbsecurityGroupCodec : Codec DbsecurityGroup
dbsecurityGroupCodec =
    Codec.object DbsecurityGroup
        |> Codec.field "VpcId" .vpcId Codec.string
        |> Codec.field "OwnerId" .ownerId Codec.string
        |> Codec.field "IPRanges" .ipranges iprangeListCodec
        |> Codec.field "EC2SecurityGroups" .ec2SecurityGroups ec2SecurityGroupListCodec
        |> Codec.field "DBSecurityGroupName" .dbsecurityGroupName Codec.string
        |> Codec.field "DBSecurityGroupDescription" .dbsecurityGroupDescription Codec.string
        |> Codec.field "DBSecurityGroupArn" .dbsecurityGroupArn Codec.string
        |> Codec.buildObject


{-| Codec for DbparameterGroupsMessage. -}
dbparameterGroupsMessageCodec : Codec DbparameterGroupsMessage
dbparameterGroupsMessageCodec =
    Codec.object DbparameterGroupsMessage
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "DBParameterGroups" .dbparameterGroups dbparameterGroupListCodec
        |> Codec.buildObject


{-| Codec for DbparameterGroupStatusList. -}
dbparameterGroupStatusListCodec : Codec DbparameterGroupStatusList
dbparameterGroupStatusListCodec =
    Codec.list dbparameterGroupStatusCodec


{-| Codec for DbparameterGroupStatus. -}
dbparameterGroupStatusCodec : Codec DbparameterGroupStatus
dbparameterGroupStatusCodec =
    Codec.object DbparameterGroupStatus
        |> Codec.field "ParameterApplyStatus" .parameterApplyStatus Codec.string
        |> Codec.field "DBParameterGroupName" .dbparameterGroupName Codec.string
        |> Codec.buildObject


{-| Codec for DbparameterGroupNameMessage. -}
dbparameterGroupNameMessageCodec : Codec DbparameterGroupNameMessage
dbparameterGroupNameMessageCodec =
    Codec.object DbparameterGroupNameMessage
        |> Codec.field "DBParameterGroupName" .dbparameterGroupName Codec.string
        |> Codec.buildObject


{-| Codec for DbparameterGroupList. -}
dbparameterGroupListCodec : Codec DbparameterGroupList
dbparameterGroupListCodec =
    Codec.list dbparameterGroupCodec


{-| Codec for DbparameterGroupDetails. -}
dbparameterGroupDetailsCodec : Codec DbparameterGroupDetails
dbparameterGroupDetailsCodec =
    Codec.object DbparameterGroupDetails
        |> Codec.field "Parameters" .parameters parametersListCodec
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.buildObject


{-| Codec for DbparameterGroup. -}
dbparameterGroupCodec : Codec DbparameterGroup
dbparameterGroupCodec =
    Codec.object DbparameterGroup
        |> Codec.field "Description" .description Codec.string
        |> Codec.field "DBParameterGroupName" .dbparameterGroupName Codec.string
        |> Codec.field "DBParameterGroupFamily" .dbparameterGroupFamily Codec.string
        |> Codec.field "DBParameterGroupArn" .dbparameterGroupArn Codec.string
        |> Codec.buildObject


{-| Codec for DbinstanceStatusInfoList. -}
dbinstanceStatusInfoListCodec : Codec DbinstanceStatusInfoList
dbinstanceStatusInfoListCodec =
    Codec.list dbinstanceStatusInfoCodec


{-| Codec for DbinstanceStatusInfo. -}
dbinstanceStatusInfoCodec : Codec DbinstanceStatusInfo
dbinstanceStatusInfoCodec =
    Codec.object DbinstanceStatusInfo
        |> Codec.field "StatusType" .statusType Codec.string
        |> Codec.field "Status" .status Codec.string
        |> Codec.field "Normal" .normal Codec.bool
        |> Codec.field "Message" .message Codec.string
        |> Codec.buildObject


{-| Codec for DbinstanceRoles. -}
dbinstanceRolesCodec : Codec DbinstanceRoles
dbinstanceRolesCodec =
    Codec.list dbinstanceRoleCodec


{-| Codec for DbinstanceRole. -}
dbinstanceRoleCodec : Codec DbinstanceRole
dbinstanceRoleCodec =
    Codec.object DbinstanceRole
        |> Codec.field "Status" .status Codec.string
        |> Codec.field "RoleArn" .roleArn Codec.string
        |> Codec.field "FeatureName" .featureName Codec.string
        |> Codec.buildObject


{-| Codec for DbinstanceMessage. -}
dbinstanceMessageCodec : Codec DbinstanceMessage
dbinstanceMessageCodec =
    Codec.object DbinstanceMessage
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "DBInstances" .dbinstances dbinstanceListCodec
        |> Codec.buildObject


{-| Codec for DbinstanceList. -}
dbinstanceListCodec : Codec DbinstanceList
dbinstanceListCodec =
    Codec.list dbinstanceCodec


{-| Codec for DbinstanceAutomatedBackupMessage. -}
dbinstanceAutomatedBackupMessageCodec : Codec DbinstanceAutomatedBackupMessage
dbinstanceAutomatedBackupMessageCodec =
    Codec.object DbinstanceAutomatedBackupMessage
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "DBInstanceAutomatedBackups" .dbinstanceAutomatedBackups dbinstanceAutomatedBackupListCodec
        |> Codec.buildObject


{-| Codec for DbinstanceAutomatedBackupList. -}
dbinstanceAutomatedBackupListCodec : Codec DbinstanceAutomatedBackupList
dbinstanceAutomatedBackupListCodec =
    Codec.list dbinstanceAutomatedBackupCodec


{-| Codec for DbinstanceAutomatedBackup. -}
dbinstanceAutomatedBackupCodec : Codec DbinstanceAutomatedBackup
dbinstanceAutomatedBackupCodec =
    Codec.object DbinstanceAutomatedBackup
        |> Codec.field "VpcId" .vpcId Codec.string
        |> Codec.field "Timezone" .timezone Codec.string
        |> Codec.field "TdeCredentialArn" .tdeCredentialArn Codec.string
        |> Codec.field "StorageType" .storageType Codec.string
        |> Codec.field "Status" .status Codec.string
        |> Codec.field "RestoreWindow" .restoreWindow restoreWindowCodec
        |> Codec.field "Region" .region Codec.string
        |> Codec.field "Port" .port Codec.int
        |> Codec.field "OptionGroupName" .optionGroupName Codec.string
        |> Codec.field "MasterUsername" .masterUsername Codec.string
        |> Codec.field "LicenseModel" .licenseModel Codec.string
        |> Codec.field "KmsKeyId" .kmsKeyId Codec.string
        |> Codec.field "Iops" .iops Codec.int
        |> Codec.field "InstanceCreateTime" .instanceCreateTime tstampCodec
        |> Codec.field "IAMDatabaseAuthenticationEnabled" .iamdatabaseAuthenticationEnabled Codec.bool
        |> Codec.field "EngineVersion" .engineVersion Codec.string
        |> Codec.field "Engine" .engine Codec.string
        |> Codec.field "Encrypted" .encrypted Codec.bool
        |> Codec.field "DbiResourceId" .dbiResourceId Codec.string
        |> Codec.field "DBInstanceIdentifier" .dbinstanceIdentifier Codec.string
        |> Codec.field "DBInstanceArn" .dbinstanceArn Codec.string
        |> Codec.field "AvailabilityZone" .availabilityZone Codec.string
        |> Codec.field "AllocatedStorage" .allocatedStorage Codec.int
        |> Codec.buildObject


{-| Codec for Dbinstance. -}
dbinstanceCodec : Codec Dbinstance
dbinstanceCodec =
    Codec.object Dbinstance
        |> Codec.field "VpcSecurityGroups" .vpcSecurityGroups vpcSecurityGroupMembershipListCodec
        |> Codec.field "Timezone" .timezone Codec.string
        |> Codec.field "TdeCredentialArn" .tdeCredentialArn Codec.string
        |> Codec.field "StorageType" .storageType Codec.string
        |> Codec.field "StorageEncrypted" .storageEncrypted Codec.bool
        |> Codec.field "StatusInfos" .statusInfos dbinstanceStatusInfoListCodec
        |> Codec.field "SecondaryAvailabilityZone" .secondaryAvailabilityZone Codec.string
        |> Codec.field "ReadReplicaSourceDBInstanceIdentifier" .readReplicaSourceDbinstanceIdentifier Codec.string
        |> Codec.field
            "ReadReplicaDBInstanceIdentifiers"
            .readReplicaDbinstanceIdentifiers
            readReplicaDbinstanceIdentifierListCodec
        |> Codec.field
            "ReadReplicaDBClusterIdentifiers"
            .readReplicaDbclusterIdentifiers
            readReplicaDbclusterIdentifierListCodec
        |> Codec.field "PubliclyAccessible" .publiclyAccessible Codec.bool
        |> Codec.field "PromotionTier" .promotionTier Codec.int
        |> Codec.field "ProcessorFeatures" .processorFeatures processorFeatureListCodec
        |> Codec.field "PreferredMaintenanceWindow" .preferredMaintenanceWindow Codec.string
        |> Codec.field "PreferredBackupWindow" .preferredBackupWindow Codec.string
        |> Codec.field "PerformanceInsightsRetentionPeriod" .performanceInsightsRetentionPeriod Codec.int
        |> Codec.field "PerformanceInsightsKMSKeyId" .performanceInsightsKmskeyId Codec.string
        |> Codec.field "PerformanceInsightsEnabled" .performanceInsightsEnabled Codec.bool
        |> Codec.field "PendingModifiedValues" .pendingModifiedValues pendingModifiedValuesCodec
        |> Codec.field "OptionGroupMemberships" .optionGroupMemberships optionGroupMembershipListCodec
        |> Codec.field "MultiAZ" .multiAz Codec.bool
        |> Codec.field "MonitoringRoleArn" .monitoringRoleArn Codec.string
        |> Codec.field "MonitoringInterval" .monitoringInterval Codec.int
        |> Codec.field "MaxAllocatedStorage" .maxAllocatedStorage Codec.int
        |> Codec.field "MasterUsername" .masterUsername Codec.string
        |> Codec.field "ListenerEndpoint" .listenerEndpoint endpointCodec
        |> Codec.field "LicenseModel" .licenseModel Codec.string
        |> Codec.field "LatestRestorableTime" .latestRestorableTime tstampCodec
        |> Codec.field "KmsKeyId" .kmsKeyId Codec.string
        |> Codec.field "Iops" .iops Codec.int
        |> Codec.field "InstanceCreateTime" .instanceCreateTime tstampCodec
        |> Codec.field "IAMDatabaseAuthenticationEnabled" .iamdatabaseAuthenticationEnabled Codec.bool
        |> Codec.field "EnhancedMonitoringResourceArn" .enhancedMonitoringResourceArn Codec.string
        |> Codec.field "EngineVersion" .engineVersion Codec.string
        |> Codec.field "Engine" .engine Codec.string
        |> Codec.field "Endpoint" .endpoint endpointCodec
        |> Codec.field "EnabledCloudwatchLogsExports" .enabledCloudwatchLogsExports logTypeListCodec
        |> Codec.field "DomainMemberships" .domainMemberships domainMembershipListCodec
        |> Codec.field "DeletionProtection" .deletionProtection Codec.bool
        |> Codec.field "DbiResourceId" .dbiResourceId Codec.string
        |> Codec.field "DbInstancePort" .dbInstancePort Codec.int
        |> Codec.field "DBSubnetGroup" .dbsubnetGroup dbsubnetGroupCodec
        |> Codec.field "DBSecurityGroups" .dbsecurityGroups dbsecurityGroupMembershipListCodec
        |> Codec.field "DBParameterGroups" .dbparameterGroups dbparameterGroupStatusListCodec
        |> Codec.field "DBName" .dbname Codec.string
        |> Codec.field "DBInstanceStatus" .dbinstanceStatus Codec.string
        |> Codec.field "DBInstanceIdentifier" .dbinstanceIdentifier Codec.string
        |> Codec.field "DBInstanceClass" .dbinstanceClass Codec.string
        |> Codec.field "DBInstanceArn" .dbinstanceArn Codec.string
        |> Codec.field "DBClusterIdentifier" .dbclusterIdentifier Codec.string
        |> Codec.field "CopyTagsToSnapshot" .copyTagsToSnapshot Codec.bool
        |> Codec.field "CharacterSetName" .characterSetName Codec.string
        |> Codec.field "CACertificateIdentifier" .cacertificateIdentifier Codec.string
        |> Codec.field "BackupRetentionPeriod" .backupRetentionPeriod Codec.int
        |> Codec.field "AvailabilityZone" .availabilityZone Codec.string
        |> Codec.field "AutoMinorVersionUpgrade" .autoMinorVersionUpgrade Codec.bool
        |> Codec.field "AssociatedRoles" .associatedRoles dbinstanceRolesCodec
        |> Codec.field "AllocatedStorage" .allocatedStorage Codec.int
        |> Codec.buildObject


{-| Codec for DbengineVersionMessage. -}
dbengineVersionMessageCodec : Codec DbengineVersionMessage
dbengineVersionMessageCodec =
    Codec.object DbengineVersionMessage
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "DBEngineVersions" .dbengineVersions dbengineVersionListCodec
        |> Codec.buildObject


{-| Codec for DbengineVersionList. -}
dbengineVersionListCodec : Codec DbengineVersionList
dbengineVersionListCodec =
    Codec.list dbengineVersionCodec


{-| Codec for DbengineVersion. -}
dbengineVersionCodec : Codec DbengineVersion
dbengineVersionCodec =
    Codec.object DbengineVersion
        |> Codec.field "ValidUpgradeTarget" .validUpgradeTarget validUpgradeTargetListCodec
        |> Codec.field "SupportsReadReplica" .supportsReadReplica Codec.bool
        |> Codec.field "SupportsLogExportsToCloudwatchLogs" .supportsLogExportsToCloudwatchLogs Codec.bool
        |> Codec.field "SupportedTimezones" .supportedTimezones supportedTimezonesListCodec
        |> Codec.field "SupportedFeatureNames" .supportedFeatureNames featureNameListCodec
        |> Codec.field "SupportedEngineModes" .supportedEngineModes engineModeListCodec
        |> Codec.field "SupportedCharacterSets" .supportedCharacterSets supportedCharacterSetsListCodec
        |> Codec.field "Status" .status Codec.string
        |> Codec.field "ExportableLogTypes" .exportableLogTypes logTypeListCodec
        |> Codec.field "EngineVersion" .engineVersion Codec.string
        |> Codec.field "Engine" .engine Codec.string
        |> Codec.field "DefaultCharacterSet" .defaultCharacterSet characterSetCodec
        |> Codec.field "DBParameterGroupFamily" .dbparameterGroupFamily Codec.string
        |> Codec.field "DBEngineVersionDescription" .dbengineVersionDescription Codec.string
        |> Codec.field "DBEngineDescription" .dbengineDescription Codec.string
        |> Codec.buildObject


{-| Codec for DbclusterSnapshotMessage. -}
dbclusterSnapshotMessageCodec : Codec DbclusterSnapshotMessage
dbclusterSnapshotMessageCodec =
    Codec.object DbclusterSnapshotMessage
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "DBClusterSnapshots" .dbclusterSnapshots dbclusterSnapshotListCodec
        |> Codec.buildObject


{-| Codec for DbclusterSnapshotList. -}
dbclusterSnapshotListCodec : Codec DbclusterSnapshotList
dbclusterSnapshotListCodec =
    Codec.list dbclusterSnapshotCodec


{-| Codec for DbclusterSnapshotAttributesResult. -}
dbclusterSnapshotAttributesResultCodec : Codec DbclusterSnapshotAttributesResult
dbclusterSnapshotAttributesResultCodec =
    Codec.object DbclusterSnapshotAttributesResult
        |> Codec.field "DBClusterSnapshotIdentifier" .dbclusterSnapshotIdentifier Codec.string
        |> Codec.field "DBClusterSnapshotAttributes" .dbclusterSnapshotAttributes dbclusterSnapshotAttributeListCodec
        |> Codec.buildObject


{-| Codec for DbclusterSnapshotAttributeList. -}
dbclusterSnapshotAttributeListCodec : Codec DbclusterSnapshotAttributeList
dbclusterSnapshotAttributeListCodec =
    Codec.list dbclusterSnapshotAttributeCodec


{-| Codec for DbclusterSnapshotAttribute. -}
dbclusterSnapshotAttributeCodec : Codec DbclusterSnapshotAttribute
dbclusterSnapshotAttributeCodec =
    Codec.object DbclusterSnapshotAttribute
        |> Codec.field "AttributeValues" .attributeValues attributeValueListCodec
        |> Codec.field "AttributeName" .attributeName Codec.string
        |> Codec.buildObject


{-| Codec for DbclusterSnapshot. -}
dbclusterSnapshotCodec : Codec DbclusterSnapshot
dbclusterSnapshotCodec =
    Codec.object DbclusterSnapshot
        |> Codec.field "VpcId" .vpcId Codec.string
        |> Codec.field "StorageEncrypted" .storageEncrypted Codec.bool
        |> Codec.field "Status" .status Codec.string
        |> Codec.field "SourceDBClusterSnapshotArn" .sourceDbclusterSnapshotArn Codec.string
        |> Codec.field "SnapshotType" .snapshotType Codec.string
        |> Codec.field "SnapshotCreateTime" .snapshotCreateTime tstampCodec
        |> Codec.field "Port" .port Codec.int
        |> Codec.field "PercentProgress" .percentProgress Codec.int
        |> Codec.field "MasterUsername" .masterUsername Codec.string
        |> Codec.field "LicenseModel" .licenseModel Codec.string
        |> Codec.field "KmsKeyId" .kmsKeyId Codec.string
        |> Codec.field "IAMDatabaseAuthenticationEnabled" .iamdatabaseAuthenticationEnabled Codec.bool
        |> Codec.field "EngineVersion" .engineVersion Codec.string
        |> Codec.field "Engine" .engine Codec.string
        |> Codec.field "DBClusterSnapshotIdentifier" .dbclusterSnapshotIdentifier Codec.string
        |> Codec.field "DBClusterSnapshotArn" .dbclusterSnapshotArn Codec.string
        |> Codec.field "DBClusterIdentifier" .dbclusterIdentifier Codec.string
        |> Codec.field "ClusterCreateTime" .clusterCreateTime tstampCodec
        |> Codec.field "AvailabilityZones" .availabilityZones availabilityZonesCodec
        |> Codec.field "AllocatedStorage" .allocatedStorage Codec.int
        |> Codec.buildObject


{-| Codec for DbclusterRoles. -}
dbclusterRolesCodec : Codec DbclusterRoles
dbclusterRolesCodec =
    Codec.list dbclusterRoleCodec


{-| Codec for DbclusterRole. -}
dbclusterRoleCodec : Codec DbclusterRole
dbclusterRoleCodec =
    Codec.object DbclusterRole
        |> Codec.field "Status" .status Codec.string
        |> Codec.field "RoleArn" .roleArn Codec.string
        |> Codec.field "FeatureName" .featureName Codec.string
        |> Codec.buildObject


{-| Codec for DbclusterParameterGroupsMessage. -}
dbclusterParameterGroupsMessageCodec : Codec DbclusterParameterGroupsMessage
dbclusterParameterGroupsMessageCodec =
    Codec.object DbclusterParameterGroupsMessage
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "DBClusterParameterGroups" .dbclusterParameterGroups dbclusterParameterGroupListCodec
        |> Codec.buildObject


{-| Codec for DbclusterParameterGroupNameMessage. -}
dbclusterParameterGroupNameMessageCodec : Codec DbclusterParameterGroupNameMessage
dbclusterParameterGroupNameMessageCodec =
    Codec.object DbclusterParameterGroupNameMessage
        |> Codec.field "DBClusterParameterGroupName" .dbclusterParameterGroupName Codec.string
        |> Codec.buildObject


{-| Codec for DbclusterParameterGroupList. -}
dbclusterParameterGroupListCodec : Codec DbclusterParameterGroupList
dbclusterParameterGroupListCodec =
    Codec.list dbclusterParameterGroupCodec


{-| Codec for DbclusterParameterGroupDetails. -}
dbclusterParameterGroupDetailsCodec : Codec DbclusterParameterGroupDetails
dbclusterParameterGroupDetailsCodec =
    Codec.object DbclusterParameterGroupDetails
        |> Codec.field "Parameters" .parameters parametersListCodec
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.buildObject


{-| Codec for DbclusterParameterGroup. -}
dbclusterParameterGroupCodec : Codec DbclusterParameterGroup
dbclusterParameterGroupCodec =
    Codec.object DbclusterParameterGroup
        |> Codec.field "Description" .description Codec.string
        |> Codec.field "DBParameterGroupFamily" .dbparameterGroupFamily Codec.string
        |> Codec.field "DBClusterParameterGroupName" .dbclusterParameterGroupName Codec.string
        |> Codec.field "DBClusterParameterGroupArn" .dbclusterParameterGroupArn Codec.string
        |> Codec.buildObject


{-| Codec for DbclusterOptionGroupStatus. -}
dbclusterOptionGroupStatusCodec : Codec DbclusterOptionGroupStatus
dbclusterOptionGroupStatusCodec =
    Codec.object DbclusterOptionGroupStatus
        |> Codec.field "Status" .status Codec.string
        |> Codec.field "DBClusterOptionGroupName" .dbclusterOptionGroupName Codec.string
        |> Codec.buildObject


{-| Codec for DbclusterOptionGroupMemberships. -}
dbclusterOptionGroupMembershipsCodec : Codec DbclusterOptionGroupMemberships
dbclusterOptionGroupMembershipsCodec =
    Codec.list dbclusterOptionGroupStatusCodec


{-| Codec for DbclusterMessage. -}
dbclusterMessageCodec : Codec DbclusterMessage
dbclusterMessageCodec =
    Codec.object DbclusterMessage
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "DBClusters" .dbclusters dbclusterListCodec
        |> Codec.buildObject


{-| Codec for DbclusterMemberList. -}
dbclusterMemberListCodec : Codec DbclusterMemberList
dbclusterMemberListCodec =
    Codec.list dbclusterMemberCodec


{-| Codec for DbclusterMember. -}
dbclusterMemberCodec : Codec DbclusterMember
dbclusterMemberCodec =
    Codec.object DbclusterMember
        |> Codec.field "PromotionTier" .promotionTier Codec.int
        |> Codec.field "IsClusterWriter" .isClusterWriter Codec.bool
        |> Codec.field "DBInstanceIdentifier" .dbinstanceIdentifier Codec.string
        |> Codec.field "DBClusterParameterGroupStatus" .dbclusterParameterGroupStatus Codec.string
        |> Codec.buildObject


{-| Codec for DbclusterList. -}
dbclusterListCodec : Codec DbclusterList
dbclusterListCodec =
    Codec.list dbclusterCodec


{-| Codec for DbclusterEndpointMessage. -}
dbclusterEndpointMessageCodec : Codec DbclusterEndpointMessage
dbclusterEndpointMessageCodec =
    Codec.object DbclusterEndpointMessage
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "DBClusterEndpoints" .dbclusterEndpoints dbclusterEndpointListCodec
        |> Codec.buildObject


{-| Codec for DbclusterEndpointList. -}
dbclusterEndpointListCodec : Codec DbclusterEndpointList
dbclusterEndpointListCodec =
    Codec.list dbclusterEndpointCodec


{-| Codec for DbclusterEndpoint. -}
dbclusterEndpointCodec : Codec DbclusterEndpoint
dbclusterEndpointCodec =
    Codec.object DbclusterEndpoint
        |> Codec.field "Status" .status Codec.string
        |> Codec.field "StaticMembers" .staticMembers stringListCodec
        |> Codec.field "ExcludedMembers" .excludedMembers stringListCodec
        |> Codec.field "EndpointType" .endpointType Codec.string
        |> Codec.field "Endpoint" .endpoint Codec.string
        |> Codec.field "DBClusterIdentifier" .dbclusterIdentifier Codec.string
        |> Codec.field "DBClusterEndpointResourceIdentifier" .dbclusterEndpointResourceIdentifier Codec.string
        |> Codec.field "DBClusterEndpointIdentifier" .dbclusterEndpointIdentifier Codec.string
        |> Codec.field "DBClusterEndpointArn" .dbclusterEndpointArn Codec.string
        |> Codec.field "CustomEndpointType" .customEndpointType Codec.string
        |> Codec.buildObject


{-| Codec for DbclusterCapacityInfo. -}
dbclusterCapacityInfoCodec : Codec DbclusterCapacityInfo
dbclusterCapacityInfoCodec =
    Codec.object DbclusterCapacityInfo
        |> Codec.field "TimeoutAction" .timeoutAction Codec.string
        |> Codec.field "SecondsBeforeTimeout" .secondsBeforeTimeout Codec.int
        |> Codec.field "PendingCapacity" .pendingCapacity Codec.int
        |> Codec.field "DBClusterIdentifier" .dbclusterIdentifier Codec.string
        |> Codec.field "CurrentCapacity" .currentCapacity Codec.int
        |> Codec.buildObject


{-| Codec for DbclusterBacktrackMessage. -}
dbclusterBacktrackMessageCodec : Codec DbclusterBacktrackMessage
dbclusterBacktrackMessageCodec =
    Codec.object DbclusterBacktrackMessage
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "DBClusterBacktracks" .dbclusterBacktracks dbclusterBacktrackListCodec
        |> Codec.buildObject


{-| Codec for DbclusterBacktrackList. -}
dbclusterBacktrackListCodec : Codec DbclusterBacktrackList
dbclusterBacktrackListCodec =
    Codec.list dbclusterBacktrackCodec


{-| Codec for DbclusterBacktrack. -}
dbclusterBacktrackCodec : Codec DbclusterBacktrack
dbclusterBacktrackCodec =
    Codec.object DbclusterBacktrack
        |> Codec.field "Status" .status Codec.string
        |> Codec.field "DBClusterIdentifier" .dbclusterIdentifier Codec.string
        |> Codec.field "BacktrackedFrom" .backtrackedFrom tstampCodec
        |> Codec.field "BacktrackTo" .backtrackTo tstampCodec
        |> Codec.field "BacktrackRequestCreationTime" .backtrackRequestCreationTime tstampCodec
        |> Codec.field "BacktrackIdentifier" .backtrackIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for Dbcluster. -}
dbclusterCodec : Codec Dbcluster
dbclusterCodec =
    Codec.object Dbcluster
        |> Codec.field "VpcSecurityGroups" .vpcSecurityGroups vpcSecurityGroupMembershipListCodec
        |> Codec.field "StorageEncrypted" .storageEncrypted Codec.bool
        |> Codec.field "Status" .status Codec.string
        |> Codec.field "ScalingConfigurationInfo" .scalingConfigurationInfo scalingConfigurationInfoCodec
        |> Codec.field "ReplicationSourceIdentifier" .replicationSourceIdentifier Codec.string
        |> Codec.field "ReaderEndpoint" .readerEndpoint Codec.string
        |> Codec.field "ReadReplicaIdentifiers" .readReplicaIdentifiers readReplicaIdentifierListCodec
        |> Codec.field "PreferredMaintenanceWindow" .preferredMaintenanceWindow Codec.string
        |> Codec.field "PreferredBackupWindow" .preferredBackupWindow Codec.string
        |> Codec.field "Port" .port Codec.int
        |> Codec.field "PercentProgress" .percentProgress Codec.string
        |> Codec.field "MultiAZ" .multiAz Codec.bool
        |> Codec.field "MasterUsername" .masterUsername Codec.string
        |> Codec.field "LatestRestorableTime" .latestRestorableTime tstampCodec
        |> Codec.field "KmsKeyId" .kmsKeyId Codec.string
        |> Codec.field "IAMDatabaseAuthenticationEnabled" .iamdatabaseAuthenticationEnabled Codec.bool
        |> Codec.field "HttpEndpointEnabled" .httpEndpointEnabled Codec.bool
        |> Codec.field "HostedZoneId" .hostedZoneId Codec.string
        |> Codec.field "EngineVersion" .engineVersion Codec.string
        |> Codec.field "EngineMode" .engineMode Codec.string
        |> Codec.field "Engine" .engine Codec.string
        |> Codec.field "Endpoint" .endpoint Codec.string
        |> Codec.field "EnabledCloudwatchLogsExports" .enabledCloudwatchLogsExports logTypeListCodec
        |> Codec.field "EarliestRestorableTime" .earliestRestorableTime tstampCodec
        |> Codec.field "EarliestBacktrackTime" .earliestBacktrackTime tstampCodec
        |> Codec.field "DeletionProtection" .deletionProtection Codec.bool
        |> Codec.field "DbClusterResourceId" .dbClusterResourceId Codec.string
        |> Codec.field "DatabaseName" .databaseName Codec.string
        |> Codec.field "DBSubnetGroup" .dbsubnetGroup Codec.string
        |> Codec.field "DBClusterParameterGroup" .dbclusterParameterGroup Codec.string
        |> Codec.field
            "DBClusterOptionGroupMemberships"
            .dbclusterOptionGroupMemberships
            dbclusterOptionGroupMembershipsCodec
        |> Codec.field "DBClusterMembers" .dbclusterMembers dbclusterMemberListCodec
        |> Codec.field "DBClusterIdentifier" .dbclusterIdentifier Codec.string
        |> Codec.field "DBClusterArn" .dbclusterArn Codec.string
        |> Codec.field "CustomEndpoints" .customEndpoints stringListCodec
        |> Codec.field "CrossAccountClone" .crossAccountClone Codec.bool
        |> Codec.field "CopyTagsToSnapshot" .copyTagsToSnapshot Codec.bool
        |> Codec.field "ClusterCreateTime" .clusterCreateTime tstampCodec
        |> Codec.field "CloneGroupId" .cloneGroupId Codec.string
        |> Codec.field "CharacterSetName" .characterSetName Codec.string
        |> Codec.field "Capacity" .capacity Codec.int
        |> Codec.field "BackupRetentionPeriod" .backupRetentionPeriod Codec.int
        |> Codec.field "BacktrackWindow" .backtrackWindow Codec.int
        |> Codec.field "BacktrackConsumedChangeRecords" .backtrackConsumedChangeRecords Codec.int
        |> Codec.field "AvailabilityZones" .availabilityZones availabilityZonesCodec
        |> Codec.field "AssociatedRoles" .associatedRoles dbclusterRolesCodec
        |> Codec.field "AllocatedStorage" .allocatedStorage Codec.int
        |> Codec.field "ActivityStreamStatus" .activityStreamStatus activityStreamStatusCodec
        |> Codec.field "ActivityStreamMode" .activityStreamMode activityStreamModeCodec
        |> Codec.field "ActivityStreamKmsKeyId" .activityStreamKmsKeyId Codec.string
        |> Codec.field "ActivityStreamKinesisStreamName" .activityStreamKinesisStreamName Codec.string
        |> Codec.buildObject


{-| Codec for CreateOptionGroupResult. -}
createOptionGroupResultCodec : Codec CreateOptionGroupResult
createOptionGroupResultCodec =
    Codec.object CreateOptionGroupResult |> Codec.field "OptionGroup" .optionGroup optionGroupCodec |> Codec.buildObject


{-| Codec for CreateOptionGroupMessage. -}
createOptionGroupMessageCodec : Codec CreateOptionGroupMessage
createOptionGroupMessageCodec =
    Codec.object CreateOptionGroupMessage
        |> Codec.field "Tags" .tags tagListCodec
        |> Codec.field "OptionGroupName" .optionGroupName Codec.string
        |> Codec.field "OptionGroupDescription" .optionGroupDescription Codec.string
        |> Codec.field "MajorEngineVersion" .majorEngineVersion Codec.string
        |> Codec.field "EngineName" .engineName Codec.string
        |> Codec.buildObject


{-| Codec for CreateGlobalClusterResult. -}
createGlobalClusterResultCodec : Codec CreateGlobalClusterResult
createGlobalClusterResultCodec =
    Codec.object CreateGlobalClusterResult
        |> Codec.field "GlobalCluster" .globalCluster globalClusterCodec
        |> Codec.buildObject


{-| Codec for CreateGlobalClusterMessage. -}
createGlobalClusterMessageCodec : Codec CreateGlobalClusterMessage
createGlobalClusterMessageCodec =
    Codec.object CreateGlobalClusterMessage
        |> Codec.field "StorageEncrypted" .storageEncrypted Codec.bool
        |> Codec.field "SourceDBClusterIdentifier" .sourceDbclusterIdentifier Codec.string
        |> Codec.field "GlobalClusterIdentifier" .globalClusterIdentifier Codec.string
        |> Codec.field "EngineVersion" .engineVersion Codec.string
        |> Codec.field "Engine" .engine Codec.string
        |> Codec.field "DeletionProtection" .deletionProtection Codec.bool
        |> Codec.field "DatabaseName" .databaseName Codec.string
        |> Codec.buildObject


{-| Codec for CreateEventSubscriptionResult. -}
createEventSubscriptionResultCodec : Codec CreateEventSubscriptionResult
createEventSubscriptionResultCodec =
    Codec.object CreateEventSubscriptionResult
        |> Codec.field "EventSubscription" .eventSubscription eventSubscriptionCodec
        |> Codec.buildObject


{-| Codec for CreateEventSubscriptionMessage. -}
createEventSubscriptionMessageCodec : Codec CreateEventSubscriptionMessage
createEventSubscriptionMessageCodec =
    Codec.object CreateEventSubscriptionMessage
        |> Codec.field "Tags" .tags tagListCodec
        |> Codec.field "SubscriptionName" .subscriptionName Codec.string
        |> Codec.field "SourceType" .sourceType Codec.string
        |> Codec.field "SourceIds" .sourceIds sourceIdsListCodec
        |> Codec.field "SnsTopicArn" .snsTopicArn Codec.string
        |> Codec.field "EventCategories" .eventCategories eventCategoriesListCodec
        |> Codec.field "Enabled" .enabled Codec.bool
        |> Codec.buildObject


{-| Codec for CreateDbsubnetGroupResult. -}
createDbsubnetGroupResultCodec : Codec CreateDbsubnetGroupResult
createDbsubnetGroupResultCodec =
    Codec.object CreateDbsubnetGroupResult
        |> Codec.field "DBSubnetGroup" .dbsubnetGroup dbsubnetGroupCodec
        |> Codec.buildObject


{-| Codec for CreateDbsubnetGroupMessage. -}
createDbsubnetGroupMessageCodec : Codec CreateDbsubnetGroupMessage
createDbsubnetGroupMessageCodec =
    Codec.object CreateDbsubnetGroupMessage
        |> Codec.field "Tags" .tags tagListCodec
        |> Codec.field "SubnetIds" .subnetIds subnetIdentifierListCodec
        |> Codec.field "DBSubnetGroupName" .dbsubnetGroupName Codec.string
        |> Codec.field "DBSubnetGroupDescription" .dbsubnetGroupDescription Codec.string
        |> Codec.buildObject


{-| Codec for CreateDbsnapshotResult. -}
createDbsnapshotResultCodec : Codec CreateDbsnapshotResult
createDbsnapshotResultCodec =
    Codec.object CreateDbsnapshotResult |> Codec.field "DBSnapshot" .dbsnapshot dbsnapshotCodec |> Codec.buildObject


{-| Codec for CreateDbsnapshotMessage. -}
createDbsnapshotMessageCodec : Codec CreateDbsnapshotMessage
createDbsnapshotMessageCodec =
    Codec.object CreateDbsnapshotMessage
        |> Codec.field "Tags" .tags tagListCodec
        |> Codec.field "DBSnapshotIdentifier" .dbsnapshotIdentifier Codec.string
        |> Codec.field "DBInstanceIdentifier" .dbinstanceIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for CreateDbsecurityGroupResult. -}
createDbsecurityGroupResultCodec : Codec CreateDbsecurityGroupResult
createDbsecurityGroupResultCodec =
    Codec.object CreateDbsecurityGroupResult
        |> Codec.field "DBSecurityGroup" .dbsecurityGroup dbsecurityGroupCodec
        |> Codec.buildObject


{-| Codec for CreateDbsecurityGroupMessage. -}
createDbsecurityGroupMessageCodec : Codec CreateDbsecurityGroupMessage
createDbsecurityGroupMessageCodec =
    Codec.object CreateDbsecurityGroupMessage
        |> Codec.field "Tags" .tags tagListCodec
        |> Codec.field "DBSecurityGroupName" .dbsecurityGroupName Codec.string
        |> Codec.field "DBSecurityGroupDescription" .dbsecurityGroupDescription Codec.string
        |> Codec.buildObject


{-| Codec for CreateDbparameterGroupResult. -}
createDbparameterGroupResultCodec : Codec CreateDbparameterGroupResult
createDbparameterGroupResultCodec =
    Codec.object CreateDbparameterGroupResult
        |> Codec.field "DBParameterGroup" .dbparameterGroup dbparameterGroupCodec
        |> Codec.buildObject


{-| Codec for CreateDbparameterGroupMessage. -}
createDbparameterGroupMessageCodec : Codec CreateDbparameterGroupMessage
createDbparameterGroupMessageCodec =
    Codec.object CreateDbparameterGroupMessage
        |> Codec.field "Tags" .tags tagListCodec
        |> Codec.field "Description" .description Codec.string
        |> Codec.field "DBParameterGroupName" .dbparameterGroupName Codec.string
        |> Codec.field "DBParameterGroupFamily" .dbparameterGroupFamily Codec.string
        |> Codec.buildObject


{-| Codec for CreateDbinstanceResult. -}
createDbinstanceResultCodec : Codec CreateDbinstanceResult
createDbinstanceResultCodec =
    Codec.object CreateDbinstanceResult |> Codec.field "DBInstance" .dbinstance dbinstanceCodec |> Codec.buildObject


{-| Codec for CreateDbinstanceReadReplicaResult. -}
createDbinstanceReadReplicaResultCodec : Codec CreateDbinstanceReadReplicaResult
createDbinstanceReadReplicaResultCodec =
    Codec.object CreateDbinstanceReadReplicaResult
        |> Codec.field "DBInstance" .dbinstance dbinstanceCodec
        |> Codec.buildObject


{-| Codec for CreateDbinstanceReadReplicaMessage. -}
createDbinstanceReadReplicaMessageCodec : Codec CreateDbinstanceReadReplicaMessage
createDbinstanceReadReplicaMessageCodec =
    Codec.object CreateDbinstanceReadReplicaMessage
        |> Codec.field "VpcSecurityGroupIds" .vpcSecurityGroupIds vpcSecurityGroupIdListCodec
        |> Codec.field "UseDefaultProcessorFeatures" .useDefaultProcessorFeatures Codec.bool
        |> Codec.field "Tags" .tags tagListCodec
        |> Codec.field "StorageType" .storageType Codec.string
        |> Codec.field "SourceRegion" .sourceRegion Codec.string
        |> Codec.field "SourceDBInstanceIdentifier" .sourceDbinstanceIdentifier Codec.string
        |> Codec.field "PubliclyAccessible" .publiclyAccessible Codec.bool
        |> Codec.field "ProcessorFeatures" .processorFeatures processorFeatureListCodec
        |> Codec.field "PreSignedUrl" .preSignedUrl Codec.string
        |> Codec.field "Port" .port Codec.int
        |> Codec.field "PerformanceInsightsRetentionPeriod" .performanceInsightsRetentionPeriod Codec.int
        |> Codec.field "PerformanceInsightsKMSKeyId" .performanceInsightsKmskeyId Codec.string
        |> Codec.field "OptionGroupName" .optionGroupName Codec.string
        |> Codec.field "MultiAZ" .multiAz Codec.bool
        |> Codec.field "MonitoringRoleArn" .monitoringRoleArn Codec.string
        |> Codec.field "MonitoringInterval" .monitoringInterval Codec.int
        |> Codec.field "KmsKeyId" .kmsKeyId Codec.string
        |> Codec.field "Iops" .iops Codec.int
        |> Codec.field "EnablePerformanceInsights" .enablePerformanceInsights Codec.bool
        |> Codec.field "EnableIAMDatabaseAuthentication" .enableIamdatabaseAuthentication Codec.bool
        |> Codec.field "EnableCloudwatchLogsExports" .enableCloudwatchLogsExports logTypeListCodec
        |> Codec.field "DeletionProtection" .deletionProtection Codec.bool
        |> Codec.field "DBSubnetGroupName" .dbsubnetGroupName Codec.string
        |> Codec.field "DBInstanceIdentifier" .dbinstanceIdentifier Codec.string
        |> Codec.field "DBInstanceClass" .dbinstanceClass Codec.string
        |> Codec.field "CopyTagsToSnapshot" .copyTagsToSnapshot Codec.bool
        |> Codec.field "AvailabilityZone" .availabilityZone Codec.string
        |> Codec.field "AutoMinorVersionUpgrade" .autoMinorVersionUpgrade Codec.bool
        |> Codec.buildObject


{-| Codec for CreateDbinstanceMessage. -}
createDbinstanceMessageCodec : Codec CreateDbinstanceMessage
createDbinstanceMessageCodec =
    Codec.object CreateDbinstanceMessage
        |> Codec.field "VpcSecurityGroupIds" .vpcSecurityGroupIds vpcSecurityGroupIdListCodec
        |> Codec.field "Timezone" .timezone Codec.string
        |> Codec.field "TdeCredentialPassword" .tdeCredentialPassword Codec.string
        |> Codec.field "TdeCredentialArn" .tdeCredentialArn Codec.string
        |> Codec.field "Tags" .tags tagListCodec
        |> Codec.field "StorageType" .storageType Codec.string
        |> Codec.field "StorageEncrypted" .storageEncrypted Codec.bool
        |> Codec.field "PubliclyAccessible" .publiclyAccessible Codec.bool
        |> Codec.field "PromotionTier" .promotionTier Codec.int
        |> Codec.field "ProcessorFeatures" .processorFeatures processorFeatureListCodec
        |> Codec.field "PreferredMaintenanceWindow" .preferredMaintenanceWindow Codec.string
        |> Codec.field "PreferredBackupWindow" .preferredBackupWindow Codec.string
        |> Codec.field "Port" .port Codec.int
        |> Codec.field "PerformanceInsightsRetentionPeriod" .performanceInsightsRetentionPeriod Codec.int
        |> Codec.field "PerformanceInsightsKMSKeyId" .performanceInsightsKmskeyId Codec.string
        |> Codec.field "OptionGroupName" .optionGroupName Codec.string
        |> Codec.field "MultiAZ" .multiAz Codec.bool
        |> Codec.field "MonitoringRoleArn" .monitoringRoleArn Codec.string
        |> Codec.field "MonitoringInterval" .monitoringInterval Codec.int
        |> Codec.field "MaxAllocatedStorage" .maxAllocatedStorage Codec.int
        |> Codec.field "MasterUsername" .masterUsername Codec.string
        |> Codec.field "MasterUserPassword" .masterUserPassword Codec.string
        |> Codec.field "LicenseModel" .licenseModel Codec.string
        |> Codec.field "KmsKeyId" .kmsKeyId Codec.string
        |> Codec.field "Iops" .iops Codec.int
        |> Codec.field "EngineVersion" .engineVersion Codec.string
        |> Codec.field "Engine" .engine Codec.string
        |> Codec.field "EnablePerformanceInsights" .enablePerformanceInsights Codec.bool
        |> Codec.field "EnableIAMDatabaseAuthentication" .enableIamdatabaseAuthentication Codec.bool
        |> Codec.field "EnableCloudwatchLogsExports" .enableCloudwatchLogsExports logTypeListCodec
        |> Codec.field "DomainIAMRoleName" .domainIamroleName Codec.string
        |> Codec.field "Domain" .domain Codec.string
        |> Codec.field "DeletionProtection" .deletionProtection Codec.bool
        |> Codec.field "DBSubnetGroupName" .dbsubnetGroupName Codec.string
        |> Codec.field "DBSecurityGroups" .dbsecurityGroups dbsecurityGroupNameListCodec
        |> Codec.field "DBParameterGroupName" .dbparameterGroupName Codec.string
        |> Codec.field "DBName" .dbname Codec.string
        |> Codec.field "DBInstanceIdentifier" .dbinstanceIdentifier Codec.string
        |> Codec.field "DBInstanceClass" .dbinstanceClass Codec.string
        |> Codec.field "DBClusterIdentifier" .dbclusterIdentifier Codec.string
        |> Codec.field "CopyTagsToSnapshot" .copyTagsToSnapshot Codec.bool
        |> Codec.field "CharacterSetName" .characterSetName Codec.string
        |> Codec.field "BackupRetentionPeriod" .backupRetentionPeriod Codec.int
        |> Codec.field "AvailabilityZone" .availabilityZone Codec.string
        |> Codec.field "AutoMinorVersionUpgrade" .autoMinorVersionUpgrade Codec.bool
        |> Codec.field "AllocatedStorage" .allocatedStorage Codec.int
        |> Codec.buildObject


{-| Codec for CreateDbclusterSnapshotResult. -}
createDbclusterSnapshotResultCodec : Codec CreateDbclusterSnapshotResult
createDbclusterSnapshotResultCodec =
    Codec.object CreateDbclusterSnapshotResult
        |> Codec.field "DBClusterSnapshot" .dbclusterSnapshot dbclusterSnapshotCodec
        |> Codec.buildObject


{-| Codec for CreateDbclusterSnapshotMessage. -}
createDbclusterSnapshotMessageCodec : Codec CreateDbclusterSnapshotMessage
createDbclusterSnapshotMessageCodec =
    Codec.object CreateDbclusterSnapshotMessage
        |> Codec.field "Tags" .tags tagListCodec
        |> Codec.field "DBClusterSnapshotIdentifier" .dbclusterSnapshotIdentifier Codec.string
        |> Codec.field "DBClusterIdentifier" .dbclusterIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for CreateDbclusterResult. -}
createDbclusterResultCodec : Codec CreateDbclusterResult
createDbclusterResultCodec =
    Codec.object CreateDbclusterResult |> Codec.field "DBCluster" .dbcluster dbclusterCodec |> Codec.buildObject


{-| Codec for CreateDbclusterParameterGroupResult. -}
createDbclusterParameterGroupResultCodec : Codec CreateDbclusterParameterGroupResult
createDbclusterParameterGroupResultCodec =
    Codec.object CreateDbclusterParameterGroupResult
        |> Codec.field "DBClusterParameterGroup" .dbclusterParameterGroup dbclusterParameterGroupCodec
        |> Codec.buildObject


{-| Codec for CreateDbclusterParameterGroupMessage. -}
createDbclusterParameterGroupMessageCodec : Codec CreateDbclusterParameterGroupMessage
createDbclusterParameterGroupMessageCodec =
    Codec.object CreateDbclusterParameterGroupMessage
        |> Codec.field "Tags" .tags tagListCodec
        |> Codec.field "Description" .description Codec.string
        |> Codec.field "DBParameterGroupFamily" .dbparameterGroupFamily Codec.string
        |> Codec.field "DBClusterParameterGroupName" .dbclusterParameterGroupName Codec.string
        |> Codec.buildObject


{-| Codec for CreateDbclusterMessage. -}
createDbclusterMessageCodec : Codec CreateDbclusterMessage
createDbclusterMessageCodec =
    Codec.object CreateDbclusterMessage
        |> Codec.field "VpcSecurityGroupIds" .vpcSecurityGroupIds vpcSecurityGroupIdListCodec
        |> Codec.field "Tags" .tags tagListCodec
        |> Codec.field "StorageEncrypted" .storageEncrypted Codec.bool
        |> Codec.field "SourceRegion" .sourceRegion Codec.string
        |> Codec.field "ScalingConfiguration" .scalingConfiguration scalingConfigurationCodec
        |> Codec.field "ReplicationSourceIdentifier" .replicationSourceIdentifier Codec.string
        |> Codec.field "PreferredMaintenanceWindow" .preferredMaintenanceWindow Codec.string
        |> Codec.field "PreferredBackupWindow" .preferredBackupWindow Codec.string
        |> Codec.field "PreSignedUrl" .preSignedUrl Codec.string
        |> Codec.field "Port" .port Codec.int
        |> Codec.field "OptionGroupName" .optionGroupName Codec.string
        |> Codec.field "MasterUsername" .masterUsername Codec.string
        |> Codec.field "MasterUserPassword" .masterUserPassword Codec.string
        |> Codec.field "KmsKeyId" .kmsKeyId Codec.string
        |> Codec.field "GlobalClusterIdentifier" .globalClusterIdentifier Codec.string
        |> Codec.field "EngineVersion" .engineVersion Codec.string
        |> Codec.field "EngineMode" .engineMode Codec.string
        |> Codec.field "Engine" .engine Codec.string
        |> Codec.field "EnableIAMDatabaseAuthentication" .enableIamdatabaseAuthentication Codec.bool
        |> Codec.field "EnableCloudwatchLogsExports" .enableCloudwatchLogsExports logTypeListCodec
        |> Codec.field "DeletionProtection" .deletionProtection Codec.bool
        |> Codec.field "DatabaseName" .databaseName Codec.string
        |> Codec.field "DBSubnetGroupName" .dbsubnetGroupName Codec.string
        |> Codec.field "DBClusterParameterGroupName" .dbclusterParameterGroupName Codec.string
        |> Codec.field "DBClusterIdentifier" .dbclusterIdentifier Codec.string
        |> Codec.field "CopyTagsToSnapshot" .copyTagsToSnapshot Codec.bool
        |> Codec.field "CharacterSetName" .characterSetName Codec.string
        |> Codec.field "BackupRetentionPeriod" .backupRetentionPeriod Codec.int
        |> Codec.field "BacktrackWindow" .backtrackWindow Codec.int
        |> Codec.field "AvailabilityZones" .availabilityZones availabilityZonesCodec
        |> Codec.buildObject


{-| Codec for CreateDbclusterEndpointMessage. -}
createDbclusterEndpointMessageCodec : Codec CreateDbclusterEndpointMessage
createDbclusterEndpointMessageCodec =
    Codec.object CreateDbclusterEndpointMessage
        |> Codec.field "StaticMembers" .staticMembers stringListCodec
        |> Codec.field "ExcludedMembers" .excludedMembers stringListCodec
        |> Codec.field "EndpointType" .endpointType Codec.string
        |> Codec.field "DBClusterIdentifier" .dbclusterIdentifier Codec.string
        |> Codec.field "DBClusterEndpointIdentifier" .dbclusterEndpointIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for CopyOptionGroupResult. -}
copyOptionGroupResultCodec : Codec CopyOptionGroupResult
copyOptionGroupResultCodec =
    Codec.object CopyOptionGroupResult |> Codec.field "OptionGroup" .optionGroup optionGroupCodec |> Codec.buildObject


{-| Codec for CopyOptionGroupMessage. -}
copyOptionGroupMessageCodec : Codec CopyOptionGroupMessage
copyOptionGroupMessageCodec =
    Codec.object CopyOptionGroupMessage
        |> Codec.field "TargetOptionGroupIdentifier" .targetOptionGroupIdentifier Codec.string
        |> Codec.field "TargetOptionGroupDescription" .targetOptionGroupDescription Codec.string
        |> Codec.field "Tags" .tags tagListCodec
        |> Codec.field "SourceOptionGroupIdentifier" .sourceOptionGroupIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for CopyDbsnapshotResult. -}
copyDbsnapshotResultCodec : Codec CopyDbsnapshotResult
copyDbsnapshotResultCodec =
    Codec.object CopyDbsnapshotResult |> Codec.field "DBSnapshot" .dbsnapshot dbsnapshotCodec |> Codec.buildObject


{-| Codec for CopyDbsnapshotMessage. -}
copyDbsnapshotMessageCodec : Codec CopyDbsnapshotMessage
copyDbsnapshotMessageCodec =
    Codec.object CopyDbsnapshotMessage
        |> Codec.field "TargetDBSnapshotIdentifier" .targetDbsnapshotIdentifier Codec.string
        |> Codec.field "Tags" .tags tagListCodec
        |> Codec.field "SourceRegion" .sourceRegion Codec.string
        |> Codec.field "SourceDBSnapshotIdentifier" .sourceDbsnapshotIdentifier Codec.string
        |> Codec.field "PreSignedUrl" .preSignedUrl Codec.string
        |> Codec.field "OptionGroupName" .optionGroupName Codec.string
        |> Codec.field "KmsKeyId" .kmsKeyId Codec.string
        |> Codec.field "CopyTags" .copyTags Codec.bool
        |> Codec.buildObject


{-| Codec for CopyDbparameterGroupResult. -}
copyDbparameterGroupResultCodec : Codec CopyDbparameterGroupResult
copyDbparameterGroupResultCodec =
    Codec.object CopyDbparameterGroupResult
        |> Codec.field "DBParameterGroup" .dbparameterGroup dbparameterGroupCodec
        |> Codec.buildObject


{-| Codec for CopyDbparameterGroupMessage. -}
copyDbparameterGroupMessageCodec : Codec CopyDbparameterGroupMessage
copyDbparameterGroupMessageCodec =
    Codec.object CopyDbparameterGroupMessage
        |> Codec.field "TargetDBParameterGroupIdentifier" .targetDbparameterGroupIdentifier Codec.string
        |> Codec.field "TargetDBParameterGroupDescription" .targetDbparameterGroupDescription Codec.string
        |> Codec.field "Tags" .tags tagListCodec
        |> Codec.field "SourceDBParameterGroupIdentifier" .sourceDbparameterGroupIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for CopyDbclusterSnapshotResult. -}
copyDbclusterSnapshotResultCodec : Codec CopyDbclusterSnapshotResult
copyDbclusterSnapshotResultCodec =
    Codec.object CopyDbclusterSnapshotResult
        |> Codec.field "DBClusterSnapshot" .dbclusterSnapshot dbclusterSnapshotCodec
        |> Codec.buildObject


{-| Codec for CopyDbclusterSnapshotMessage. -}
copyDbclusterSnapshotMessageCodec : Codec CopyDbclusterSnapshotMessage
copyDbclusterSnapshotMessageCodec =
    Codec.object CopyDbclusterSnapshotMessage
        |> Codec.field "TargetDBClusterSnapshotIdentifier" .targetDbclusterSnapshotIdentifier Codec.string
        |> Codec.field "Tags" .tags tagListCodec
        |> Codec.field "SourceRegion" .sourceRegion Codec.string
        |> Codec.field "SourceDBClusterSnapshotIdentifier" .sourceDbclusterSnapshotIdentifier Codec.string
        |> Codec.field "PreSignedUrl" .preSignedUrl Codec.string
        |> Codec.field "KmsKeyId" .kmsKeyId Codec.string
        |> Codec.field "CopyTags" .copyTags Codec.bool
        |> Codec.buildObject


{-| Codec for CopyDbclusterParameterGroupResult. -}
copyDbclusterParameterGroupResultCodec : Codec CopyDbclusterParameterGroupResult
copyDbclusterParameterGroupResultCodec =
    Codec.object CopyDbclusterParameterGroupResult
        |> Codec.field "DBClusterParameterGroup" .dbclusterParameterGroup dbclusterParameterGroupCodec
        |> Codec.buildObject


{-| Codec for CopyDbclusterParameterGroupMessage. -}
copyDbclusterParameterGroupMessageCodec : Codec CopyDbclusterParameterGroupMessage
copyDbclusterParameterGroupMessageCodec =
    Codec.object CopyDbclusterParameterGroupMessage
        |> Codec.field "TargetDBClusterParameterGroupIdentifier" .targetDbclusterParameterGroupIdentifier Codec.string
        |> Codec.field "TargetDBClusterParameterGroupDescription" .targetDbclusterParameterGroupDescription Codec.string
        |> Codec.field "Tags" .tags tagListCodec
        |> Codec.field "SourceDBClusterParameterGroupIdentifier" .sourceDbclusterParameterGroupIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for CloudwatchLogsExportConfiguration. -}
cloudwatchLogsExportConfigurationCodec : Codec CloudwatchLogsExportConfiguration
cloudwatchLogsExportConfigurationCodec =
    Codec.object CloudwatchLogsExportConfiguration
        |> Codec.field "EnableLogTypes" .enableLogTypes logTypeListCodec
        |> Codec.field "DisableLogTypes" .disableLogTypes logTypeListCodec
        |> Codec.buildObject


{-| Codec for CharacterSet. -}
characterSetCodec : Codec CharacterSet
characterSetCodec =
    Codec.object CharacterSet
        |> Codec.field "CharacterSetName" .characterSetName Codec.string
        |> Codec.field "CharacterSetDescription" .characterSetDescription Codec.string
        |> Codec.buildObject


{-| Codec for CertificateMessage. -}
certificateMessageCodec : Codec CertificateMessage
certificateMessageCodec =
    Codec.object CertificateMessage
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "Certificates" .certificates certificateListCodec
        |> Codec.buildObject


{-| Codec for CertificateList. -}
certificateListCodec : Codec CertificateList
certificateListCodec =
    Codec.list certificateCodec


{-| Codec for Certificate. -}
certificateCodec : Codec Certificate
certificateCodec =
    Codec.object Certificate
        |> Codec.field "ValidTill" .validTill tstampCodec
        |> Codec.field "ValidFrom" .validFrom tstampCodec
        |> Codec.field "Thumbprint" .thumbprint Codec.string
        |> Codec.field "CertificateType" .certificateType Codec.string
        |> Codec.field "CertificateIdentifier" .certificateIdentifier Codec.string
        |> Codec.field "CertificateArn" .certificateArn Codec.string
        |> Codec.buildObject


{-| Codec for BooleanOptional. -}
booleanOptionalCodec : Codec BooleanOptional
booleanOptionalCodec =
    Codec.bool


{-| Codec for Boolean. -}
booleanCodec : Codec Boolean
booleanCodec =
    Codec.bool


{-| Codec for BacktrackDbclusterMessage. -}
backtrackDbclusterMessageCodec : Codec BacktrackDbclusterMessage
backtrackDbclusterMessageCodec =
    Codec.object BacktrackDbclusterMessage
        |> Codec.field "UseEarliestTimeOnPointInTimeUnavailable" .useEarliestTimeOnPointInTimeUnavailable Codec.bool
        |> Codec.field "Force" .force Codec.bool
        |> Codec.field "DBClusterIdentifier" .dbclusterIdentifier Codec.string
        |> Codec.field "BacktrackTo" .backtrackTo tstampCodec
        |> Codec.buildObject


{-| Codec for AvailableProcessorFeatureList. -}
availableProcessorFeatureListCodec : Codec AvailableProcessorFeatureList
availableProcessorFeatureListCodec =
    Codec.list availableProcessorFeatureCodec


{-| Codec for AvailableProcessorFeature. -}
availableProcessorFeatureCodec : Codec AvailableProcessorFeature
availableProcessorFeatureCodec =
    Codec.object AvailableProcessorFeature
        |> Codec.field "Name" .name Codec.string
        |> Codec.field "DefaultValue" .defaultValue Codec.string
        |> Codec.field "AllowedValues" .allowedValues Codec.string
        |> Codec.buildObject


{-| Codec for AvailabilityZones. -}
availabilityZonesCodec : Codec AvailabilityZones
availabilityZonesCodec =
    Codec.list Codec.string


{-| Codec for AvailabilityZoneList. -}
availabilityZoneListCodec : Codec AvailabilityZoneList
availabilityZoneListCodec =
    Codec.list availabilityZoneCodec


{-| Codec for AvailabilityZone. -}
availabilityZoneCodec : Codec AvailabilityZone
availabilityZoneCodec =
    Codec.object AvailabilityZone |> Codec.field "Name" .name Codec.string |> Codec.buildObject


{-| Codec for AuthorizeDbsecurityGroupIngressResult. -}
authorizeDbsecurityGroupIngressResultCodec : Codec AuthorizeDbsecurityGroupIngressResult
authorizeDbsecurityGroupIngressResultCodec =
    Codec.object AuthorizeDbsecurityGroupIngressResult
        |> Codec.field "DBSecurityGroup" .dbsecurityGroup dbsecurityGroupCodec
        |> Codec.buildObject


{-| Codec for AuthorizeDbsecurityGroupIngressMessage. -}
authorizeDbsecurityGroupIngressMessageCodec : Codec AuthorizeDbsecurityGroupIngressMessage
authorizeDbsecurityGroupIngressMessageCodec =
    Codec.object AuthorizeDbsecurityGroupIngressMessage
        |> Codec.field "EC2SecurityGroupOwnerId" .ec2SecurityGroupOwnerId Codec.string
        |> Codec.field "EC2SecurityGroupName" .ec2SecurityGroupName Codec.string
        |> Codec.field "EC2SecurityGroupId" .ec2SecurityGroupId Codec.string
        |> Codec.field "DBSecurityGroupName" .dbsecurityGroupName Codec.string
        |> Codec.field "CIDRIP" .cidrip Codec.string
        |> Codec.buildObject


{-| Codec for AttributeValueList. -}
attributeValueListCodec : Codec AttributeValueList
attributeValueListCodec =
    Codec.list Codec.string


{-| Codec for ApplyPendingMaintenanceActionResult. -}
applyPendingMaintenanceActionResultCodec : Codec ApplyPendingMaintenanceActionResult
applyPendingMaintenanceActionResultCodec =
    Codec.object ApplyPendingMaintenanceActionResult
        |> Codec.field
            "ResourcePendingMaintenanceActions"
            .resourcePendingMaintenanceActions
            resourcePendingMaintenanceActionsCodec
        |> Codec.buildObject


{-| Codec for ApplyPendingMaintenanceActionMessage. -}
applyPendingMaintenanceActionMessageCodec : Codec ApplyPendingMaintenanceActionMessage
applyPendingMaintenanceActionMessageCodec =
    Codec.object ApplyPendingMaintenanceActionMessage
        |> Codec.field "ResourceIdentifier" .resourceIdentifier Codec.string
        |> Codec.field "OptInType" .optInType Codec.string
        |> Codec.field "ApplyAction" .applyAction Codec.string
        |> Codec.buildObject


{-| Codec for ApplyMethod. -}
applyMethodCodec : Codec ApplyMethod
applyMethodCodec =
    Codec.build (Enum.encoder applyMethod) (Enum.decoder applyMethod)


{-| Codec for AddTagsToResourceMessage. -}
addTagsToResourceMessageCodec : Codec AddTagsToResourceMessage
addTagsToResourceMessageCodec =
    Codec.object AddTagsToResourceMessage
        |> Codec.field "Tags" .tags tagListCodec
        |> Codec.field "ResourceName" .resourceName Codec.string
        |> Codec.buildObject


{-| Codec for AddSourceIdentifierToSubscriptionResult. -}
addSourceIdentifierToSubscriptionResultCodec : Codec AddSourceIdentifierToSubscriptionResult
addSourceIdentifierToSubscriptionResultCodec =
    Codec.object AddSourceIdentifierToSubscriptionResult
        |> Codec.field "EventSubscription" .eventSubscription eventSubscriptionCodec
        |> Codec.buildObject


{-| Codec for AddSourceIdentifierToSubscriptionMessage. -}
addSourceIdentifierToSubscriptionMessageCodec : Codec AddSourceIdentifierToSubscriptionMessage
addSourceIdentifierToSubscriptionMessageCodec =
    Codec.object AddSourceIdentifierToSubscriptionMessage
        |> Codec.field "SubscriptionName" .subscriptionName Codec.string
        |> Codec.field "SourceIdentifier" .sourceIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for AddRoleToDbinstanceMessage. -}
addRoleToDbinstanceMessageCodec : Codec AddRoleToDbinstanceMessage
addRoleToDbinstanceMessageCodec =
    Codec.object AddRoleToDbinstanceMessage
        |> Codec.field "RoleArn" .roleArn Codec.string
        |> Codec.field "FeatureName" .featureName Codec.string
        |> Codec.field "DBInstanceIdentifier" .dbinstanceIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for AddRoleToDbclusterMessage. -}
addRoleToDbclusterMessageCodec : Codec AddRoleToDbclusterMessage
addRoleToDbclusterMessageCodec =
    Codec.object AddRoleToDbclusterMessage
        |> Codec.field "RoleArn" .roleArn Codec.string
        |> Codec.field "FeatureName" .featureName Codec.string
        |> Codec.field "DBClusterIdentifier" .dbclusterIdentifier Codec.string
        |> Codec.buildObject


{-| Codec for ActivityStreamStatus. -}
activityStreamStatusCodec : Codec ActivityStreamStatus
activityStreamStatusCodec =
    Codec.build (Enum.encoder activityStreamStatus) (Enum.decoder activityStreamStatus)


{-| Codec for ActivityStreamMode. -}
activityStreamModeCodec : Codec ActivityStreamMode
activityStreamModeCodec =
    Codec.build (Enum.encoder activityStreamMode) (Enum.decoder activityStreamMode)


{-| Codec for AccountQuotaList. -}
accountQuotaListCodec : Codec AccountQuotaList
accountQuotaListCodec =
    Codec.list accountQuotaCodec


{-| Codec for AccountQuota. -}
accountQuotaCodec : Codec AccountQuota
accountQuotaCodec =
    Codec.object AccountQuota
        |> Codec.field "Used" .used Codec.int
        |> Codec.field "Max" .max Codec.int
        |> Codec.field "AccountQuotaName" .accountQuotaName Codec.string
        |> Codec.buildObject


{-| Codec for AccountAttributesMessage. -}
accountAttributesMessageCodec : Codec AccountAttributesMessage
accountAttributesMessageCodec =
    Codec.object AccountAttributesMessage
        |> Codec.field "AccountQuotas" .accountQuotas accountQuotaListCodec
        |> Codec.buildObject
