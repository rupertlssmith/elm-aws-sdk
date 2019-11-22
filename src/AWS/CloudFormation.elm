module AWS.CloudFormation exposing (service)

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
            AWS.Core.Service.setXmlNamespace "http://cloudformation.amazonaws.com/doc/2010-05-15/"
    in
    AWS.Core.Service.defineGlobal "cloudformation" "2010-05-15" AWS.Core.Service.QUERY AWS.Core.Service.SignV4 optionsFn


{-| AWS Endpoint. -}
validateTemplate :
    ValidateTemplateInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ValidateTemplateOutput)
validateTemplate req =
    let
        jsonBody =
            req |> Codec.encoder validateTemplateInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ValidateTemplate"
                (AWS.Core.Decode.ResultDecoder "ValidateTemplateOutput" (Codec.decoder validateTemplateOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
updateTerminationProtection :
    UpdateTerminationProtectionInput
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateTerminationProtectionOutput)
updateTerminationProtection req =
    let
        jsonBody =
            req |> Codec.encoder updateTerminationProtectionInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "UpdateTerminationProtection"
                (AWS.Core.Decode.ResultDecoder
                    "UpdateTerminationProtectionOutput"
                    (Codec.decoder updateTerminationProtectionOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
updateStackSet : UpdateStackSetInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateStackSetOutput)
updateStackSet req =
    let
        jsonBody =
            req |> Codec.encoder updateStackSetInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "UpdateStackSet"
                (AWS.Core.Decode.ResultDecoder "UpdateStackSetOutput" (Codec.decoder updateStackSetOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
updateStackInstances :
    UpdateStackInstancesInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateStackInstancesOutput)
updateStackInstances req =
    let
        jsonBody =
            req |> Codec.encoder updateStackInstancesInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "UpdateStackInstances"
                (AWS.Core.Decode.ResultDecoder
                    "UpdateStackInstancesOutput"
                    (Codec.decoder updateStackInstancesOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
updateStack : UpdateStackInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateStackOutput)
updateStack req =
    let
        jsonBody =
            req |> Codec.encoder updateStackInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "UpdateStack"
                (AWS.Core.Decode.ResultDecoder "UpdateStackOutput" (Codec.decoder updateStackOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
stopStackSetOperation :
    StopStackSetOperationInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StopStackSetOperationOutput)
stopStackSetOperation req =
    let
        jsonBody =
            req |> Codec.encoder stopStackSetOperationInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "StopStackSetOperation"
                (AWS.Core.Decode.ResultDecoder
                    "StopStackSetOperationOutput"
                    (Codec.decoder stopStackSetOperationOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
signalResource : SignalResourceInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
signalResource req =
    let
        jsonBody =
            req |> Codec.encoder signalResourceInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "SignalResource" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
setStackPolicy : SetStackPolicyInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
setStackPolicy req =
    let
        jsonBody =
            req |> Codec.encoder setStackPolicyInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "SetStackPolicy" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listStacks : ListStacksInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListStacksOutput)
listStacks req =
    let
        jsonBody =
            req |> Codec.encoder listStacksInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListStacks"
                (AWS.Core.Decode.ResultDecoder "ListStacksOutput" (Codec.decoder listStacksOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listStackSets : ListStackSetsInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListStackSetsOutput)
listStackSets req =
    let
        jsonBody =
            req |> Codec.encoder listStackSetsInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListStackSets"
                (AWS.Core.Decode.ResultDecoder "ListStackSetsOutput" (Codec.decoder listStackSetsOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listStackSetOperations :
    ListStackSetOperationsInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListStackSetOperationsOutput)
listStackSetOperations req =
    let
        jsonBody =
            req |> Codec.encoder listStackSetOperationsInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListStackSetOperations"
                (AWS.Core.Decode.ResultDecoder
                    "ListStackSetOperationsOutput"
                    (Codec.decoder listStackSetOperationsOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listStackSetOperationResults :
    ListStackSetOperationResultsInput
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListStackSetOperationResultsOutput)
listStackSetOperationResults req =
    let
        jsonBody =
            req |> Codec.encoder listStackSetOperationResultsInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListStackSetOperationResults"
                (AWS.Core.Decode.ResultDecoder
                    "ListStackSetOperationResultsOutput"
                    (Codec.decoder listStackSetOperationResultsOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listStackResources :
    ListStackResourcesInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListStackResourcesOutput)
listStackResources req =
    let
        jsonBody =
            req |> Codec.encoder listStackResourcesInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListStackResources"
                (AWS.Core.Decode.ResultDecoder "ListStackResourcesOutput" (Codec.decoder listStackResourcesOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listStackInstances :
    ListStackInstancesInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListStackInstancesOutput)
listStackInstances req =
    let
        jsonBody =
            req |> Codec.encoder listStackInstancesInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListStackInstances"
                (AWS.Core.Decode.ResultDecoder "ListStackInstancesOutput" (Codec.decoder listStackInstancesOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listImports : ListImportsInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListImportsOutput)
listImports req =
    let
        jsonBody =
            req |> Codec.encoder listImportsInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListImports"
                (AWS.Core.Decode.ResultDecoder "ListImportsOutput" (Codec.decoder listImportsOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listExports : ListExportsInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListExportsOutput)
listExports req =
    let
        jsonBody =
            req |> Codec.encoder listExportsInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListExports"
                (AWS.Core.Decode.ResultDecoder "ListExportsOutput" (Codec.decoder listExportsOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listChangeSets : ListChangeSetsInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListChangeSetsOutput)
listChangeSets req =
    let
        jsonBody =
            req |> Codec.encoder listChangeSetsInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListChangeSets"
                (AWS.Core.Decode.ResultDecoder "ListChangeSetsOutput" (Codec.decoder listChangeSetsOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getTemplateSummary :
    GetTemplateSummaryInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetTemplateSummaryOutput)
getTemplateSummary req =
    let
        jsonBody =
            req |> Codec.encoder getTemplateSummaryInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetTemplateSummary"
                (AWS.Core.Decode.ResultDecoder "GetTemplateSummaryOutput" (Codec.decoder getTemplateSummaryOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getTemplate : GetTemplateInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetTemplateOutput)
getTemplate req =
    let
        jsonBody =
            req |> Codec.encoder getTemplateInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetTemplate"
                (AWS.Core.Decode.ResultDecoder "GetTemplateOutput" (Codec.decoder getTemplateOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getStackPolicy : GetStackPolicyInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetStackPolicyOutput)
getStackPolicy req =
    let
        jsonBody =
            req |> Codec.encoder getStackPolicyInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetStackPolicy"
                (AWS.Core.Decode.ResultDecoder "GetStackPolicyOutput" (Codec.decoder getStackPolicyOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
executeChangeSet :
    ExecuteChangeSetInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ExecuteChangeSetOutput)
executeChangeSet req =
    let
        jsonBody =
            req |> Codec.encoder executeChangeSetInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ExecuteChangeSet"
                (AWS.Core.Decode.ResultDecoder "ExecuteChangeSetOutput" (Codec.decoder executeChangeSetOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
estimateTemplateCost :
    EstimateTemplateCostInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper EstimateTemplateCostOutput)
estimateTemplateCost req =
    let
        jsonBody =
            req |> Codec.encoder estimateTemplateCostInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "EstimateTemplateCost"
                (AWS.Core.Decode.ResultDecoder
                    "EstimateTemplateCostOutput"
                    (Codec.decoder estimateTemplateCostOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
detectStackResourceDrift :
    DetectStackResourceDriftInput
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DetectStackResourceDriftOutput)
detectStackResourceDrift req =
    let
        jsonBody =
            req |> Codec.encoder detectStackResourceDriftInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DetectStackResourceDrift"
                (AWS.Core.Decode.ResultDecoder
                    "DetectStackResourceDriftOutput"
                    (Codec.decoder detectStackResourceDriftOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
detectStackDrift :
    DetectStackDriftInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DetectStackDriftOutput)
detectStackDrift req =
    let
        jsonBody =
            req |> Codec.encoder detectStackDriftInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DetectStackDrift"
                (AWS.Core.Decode.ResultDecoder "DetectStackDriftOutput" (Codec.decoder detectStackDriftOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeStacks : DescribeStacksInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeStacksOutput)
describeStacks req =
    let
        jsonBody =
            req |> Codec.encoder describeStacksInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeStacks"
                (AWS.Core.Decode.ResultDecoder "DescribeStacksOutput" (Codec.decoder describeStacksOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeStackSetOperation :
    DescribeStackSetOperationInput
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeStackSetOperationOutput)
describeStackSetOperation req =
    let
        jsonBody =
            req |> Codec.encoder describeStackSetOperationInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeStackSetOperation"
                (AWS.Core.Decode.ResultDecoder
                    "DescribeStackSetOperationOutput"
                    (Codec.decoder describeStackSetOperationOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeStackSet :
    DescribeStackSetInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeStackSetOutput)
describeStackSet req =
    let
        jsonBody =
            req |> Codec.encoder describeStackSetInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeStackSet"
                (AWS.Core.Decode.ResultDecoder "DescribeStackSetOutput" (Codec.decoder describeStackSetOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeStackResources :
    DescribeStackResourcesInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeStackResourcesOutput)
describeStackResources req =
    let
        jsonBody =
            req |> Codec.encoder describeStackResourcesInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeStackResources"
                (AWS.Core.Decode.ResultDecoder
                    "DescribeStackResourcesOutput"
                    (Codec.decoder describeStackResourcesOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeStackResourceDrifts :
    DescribeStackResourceDriftsInput
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeStackResourceDriftsOutput)
describeStackResourceDrifts req =
    let
        jsonBody =
            req |> Codec.encoder describeStackResourceDriftsInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeStackResourceDrifts"
                (AWS.Core.Decode.ResultDecoder
                    "DescribeStackResourceDriftsOutput"
                    (Codec.decoder describeStackResourceDriftsOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeStackResource :
    DescribeStackResourceInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeStackResourceOutput)
describeStackResource req =
    let
        jsonBody =
            req |> Codec.encoder describeStackResourceInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeStackResource"
                (AWS.Core.Decode.ResultDecoder
                    "DescribeStackResourceOutput"
                    (Codec.decoder describeStackResourceOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeStackInstance :
    DescribeStackInstanceInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeStackInstanceOutput)
describeStackInstance req =
    let
        jsonBody =
            req |> Codec.encoder describeStackInstanceInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeStackInstance"
                (AWS.Core.Decode.ResultDecoder
                    "DescribeStackInstanceOutput"
                    (Codec.decoder describeStackInstanceOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeStackEvents :
    DescribeStackEventsInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeStackEventsOutput)
describeStackEvents req =
    let
        jsonBody =
            req |> Codec.encoder describeStackEventsInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeStackEvents"
                (AWS.Core.Decode.ResultDecoder
                    "DescribeStackEventsOutput"
                    (Codec.decoder describeStackEventsOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeStackDriftDetectionStatus :
    DescribeStackDriftDetectionStatusInput
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeStackDriftDetectionStatusOutput)
describeStackDriftDetectionStatus req =
    let
        jsonBody =
            req |> Codec.encoder describeStackDriftDetectionStatusInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeStackDriftDetectionStatus"
                (AWS.Core.Decode.ResultDecoder
                    "DescribeStackDriftDetectionStatusOutput"
                    (Codec.decoder describeStackDriftDetectionStatusOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeChangeSet :
    DescribeChangeSetInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeChangeSetOutput)
describeChangeSet req =
    let
        jsonBody =
            req |> Codec.encoder describeChangeSetInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeChangeSet"
                (AWS.Core.Decode.ResultDecoder "DescribeChangeSetOutput" (Codec.decoder describeChangeSetOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeAccountLimits :
    DescribeAccountLimitsInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeAccountLimitsOutput)
describeAccountLimits req =
    let
        jsonBody =
            req |> Codec.encoder describeAccountLimitsInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeAccountLimits"
                (AWS.Core.Decode.ResultDecoder
                    "DescribeAccountLimitsOutput"
                    (Codec.decoder describeAccountLimitsOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteStackSet : DeleteStackSetInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteStackSetOutput)
deleteStackSet req =
    let
        jsonBody =
            req |> Codec.encoder deleteStackSetInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DeleteStackSet"
                (AWS.Core.Decode.ResultDecoder "DeleteStackSetOutput" (Codec.decoder deleteStackSetOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteStackInstances :
    DeleteStackInstancesInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteStackInstancesOutput)
deleteStackInstances req =
    let
        jsonBody =
            req |> Codec.encoder deleteStackInstancesInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DeleteStackInstances"
                (AWS.Core.Decode.ResultDecoder
                    "DeleteStackInstancesOutput"
                    (Codec.decoder deleteStackInstancesOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteStack : DeleteStackInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteStack req =
    let
        jsonBody =
            req |> Codec.encoder deleteStackInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteStack" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteChangeSet : DeleteChangeSetInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteChangeSetOutput)
deleteChangeSet req =
    let
        jsonBody =
            req |> Codec.encoder deleteChangeSetInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DeleteChangeSet"
                (AWS.Core.Decode.ResultDecoder "DeleteChangeSetOutput" (Codec.decoder deleteChangeSetOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createStackSet : CreateStackSetInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateStackSetOutput)
createStackSet req =
    let
        jsonBody =
            req |> Codec.encoder createStackSetInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateStackSet"
                (AWS.Core.Decode.ResultDecoder "CreateStackSetOutput" (Codec.decoder createStackSetOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createStackInstances :
    CreateStackInstancesInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateStackInstancesOutput)
createStackInstances req =
    let
        jsonBody =
            req |> Codec.encoder createStackInstancesInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateStackInstances"
                (AWS.Core.Decode.ResultDecoder
                    "CreateStackInstancesOutput"
                    (Codec.decoder createStackInstancesOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createStack : CreateStackInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateStackOutput)
createStack req =
    let
        jsonBody =
            req |> Codec.encoder createStackInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateStack"
                (AWS.Core.Decode.ResultDecoder "CreateStackOutput" (Codec.decoder createStackOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createChangeSet : CreateChangeSetInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateChangeSetOutput)
createChangeSet req =
    let
        jsonBody =
            req |> Codec.encoder createChangeSetInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateChangeSet"
                (AWS.Core.Decode.ResultDecoder "CreateChangeSetOutput" (Codec.decoder createChangeSetOutputCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
continueUpdateRollback :
    ContinueUpdateRollbackInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ContinueUpdateRollbackOutput)
continueUpdateRollback req =
    let
        jsonBody =
            req |> Codec.encoder continueUpdateRollbackInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ContinueUpdateRollback"
                (AWS.Core.Decode.ResultDecoder
                    "ContinueUpdateRollbackOutput"
                    (Codec.decoder continueUpdateRollbackOutputCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
cancelUpdateStack : CancelUpdateStackInput -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
cancelUpdateStack req =
    let
        jsonBody =
            req |> Codec.encoder cancelUpdateStackInputCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "CancelUpdateStack" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


type Account
    = Account String


account : Refined String Account StringError
account =
    let
        guardFn val =
            Refined.regexMatch "[0-9]{12}" val |> Result.map Account

        unboxFn (Account val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias AccountGateResult =
    { statusReason : String, status : AccountGateStatus }


type AccountGateStatus
    = AccountGateStatusSucceeded
    | AccountGateStatusFailed
    | AccountGateStatusSkipped


accountGateStatus : Enum AccountGateStatus
accountGateStatus =
    Enum.define
        [ AccountGateStatusSucceeded, AccountGateStatusFailed, AccountGateStatusSkipped ]
        (\val ->
            case val of
                AccountGateStatusSucceeded ->
                    "SUCCEEDED"

                AccountGateStatusFailed ->
                    "FAILED"

                AccountGateStatusSkipped ->
                    "SKIPPED"
        )


type alias AccountGateStatusReason =
    String


type alias AccountLimit =
    { value : Int, name : String }


type alias AccountLimitList =
    List AccountLimit


type alias AccountList =
    List Account


type alias AllowedValue =
    String


type alias AllowedValues =
    List String


type alias Arn =
    String


type alias BoxedInteger =
    Int


type BoxedMaxResults
    = BoxedMaxResults Int


boxedMaxResults : Refined Int BoxedMaxResults IntError
boxedMaxResults =
    let
        guardFn val =
            Refined.gt 1 val |> Result.andThen (Refined.lt 100) |> Result.map BoxedMaxResults

        unboxFn (BoxedMaxResults val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type alias CancelUpdateStackInput =
    { stackName : String, clientRequestToken : ClientRequestToken }


type alias Capabilities =
    List Capability


type alias CapabilitiesReason =
    String


type Capability
    = CapabilityCapabilityIam
    | CapabilityCapabilityNamedIam
    | CapabilityCapabilityAutoExpand


capability : Enum Capability
capability =
    Enum.define
        [ CapabilityCapabilityIam, CapabilityCapabilityNamedIam, CapabilityCapabilityAutoExpand ]
        (\val ->
            case val of
                CapabilityCapabilityIam ->
                    "CAPABILITY_IAM"

                CapabilityCapabilityNamedIam ->
                    "CAPABILITY_NAMED_IAM"

                CapabilityCapabilityAutoExpand ->
                    "CAPABILITY_AUTO_EXPAND"
        )


type alias CausingEntity =
    String


type alias Change =
    { type_ : ChangeType, resourceChange : ResourceChange }


type ChangeAction
    = ChangeActionAdd
    | ChangeActionModify
    | ChangeActionRemove


changeAction : Enum ChangeAction
changeAction =
    Enum.define
        [ ChangeActionAdd, ChangeActionModify, ChangeActionRemove ]
        (\val ->
            case val of
                ChangeActionAdd ->
                    "Add"

                ChangeActionModify ->
                    "Modify"

                ChangeActionRemove ->
                    "Remove"
        )


type ChangeSetId
    = ChangeSetId String


changeSetId : Refined String ChangeSetId StringError
changeSetId =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.regexMatch "arn:[-a-zA-Z0-9:/]*")
                |> Result.map ChangeSetId

        unboxFn (ChangeSetId val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type ChangeSetName
    = ChangeSetName String


changeSetName : Refined String ChangeSetName StringError
changeSetName =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 128)
                |> Result.andThen (Refined.regexMatch "[a-zA-Z][-a-zA-Z0-9]*")
                |> Result.map ChangeSetName

        unboxFn (ChangeSetName val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type ChangeSetNameOrId
    = ChangeSetNameOrId String


changeSetNameOrId : Refined String ChangeSetNameOrId StringError
changeSetNameOrId =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 1600)
                |> Result.andThen (Refined.regexMatch "[a-zA-Z][-a-zA-Z0-9]*|arn:[-a-zA-Z0-9:/]*")
                |> Result.map ChangeSetNameOrId

        unboxFn (ChangeSetNameOrId val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type ChangeSetStatus
    = ChangeSetStatusCreatePending
    | ChangeSetStatusCreateInProgress
    | ChangeSetStatusCreateComplete
    | ChangeSetStatusDeleteComplete
    | ChangeSetStatusFailed


changeSetStatus : Enum ChangeSetStatus
changeSetStatus =
    Enum.define
        [ ChangeSetStatusCreatePending
        , ChangeSetStatusCreateInProgress
        , ChangeSetStatusCreateComplete
        , ChangeSetStatusDeleteComplete
        , ChangeSetStatusFailed
        ]
        (\val ->
            case val of
                ChangeSetStatusCreatePending ->
                    "CREATE_PENDING"

                ChangeSetStatusCreateInProgress ->
                    "CREATE_IN_PROGRESS"

                ChangeSetStatusCreateComplete ->
                    "CREATE_COMPLETE"

                ChangeSetStatusDeleteComplete ->
                    "DELETE_COMPLETE"

                ChangeSetStatusFailed ->
                    "FAILED"
        )


type alias ChangeSetStatusReason =
    String


type alias ChangeSetSummaries =
    List ChangeSetSummary


type alias ChangeSetSummary =
    { statusReason : String
    , status : ChangeSetStatus
    , stackName : String
    , stackId : String
    , executionStatus : ExecutionStatus
    , description : Description
    , creationTime : CreationTime
    , changeSetName : ChangeSetName
    , changeSetId : ChangeSetId
    }


type ChangeSetType
    = ChangeSetTypeCreate
    | ChangeSetTypeUpdate


changeSetType : Enum ChangeSetType
changeSetType =
    Enum.define
        [ ChangeSetTypeCreate, ChangeSetTypeUpdate ]
        (\val ->
            case val of
                ChangeSetTypeCreate ->
                    "CREATE"

                ChangeSetTypeUpdate ->
                    "UPDATE"
        )


type ChangeSource
    = ChangeSourceResourceReference
    | ChangeSourceParameterReference
    | ChangeSourceResourceAttribute
    | ChangeSourceDirectModification
    | ChangeSourceAutomatic


changeSource : Enum ChangeSource
changeSource =
    Enum.define
        [ ChangeSourceResourceReference
        , ChangeSourceParameterReference
        , ChangeSourceResourceAttribute
        , ChangeSourceDirectModification
        , ChangeSourceAutomatic
        ]
        (\val ->
            case val of
                ChangeSourceResourceReference ->
                    "ResourceReference"

                ChangeSourceParameterReference ->
                    "ParameterReference"

                ChangeSourceResourceAttribute ->
                    "ResourceAttribute"

                ChangeSourceDirectModification ->
                    "DirectModification"

                ChangeSourceAutomatic ->
                    "Automatic"
        )


type ChangeType
    = ChangeTypeResource


changeType : Enum ChangeType
changeType =
    Enum.define
        [ ChangeTypeResource ]
        (\val ->
            case val of
                ChangeTypeResource ->
                    "Resource"
        )


type alias Changes =
    List Change


type ClientRequestToken
    = ClientRequestToken String


clientRequestToken : Refined String ClientRequestToken StringError
clientRequestToken =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 128)
                |> Result.andThen (Refined.regexMatch "[a-zA-Z0-9][-a-zA-Z0-9]*")
                |> Result.map ClientRequestToken

        unboxFn (ClientRequestToken val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type ClientToken
    = ClientToken String


clientToken : Refined String ClientToken StringError
clientToken =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 128) |> Result.map ClientToken

        unboxFn (ClientToken val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias ContinueUpdateRollbackInput =
    { stackName : StackNameOrId
    , roleArn : RoleArn
    , resourcesToSkip : ResourcesToSkip
    , clientRequestToken : ClientRequestToken
    }


type alias ContinueUpdateRollbackOutput =
    {}


type alias CreateChangeSetInput =
    { usePreviousTemplate : Bool
    , templateUrl : TemplateUrl
    , templateBody : TemplateBody
    , tags : Tags
    , stackName : StackNameOrId
    , rollbackConfiguration : RollbackConfiguration
    , roleArn : RoleArn
    , resourceTypes : ResourceTypes
    , parameters : Parameters
    , notificationArns : NotificationArns
    , description : Description
    , clientToken : ClientToken
    , changeSetType : ChangeSetType
    , changeSetName : ChangeSetName
    , capabilities : Capabilities
    }


type alias CreateChangeSetOutput =
    { stackId : String, id : ChangeSetId }


type alias CreateStackInput =
    { timeoutInMinutes : TimeoutMinutes
    , templateUrl : TemplateUrl
    , templateBody : TemplateBody
    , tags : Tags
    , stackPolicyUrl : StackPolicyUrl
    , stackPolicyBody : StackPolicyBody
    , stackName : String
    , rollbackConfiguration : RollbackConfiguration
    , roleArn : RoleArn
    , resourceTypes : ResourceTypes
    , parameters : Parameters
    , onFailure : OnFailure
    , notificationArns : NotificationArns
    , enableTerminationProtection : Bool
    , disableRollback : Bool
    , clientRequestToken : ClientRequestToken
    , capabilities : Capabilities
    }


type alias CreateStackInstancesInput =
    { stackSetName : String
    , regions : RegionList
    , parameterOverrides : Parameters
    , operationPreferences : StackSetOperationPreferences
    , operationId : ClientRequestToken
    , accounts : AccountList
    }


type alias CreateStackInstancesOutput =
    { operationId : ClientRequestToken }


type alias CreateStackOutput =
    { stackId : String }


type alias CreateStackSetInput =
    { templateUrl : TemplateUrl
    , templateBody : TemplateBody
    , tags : Tags
    , stackSetName : String
    , parameters : Parameters
    , executionRoleName : ExecutionRoleName
    , description : Description
    , clientRequestToken : ClientRequestToken
    , capabilities : Capabilities
    , administrationRoleArn : RoleArn
    }


type alias CreateStackSetOutput =
    { stackSetId : String }


type alias CreationTime =
    String


type alias DeleteChangeSetInput =
    { stackName : StackNameOrId, changeSetName : ChangeSetNameOrId }


type alias DeleteChangeSetOutput =
    {}


type alias DeleteStackInput =
    { stackName : String
    , roleArn : RoleArn
    , retainResources : RetainResources
    , clientRequestToken : ClientRequestToken
    }


type alias DeleteStackInstancesInput =
    { stackSetName : String
    , retainStacks : Bool
    , regions : RegionList
    , operationPreferences : StackSetOperationPreferences
    , operationId : ClientRequestToken
    , accounts : AccountList
    }


type alias DeleteStackInstancesOutput =
    { operationId : ClientRequestToken }


type alias DeleteStackSetInput =
    { stackSetName : String }


type alias DeleteStackSetOutput =
    {}


type alias DeletionTime =
    String


type alias DescribeAccountLimitsInput =
    { nextToken : NextToken }


type alias DescribeAccountLimitsOutput =
    { nextToken : NextToken, accountLimits : AccountLimitList }


type alias DescribeChangeSetInput =
    { stackName : StackNameOrId, nextToken : NextToken, changeSetName : ChangeSetNameOrId }


type alias DescribeChangeSetOutput =
    { tags : Tags
    , statusReason : String
    , status : ChangeSetStatus
    , stackName : String
    , stackId : String
    , rollbackConfiguration : RollbackConfiguration
    , parameters : Parameters
    , notificationArns : NotificationArns
    , nextToken : NextToken
    , executionStatus : ExecutionStatus
    , description : Description
    , creationTime : CreationTime
    , changes : Changes
    , changeSetName : ChangeSetName
    , changeSetId : ChangeSetId
    , capabilities : Capabilities
    }


type alias DescribeStackDriftDetectionStatusInput =
    { stackDriftDetectionId : StackDriftDetectionId }


type alias DescribeStackDriftDetectionStatusOutput =
    { timestamp : Timestamp
    , stackId : String
    , stackDriftStatus : StackDriftStatus
    , stackDriftDetectionId : StackDriftDetectionId
    , driftedStackResourceCount : Int
    , detectionStatusReason : String
    , detectionStatus : StackDriftDetectionStatus
    }


type alias DescribeStackEventsInput =
    { stackName : String, nextToken : NextToken }


type alias DescribeStackEventsOutput =
    { stackEvents : StackEvents, nextToken : NextToken }


type alias DescribeStackInstanceInput =
    { stackSetName : String, stackInstanceRegion : String, stackInstanceAccount : Account }


type alias DescribeStackInstanceOutput =
    { stackInstance : StackInstance }


type alias DescribeStackResourceDriftsInput =
    { stackResourceDriftStatusFilters : StackResourceDriftStatusFilters
    , stackName : StackNameOrId
    , nextToken : NextToken
    , maxResults : BoxedMaxResults
    }


type alias DescribeStackResourceDriftsOutput =
    { stackResourceDrifts : StackResourceDrifts, nextToken : NextToken }


type alias DescribeStackResourceInput =
    { stackName : String, logicalResourceId : String }


type alias DescribeStackResourceOutput =
    { stackResourceDetail : StackResourceDetail }


type alias DescribeStackResourcesInput =
    { stackName : String, physicalResourceId : String, logicalResourceId : String }


type alias DescribeStackResourcesOutput =
    { stackResources : StackResources }


type alias DescribeStackSetInput =
    { stackSetName : String }


type alias DescribeStackSetOperationInput =
    { stackSetName : String, operationId : ClientRequestToken }


type alias DescribeStackSetOperationOutput =
    { stackSetOperation : StackSetOperation }


type alias DescribeStackSetOutput =
    { stackSet : StackSet }


type alias DescribeStacksInput =
    { stackName : String, nextToken : NextToken }


type alias DescribeStacksOutput =
    { stacks : Stacks, nextToken : NextToken }


type Description
    = Description String


description : Refined String Description StringError
description =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 1024) |> Result.map Description

        unboxFn (Description val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias DetectStackDriftInput =
    { stackName : StackNameOrId, logicalResourceIds : LogicalResourceIds }


type alias DetectStackDriftOutput =
    { stackDriftDetectionId : StackDriftDetectionId }


type alias DetectStackResourceDriftInput =
    { stackName : StackNameOrId, logicalResourceId : String }


type alias DetectStackResourceDriftOutput =
    { stackResourceDrift : StackResourceDrift }


type DifferenceType
    = DifferenceTypeAdd
    | DifferenceTypeRemove
    | DifferenceTypeNotEqual


differenceType : Enum DifferenceType
differenceType =
    Enum.define
        [ DifferenceTypeAdd, DifferenceTypeRemove, DifferenceTypeNotEqual ]
        (\val ->
            case val of
                DifferenceTypeAdd ->
                    "ADD"

                DifferenceTypeRemove ->
                    "REMOVE"

                DifferenceTypeNotEqual ->
                    "NOT_EQUAL"
        )


type alias DisableRollback =
    Bool


type alias EnableTerminationProtection =
    Bool


type alias EstimateTemplateCostInput =
    { templateUrl : TemplateUrl, templateBody : TemplateBody, parameters : Parameters }


type alias EstimateTemplateCostOutput =
    { url : String }


type EvaluationType
    = EvaluationTypeStatic
    | EvaluationTypeDynamic


evaluationType : Enum EvaluationType
evaluationType =
    Enum.define
        [ EvaluationTypeStatic, EvaluationTypeDynamic ]
        (\val ->
            case val of
                EvaluationTypeStatic ->
                    "Static"

                EvaluationTypeDynamic ->
                    "Dynamic"
        )


type alias EventId =
    String


type alias ExecuteChangeSetInput =
    { stackName : StackNameOrId, clientRequestToken : ClientRequestToken, changeSetName : ChangeSetNameOrId }


type alias ExecuteChangeSetOutput =
    {}


type ExecutionRoleName
    = ExecutionRoleName String


executionRoleName : Refined String ExecutionRoleName StringError
executionRoleName =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 64)
                |> Result.andThen (Refined.regexMatch "[a-zA-Z_0-9+=,.@-]+")
                |> Result.map ExecutionRoleName

        unboxFn (ExecutionRoleName val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type ExecutionStatus
    = ExecutionStatusUnavailable
    | ExecutionStatusAvailable
    | ExecutionStatusExecuteInProgress
    | ExecutionStatusExecuteComplete
    | ExecutionStatusExecuteFailed
    | ExecutionStatusObsolete


executionStatus : Enum ExecutionStatus
executionStatus =
    Enum.define
        [ ExecutionStatusUnavailable
        , ExecutionStatusAvailable
        , ExecutionStatusExecuteInProgress
        , ExecutionStatusExecuteComplete
        , ExecutionStatusExecuteFailed
        , ExecutionStatusObsolete
        ]
        (\val ->
            case val of
                ExecutionStatusUnavailable ->
                    "UNAVAILABLE"

                ExecutionStatusAvailable ->
                    "AVAILABLE"

                ExecutionStatusExecuteInProgress ->
                    "EXECUTE_IN_PROGRESS"

                ExecutionStatusExecuteComplete ->
                    "EXECUTE_COMPLETE"

                ExecutionStatusExecuteFailed ->
                    "EXECUTE_FAILED"

                ExecutionStatusObsolete ->
                    "OBSOLETE"
        )


type alias Export =
    { value : String, name : String, exportingStackId : String }


type alias ExportName =
    String


type alias ExportValue =
    String


type alias Exports =
    List Export


type FailureToleranceCount
    = FailureToleranceCount Int


failureToleranceCount : Refined Int FailureToleranceCount IntError
failureToleranceCount =
    let
        guardFn val =
            Refined.gt 0 val |> Result.map FailureToleranceCount

        unboxFn (FailureToleranceCount val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type FailureTolerancePercentage
    = FailureTolerancePercentage Int


failureTolerancePercentage : Refined Int FailureTolerancePercentage IntError
failureTolerancePercentage =
    let
        guardFn val =
            Refined.gt 0 val |> Result.andThen (Refined.lt 100) |> Result.map FailureTolerancePercentage

        unboxFn (FailureTolerancePercentage val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type alias GetStackPolicyInput =
    { stackName : String }


type alias GetStackPolicyOutput =
    { stackPolicyBody : StackPolicyBody }


type alias GetTemplateInput =
    { templateStage : TemplateStage, stackName : String, changeSetName : ChangeSetNameOrId }


type alias GetTemplateOutput =
    { templateBody : TemplateBody, stagesAvailable : StageList }


type alias GetTemplateSummaryInput =
    { templateUrl : TemplateUrl
    , templateBody : TemplateBody
    , stackSetName : StackSetNameOrId
    , stackName : StackNameOrId
    }


type alias GetTemplateSummaryOutput =
    { version : String
    , resourceTypes : ResourceTypes
    , parameters : ParameterDeclarations
    , metadata : String
    , description : Description
    , declaredTransforms : TransformsList
    , capabilitiesReason : String
    , capabilities : Capabilities
    }


type alias Imports =
    List String


type alias Key =
    String


type alias LastUpdatedTime =
    String


type alias LimitName =
    String


type alias LimitValue =
    Int


type alias ListChangeSetsInput =
    { stackName : StackNameOrId, nextToken : NextToken }


type alias ListChangeSetsOutput =
    { summaries : ChangeSetSummaries, nextToken : NextToken }


type alias ListExportsInput =
    { nextToken : NextToken }


type alias ListExportsOutput =
    { nextToken : NextToken, exports : Exports }


type alias ListImportsInput =
    { nextToken : NextToken, exportName : String }


type alias ListImportsOutput =
    { nextToken : NextToken, imports : Imports }


type alias ListStackInstancesInput =
    { stackSetName : String
    , stackInstanceRegion : String
    , stackInstanceAccount : Account
    , nextToken : NextToken
    , maxResults : MaxResults
    }


type alias ListStackInstancesOutput =
    { summaries : StackInstanceSummaries, nextToken : NextToken }


type alias ListStackResourcesInput =
    { stackName : String, nextToken : NextToken }


type alias ListStackResourcesOutput =
    { stackResourceSummaries : StackResourceSummaries, nextToken : NextToken }


type alias ListStackSetOperationResultsInput =
    { stackSetName : String, operationId : ClientRequestToken, nextToken : NextToken, maxResults : MaxResults }


type alias ListStackSetOperationResultsOutput =
    { summaries : StackSetOperationResultSummaries, nextToken : NextToken }


type alias ListStackSetOperationsInput =
    { stackSetName : String, nextToken : NextToken, maxResults : MaxResults }


type alias ListStackSetOperationsOutput =
    { summaries : StackSetOperationSummaries, nextToken : NextToken }


type alias ListStackSetsInput =
    { status : StackSetStatus, nextToken : NextToken, maxResults : MaxResults }


type alias ListStackSetsOutput =
    { summaries : StackSetSummaries, nextToken : NextToken }


type alias ListStacksInput =
    { stackStatusFilter : StackStatusFilter, nextToken : NextToken }


type alias ListStacksOutput =
    { stackSummaries : StackSummaries, nextToken : NextToken }


type alias LogicalResourceId =
    String


type alias LogicalResourceIds =
    List String


type MaxConcurrentCount
    = MaxConcurrentCount Int


maxConcurrentCount : Refined Int MaxConcurrentCount IntError
maxConcurrentCount =
    let
        guardFn val =
            Refined.gt 1 val |> Result.map MaxConcurrentCount

        unboxFn (MaxConcurrentCount val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type MaxConcurrentPercentage
    = MaxConcurrentPercentage Int


maxConcurrentPercentage : Refined Int MaxConcurrentPercentage IntError
maxConcurrentPercentage =
    let
        guardFn val =
            Refined.gt 1 val |> Result.andThen (Refined.lt 100) |> Result.map MaxConcurrentPercentage

        unboxFn (MaxConcurrentPercentage val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type MaxResults
    = MaxResults Int


maxResults : Refined Int MaxResults IntError
maxResults =
    let
        guardFn val =
            Refined.gt 1 val |> Result.andThen (Refined.lt 100) |> Result.map MaxResults

        unboxFn (MaxResults val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type alias Metadata =
    String


type MonitoringTimeInMinutes
    = MonitoringTimeInMinutes Int


monitoringTimeInMinutes : Refined Int MonitoringTimeInMinutes IntError
monitoringTimeInMinutes =
    let
        guardFn val =
            Refined.gt 0 val |> Result.andThen (Refined.lt 180) |> Result.map MonitoringTimeInMinutes

        unboxFn (MonitoringTimeInMinutes val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type NextToken
    = NextToken String


nextToken : Refined String NextToken StringError
nextToken =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 1024) |> Result.map NextToken

        unboxFn (NextToken val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias NoEcho =
    Bool


type alias NotificationArn =
    String


type alias NotificationArns =
    List String


type OnFailure
    = OnFailureDoNothing
    | OnFailureRollback
    | OnFailureDelete


onFailure : Enum OnFailure
onFailure =
    Enum.define
        [ OnFailureDoNothing, OnFailureRollback, OnFailureDelete ]
        (\val ->
            case val of
                OnFailureDoNothing ->
                    "DO_NOTHING"

                OnFailureRollback ->
                    "ROLLBACK"

                OnFailureDelete ->
                    "DELETE"
        )


type alias Output =
    { outputValue : String, outputKey : String, exportName : String, description : Description }


type alias OutputKey =
    String


type alias OutputValue =
    String


type alias Outputs =
    List Output


type alias Parameter =
    { usePreviousValue : Bool, resolvedValue : String, parameterValue : String, parameterKey : String }


type alias ParameterConstraints =
    { allowedValues : AllowedValues }


type alias ParameterDeclaration =
    { parameterType : String
    , parameterKey : String
    , parameterConstraints : ParameterConstraints
    , noEcho : Bool
    , description : Description
    , defaultValue : String
    }


type alias ParameterDeclarations =
    List ParameterDeclaration


type alias ParameterKey =
    String


type alias ParameterType =
    String


type alias ParameterValue =
    String


type alias Parameters =
    List Parameter


type alias PhysicalResourceId =
    String


type alias PhysicalResourceIdContext =
    List PhysicalResourceIdContextKeyValuePair


type alias PhysicalResourceIdContextKeyValuePair =
    { value : String, key : String }


type alias Properties =
    String


type alias PropertyDifference =
    { propertyPath : String, expectedValue : String, differenceType : DifferenceType, actualValue : String }


type alias PropertyDifferences =
    List PropertyDifference


type alias PropertyName =
    String


type alias PropertyPath =
    String


type alias PropertyValue =
    String


type alias Reason =
    String


type alias Region =
    String


type alias RegionList =
    List String


type Replacement
    = ReplacementTrue
    | ReplacementFalse
    | ReplacementConditional


replacement : Enum Replacement
replacement =
    Enum.define
        [ ReplacementTrue, ReplacementFalse, ReplacementConditional ]
        (\val ->
            case val of
                ReplacementTrue ->
                    "True"

                ReplacementFalse ->
                    "False"

                ReplacementConditional ->
                    "Conditional"
        )


type RequiresRecreation
    = RequiresRecreationNever_
    | RequiresRecreationConditionally
    | RequiresRecreationAlways


requiresRecreation : Enum RequiresRecreation
requiresRecreation =
    Enum.define
        [ RequiresRecreationNever_, RequiresRecreationConditionally, RequiresRecreationAlways ]
        (\val ->
            case val of
                RequiresRecreationNever_ ->
                    "Never"

                RequiresRecreationConditionally ->
                    "Conditionally"

                RequiresRecreationAlways ->
                    "Always"
        )


type ResourceAttribute
    = ResourceAttributeProperties
    | ResourceAttributeMetadata
    | ResourceAttributeCreationPolicy
    | ResourceAttributeUpdatePolicy
    | ResourceAttributeDeletionPolicy
    | ResourceAttributeTags


resourceAttribute : Enum ResourceAttribute
resourceAttribute =
    Enum.define
        [ ResourceAttributeProperties
        , ResourceAttributeMetadata
        , ResourceAttributeCreationPolicy
        , ResourceAttributeUpdatePolicy
        , ResourceAttributeDeletionPolicy
        , ResourceAttributeTags
        ]
        (\val ->
            case val of
                ResourceAttributeProperties ->
                    "Properties"

                ResourceAttributeMetadata ->
                    "Metadata"

                ResourceAttributeCreationPolicy ->
                    "CreationPolicy"

                ResourceAttributeUpdatePolicy ->
                    "UpdatePolicy"

                ResourceAttributeDeletionPolicy ->
                    "DeletionPolicy"

                ResourceAttributeTags ->
                    "Tags"
        )


type alias ResourceChange =
    { scope : Scope
    , resourceType : ResourceType
    , replacement : Replacement
    , physicalResourceId : String
    , logicalResourceId : String
    , details : ResourceChangeDetails
    , action : ChangeAction
    }


type alias ResourceChangeDetail =
    { target : ResourceTargetDefinition
    , evaluation : EvaluationType
    , changeSource : ChangeSource
    , causingEntity : String
    }


type alias ResourceChangeDetails =
    List ResourceChangeDetail


type alias ResourceProperties =
    String


type ResourceSignalStatus
    = ResourceSignalStatusSuccess
    | ResourceSignalStatusFailure


resourceSignalStatus : Enum ResourceSignalStatus
resourceSignalStatus =
    Enum.define
        [ ResourceSignalStatusSuccess, ResourceSignalStatusFailure ]
        (\val ->
            case val of
                ResourceSignalStatusSuccess ->
                    "SUCCESS"

                ResourceSignalStatusFailure ->
                    "FAILURE"
        )


type ResourceSignalUniqueId
    = ResourceSignalUniqueId String


resourceSignalUniqueId : Refined String ResourceSignalUniqueId StringError
resourceSignalUniqueId =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 64) |> Result.map ResourceSignalUniqueId

        unboxFn (ResourceSignalUniqueId val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type ResourceStatus
    = ResourceStatusCreateInProgress
    | ResourceStatusCreateFailed
    | ResourceStatusCreateComplete
    | ResourceStatusDeleteInProgress
    | ResourceStatusDeleteFailed
    | ResourceStatusDeleteComplete
    | ResourceStatusDeleteSkipped
    | ResourceStatusUpdateInProgress
    | ResourceStatusUpdateFailed
    | ResourceStatusUpdateComplete


resourceStatus : Enum ResourceStatus
resourceStatus =
    Enum.define
        [ ResourceStatusCreateInProgress
        , ResourceStatusCreateFailed
        , ResourceStatusCreateComplete
        , ResourceStatusDeleteInProgress
        , ResourceStatusDeleteFailed
        , ResourceStatusDeleteComplete
        , ResourceStatusDeleteSkipped
        , ResourceStatusUpdateInProgress
        , ResourceStatusUpdateFailed
        , ResourceStatusUpdateComplete
        ]
        (\val ->
            case val of
                ResourceStatusCreateInProgress ->
                    "CREATE_IN_PROGRESS"

                ResourceStatusCreateFailed ->
                    "CREATE_FAILED"

                ResourceStatusCreateComplete ->
                    "CREATE_COMPLETE"

                ResourceStatusDeleteInProgress ->
                    "DELETE_IN_PROGRESS"

                ResourceStatusDeleteFailed ->
                    "DELETE_FAILED"

                ResourceStatusDeleteComplete ->
                    "DELETE_COMPLETE"

                ResourceStatusDeleteSkipped ->
                    "DELETE_SKIPPED"

                ResourceStatusUpdateInProgress ->
                    "UPDATE_IN_PROGRESS"

                ResourceStatusUpdateFailed ->
                    "UPDATE_FAILED"

                ResourceStatusUpdateComplete ->
                    "UPDATE_COMPLETE"
        )


type alias ResourceStatusReason =
    String


type alias ResourceTargetDefinition =
    { requiresRecreation : RequiresRecreation, name : String, attribute : ResourceAttribute }


type ResourceToSkip
    = ResourceToSkip String


resourceToSkip : Refined String ResourceToSkip StringError
resourceToSkip =
    let
        guardFn val =
            Refined.regexMatch "[a-zA-Z0-9]+|[a-zA-Z][-a-zA-Z0-9]*\\.[a-zA-Z0-9]+" val |> Result.map ResourceToSkip

        unboxFn (ResourceToSkip val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type ResourceType
    = ResourceType String


resourceType : Refined String ResourceType StringError
resourceType =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 256) |> Result.map ResourceType

        unboxFn (ResourceType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias ResourceTypes =
    List ResourceType


type alias ResourcesToSkip =
    List ResourceToSkip


type alias RetainResources =
    List String


type alias RetainStacks =
    Bool


type alias RetainStacksNullable =
    Bool


type RoleArn
    = RoleArn String


roleArn : Refined String RoleArn StringError
roleArn =
    let
        guardFn val =
            Refined.minLength 20 val |> Result.andThen (Refined.maxLength 2048) |> Result.map RoleArn

        unboxFn (RoleArn val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias RollbackConfiguration =
    { rollbackTriggers : RollbackTriggers, monitoringTimeInMinutes : MonitoringTimeInMinutes }


type alias RollbackTrigger =
    { type_ : String, arn : String }


type alias RollbackTriggers =
    List RollbackTrigger


type alias Scope =
    List ResourceAttribute


type alias SetStackPolicyInput =
    { stackPolicyUrl : StackPolicyUrl, stackPolicyBody : StackPolicyBody, stackName : String }


type alias SignalResourceInput =
    { uniqueId : ResourceSignalUniqueId
    , status : ResourceSignalStatus
    , stackName : StackNameOrId
    , logicalResourceId : String
    }


type alias Stack =
    { timeoutInMinutes : TimeoutMinutes
    , tags : Tags
    , stackStatusReason : String
    , stackStatus : StackStatus
    , stackName : String
    , stackId : String
    , rootId : String
    , rollbackConfiguration : RollbackConfiguration
    , roleArn : RoleArn
    , parentId : String
    , parameters : Parameters
    , outputs : Outputs
    , notificationArns : NotificationArns
    , lastUpdatedTime : LastUpdatedTime
    , enableTerminationProtection : Bool
    , driftInformation : StackDriftInformation
    , disableRollback : Bool
    , description : Description
    , deletionTime : DeletionTime
    , creationTime : CreationTime
    , changeSetId : ChangeSetId
    , capabilities : Capabilities
    }


type StackDriftDetectionId
    = StackDriftDetectionId String


stackDriftDetectionId : Refined String StackDriftDetectionId StringError
stackDriftDetectionId =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 36) |> Result.map StackDriftDetectionId

        unboxFn (StackDriftDetectionId val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type StackDriftDetectionStatus
    = StackDriftDetectionStatusDetectionInProgress
    | StackDriftDetectionStatusDetectionFailed
    | StackDriftDetectionStatusDetectionComplete


stackDriftDetectionStatus : Enum StackDriftDetectionStatus
stackDriftDetectionStatus =
    Enum.define
        [ StackDriftDetectionStatusDetectionInProgress
        , StackDriftDetectionStatusDetectionFailed
        , StackDriftDetectionStatusDetectionComplete
        ]
        (\val ->
            case val of
                StackDriftDetectionStatusDetectionInProgress ->
                    "DETECTION_IN_PROGRESS"

                StackDriftDetectionStatusDetectionFailed ->
                    "DETECTION_FAILED"

                StackDriftDetectionStatusDetectionComplete ->
                    "DETECTION_COMPLETE"
        )


type alias StackDriftDetectionStatusReason =
    String


type alias StackDriftInformation =
    { stackDriftStatus : StackDriftStatus, lastCheckTimestamp : Timestamp }


type alias StackDriftInformationSummary =
    { stackDriftStatus : StackDriftStatus, lastCheckTimestamp : Timestamp }


type StackDriftStatus
    = StackDriftStatusDrifted
    | StackDriftStatusInSync
    | StackDriftStatusUnknown
    | StackDriftStatusNotChecked


stackDriftStatus : Enum StackDriftStatus
stackDriftStatus =
    Enum.define
        [ StackDriftStatusDrifted, StackDriftStatusInSync, StackDriftStatusUnknown, StackDriftStatusNotChecked ]
        (\val ->
            case val of
                StackDriftStatusDrifted ->
                    "DRIFTED"

                StackDriftStatusInSync ->
                    "IN_SYNC"

                StackDriftStatusUnknown ->
                    "UNKNOWN"

                StackDriftStatusNotChecked ->
                    "NOT_CHECKED"
        )


type alias StackEvent =
    { timestamp : Timestamp
    , stackName : String
    , stackId : String
    , resourceType : ResourceType
    , resourceStatusReason : String
    , resourceStatus : ResourceStatus
    , resourceProperties : String
    , physicalResourceId : String
    , logicalResourceId : String
    , eventId : String
    , clientRequestToken : ClientRequestToken
    }


type alias StackEvents =
    List StackEvent


type alias StackId =
    String


type alias StackInstance =
    { statusReason : String
    , status : StackInstanceStatus
    , stackSetId : String
    , stackId : String
    , region : String
    , parameterOverrides : Parameters
    , account : Account
    }


type StackInstanceStatus
    = StackInstanceStatusCurrent
    | StackInstanceStatusOutdated
    | StackInstanceStatusInoperable


stackInstanceStatus : Enum StackInstanceStatus
stackInstanceStatus =
    Enum.define
        [ StackInstanceStatusCurrent, StackInstanceStatusOutdated, StackInstanceStatusInoperable ]
        (\val ->
            case val of
                StackInstanceStatusCurrent ->
                    "CURRENT"

                StackInstanceStatusOutdated ->
                    "OUTDATED"

                StackInstanceStatusInoperable ->
                    "INOPERABLE"
        )


type alias StackInstanceSummaries =
    List StackInstanceSummary


type alias StackInstanceSummary =
    { statusReason : String
    , status : StackInstanceStatus
    , stackSetId : String
    , stackId : String
    , region : String
    , account : Account
    }


type alias StackName =
    String


type StackNameOrId
    = StackNameOrId String


stackNameOrId : Refined String StackNameOrId StringError
stackNameOrId =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen
                    (Refined.regexMatch "([a-zA-Z][-a-zA-Z0-9]*)|(arn:\\b(aws|aws-us-gov|aws-cn)\\b:[-a-zA-Z0-9:/._+]*)"
                    )
                |> Result.map StackNameOrId

        unboxFn (StackNameOrId val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type StackPolicyBody
    = StackPolicyBody String


stackPolicyBody : Refined String StackPolicyBody StringError
stackPolicyBody =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 16384) |> Result.map StackPolicyBody

        unboxFn (StackPolicyBody val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type StackPolicyDuringUpdateBody
    = StackPolicyDuringUpdateBody String


stackPolicyDuringUpdateBody : Refined String StackPolicyDuringUpdateBody StringError
stackPolicyDuringUpdateBody =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 16384)
                |> Result.map StackPolicyDuringUpdateBody

        unboxFn (StackPolicyDuringUpdateBody val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type StackPolicyDuringUpdateUrl
    = StackPolicyDuringUpdateUrl String


stackPolicyDuringUpdateUrl : Refined String StackPolicyDuringUpdateUrl StringError
stackPolicyDuringUpdateUrl =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 1350) |> Result.map StackPolicyDuringUpdateUrl

        unboxFn (StackPolicyDuringUpdateUrl val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type StackPolicyUrl
    = StackPolicyUrl String


stackPolicyUrl : Refined String StackPolicyUrl StringError
stackPolicyUrl =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 1350) |> Result.map StackPolicyUrl

        unboxFn (StackPolicyUrl val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias StackResource =
    { timestamp : Timestamp
    , stackName : String
    , stackId : String
    , resourceType : ResourceType
    , resourceStatusReason : String
    , resourceStatus : ResourceStatus
    , physicalResourceId : String
    , logicalResourceId : String
    , driftInformation : StackResourceDriftInformation
    , description : Description
    }


type alias StackResourceDetail =
    { stackName : String
    , stackId : String
    , resourceType : ResourceType
    , resourceStatusReason : String
    , resourceStatus : ResourceStatus
    , physicalResourceId : String
    , metadata : String
    , logicalResourceId : String
    , lastUpdatedTimestamp : Timestamp
    , driftInformation : StackResourceDriftInformation
    , description : Description
    }


type alias StackResourceDrift =
    { timestamp : Timestamp
    , stackResourceDriftStatus : StackResourceDriftStatus
    , stackId : String
    , resourceType : ResourceType
    , propertyDifferences : PropertyDifferences
    , physicalResourceIdContext : PhysicalResourceIdContext
    , physicalResourceId : String
    , logicalResourceId : String
    , expectedProperties : String
    , actualProperties : String
    }


type alias StackResourceDriftInformation =
    { stackResourceDriftStatus : StackResourceDriftStatus, lastCheckTimestamp : Timestamp }


type alias StackResourceDriftInformationSummary =
    { stackResourceDriftStatus : StackResourceDriftStatus, lastCheckTimestamp : Timestamp }


type StackResourceDriftStatus
    = StackResourceDriftStatusInSync
    | StackResourceDriftStatusModified
    | StackResourceDriftStatusDeleted
    | StackResourceDriftStatusNotChecked


stackResourceDriftStatus : Enum StackResourceDriftStatus
stackResourceDriftStatus =
    Enum.define
        [ StackResourceDriftStatusInSync
        , StackResourceDriftStatusModified
        , StackResourceDriftStatusDeleted
        , StackResourceDriftStatusNotChecked
        ]
        (\val ->
            case val of
                StackResourceDriftStatusInSync ->
                    "IN_SYNC"

                StackResourceDriftStatusModified ->
                    "MODIFIED"

                StackResourceDriftStatusDeleted ->
                    "DELETED"

                StackResourceDriftStatusNotChecked ->
                    "NOT_CHECKED"
        )


type alias StackResourceDriftStatusFilters =
    List StackResourceDriftStatus


type alias StackResourceDrifts =
    List StackResourceDrift


type alias StackResourceSummaries =
    List StackResourceSummary


type alias StackResourceSummary =
    { resourceType : ResourceType
    , resourceStatusReason : String
    , resourceStatus : ResourceStatus
    , physicalResourceId : String
    , logicalResourceId : String
    , lastUpdatedTimestamp : Timestamp
    , driftInformation : StackResourceDriftInformationSummary
    }


type alias StackResources =
    List StackResource


type alias StackSet =
    { templateBody : TemplateBody
    , tags : Tags
    , status : StackSetStatus
    , stackSetName : String
    , stackSetId : String
    , stackSetArn : String
    , parameters : Parameters
    , executionRoleName : ExecutionRoleName
    , description : Description
    , capabilities : Capabilities
    , administrationRoleArn : RoleArn
    }


type alias StackSetArn =
    String


type alias StackSetId =
    String


type alias StackSetName =
    String


type StackSetNameOrId
    = StackSetNameOrId String


stackSetNameOrId : Refined String StackSetNameOrId StringError
stackSetNameOrId =
    let
        guardFn val =
            Refined.regexMatch
                "[a-zA-Z][-a-zA-Z0-9]*(?::[a-zA-Z0-9]{8}-[a-zA-Z0-9]{4}-[a-zA-Z0-9]{4}-[a-zA-Z0-9]{4}-[a-zA-Z0-9]{12})?"
                val
                |> Result.map StackSetNameOrId

        unboxFn (StackSetNameOrId val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias StackSetOperation =
    { status : StackSetOperationStatus
    , stackSetId : String
    , retainStacks : Bool
    , operationPreferences : StackSetOperationPreferences
    , operationId : ClientRequestToken
    , executionRoleName : ExecutionRoleName
    , endTimestamp : Timestamp
    , creationTimestamp : Timestamp
    , administrationRoleArn : RoleArn
    , action : StackSetOperationAction
    }


type StackSetOperationAction
    = StackSetOperationActionCreate
    | StackSetOperationActionUpdate
    | StackSetOperationActionDelete


stackSetOperationAction : Enum StackSetOperationAction
stackSetOperationAction =
    Enum.define
        [ StackSetOperationActionCreate, StackSetOperationActionUpdate, StackSetOperationActionDelete ]
        (\val ->
            case val of
                StackSetOperationActionCreate ->
                    "CREATE"

                StackSetOperationActionUpdate ->
                    "UPDATE"

                StackSetOperationActionDelete ->
                    "DELETE"
        )


type alias StackSetOperationPreferences =
    { regionOrder : RegionList
    , maxConcurrentPercentage : MaxConcurrentPercentage
    , maxConcurrentCount : MaxConcurrentCount
    , failureTolerancePercentage : FailureTolerancePercentage
    , failureToleranceCount : FailureToleranceCount
    }


type StackSetOperationResultStatus
    = StackSetOperationResultStatusPending
    | StackSetOperationResultStatusRunning
    | StackSetOperationResultStatusSucceeded
    | StackSetOperationResultStatusFailed
    | StackSetOperationResultStatusCancelled


stackSetOperationResultStatus : Enum StackSetOperationResultStatus
stackSetOperationResultStatus =
    Enum.define
        [ StackSetOperationResultStatusPending
        , StackSetOperationResultStatusRunning
        , StackSetOperationResultStatusSucceeded
        , StackSetOperationResultStatusFailed
        , StackSetOperationResultStatusCancelled
        ]
        (\val ->
            case val of
                StackSetOperationResultStatusPending ->
                    "PENDING"

                StackSetOperationResultStatusRunning ->
                    "RUNNING"

                StackSetOperationResultStatusSucceeded ->
                    "SUCCEEDED"

                StackSetOperationResultStatusFailed ->
                    "FAILED"

                StackSetOperationResultStatusCancelled ->
                    "CANCELLED"
        )


type alias StackSetOperationResultSummaries =
    List StackSetOperationResultSummary


type alias StackSetOperationResultSummary =
    { statusReason : String
    , status : StackSetOperationResultStatus
    , region : String
    , accountGateResult : AccountGateResult
    , account : Account
    }


type StackSetOperationStatus
    = StackSetOperationStatusRunning
    | StackSetOperationStatusSucceeded
    | StackSetOperationStatusFailed
    | StackSetOperationStatusStopping
    | StackSetOperationStatusStopped


stackSetOperationStatus : Enum StackSetOperationStatus
stackSetOperationStatus =
    Enum.define
        [ StackSetOperationStatusRunning
        , StackSetOperationStatusSucceeded
        , StackSetOperationStatusFailed
        , StackSetOperationStatusStopping
        , StackSetOperationStatusStopped
        ]
        (\val ->
            case val of
                StackSetOperationStatusRunning ->
                    "RUNNING"

                StackSetOperationStatusSucceeded ->
                    "SUCCEEDED"

                StackSetOperationStatusFailed ->
                    "FAILED"

                StackSetOperationStatusStopping ->
                    "STOPPING"

                StackSetOperationStatusStopped ->
                    "STOPPED"
        )


type alias StackSetOperationSummaries =
    List StackSetOperationSummary


type alias StackSetOperationSummary =
    { status : StackSetOperationStatus
    , operationId : ClientRequestToken
    , endTimestamp : Timestamp
    , creationTimestamp : Timestamp
    , action : StackSetOperationAction
    }


type StackSetStatus
    = StackSetStatusActive
    | StackSetStatusDeleted


stackSetStatus : Enum StackSetStatus
stackSetStatus =
    Enum.define
        [ StackSetStatusActive, StackSetStatusDeleted ]
        (\val ->
            case val of
                StackSetStatusActive ->
                    "ACTIVE"

                StackSetStatusDeleted ->
                    "DELETED"
        )


type alias StackSetSummaries =
    List StackSetSummary


type alias StackSetSummary =
    { status : StackSetStatus, stackSetName : String, stackSetId : String, description : Description }


type StackStatus
    = StackStatusCreateInProgress
    | StackStatusCreateFailed
    | StackStatusCreateComplete
    | StackStatusRollbackInProgress
    | StackStatusRollbackFailed
    | StackStatusRollbackComplete
    | StackStatusDeleteInProgress
    | StackStatusDeleteFailed
    | StackStatusDeleteComplete
    | StackStatusUpdateInProgress
    | StackStatusUpdateCompleteCleanupInProgress
    | StackStatusUpdateComplete
    | StackStatusUpdateRollbackInProgress
    | StackStatusUpdateRollbackFailed
    | StackStatusUpdateRollbackCompleteCleanupInProgress
    | StackStatusUpdateRollbackComplete
    | StackStatusReviewInProgress


stackStatus : Enum StackStatus
stackStatus =
    Enum.define
        [ StackStatusCreateInProgress
        , StackStatusCreateFailed
        , StackStatusCreateComplete
        , StackStatusRollbackInProgress
        , StackStatusRollbackFailed
        , StackStatusRollbackComplete
        , StackStatusDeleteInProgress
        , StackStatusDeleteFailed
        , StackStatusDeleteComplete
        , StackStatusUpdateInProgress
        , StackStatusUpdateCompleteCleanupInProgress
        , StackStatusUpdateComplete
        , StackStatusUpdateRollbackInProgress
        , StackStatusUpdateRollbackFailed
        , StackStatusUpdateRollbackCompleteCleanupInProgress
        , StackStatusUpdateRollbackComplete
        , StackStatusReviewInProgress
        ]
        (\val ->
            case val of
                StackStatusCreateInProgress ->
                    "CREATE_IN_PROGRESS"

                StackStatusCreateFailed ->
                    "CREATE_FAILED"

                StackStatusCreateComplete ->
                    "CREATE_COMPLETE"

                StackStatusRollbackInProgress ->
                    "ROLLBACK_IN_PROGRESS"

                StackStatusRollbackFailed ->
                    "ROLLBACK_FAILED"

                StackStatusRollbackComplete ->
                    "ROLLBACK_COMPLETE"

                StackStatusDeleteInProgress ->
                    "DELETE_IN_PROGRESS"

                StackStatusDeleteFailed ->
                    "DELETE_FAILED"

                StackStatusDeleteComplete ->
                    "DELETE_COMPLETE"

                StackStatusUpdateInProgress ->
                    "UPDATE_IN_PROGRESS"

                StackStatusUpdateCompleteCleanupInProgress ->
                    "UPDATE_COMPLETE_CLEANUP_IN_PROGRESS"

                StackStatusUpdateComplete ->
                    "UPDATE_COMPLETE"

                StackStatusUpdateRollbackInProgress ->
                    "UPDATE_ROLLBACK_IN_PROGRESS"

                StackStatusUpdateRollbackFailed ->
                    "UPDATE_ROLLBACK_FAILED"

                StackStatusUpdateRollbackCompleteCleanupInProgress ->
                    "UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS"

                StackStatusUpdateRollbackComplete ->
                    "UPDATE_ROLLBACK_COMPLETE"

                StackStatusReviewInProgress ->
                    "REVIEW_IN_PROGRESS"
        )


type alias StackStatusFilter =
    List StackStatus


type alias StackStatusReason =
    String


type alias StackSummaries =
    List StackSummary


type alias StackSummary =
    { templateDescription : String
    , stackStatusReason : String
    , stackStatus : StackStatus
    , stackName : String
    , stackId : String
    , rootId : String
    , parentId : String
    , lastUpdatedTime : LastUpdatedTime
    , driftInformation : StackDriftInformationSummary
    , deletionTime : DeletionTime
    , creationTime : CreationTime
    }


type alias Stacks =
    List Stack


type alias StageList =
    List TemplateStage


type alias StopStackSetOperationInput =
    { stackSetName : String, operationId : ClientRequestToken }


type alias StopStackSetOperationOutput =
    {}


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


type TagValue
    = TagValue String


tagValue : Refined String TagValue StringError
tagValue =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 256) |> Result.map TagValue

        unboxFn (TagValue val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias Tags =
    List Tag


type TemplateBody
    = TemplateBody String


templateBody : Refined String TemplateBody StringError
templateBody =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.map TemplateBody

        unboxFn (TemplateBody val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias TemplateDescription =
    String


type alias TemplateParameter =
    { parameterKey : String, noEcho : Bool, description : Description, defaultValue : String }


type alias TemplateParameters =
    List TemplateParameter


type TemplateStage
    = TemplateStageOriginal
    | TemplateStageProcessed


templateStage : Enum TemplateStage
templateStage =
    Enum.define
        [ TemplateStageOriginal, TemplateStageProcessed ]
        (\val ->
            case val of
                TemplateStageOriginal ->
                    "Original"

                TemplateStageProcessed ->
                    "Processed"
        )


type TemplateUrl
    = TemplateUrl String


templateUrl : Refined String TemplateUrl StringError
templateUrl =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 1024) |> Result.map TemplateUrl

        unboxFn (TemplateUrl val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type TimeoutMinutes
    = TimeoutMinutes Int


timeoutMinutes : Refined Int TimeoutMinutes IntError
timeoutMinutes =
    let
        guardFn val =
            Refined.gt 1 val |> Result.map TimeoutMinutes

        unboxFn (TimeoutMinutes val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type alias Timestamp =
    String


type alias TransformName =
    String


type alias TransformsList =
    List String


type alias Type =
    String


type alias UpdateStackInput =
    { usePreviousTemplate : Bool
    , templateUrl : TemplateUrl
    , templateBody : TemplateBody
    , tags : Tags
    , stackPolicyUrl : StackPolicyUrl
    , stackPolicyDuringUpdateUrl : StackPolicyDuringUpdateUrl
    , stackPolicyDuringUpdateBody : StackPolicyDuringUpdateBody
    , stackPolicyBody : StackPolicyBody
    , stackName : String
    , rollbackConfiguration : RollbackConfiguration
    , roleArn : RoleArn
    , resourceTypes : ResourceTypes
    , parameters : Parameters
    , notificationArns : NotificationArns
    , clientRequestToken : ClientRequestToken
    , capabilities : Capabilities
    }


type alias UpdateStackInstancesInput =
    { stackSetName : StackSetNameOrId
    , regions : RegionList
    , parameterOverrides : Parameters
    , operationPreferences : StackSetOperationPreferences
    , operationId : ClientRequestToken
    , accounts : AccountList
    }


type alias UpdateStackInstancesOutput =
    { operationId : ClientRequestToken }


type alias UpdateStackOutput =
    { stackId : String }


type alias UpdateStackSetInput =
    { usePreviousTemplate : Bool
    , templateUrl : TemplateUrl
    , templateBody : TemplateBody
    , tags : Tags
    , stackSetName : String
    , regions : RegionList
    , parameters : Parameters
    , operationPreferences : StackSetOperationPreferences
    , operationId : ClientRequestToken
    , executionRoleName : ExecutionRoleName
    , description : Description
    , capabilities : Capabilities
    , administrationRoleArn : RoleArn
    , accounts : AccountList
    }


type alias UpdateStackSetOutput =
    { operationId : ClientRequestToken }


type alias UpdateTerminationProtectionInput =
    { stackName : StackNameOrId, enableTerminationProtection : Bool }


type alias UpdateTerminationProtectionOutput =
    { stackId : String }


type alias Url =
    String


type alias UsePreviousTemplate =
    Bool


type alias UsePreviousValue =
    Bool


type alias ValidateTemplateInput =
    { templateUrl : TemplateUrl, templateBody : TemplateBody }


type alias ValidateTemplateOutput =
    { parameters : TemplateParameters
    , description : Description
    , declaredTransforms : TransformsList
    , capabilitiesReason : String
    , capabilities : Capabilities
    }


type alias Value =
    String


type alias Version =
    String


{-| Codec for Version. -}
versionCodec : Codec Version
versionCodec =
    Codec.string


{-| Codec for Value. -}
valueCodec : Codec Value
valueCodec =
    Codec.string


{-| Codec for ValidateTemplateOutput. -}
validateTemplateOutputCodec : Codec ValidateTemplateOutput
validateTemplateOutputCodec =
    Codec.object ValidateTemplateOutput
        |> Codec.field "Parameters" .parameters templateParametersCodec
        |> Codec.field "Description" .description descriptionCodec
        |> Codec.field "DeclaredTransforms" .declaredTransforms transformsListCodec
        |> Codec.field "CapabilitiesReason" .capabilitiesReason Codec.string
        |> Codec.field "Capabilities" .capabilities capabilitiesCodec
        |> Codec.buildObject


{-| Codec for ValidateTemplateInput. -}
validateTemplateInputCodec : Codec ValidateTemplateInput
validateTemplateInputCodec =
    Codec.object ValidateTemplateInput
        |> Codec.field "TemplateURL" .templateUrl templateUrlcodec
        |> Codec.field "TemplateBody" .templateBody templateBodyCodec
        |> Codec.buildObject


{-| Codec for UsePreviousValue. -}
usePreviousValueCodec : Codec UsePreviousValue
usePreviousValueCodec =
    Codec.bool


{-| Codec for UsePreviousTemplate. -}
usePreviousTemplateCodec : Codec UsePreviousTemplate
usePreviousTemplateCodec =
    Codec.bool


{-| Codec for Url. -}
urlCodec : Codec Url
urlCodec =
    Codec.string


{-| Codec for UpdateTerminationProtectionOutput. -}
updateTerminationProtectionOutputCodec : Codec UpdateTerminationProtectionOutput
updateTerminationProtectionOutputCodec =
    Codec.object UpdateTerminationProtectionOutput |> Codec.field "StackId" .stackId Codec.string |> Codec.buildObject


{-| Codec for UpdateTerminationProtectionInput. -}
updateTerminationProtectionInputCodec : Codec UpdateTerminationProtectionInput
updateTerminationProtectionInputCodec =
    Codec.object UpdateTerminationProtectionInput
        |> Codec.field "StackName" .stackName stackNameOrIdCodec
        |> Codec.field "EnableTerminationProtection" .enableTerminationProtection Codec.bool
        |> Codec.buildObject


{-| Codec for UpdateStackSetOutput. -}
updateStackSetOutputCodec : Codec UpdateStackSetOutput
updateStackSetOutputCodec =
    Codec.object UpdateStackSetOutput
        |> Codec.field "OperationId" .operationId clientRequestTokenCodec
        |> Codec.buildObject


{-| Codec for UpdateStackSetInput. -}
updateStackSetInputCodec : Codec UpdateStackSetInput
updateStackSetInputCodec =
    Codec.object UpdateStackSetInput
        |> Codec.field "UsePreviousTemplate" .usePreviousTemplate Codec.bool
        |> Codec.field "TemplateURL" .templateUrl templateUrlcodec
        |> Codec.field "TemplateBody" .templateBody templateBodyCodec
        |> Codec.field "Tags" .tags tagsCodec
        |> Codec.field "StackSetName" .stackSetName Codec.string
        |> Codec.field "Regions" .regions regionListCodec
        |> Codec.field "Parameters" .parameters parametersCodec
        |> Codec.field "OperationPreferences" .operationPreferences stackSetOperationPreferencesCodec
        |> Codec.field "OperationId" .operationId clientRequestTokenCodec
        |> Codec.field "ExecutionRoleName" .executionRoleName executionRoleNameCodec
        |> Codec.field "Description" .description descriptionCodec
        |> Codec.field "Capabilities" .capabilities capabilitiesCodec
        |> Codec.field "AdministrationRoleARN" .administrationRoleArn roleArncodec
        |> Codec.field "Accounts" .accounts accountListCodec
        |> Codec.buildObject


{-| Codec for UpdateStackOutput. -}
updateStackOutputCodec : Codec UpdateStackOutput
updateStackOutputCodec =
    Codec.object UpdateStackOutput |> Codec.field "StackId" .stackId Codec.string |> Codec.buildObject


{-| Codec for UpdateStackInstancesOutput. -}
updateStackInstancesOutputCodec : Codec UpdateStackInstancesOutput
updateStackInstancesOutputCodec =
    Codec.object UpdateStackInstancesOutput
        |> Codec.field "OperationId" .operationId clientRequestTokenCodec
        |> Codec.buildObject


{-| Codec for UpdateStackInstancesInput. -}
updateStackInstancesInputCodec : Codec UpdateStackInstancesInput
updateStackInstancesInputCodec =
    Codec.object UpdateStackInstancesInput
        |> Codec.field "StackSetName" .stackSetName stackSetNameOrIdCodec
        |> Codec.field "Regions" .regions regionListCodec
        |> Codec.field "ParameterOverrides" .parameterOverrides parametersCodec
        |> Codec.field "OperationPreferences" .operationPreferences stackSetOperationPreferencesCodec
        |> Codec.field "OperationId" .operationId clientRequestTokenCodec
        |> Codec.field "Accounts" .accounts accountListCodec
        |> Codec.buildObject


{-| Codec for UpdateStackInput. -}
updateStackInputCodec : Codec UpdateStackInput
updateStackInputCodec =
    Codec.object UpdateStackInput
        |> Codec.field "UsePreviousTemplate" .usePreviousTemplate Codec.bool
        |> Codec.field "TemplateURL" .templateUrl templateUrlcodec
        |> Codec.field "TemplateBody" .templateBody templateBodyCodec
        |> Codec.field "Tags" .tags tagsCodec
        |> Codec.field "StackPolicyURL" .stackPolicyUrl stackPolicyUrlcodec
        |> Codec.field "StackPolicyDuringUpdateURL" .stackPolicyDuringUpdateUrl stackPolicyDuringUpdateUrlcodec
        |> Codec.field "StackPolicyDuringUpdateBody" .stackPolicyDuringUpdateBody stackPolicyDuringUpdateBodyCodec
        |> Codec.field "StackPolicyBody" .stackPolicyBody stackPolicyBodyCodec
        |> Codec.field "StackName" .stackName Codec.string
        |> Codec.field "RollbackConfiguration" .rollbackConfiguration rollbackConfigurationCodec
        |> Codec.field "RoleARN" .roleArn roleArncodec
        |> Codec.field "ResourceTypes" .resourceTypes resourceTypesCodec
        |> Codec.field "Parameters" .parameters parametersCodec
        |> Codec.field "NotificationARNs" .notificationArns notificationArnsCodec
        |> Codec.field "ClientRequestToken" .clientRequestToken clientRequestTokenCodec
        |> Codec.field "Capabilities" .capabilities capabilitiesCodec
        |> Codec.buildObject


{-| Codec for Type. -}
typeCodec : Codec Type
typeCodec =
    Codec.string


{-| Codec for TransformsList. -}
transformsListCodec : Codec TransformsList
transformsListCodec =
    Codec.list Codec.string


{-| Codec for TransformName. -}
transformNameCodec : Codec TransformName
transformNameCodec =
    Codec.string


{-| Codec for Timestamp. -}
timestampCodec : Codec Timestamp
timestampCodec =
    Codec.string


{-| Codec for TimeoutMinutes. -}
timeoutMinutesCodec : Codec TimeoutMinutes
timeoutMinutesCodec =
    Codec.build (Refined.encoder timeoutMinutes) (Refined.decoder timeoutMinutes)


{-| Codec for TemplateUrl. -}
templateUrlcodec : Codec TemplateUrl
templateUrlcodec =
    Codec.build (Refined.encoder templateUrl) (Refined.decoder templateUrl)


{-| Codec for TemplateStage. -}
templateStageCodec : Codec TemplateStage
templateStageCodec =
    Codec.build (Enum.encoder templateStage) (Enum.decoder templateStage)


{-| Codec for TemplateParameters. -}
templateParametersCodec : Codec TemplateParameters
templateParametersCodec =
    Codec.list templateParameterCodec


{-| Codec for TemplateParameter. -}
templateParameterCodec : Codec TemplateParameter
templateParameterCodec =
    Codec.object TemplateParameter
        |> Codec.field "ParameterKey" .parameterKey Codec.string
        |> Codec.field "NoEcho" .noEcho Codec.bool
        |> Codec.field "Description" .description descriptionCodec
        |> Codec.field "DefaultValue" .defaultValue Codec.string
        |> Codec.buildObject


{-| Codec for TemplateDescription. -}
templateDescriptionCodec : Codec TemplateDescription
templateDescriptionCodec =
    Codec.string


{-| Codec for TemplateBody. -}
templateBodyCodec : Codec TemplateBody
templateBodyCodec =
    Codec.build (Refined.encoder templateBody) (Refined.decoder templateBody)


{-| Codec for Tags. -}
tagsCodec : Codec Tags
tagsCodec =
    Codec.list tagCodec


{-| Codec for TagValue. -}
tagValueCodec : Codec TagValue
tagValueCodec =
    Codec.build (Refined.encoder tagValue) (Refined.decoder tagValue)


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


{-| Codec for StopStackSetOperationOutput. -}
stopStackSetOperationOutputCodec : Codec StopStackSetOperationOutput
stopStackSetOperationOutputCodec =
    Codec.object StopStackSetOperationOutput |> Codec.buildObject


{-| Codec for StopStackSetOperationInput. -}
stopStackSetOperationInputCodec : Codec StopStackSetOperationInput
stopStackSetOperationInputCodec =
    Codec.object StopStackSetOperationInput
        |> Codec.field "StackSetName" .stackSetName Codec.string
        |> Codec.field "OperationId" .operationId clientRequestTokenCodec
        |> Codec.buildObject


{-| Codec for StageList. -}
stageListCodec : Codec StageList
stageListCodec =
    Codec.list templateStageCodec


{-| Codec for Stacks. -}
stacksCodec : Codec Stacks
stacksCodec =
    Codec.list stackCodec


{-| Codec for StackSummary. -}
stackSummaryCodec : Codec StackSummary
stackSummaryCodec =
    Codec.object StackSummary
        |> Codec.field "TemplateDescription" .templateDescription Codec.string
        |> Codec.field "StackStatusReason" .stackStatusReason Codec.string
        |> Codec.field "StackStatus" .stackStatus stackStatusCodec
        |> Codec.field "StackName" .stackName Codec.string
        |> Codec.field "StackId" .stackId Codec.string
        |> Codec.field "RootId" .rootId Codec.string
        |> Codec.field "ParentId" .parentId Codec.string
        |> Codec.field "LastUpdatedTime" .lastUpdatedTime lastUpdatedTimeCodec
        |> Codec.field "DriftInformation" .driftInformation stackDriftInformationSummaryCodec
        |> Codec.field "DeletionTime" .deletionTime deletionTimeCodec
        |> Codec.field "CreationTime" .creationTime creationTimeCodec
        |> Codec.buildObject


{-| Codec for StackSummaries. -}
stackSummariesCodec : Codec StackSummaries
stackSummariesCodec =
    Codec.list stackSummaryCodec


{-| Codec for StackStatusReason. -}
stackStatusReasonCodec : Codec StackStatusReason
stackStatusReasonCodec =
    Codec.string


{-| Codec for StackStatusFilter. -}
stackStatusFilterCodec : Codec StackStatusFilter
stackStatusFilterCodec =
    Codec.list stackStatusCodec


{-| Codec for StackStatus. -}
stackStatusCodec : Codec StackStatus
stackStatusCodec =
    Codec.build (Enum.encoder stackStatus) (Enum.decoder stackStatus)


{-| Codec for StackSetSummary. -}
stackSetSummaryCodec : Codec StackSetSummary
stackSetSummaryCodec =
    Codec.object StackSetSummary
        |> Codec.field "Status" .status stackSetStatusCodec
        |> Codec.field "StackSetName" .stackSetName Codec.string
        |> Codec.field "StackSetId" .stackSetId Codec.string
        |> Codec.field "Description" .description descriptionCodec
        |> Codec.buildObject


{-| Codec for StackSetSummaries. -}
stackSetSummariesCodec : Codec StackSetSummaries
stackSetSummariesCodec =
    Codec.list stackSetSummaryCodec


{-| Codec for StackSetStatus. -}
stackSetStatusCodec : Codec StackSetStatus
stackSetStatusCodec =
    Codec.build (Enum.encoder stackSetStatus) (Enum.decoder stackSetStatus)


{-| Codec for StackSetOperationSummary. -}
stackSetOperationSummaryCodec : Codec StackSetOperationSummary
stackSetOperationSummaryCodec =
    Codec.object StackSetOperationSummary
        |> Codec.field "Status" .status stackSetOperationStatusCodec
        |> Codec.field "OperationId" .operationId clientRequestTokenCodec
        |> Codec.field "EndTimestamp" .endTimestamp timestampCodec
        |> Codec.field "CreationTimestamp" .creationTimestamp timestampCodec
        |> Codec.field "Action" .action stackSetOperationActionCodec
        |> Codec.buildObject


{-| Codec for StackSetOperationSummaries. -}
stackSetOperationSummariesCodec : Codec StackSetOperationSummaries
stackSetOperationSummariesCodec =
    Codec.list stackSetOperationSummaryCodec


{-| Codec for StackSetOperationStatus. -}
stackSetOperationStatusCodec : Codec StackSetOperationStatus
stackSetOperationStatusCodec =
    Codec.build (Enum.encoder stackSetOperationStatus) (Enum.decoder stackSetOperationStatus)


{-| Codec for StackSetOperationResultSummary. -}
stackSetOperationResultSummaryCodec : Codec StackSetOperationResultSummary
stackSetOperationResultSummaryCodec =
    Codec.object StackSetOperationResultSummary
        |> Codec.field "StatusReason" .statusReason Codec.string
        |> Codec.field "Status" .status stackSetOperationResultStatusCodec
        |> Codec.field "Region" .region Codec.string
        |> Codec.field "AccountGateResult" .accountGateResult accountGateResultCodec
        |> Codec.field "Account" .account accountCodec
        |> Codec.buildObject


{-| Codec for StackSetOperationResultSummaries. -}
stackSetOperationResultSummariesCodec : Codec StackSetOperationResultSummaries
stackSetOperationResultSummariesCodec =
    Codec.list stackSetOperationResultSummaryCodec


{-| Codec for StackSetOperationResultStatus. -}
stackSetOperationResultStatusCodec : Codec StackSetOperationResultStatus
stackSetOperationResultStatusCodec =
    Codec.build (Enum.encoder stackSetOperationResultStatus) (Enum.decoder stackSetOperationResultStatus)


{-| Codec for StackSetOperationPreferences. -}
stackSetOperationPreferencesCodec : Codec StackSetOperationPreferences
stackSetOperationPreferencesCodec =
    Codec.object StackSetOperationPreferences
        |> Codec.field "RegionOrder" .regionOrder regionListCodec
        |> Codec.field "MaxConcurrentPercentage" .maxConcurrentPercentage maxConcurrentPercentageCodec
        |> Codec.field "MaxConcurrentCount" .maxConcurrentCount maxConcurrentCountCodec
        |> Codec.field "FailureTolerancePercentage" .failureTolerancePercentage failureTolerancePercentageCodec
        |> Codec.field "FailureToleranceCount" .failureToleranceCount failureToleranceCountCodec
        |> Codec.buildObject


{-| Codec for StackSetOperationAction. -}
stackSetOperationActionCodec : Codec StackSetOperationAction
stackSetOperationActionCodec =
    Codec.build (Enum.encoder stackSetOperationAction) (Enum.decoder stackSetOperationAction)


{-| Codec for StackSetOperation. -}
stackSetOperationCodec : Codec StackSetOperation
stackSetOperationCodec =
    Codec.object StackSetOperation
        |> Codec.field "Status" .status stackSetOperationStatusCodec
        |> Codec.field "StackSetId" .stackSetId Codec.string
        |> Codec.field "RetainStacks" .retainStacks Codec.bool
        |> Codec.field "OperationPreferences" .operationPreferences stackSetOperationPreferencesCodec
        |> Codec.field "OperationId" .operationId clientRequestTokenCodec
        |> Codec.field "ExecutionRoleName" .executionRoleName executionRoleNameCodec
        |> Codec.field "EndTimestamp" .endTimestamp timestampCodec
        |> Codec.field "CreationTimestamp" .creationTimestamp timestampCodec
        |> Codec.field "AdministrationRoleARN" .administrationRoleArn roleArncodec
        |> Codec.field "Action" .action stackSetOperationActionCodec
        |> Codec.buildObject


{-| Codec for StackSetNameOrId. -}
stackSetNameOrIdCodec : Codec StackSetNameOrId
stackSetNameOrIdCodec =
    Codec.build (Refined.encoder stackSetNameOrId) (Refined.decoder stackSetNameOrId)


{-| Codec for StackSetName. -}
stackSetNameCodec : Codec StackSetName
stackSetNameCodec =
    Codec.string


{-| Codec for StackSetId. -}
stackSetIdCodec : Codec StackSetId
stackSetIdCodec =
    Codec.string


{-| Codec for StackSetArn. -}
stackSetArncodec : Codec StackSetArn
stackSetArncodec =
    Codec.string


{-| Codec for StackSet. -}
stackSetCodec : Codec StackSet
stackSetCodec =
    Codec.object StackSet
        |> Codec.field "TemplateBody" .templateBody templateBodyCodec
        |> Codec.field "Tags" .tags tagsCodec
        |> Codec.field "Status" .status stackSetStatusCodec
        |> Codec.field "StackSetName" .stackSetName Codec.string
        |> Codec.field "StackSetId" .stackSetId Codec.string
        |> Codec.field "StackSetARN" .stackSetArn Codec.string
        |> Codec.field "Parameters" .parameters parametersCodec
        |> Codec.field "ExecutionRoleName" .executionRoleName executionRoleNameCodec
        |> Codec.field "Description" .description descriptionCodec
        |> Codec.field "Capabilities" .capabilities capabilitiesCodec
        |> Codec.field "AdministrationRoleARN" .administrationRoleArn roleArncodec
        |> Codec.buildObject


{-| Codec for StackResources. -}
stackResourcesCodec : Codec StackResources
stackResourcesCodec =
    Codec.list stackResourceCodec


{-| Codec for StackResourceSummary. -}
stackResourceSummaryCodec : Codec StackResourceSummary
stackResourceSummaryCodec =
    Codec.object StackResourceSummary
        |> Codec.field "ResourceType" .resourceType resourceTypeCodec
        |> Codec.field "ResourceStatusReason" .resourceStatusReason Codec.string
        |> Codec.field "ResourceStatus" .resourceStatus resourceStatusCodec
        |> Codec.field "PhysicalResourceId" .physicalResourceId Codec.string
        |> Codec.field "LogicalResourceId" .logicalResourceId Codec.string
        |> Codec.field "LastUpdatedTimestamp" .lastUpdatedTimestamp timestampCodec
        |> Codec.field "DriftInformation" .driftInformation stackResourceDriftInformationSummaryCodec
        |> Codec.buildObject


{-| Codec for StackResourceSummaries. -}
stackResourceSummariesCodec : Codec StackResourceSummaries
stackResourceSummariesCodec =
    Codec.list stackResourceSummaryCodec


{-| Codec for StackResourceDrifts. -}
stackResourceDriftsCodec : Codec StackResourceDrifts
stackResourceDriftsCodec =
    Codec.list stackResourceDriftCodec


{-| Codec for StackResourceDriftStatusFilters. -}
stackResourceDriftStatusFiltersCodec : Codec StackResourceDriftStatusFilters
stackResourceDriftStatusFiltersCodec =
    Codec.list stackResourceDriftStatusCodec


{-| Codec for StackResourceDriftStatus. -}
stackResourceDriftStatusCodec : Codec StackResourceDriftStatus
stackResourceDriftStatusCodec =
    Codec.build (Enum.encoder stackResourceDriftStatus) (Enum.decoder stackResourceDriftStatus)


{-| Codec for StackResourceDriftInformationSummary. -}
stackResourceDriftInformationSummaryCodec : Codec StackResourceDriftInformationSummary
stackResourceDriftInformationSummaryCodec =
    Codec.object StackResourceDriftInformationSummary
        |> Codec.field "StackResourceDriftStatus" .stackResourceDriftStatus stackResourceDriftStatusCodec
        |> Codec.field "LastCheckTimestamp" .lastCheckTimestamp timestampCodec
        |> Codec.buildObject


{-| Codec for StackResourceDriftInformation. -}
stackResourceDriftInformationCodec : Codec StackResourceDriftInformation
stackResourceDriftInformationCodec =
    Codec.object StackResourceDriftInformation
        |> Codec.field "StackResourceDriftStatus" .stackResourceDriftStatus stackResourceDriftStatusCodec
        |> Codec.field "LastCheckTimestamp" .lastCheckTimestamp timestampCodec
        |> Codec.buildObject


{-| Codec for StackResourceDrift. -}
stackResourceDriftCodec : Codec StackResourceDrift
stackResourceDriftCodec =
    Codec.object StackResourceDrift
        |> Codec.field "Timestamp" .timestamp timestampCodec
        |> Codec.field "StackResourceDriftStatus" .stackResourceDriftStatus stackResourceDriftStatusCodec
        |> Codec.field "StackId" .stackId Codec.string
        |> Codec.field "ResourceType" .resourceType resourceTypeCodec
        |> Codec.field "PropertyDifferences" .propertyDifferences propertyDifferencesCodec
        |> Codec.field "PhysicalResourceIdContext" .physicalResourceIdContext physicalResourceIdContextCodec
        |> Codec.field "PhysicalResourceId" .physicalResourceId Codec.string
        |> Codec.field "LogicalResourceId" .logicalResourceId Codec.string
        |> Codec.field "ExpectedProperties" .expectedProperties Codec.string
        |> Codec.field "ActualProperties" .actualProperties Codec.string
        |> Codec.buildObject


{-| Codec for StackResourceDetail. -}
stackResourceDetailCodec : Codec StackResourceDetail
stackResourceDetailCodec =
    Codec.object StackResourceDetail
        |> Codec.field "StackName" .stackName Codec.string
        |> Codec.field "StackId" .stackId Codec.string
        |> Codec.field "ResourceType" .resourceType resourceTypeCodec
        |> Codec.field "ResourceStatusReason" .resourceStatusReason Codec.string
        |> Codec.field "ResourceStatus" .resourceStatus resourceStatusCodec
        |> Codec.field "PhysicalResourceId" .physicalResourceId Codec.string
        |> Codec.field "Metadata" .metadata Codec.string
        |> Codec.field "LogicalResourceId" .logicalResourceId Codec.string
        |> Codec.field "LastUpdatedTimestamp" .lastUpdatedTimestamp timestampCodec
        |> Codec.field "DriftInformation" .driftInformation stackResourceDriftInformationCodec
        |> Codec.field "Description" .description descriptionCodec
        |> Codec.buildObject


{-| Codec for StackResource. -}
stackResourceCodec : Codec StackResource
stackResourceCodec =
    Codec.object StackResource
        |> Codec.field "Timestamp" .timestamp timestampCodec
        |> Codec.field "StackName" .stackName Codec.string
        |> Codec.field "StackId" .stackId Codec.string
        |> Codec.field "ResourceType" .resourceType resourceTypeCodec
        |> Codec.field "ResourceStatusReason" .resourceStatusReason Codec.string
        |> Codec.field "ResourceStatus" .resourceStatus resourceStatusCodec
        |> Codec.field "PhysicalResourceId" .physicalResourceId Codec.string
        |> Codec.field "LogicalResourceId" .logicalResourceId Codec.string
        |> Codec.field "DriftInformation" .driftInformation stackResourceDriftInformationCodec
        |> Codec.field "Description" .description descriptionCodec
        |> Codec.buildObject


{-| Codec for StackPolicyUrl. -}
stackPolicyUrlcodec : Codec StackPolicyUrl
stackPolicyUrlcodec =
    Codec.build (Refined.encoder stackPolicyUrl) (Refined.decoder stackPolicyUrl)


{-| Codec for StackPolicyDuringUpdateUrl. -}
stackPolicyDuringUpdateUrlcodec : Codec StackPolicyDuringUpdateUrl
stackPolicyDuringUpdateUrlcodec =
    Codec.build (Refined.encoder stackPolicyDuringUpdateUrl) (Refined.decoder stackPolicyDuringUpdateUrl)


{-| Codec for StackPolicyDuringUpdateBody. -}
stackPolicyDuringUpdateBodyCodec : Codec StackPolicyDuringUpdateBody
stackPolicyDuringUpdateBodyCodec =
    Codec.build (Refined.encoder stackPolicyDuringUpdateBody) (Refined.decoder stackPolicyDuringUpdateBody)


{-| Codec for StackPolicyBody. -}
stackPolicyBodyCodec : Codec StackPolicyBody
stackPolicyBodyCodec =
    Codec.build (Refined.encoder stackPolicyBody) (Refined.decoder stackPolicyBody)


{-| Codec for StackNameOrId. -}
stackNameOrIdCodec : Codec StackNameOrId
stackNameOrIdCodec =
    Codec.build (Refined.encoder stackNameOrId) (Refined.decoder stackNameOrId)


{-| Codec for StackName. -}
stackNameCodec : Codec StackName
stackNameCodec =
    Codec.string


{-| Codec for StackInstanceSummary. -}
stackInstanceSummaryCodec : Codec StackInstanceSummary
stackInstanceSummaryCodec =
    Codec.object StackInstanceSummary
        |> Codec.field "StatusReason" .statusReason Codec.string
        |> Codec.field "Status" .status stackInstanceStatusCodec
        |> Codec.field "StackSetId" .stackSetId Codec.string
        |> Codec.field "StackId" .stackId Codec.string
        |> Codec.field "Region" .region Codec.string
        |> Codec.field "Account" .account accountCodec
        |> Codec.buildObject


{-| Codec for StackInstanceSummaries. -}
stackInstanceSummariesCodec : Codec StackInstanceSummaries
stackInstanceSummariesCodec =
    Codec.list stackInstanceSummaryCodec


{-| Codec for StackInstanceStatus. -}
stackInstanceStatusCodec : Codec StackInstanceStatus
stackInstanceStatusCodec =
    Codec.build (Enum.encoder stackInstanceStatus) (Enum.decoder stackInstanceStatus)


{-| Codec for StackInstance. -}
stackInstanceCodec : Codec StackInstance
stackInstanceCodec =
    Codec.object StackInstance
        |> Codec.field "StatusReason" .statusReason Codec.string
        |> Codec.field "Status" .status stackInstanceStatusCodec
        |> Codec.field "StackSetId" .stackSetId Codec.string
        |> Codec.field "StackId" .stackId Codec.string
        |> Codec.field "Region" .region Codec.string
        |> Codec.field "ParameterOverrides" .parameterOverrides parametersCodec
        |> Codec.field "Account" .account accountCodec
        |> Codec.buildObject


{-| Codec for StackId. -}
stackIdCodec : Codec StackId
stackIdCodec =
    Codec.string


{-| Codec for StackEvents. -}
stackEventsCodec : Codec StackEvents
stackEventsCodec =
    Codec.list stackEventCodec


{-| Codec for StackEvent. -}
stackEventCodec : Codec StackEvent
stackEventCodec =
    Codec.object StackEvent
        |> Codec.field "Timestamp" .timestamp timestampCodec
        |> Codec.field "StackName" .stackName Codec.string
        |> Codec.field "StackId" .stackId Codec.string
        |> Codec.field "ResourceType" .resourceType resourceTypeCodec
        |> Codec.field "ResourceStatusReason" .resourceStatusReason Codec.string
        |> Codec.field "ResourceStatus" .resourceStatus resourceStatusCodec
        |> Codec.field "ResourceProperties" .resourceProperties Codec.string
        |> Codec.field "PhysicalResourceId" .physicalResourceId Codec.string
        |> Codec.field "LogicalResourceId" .logicalResourceId Codec.string
        |> Codec.field "EventId" .eventId Codec.string
        |> Codec.field "ClientRequestToken" .clientRequestToken clientRequestTokenCodec
        |> Codec.buildObject


{-| Codec for StackDriftStatus. -}
stackDriftStatusCodec : Codec StackDriftStatus
stackDriftStatusCodec =
    Codec.build (Enum.encoder stackDriftStatus) (Enum.decoder stackDriftStatus)


{-| Codec for StackDriftInformationSummary. -}
stackDriftInformationSummaryCodec : Codec StackDriftInformationSummary
stackDriftInformationSummaryCodec =
    Codec.object StackDriftInformationSummary
        |> Codec.field "StackDriftStatus" .stackDriftStatus stackDriftStatusCodec
        |> Codec.field "LastCheckTimestamp" .lastCheckTimestamp timestampCodec
        |> Codec.buildObject


{-| Codec for StackDriftInformation. -}
stackDriftInformationCodec : Codec StackDriftInformation
stackDriftInformationCodec =
    Codec.object StackDriftInformation
        |> Codec.field "StackDriftStatus" .stackDriftStatus stackDriftStatusCodec
        |> Codec.field "LastCheckTimestamp" .lastCheckTimestamp timestampCodec
        |> Codec.buildObject


{-| Codec for StackDriftDetectionStatusReason. -}
stackDriftDetectionStatusReasonCodec : Codec StackDriftDetectionStatusReason
stackDriftDetectionStatusReasonCodec =
    Codec.string


{-| Codec for StackDriftDetectionStatus. -}
stackDriftDetectionStatusCodec : Codec StackDriftDetectionStatus
stackDriftDetectionStatusCodec =
    Codec.build (Enum.encoder stackDriftDetectionStatus) (Enum.decoder stackDriftDetectionStatus)


{-| Codec for StackDriftDetectionId. -}
stackDriftDetectionIdCodec : Codec StackDriftDetectionId
stackDriftDetectionIdCodec =
    Codec.build (Refined.encoder stackDriftDetectionId) (Refined.decoder stackDriftDetectionId)


{-| Codec for Stack. -}
stackCodec : Codec Stack
stackCodec =
    Codec.object Stack
        |> Codec.field "TimeoutInMinutes" .timeoutInMinutes timeoutMinutesCodec
        |> Codec.field "Tags" .tags tagsCodec
        |> Codec.field "StackStatusReason" .stackStatusReason Codec.string
        |> Codec.field "StackStatus" .stackStatus stackStatusCodec
        |> Codec.field "StackName" .stackName Codec.string
        |> Codec.field "StackId" .stackId Codec.string
        |> Codec.field "RootId" .rootId Codec.string
        |> Codec.field "RollbackConfiguration" .rollbackConfiguration rollbackConfigurationCodec
        |> Codec.field "RoleARN" .roleArn roleArncodec
        |> Codec.field "ParentId" .parentId Codec.string
        |> Codec.field "Parameters" .parameters parametersCodec
        |> Codec.field "Outputs" .outputs outputsCodec
        |> Codec.field "NotificationARNs" .notificationArns notificationArnsCodec
        |> Codec.field "LastUpdatedTime" .lastUpdatedTime lastUpdatedTimeCodec
        |> Codec.field "EnableTerminationProtection" .enableTerminationProtection Codec.bool
        |> Codec.field "DriftInformation" .driftInformation stackDriftInformationCodec
        |> Codec.field "DisableRollback" .disableRollback Codec.bool
        |> Codec.field "Description" .description descriptionCodec
        |> Codec.field "DeletionTime" .deletionTime deletionTimeCodec
        |> Codec.field "CreationTime" .creationTime creationTimeCodec
        |> Codec.field "ChangeSetId" .changeSetId changeSetIdCodec
        |> Codec.field "Capabilities" .capabilities capabilitiesCodec
        |> Codec.buildObject


{-| Codec for SignalResourceInput. -}
signalResourceInputCodec : Codec SignalResourceInput
signalResourceInputCodec =
    Codec.object SignalResourceInput
        |> Codec.field "UniqueId" .uniqueId resourceSignalUniqueIdCodec
        |> Codec.field "Status" .status resourceSignalStatusCodec
        |> Codec.field "StackName" .stackName stackNameOrIdCodec
        |> Codec.field "LogicalResourceId" .logicalResourceId Codec.string
        |> Codec.buildObject


{-| Codec for SetStackPolicyInput. -}
setStackPolicyInputCodec : Codec SetStackPolicyInput
setStackPolicyInputCodec =
    Codec.object SetStackPolicyInput
        |> Codec.field "StackPolicyURL" .stackPolicyUrl stackPolicyUrlcodec
        |> Codec.field "StackPolicyBody" .stackPolicyBody stackPolicyBodyCodec
        |> Codec.field "StackName" .stackName Codec.string
        |> Codec.buildObject


{-| Codec for Scope. -}
scopeCodec : Codec Scope
scopeCodec =
    Codec.list resourceAttributeCodec


{-| Codec for RollbackTriggers. -}
rollbackTriggersCodec : Codec RollbackTriggers
rollbackTriggersCodec =
    Codec.list rollbackTriggerCodec


{-| Codec for RollbackTrigger. -}
rollbackTriggerCodec : Codec RollbackTrigger
rollbackTriggerCodec =
    Codec.object RollbackTrigger
        |> Codec.field "Type" .type_ Codec.string
        |> Codec.field "Arn" .arn Codec.string
        |> Codec.buildObject


{-| Codec for RollbackConfiguration. -}
rollbackConfigurationCodec : Codec RollbackConfiguration
rollbackConfigurationCodec =
    Codec.object RollbackConfiguration
        |> Codec.field "RollbackTriggers" .rollbackTriggers rollbackTriggersCodec
        |> Codec.field "MonitoringTimeInMinutes" .monitoringTimeInMinutes monitoringTimeInMinutesCodec
        |> Codec.buildObject


{-| Codec for RoleArn. -}
roleArncodec : Codec RoleArn
roleArncodec =
    Codec.build (Refined.encoder roleArn) (Refined.decoder roleArn)


{-| Codec for RetainStacksNullable. -}
retainStacksNullableCodec : Codec RetainStacksNullable
retainStacksNullableCodec =
    Codec.bool


{-| Codec for RetainStacks. -}
retainStacksCodec : Codec RetainStacks
retainStacksCodec =
    Codec.bool


{-| Codec for RetainResources. -}
retainResourcesCodec : Codec RetainResources
retainResourcesCodec =
    Codec.list Codec.string


{-| Codec for ResourcesToSkip. -}
resourcesToSkipCodec : Codec ResourcesToSkip
resourcesToSkipCodec =
    Codec.list resourceToSkipCodec


{-| Codec for ResourceTypes. -}
resourceTypesCodec : Codec ResourceTypes
resourceTypesCodec =
    Codec.list resourceTypeCodec


{-| Codec for ResourceType. -}
resourceTypeCodec : Codec ResourceType
resourceTypeCodec =
    Codec.build (Refined.encoder resourceType) (Refined.decoder resourceType)


{-| Codec for ResourceToSkip. -}
resourceToSkipCodec : Codec ResourceToSkip
resourceToSkipCodec =
    Codec.build (Refined.encoder resourceToSkip) (Refined.decoder resourceToSkip)


{-| Codec for ResourceTargetDefinition. -}
resourceTargetDefinitionCodec : Codec ResourceTargetDefinition
resourceTargetDefinitionCodec =
    Codec.object ResourceTargetDefinition
        |> Codec.field "RequiresRecreation" .requiresRecreation requiresRecreationCodec
        |> Codec.field "Name" .name Codec.string
        |> Codec.field "Attribute" .attribute resourceAttributeCodec
        |> Codec.buildObject


{-| Codec for ResourceStatusReason. -}
resourceStatusReasonCodec : Codec ResourceStatusReason
resourceStatusReasonCodec =
    Codec.string


{-| Codec for ResourceStatus. -}
resourceStatusCodec : Codec ResourceStatus
resourceStatusCodec =
    Codec.build (Enum.encoder resourceStatus) (Enum.decoder resourceStatus)


{-| Codec for ResourceSignalUniqueId. -}
resourceSignalUniqueIdCodec : Codec ResourceSignalUniqueId
resourceSignalUniqueIdCodec =
    Codec.build (Refined.encoder resourceSignalUniqueId) (Refined.decoder resourceSignalUniqueId)


{-| Codec for ResourceSignalStatus. -}
resourceSignalStatusCodec : Codec ResourceSignalStatus
resourceSignalStatusCodec =
    Codec.build (Enum.encoder resourceSignalStatus) (Enum.decoder resourceSignalStatus)


{-| Codec for ResourceProperties. -}
resourcePropertiesCodec : Codec ResourceProperties
resourcePropertiesCodec =
    Codec.string


{-| Codec for ResourceChangeDetails. -}
resourceChangeDetailsCodec : Codec ResourceChangeDetails
resourceChangeDetailsCodec =
    Codec.list resourceChangeDetailCodec


{-| Codec for ResourceChangeDetail. -}
resourceChangeDetailCodec : Codec ResourceChangeDetail
resourceChangeDetailCodec =
    Codec.object ResourceChangeDetail
        |> Codec.field "Target" .target resourceTargetDefinitionCodec
        |> Codec.field "Evaluation" .evaluation evaluationTypeCodec
        |> Codec.field "ChangeSource" .changeSource changeSourceCodec
        |> Codec.field "CausingEntity" .causingEntity Codec.string
        |> Codec.buildObject


{-| Codec for ResourceChange. -}
resourceChangeCodec : Codec ResourceChange
resourceChangeCodec =
    Codec.object ResourceChange
        |> Codec.field "Scope" .scope scopeCodec
        |> Codec.field "ResourceType" .resourceType resourceTypeCodec
        |> Codec.field "Replacement" .replacement replacementCodec
        |> Codec.field "PhysicalResourceId" .physicalResourceId Codec.string
        |> Codec.field "LogicalResourceId" .logicalResourceId Codec.string
        |> Codec.field "Details" .details resourceChangeDetailsCodec
        |> Codec.field "Action" .action changeActionCodec
        |> Codec.buildObject


{-| Codec for ResourceAttribute. -}
resourceAttributeCodec : Codec ResourceAttribute
resourceAttributeCodec =
    Codec.build (Enum.encoder resourceAttribute) (Enum.decoder resourceAttribute)


{-| Codec for RequiresRecreation. -}
requiresRecreationCodec : Codec RequiresRecreation
requiresRecreationCodec =
    Codec.build (Enum.encoder requiresRecreation) (Enum.decoder requiresRecreation)


{-| Codec for Replacement. -}
replacementCodec : Codec Replacement
replacementCodec =
    Codec.build (Enum.encoder replacement) (Enum.decoder replacement)


{-| Codec for RegionList. -}
regionListCodec : Codec RegionList
regionListCodec =
    Codec.list Codec.string


{-| Codec for Region. -}
regionCodec : Codec Region
regionCodec =
    Codec.string


{-| Codec for Reason. -}
reasonCodec : Codec Reason
reasonCodec =
    Codec.string


{-| Codec for PropertyValue. -}
propertyValueCodec : Codec PropertyValue
propertyValueCodec =
    Codec.string


{-| Codec for PropertyPath. -}
propertyPathCodec : Codec PropertyPath
propertyPathCodec =
    Codec.string


{-| Codec for PropertyName. -}
propertyNameCodec : Codec PropertyName
propertyNameCodec =
    Codec.string


{-| Codec for PropertyDifferences. -}
propertyDifferencesCodec : Codec PropertyDifferences
propertyDifferencesCodec =
    Codec.list propertyDifferenceCodec


{-| Codec for PropertyDifference. -}
propertyDifferenceCodec : Codec PropertyDifference
propertyDifferenceCodec =
    Codec.object PropertyDifference
        |> Codec.field "PropertyPath" .propertyPath Codec.string
        |> Codec.field "ExpectedValue" .expectedValue Codec.string
        |> Codec.field "DifferenceType" .differenceType differenceTypeCodec
        |> Codec.field "ActualValue" .actualValue Codec.string
        |> Codec.buildObject


{-| Codec for Properties. -}
propertiesCodec : Codec Properties
propertiesCodec =
    Codec.string


{-| Codec for PhysicalResourceIdContextKeyValuePair. -}
physicalResourceIdContextKeyValuePairCodec : Codec PhysicalResourceIdContextKeyValuePair
physicalResourceIdContextKeyValuePairCodec =
    Codec.object PhysicalResourceIdContextKeyValuePair
        |> Codec.field "Value" .value Codec.string
        |> Codec.field "Key" .key Codec.string
        |> Codec.buildObject


{-| Codec for PhysicalResourceIdContext. -}
physicalResourceIdContextCodec : Codec PhysicalResourceIdContext
physicalResourceIdContextCodec =
    Codec.list physicalResourceIdContextKeyValuePairCodec


{-| Codec for PhysicalResourceId. -}
physicalResourceIdCodec : Codec PhysicalResourceId
physicalResourceIdCodec =
    Codec.string


{-| Codec for Parameters. -}
parametersCodec : Codec Parameters
parametersCodec =
    Codec.list parameterCodec


{-| Codec for ParameterValue. -}
parameterValueCodec : Codec ParameterValue
parameterValueCodec =
    Codec.string


{-| Codec for ParameterType. -}
parameterTypeCodec : Codec ParameterType
parameterTypeCodec =
    Codec.string


{-| Codec for ParameterKey. -}
parameterKeyCodec : Codec ParameterKey
parameterKeyCodec =
    Codec.string


{-| Codec for ParameterDeclarations. -}
parameterDeclarationsCodec : Codec ParameterDeclarations
parameterDeclarationsCodec =
    Codec.list parameterDeclarationCodec


{-| Codec for ParameterDeclaration. -}
parameterDeclarationCodec : Codec ParameterDeclaration
parameterDeclarationCodec =
    Codec.object ParameterDeclaration
        |> Codec.field "ParameterType" .parameterType Codec.string
        |> Codec.field "ParameterKey" .parameterKey Codec.string
        |> Codec.field "ParameterConstraints" .parameterConstraints parameterConstraintsCodec
        |> Codec.field "NoEcho" .noEcho Codec.bool
        |> Codec.field "Description" .description descriptionCodec
        |> Codec.field "DefaultValue" .defaultValue Codec.string
        |> Codec.buildObject


{-| Codec for ParameterConstraints. -}
parameterConstraintsCodec : Codec ParameterConstraints
parameterConstraintsCodec =
    Codec.object ParameterConstraints
        |> Codec.field "AllowedValues" .allowedValues allowedValuesCodec
        |> Codec.buildObject


{-| Codec for Parameter. -}
parameterCodec : Codec Parameter
parameterCodec =
    Codec.object Parameter
        |> Codec.field "UsePreviousValue" .usePreviousValue Codec.bool
        |> Codec.field "ResolvedValue" .resolvedValue Codec.string
        |> Codec.field "ParameterValue" .parameterValue Codec.string
        |> Codec.field "ParameterKey" .parameterKey Codec.string
        |> Codec.buildObject


{-| Codec for Outputs. -}
outputsCodec : Codec Outputs
outputsCodec =
    Codec.list outputCodec


{-| Codec for OutputValue. -}
outputValueCodec : Codec OutputValue
outputValueCodec =
    Codec.string


{-| Codec for OutputKey. -}
outputKeyCodec : Codec OutputKey
outputKeyCodec =
    Codec.string


{-| Codec for Output. -}
outputCodec : Codec Output
outputCodec =
    Codec.object Output
        |> Codec.field "OutputValue" .outputValue Codec.string
        |> Codec.field "OutputKey" .outputKey Codec.string
        |> Codec.field "ExportName" .exportName Codec.string
        |> Codec.field "Description" .description descriptionCodec
        |> Codec.buildObject


{-| Codec for OnFailure. -}
onFailureCodec : Codec OnFailure
onFailureCodec =
    Codec.build (Enum.encoder onFailure) (Enum.decoder onFailure)


{-| Codec for NotificationArns. -}
notificationArnsCodec : Codec NotificationArns
notificationArnsCodec =
    Codec.list Codec.string


{-| Codec for NotificationArn. -}
notificationArncodec : Codec NotificationArn
notificationArncodec =
    Codec.string


{-| Codec for NoEcho. -}
noEchoCodec : Codec NoEcho
noEchoCodec =
    Codec.bool


{-| Codec for NextToken. -}
nextTokenCodec : Codec NextToken
nextTokenCodec =
    Codec.build (Refined.encoder nextToken) (Refined.decoder nextToken)


{-| Codec for MonitoringTimeInMinutes. -}
monitoringTimeInMinutesCodec : Codec MonitoringTimeInMinutes
monitoringTimeInMinutesCodec =
    Codec.build (Refined.encoder monitoringTimeInMinutes) (Refined.decoder monitoringTimeInMinutes)


{-| Codec for Metadata. -}
metadataCodec : Codec Metadata
metadataCodec =
    Codec.string


{-| Codec for MaxResults. -}
maxResultsCodec : Codec MaxResults
maxResultsCodec =
    Codec.build (Refined.encoder maxResults) (Refined.decoder maxResults)


{-| Codec for MaxConcurrentPercentage. -}
maxConcurrentPercentageCodec : Codec MaxConcurrentPercentage
maxConcurrentPercentageCodec =
    Codec.build (Refined.encoder maxConcurrentPercentage) (Refined.decoder maxConcurrentPercentage)


{-| Codec for MaxConcurrentCount. -}
maxConcurrentCountCodec : Codec MaxConcurrentCount
maxConcurrentCountCodec =
    Codec.build (Refined.encoder maxConcurrentCount) (Refined.decoder maxConcurrentCount)


{-| Codec for LogicalResourceIds. -}
logicalResourceIdsCodec : Codec LogicalResourceIds
logicalResourceIdsCodec =
    Codec.list Codec.string


{-| Codec for LogicalResourceId. -}
logicalResourceIdCodec : Codec LogicalResourceId
logicalResourceIdCodec =
    Codec.string


{-| Codec for ListStacksOutput. -}
listStacksOutputCodec : Codec ListStacksOutput
listStacksOutputCodec =
    Codec.object ListStacksOutput
        |> Codec.field "StackSummaries" .stackSummaries stackSummariesCodec
        |> Codec.field "NextToken" .nextToken nextTokenCodec
        |> Codec.buildObject


{-| Codec for ListStacksInput. -}
listStacksInputCodec : Codec ListStacksInput
listStacksInputCodec =
    Codec.object ListStacksInput
        |> Codec.field "StackStatusFilter" .stackStatusFilter stackStatusFilterCodec
        |> Codec.field "NextToken" .nextToken nextTokenCodec
        |> Codec.buildObject


{-| Codec for ListStackSetsOutput. -}
listStackSetsOutputCodec : Codec ListStackSetsOutput
listStackSetsOutputCodec =
    Codec.object ListStackSetsOutput
        |> Codec.field "Summaries" .summaries stackSetSummariesCodec
        |> Codec.field "NextToken" .nextToken nextTokenCodec
        |> Codec.buildObject


{-| Codec for ListStackSetsInput. -}
listStackSetsInputCodec : Codec ListStackSetsInput
listStackSetsInputCodec =
    Codec.object ListStackSetsInput
        |> Codec.field "Status" .status stackSetStatusCodec
        |> Codec.field "NextToken" .nextToken nextTokenCodec
        |> Codec.field "MaxResults" .maxResults maxResultsCodec
        |> Codec.buildObject


{-| Codec for ListStackSetOperationsOutput. -}
listStackSetOperationsOutputCodec : Codec ListStackSetOperationsOutput
listStackSetOperationsOutputCodec =
    Codec.object ListStackSetOperationsOutput
        |> Codec.field "Summaries" .summaries stackSetOperationSummariesCodec
        |> Codec.field "NextToken" .nextToken nextTokenCodec
        |> Codec.buildObject


{-| Codec for ListStackSetOperationsInput. -}
listStackSetOperationsInputCodec : Codec ListStackSetOperationsInput
listStackSetOperationsInputCodec =
    Codec.object ListStackSetOperationsInput
        |> Codec.field "StackSetName" .stackSetName Codec.string
        |> Codec.field "NextToken" .nextToken nextTokenCodec
        |> Codec.field "MaxResults" .maxResults maxResultsCodec
        |> Codec.buildObject


{-| Codec for ListStackSetOperationResultsOutput. -}
listStackSetOperationResultsOutputCodec : Codec ListStackSetOperationResultsOutput
listStackSetOperationResultsOutputCodec =
    Codec.object ListStackSetOperationResultsOutput
        |> Codec.field "Summaries" .summaries stackSetOperationResultSummariesCodec
        |> Codec.field "NextToken" .nextToken nextTokenCodec
        |> Codec.buildObject


{-| Codec for ListStackSetOperationResultsInput. -}
listStackSetOperationResultsInputCodec : Codec ListStackSetOperationResultsInput
listStackSetOperationResultsInputCodec =
    Codec.object ListStackSetOperationResultsInput
        |> Codec.field "StackSetName" .stackSetName Codec.string
        |> Codec.field "OperationId" .operationId clientRequestTokenCodec
        |> Codec.field "NextToken" .nextToken nextTokenCodec
        |> Codec.field "MaxResults" .maxResults maxResultsCodec
        |> Codec.buildObject


{-| Codec for ListStackResourcesOutput. -}
listStackResourcesOutputCodec : Codec ListStackResourcesOutput
listStackResourcesOutputCodec =
    Codec.object ListStackResourcesOutput
        |> Codec.field "StackResourceSummaries" .stackResourceSummaries stackResourceSummariesCodec
        |> Codec.field "NextToken" .nextToken nextTokenCodec
        |> Codec.buildObject


{-| Codec for ListStackResourcesInput. -}
listStackResourcesInputCodec : Codec ListStackResourcesInput
listStackResourcesInputCodec =
    Codec.object ListStackResourcesInput
        |> Codec.field "StackName" .stackName Codec.string
        |> Codec.field "NextToken" .nextToken nextTokenCodec
        |> Codec.buildObject


{-| Codec for ListStackInstancesOutput. -}
listStackInstancesOutputCodec : Codec ListStackInstancesOutput
listStackInstancesOutputCodec =
    Codec.object ListStackInstancesOutput
        |> Codec.field "Summaries" .summaries stackInstanceSummariesCodec
        |> Codec.field "NextToken" .nextToken nextTokenCodec
        |> Codec.buildObject


{-| Codec for ListStackInstancesInput. -}
listStackInstancesInputCodec : Codec ListStackInstancesInput
listStackInstancesInputCodec =
    Codec.object ListStackInstancesInput
        |> Codec.field "StackSetName" .stackSetName Codec.string
        |> Codec.field "StackInstanceRegion" .stackInstanceRegion Codec.string
        |> Codec.field "StackInstanceAccount" .stackInstanceAccount accountCodec
        |> Codec.field "NextToken" .nextToken nextTokenCodec
        |> Codec.field "MaxResults" .maxResults maxResultsCodec
        |> Codec.buildObject


{-| Codec for ListImportsOutput. -}
listImportsOutputCodec : Codec ListImportsOutput
listImportsOutputCodec =
    Codec.object ListImportsOutput
        |> Codec.field "NextToken" .nextToken nextTokenCodec
        |> Codec.field "Imports" .imports importsCodec
        |> Codec.buildObject


{-| Codec for ListImportsInput. -}
listImportsInputCodec : Codec ListImportsInput
listImportsInputCodec =
    Codec.object ListImportsInput
        |> Codec.field "NextToken" .nextToken nextTokenCodec
        |> Codec.field "ExportName" .exportName Codec.string
        |> Codec.buildObject


{-| Codec for ListExportsOutput. -}
listExportsOutputCodec : Codec ListExportsOutput
listExportsOutputCodec =
    Codec.object ListExportsOutput
        |> Codec.field "NextToken" .nextToken nextTokenCodec
        |> Codec.field "Exports" .exports exportsCodec
        |> Codec.buildObject


{-| Codec for ListExportsInput. -}
listExportsInputCodec : Codec ListExportsInput
listExportsInputCodec =
    Codec.object ListExportsInput |> Codec.field "NextToken" .nextToken nextTokenCodec |> Codec.buildObject


{-| Codec for ListChangeSetsOutput. -}
listChangeSetsOutputCodec : Codec ListChangeSetsOutput
listChangeSetsOutputCodec =
    Codec.object ListChangeSetsOutput
        |> Codec.field "Summaries" .summaries changeSetSummariesCodec
        |> Codec.field "NextToken" .nextToken nextTokenCodec
        |> Codec.buildObject


{-| Codec for ListChangeSetsInput. -}
listChangeSetsInputCodec : Codec ListChangeSetsInput
listChangeSetsInputCodec =
    Codec.object ListChangeSetsInput
        |> Codec.field "StackName" .stackName stackNameOrIdCodec
        |> Codec.field "NextToken" .nextToken nextTokenCodec
        |> Codec.buildObject


{-| Codec for LimitValue. -}
limitValueCodec : Codec LimitValue
limitValueCodec =
    Codec.int


{-| Codec for LimitName. -}
limitNameCodec : Codec LimitName
limitNameCodec =
    Codec.string


{-| Codec for LastUpdatedTime. -}
lastUpdatedTimeCodec : Codec LastUpdatedTime
lastUpdatedTimeCodec =
    Codec.string


{-| Codec for Key. -}
keyCodec : Codec Key
keyCodec =
    Codec.string


{-| Codec for Imports. -}
importsCodec : Codec Imports
importsCodec =
    Codec.list Codec.string


{-| Codec for GetTemplateSummaryOutput. -}
getTemplateSummaryOutputCodec : Codec GetTemplateSummaryOutput
getTemplateSummaryOutputCodec =
    Codec.object GetTemplateSummaryOutput
        |> Codec.field "Version" .version Codec.string
        |> Codec.field "ResourceTypes" .resourceTypes resourceTypesCodec
        |> Codec.field "Parameters" .parameters parameterDeclarationsCodec
        |> Codec.field "Metadata" .metadata Codec.string
        |> Codec.field "Description" .description descriptionCodec
        |> Codec.field "DeclaredTransforms" .declaredTransforms transformsListCodec
        |> Codec.field "CapabilitiesReason" .capabilitiesReason Codec.string
        |> Codec.field "Capabilities" .capabilities capabilitiesCodec
        |> Codec.buildObject


{-| Codec for GetTemplateSummaryInput. -}
getTemplateSummaryInputCodec : Codec GetTemplateSummaryInput
getTemplateSummaryInputCodec =
    Codec.object GetTemplateSummaryInput
        |> Codec.field "TemplateURL" .templateUrl templateUrlcodec
        |> Codec.field "TemplateBody" .templateBody templateBodyCodec
        |> Codec.field "StackSetName" .stackSetName stackSetNameOrIdCodec
        |> Codec.field "StackName" .stackName stackNameOrIdCodec
        |> Codec.buildObject


{-| Codec for GetTemplateOutput. -}
getTemplateOutputCodec : Codec GetTemplateOutput
getTemplateOutputCodec =
    Codec.object GetTemplateOutput
        |> Codec.field "TemplateBody" .templateBody templateBodyCodec
        |> Codec.field "StagesAvailable" .stagesAvailable stageListCodec
        |> Codec.buildObject


{-| Codec for GetTemplateInput. -}
getTemplateInputCodec : Codec GetTemplateInput
getTemplateInputCodec =
    Codec.object GetTemplateInput
        |> Codec.field "TemplateStage" .templateStage templateStageCodec
        |> Codec.field "StackName" .stackName Codec.string
        |> Codec.field "ChangeSetName" .changeSetName changeSetNameOrIdCodec
        |> Codec.buildObject


{-| Codec for GetStackPolicyOutput. -}
getStackPolicyOutputCodec : Codec GetStackPolicyOutput
getStackPolicyOutputCodec =
    Codec.object GetStackPolicyOutput
        |> Codec.field "StackPolicyBody" .stackPolicyBody stackPolicyBodyCodec
        |> Codec.buildObject


{-| Codec for GetStackPolicyInput. -}
getStackPolicyInputCodec : Codec GetStackPolicyInput
getStackPolicyInputCodec =
    Codec.object GetStackPolicyInput |> Codec.field "StackName" .stackName Codec.string |> Codec.buildObject


{-| Codec for FailureTolerancePercentage. -}
failureTolerancePercentageCodec : Codec FailureTolerancePercentage
failureTolerancePercentageCodec =
    Codec.build (Refined.encoder failureTolerancePercentage) (Refined.decoder failureTolerancePercentage)


{-| Codec for FailureToleranceCount. -}
failureToleranceCountCodec : Codec FailureToleranceCount
failureToleranceCountCodec =
    Codec.build (Refined.encoder failureToleranceCount) (Refined.decoder failureToleranceCount)


{-| Codec for Exports. -}
exportsCodec : Codec Exports
exportsCodec =
    Codec.list exportCodec


{-| Codec for ExportValue. -}
exportValueCodec : Codec ExportValue
exportValueCodec =
    Codec.string


{-| Codec for ExportName. -}
exportNameCodec : Codec ExportName
exportNameCodec =
    Codec.string


{-| Codec for Export. -}
exportCodec : Codec Export
exportCodec =
    Codec.object Export
        |> Codec.field "Value" .value Codec.string
        |> Codec.field "Name" .name Codec.string
        |> Codec.field "ExportingStackId" .exportingStackId Codec.string
        |> Codec.buildObject


{-| Codec for ExecutionStatus. -}
executionStatusCodec : Codec ExecutionStatus
executionStatusCodec =
    Codec.build (Enum.encoder executionStatus) (Enum.decoder executionStatus)


{-| Codec for ExecutionRoleName. -}
executionRoleNameCodec : Codec ExecutionRoleName
executionRoleNameCodec =
    Codec.build (Refined.encoder executionRoleName) (Refined.decoder executionRoleName)


{-| Codec for ExecuteChangeSetOutput. -}
executeChangeSetOutputCodec : Codec ExecuteChangeSetOutput
executeChangeSetOutputCodec =
    Codec.object ExecuteChangeSetOutput |> Codec.buildObject


{-| Codec for ExecuteChangeSetInput. -}
executeChangeSetInputCodec : Codec ExecuteChangeSetInput
executeChangeSetInputCodec =
    Codec.object ExecuteChangeSetInput
        |> Codec.field "StackName" .stackName stackNameOrIdCodec
        |> Codec.field "ClientRequestToken" .clientRequestToken clientRequestTokenCodec
        |> Codec.field "ChangeSetName" .changeSetName changeSetNameOrIdCodec
        |> Codec.buildObject


{-| Codec for EventId. -}
eventIdCodec : Codec EventId
eventIdCodec =
    Codec.string


{-| Codec for EvaluationType. -}
evaluationTypeCodec : Codec EvaluationType
evaluationTypeCodec =
    Codec.build (Enum.encoder evaluationType) (Enum.decoder evaluationType)


{-| Codec for EstimateTemplateCostOutput. -}
estimateTemplateCostOutputCodec : Codec EstimateTemplateCostOutput
estimateTemplateCostOutputCodec =
    Codec.object EstimateTemplateCostOutput |> Codec.field "Url" .url Codec.string |> Codec.buildObject


{-| Codec for EstimateTemplateCostInput. -}
estimateTemplateCostInputCodec : Codec EstimateTemplateCostInput
estimateTemplateCostInputCodec =
    Codec.object EstimateTemplateCostInput
        |> Codec.field "TemplateURL" .templateUrl templateUrlcodec
        |> Codec.field "TemplateBody" .templateBody templateBodyCodec
        |> Codec.field "Parameters" .parameters parametersCodec
        |> Codec.buildObject


{-| Codec for EnableTerminationProtection. -}
enableTerminationProtectionCodec : Codec EnableTerminationProtection
enableTerminationProtectionCodec =
    Codec.bool


{-| Codec for DisableRollback. -}
disableRollbackCodec : Codec DisableRollback
disableRollbackCodec =
    Codec.bool


{-| Codec for DifferenceType. -}
differenceTypeCodec : Codec DifferenceType
differenceTypeCodec =
    Codec.build (Enum.encoder differenceType) (Enum.decoder differenceType)


{-| Codec for DetectStackResourceDriftOutput. -}
detectStackResourceDriftOutputCodec : Codec DetectStackResourceDriftOutput
detectStackResourceDriftOutputCodec =
    Codec.object DetectStackResourceDriftOutput
        |> Codec.field "StackResourceDrift" .stackResourceDrift stackResourceDriftCodec
        |> Codec.buildObject


{-| Codec for DetectStackResourceDriftInput. -}
detectStackResourceDriftInputCodec : Codec DetectStackResourceDriftInput
detectStackResourceDriftInputCodec =
    Codec.object DetectStackResourceDriftInput
        |> Codec.field "StackName" .stackName stackNameOrIdCodec
        |> Codec.field "LogicalResourceId" .logicalResourceId Codec.string
        |> Codec.buildObject


{-| Codec for DetectStackDriftOutput. -}
detectStackDriftOutputCodec : Codec DetectStackDriftOutput
detectStackDriftOutputCodec =
    Codec.object DetectStackDriftOutput
        |> Codec.field "StackDriftDetectionId" .stackDriftDetectionId stackDriftDetectionIdCodec
        |> Codec.buildObject


{-| Codec for DetectStackDriftInput. -}
detectStackDriftInputCodec : Codec DetectStackDriftInput
detectStackDriftInputCodec =
    Codec.object DetectStackDriftInput
        |> Codec.field "StackName" .stackName stackNameOrIdCodec
        |> Codec.field "LogicalResourceIds" .logicalResourceIds logicalResourceIdsCodec
        |> Codec.buildObject


{-| Codec for Description. -}
descriptionCodec : Codec Description
descriptionCodec =
    Codec.build (Refined.encoder description) (Refined.decoder description)


{-| Codec for DescribeStacksOutput. -}
describeStacksOutputCodec : Codec DescribeStacksOutput
describeStacksOutputCodec =
    Codec.object DescribeStacksOutput
        |> Codec.field "Stacks" .stacks stacksCodec
        |> Codec.field "NextToken" .nextToken nextTokenCodec
        |> Codec.buildObject


{-| Codec for DescribeStacksInput. -}
describeStacksInputCodec : Codec DescribeStacksInput
describeStacksInputCodec =
    Codec.object DescribeStacksInput
        |> Codec.field "StackName" .stackName Codec.string
        |> Codec.field "NextToken" .nextToken nextTokenCodec
        |> Codec.buildObject


{-| Codec for DescribeStackSetOutput. -}
describeStackSetOutputCodec : Codec DescribeStackSetOutput
describeStackSetOutputCodec =
    Codec.object DescribeStackSetOutput |> Codec.field "StackSet" .stackSet stackSetCodec |> Codec.buildObject


{-| Codec for DescribeStackSetOperationOutput. -}
describeStackSetOperationOutputCodec : Codec DescribeStackSetOperationOutput
describeStackSetOperationOutputCodec =
    Codec.object DescribeStackSetOperationOutput
        |> Codec.field "StackSetOperation" .stackSetOperation stackSetOperationCodec
        |> Codec.buildObject


{-| Codec for DescribeStackSetOperationInput. -}
describeStackSetOperationInputCodec : Codec DescribeStackSetOperationInput
describeStackSetOperationInputCodec =
    Codec.object DescribeStackSetOperationInput
        |> Codec.field "StackSetName" .stackSetName Codec.string
        |> Codec.field "OperationId" .operationId clientRequestTokenCodec
        |> Codec.buildObject


{-| Codec for DescribeStackSetInput. -}
describeStackSetInputCodec : Codec DescribeStackSetInput
describeStackSetInputCodec =
    Codec.object DescribeStackSetInput |> Codec.field "StackSetName" .stackSetName Codec.string |> Codec.buildObject


{-| Codec for DescribeStackResourcesOutput. -}
describeStackResourcesOutputCodec : Codec DescribeStackResourcesOutput
describeStackResourcesOutputCodec =
    Codec.object DescribeStackResourcesOutput
        |> Codec.field "StackResources" .stackResources stackResourcesCodec
        |> Codec.buildObject


{-| Codec for DescribeStackResourcesInput. -}
describeStackResourcesInputCodec : Codec DescribeStackResourcesInput
describeStackResourcesInputCodec =
    Codec.object DescribeStackResourcesInput
        |> Codec.field "StackName" .stackName Codec.string
        |> Codec.field "PhysicalResourceId" .physicalResourceId Codec.string
        |> Codec.field "LogicalResourceId" .logicalResourceId Codec.string
        |> Codec.buildObject


{-| Codec for DescribeStackResourceOutput. -}
describeStackResourceOutputCodec : Codec DescribeStackResourceOutput
describeStackResourceOutputCodec =
    Codec.object DescribeStackResourceOutput
        |> Codec.field "StackResourceDetail" .stackResourceDetail stackResourceDetailCodec
        |> Codec.buildObject


{-| Codec for DescribeStackResourceInput. -}
describeStackResourceInputCodec : Codec DescribeStackResourceInput
describeStackResourceInputCodec =
    Codec.object DescribeStackResourceInput
        |> Codec.field "StackName" .stackName Codec.string
        |> Codec.field "LogicalResourceId" .logicalResourceId Codec.string
        |> Codec.buildObject


{-| Codec for DescribeStackResourceDriftsOutput. -}
describeStackResourceDriftsOutputCodec : Codec DescribeStackResourceDriftsOutput
describeStackResourceDriftsOutputCodec =
    Codec.object DescribeStackResourceDriftsOutput
        |> Codec.field "StackResourceDrifts" .stackResourceDrifts stackResourceDriftsCodec
        |> Codec.field "NextToken" .nextToken nextTokenCodec
        |> Codec.buildObject


{-| Codec for DescribeStackResourceDriftsInput. -}
describeStackResourceDriftsInputCodec : Codec DescribeStackResourceDriftsInput
describeStackResourceDriftsInputCodec =
    Codec.object DescribeStackResourceDriftsInput
        |> Codec.field
            "StackResourceDriftStatusFilters"
            .stackResourceDriftStatusFilters
            stackResourceDriftStatusFiltersCodec
        |> Codec.field "StackName" .stackName stackNameOrIdCodec
        |> Codec.field "NextToken" .nextToken nextTokenCodec
        |> Codec.field "MaxResults" .maxResults boxedMaxResultsCodec
        |> Codec.buildObject


{-| Codec for DescribeStackInstanceOutput. -}
describeStackInstanceOutputCodec : Codec DescribeStackInstanceOutput
describeStackInstanceOutputCodec =
    Codec.object DescribeStackInstanceOutput
        |> Codec.field "StackInstance" .stackInstance stackInstanceCodec
        |> Codec.buildObject


{-| Codec for DescribeStackInstanceInput. -}
describeStackInstanceInputCodec : Codec DescribeStackInstanceInput
describeStackInstanceInputCodec =
    Codec.object DescribeStackInstanceInput
        |> Codec.field "StackSetName" .stackSetName Codec.string
        |> Codec.field "StackInstanceRegion" .stackInstanceRegion Codec.string
        |> Codec.field "StackInstanceAccount" .stackInstanceAccount accountCodec
        |> Codec.buildObject


{-| Codec for DescribeStackEventsOutput. -}
describeStackEventsOutputCodec : Codec DescribeStackEventsOutput
describeStackEventsOutputCodec =
    Codec.object DescribeStackEventsOutput
        |> Codec.field "StackEvents" .stackEvents stackEventsCodec
        |> Codec.field "NextToken" .nextToken nextTokenCodec
        |> Codec.buildObject


{-| Codec for DescribeStackEventsInput. -}
describeStackEventsInputCodec : Codec DescribeStackEventsInput
describeStackEventsInputCodec =
    Codec.object DescribeStackEventsInput
        |> Codec.field "StackName" .stackName Codec.string
        |> Codec.field "NextToken" .nextToken nextTokenCodec
        |> Codec.buildObject


{-| Codec for DescribeStackDriftDetectionStatusOutput. -}
describeStackDriftDetectionStatusOutputCodec : Codec DescribeStackDriftDetectionStatusOutput
describeStackDriftDetectionStatusOutputCodec =
    Codec.object DescribeStackDriftDetectionStatusOutput
        |> Codec.field "Timestamp" .timestamp timestampCodec
        |> Codec.field "StackId" .stackId Codec.string
        |> Codec.field "StackDriftStatus" .stackDriftStatus stackDriftStatusCodec
        |> Codec.field "StackDriftDetectionId" .stackDriftDetectionId stackDriftDetectionIdCodec
        |> Codec.field "DriftedStackResourceCount" .driftedStackResourceCount Codec.int
        |> Codec.field "DetectionStatusReason" .detectionStatusReason Codec.string
        |> Codec.field "DetectionStatus" .detectionStatus stackDriftDetectionStatusCodec
        |> Codec.buildObject


{-| Codec for DescribeStackDriftDetectionStatusInput. -}
describeStackDriftDetectionStatusInputCodec : Codec DescribeStackDriftDetectionStatusInput
describeStackDriftDetectionStatusInputCodec =
    Codec.object DescribeStackDriftDetectionStatusInput
        |> Codec.field "StackDriftDetectionId" .stackDriftDetectionId stackDriftDetectionIdCodec
        |> Codec.buildObject


{-| Codec for DescribeChangeSetOutput. -}
describeChangeSetOutputCodec : Codec DescribeChangeSetOutput
describeChangeSetOutputCodec =
    Codec.object DescribeChangeSetOutput
        |> Codec.field "Tags" .tags tagsCodec
        |> Codec.field "StatusReason" .statusReason Codec.string
        |> Codec.field "Status" .status changeSetStatusCodec
        |> Codec.field "StackName" .stackName Codec.string
        |> Codec.field "StackId" .stackId Codec.string
        |> Codec.field "RollbackConfiguration" .rollbackConfiguration rollbackConfigurationCodec
        |> Codec.field "Parameters" .parameters parametersCodec
        |> Codec.field "NotificationARNs" .notificationArns notificationArnsCodec
        |> Codec.field "NextToken" .nextToken nextTokenCodec
        |> Codec.field "ExecutionStatus" .executionStatus executionStatusCodec
        |> Codec.field "Description" .description descriptionCodec
        |> Codec.field "CreationTime" .creationTime creationTimeCodec
        |> Codec.field "Changes" .changes changesCodec
        |> Codec.field "ChangeSetName" .changeSetName changeSetNameCodec
        |> Codec.field "ChangeSetId" .changeSetId changeSetIdCodec
        |> Codec.field "Capabilities" .capabilities capabilitiesCodec
        |> Codec.buildObject


{-| Codec for DescribeChangeSetInput. -}
describeChangeSetInputCodec : Codec DescribeChangeSetInput
describeChangeSetInputCodec =
    Codec.object DescribeChangeSetInput
        |> Codec.field "StackName" .stackName stackNameOrIdCodec
        |> Codec.field "NextToken" .nextToken nextTokenCodec
        |> Codec.field "ChangeSetName" .changeSetName changeSetNameOrIdCodec
        |> Codec.buildObject


{-| Codec for DescribeAccountLimitsOutput. -}
describeAccountLimitsOutputCodec : Codec DescribeAccountLimitsOutput
describeAccountLimitsOutputCodec =
    Codec.object DescribeAccountLimitsOutput
        |> Codec.field "NextToken" .nextToken nextTokenCodec
        |> Codec.field "AccountLimits" .accountLimits accountLimitListCodec
        |> Codec.buildObject


{-| Codec for DescribeAccountLimitsInput. -}
describeAccountLimitsInputCodec : Codec DescribeAccountLimitsInput
describeAccountLimitsInputCodec =
    Codec.object DescribeAccountLimitsInput |> Codec.field "NextToken" .nextToken nextTokenCodec |> Codec.buildObject


{-| Codec for DeletionTime. -}
deletionTimeCodec : Codec DeletionTime
deletionTimeCodec =
    Codec.string


{-| Codec for DeleteStackSetOutput. -}
deleteStackSetOutputCodec : Codec DeleteStackSetOutput
deleteStackSetOutputCodec =
    Codec.object DeleteStackSetOutput |> Codec.buildObject


{-| Codec for DeleteStackSetInput. -}
deleteStackSetInputCodec : Codec DeleteStackSetInput
deleteStackSetInputCodec =
    Codec.object DeleteStackSetInput |> Codec.field "StackSetName" .stackSetName Codec.string |> Codec.buildObject


{-| Codec for DeleteStackInstancesOutput. -}
deleteStackInstancesOutputCodec : Codec DeleteStackInstancesOutput
deleteStackInstancesOutputCodec =
    Codec.object DeleteStackInstancesOutput
        |> Codec.field "OperationId" .operationId clientRequestTokenCodec
        |> Codec.buildObject


{-| Codec for DeleteStackInstancesInput. -}
deleteStackInstancesInputCodec : Codec DeleteStackInstancesInput
deleteStackInstancesInputCodec =
    Codec.object DeleteStackInstancesInput
        |> Codec.field "StackSetName" .stackSetName Codec.string
        |> Codec.field "RetainStacks" .retainStacks Codec.bool
        |> Codec.field "Regions" .regions regionListCodec
        |> Codec.field "OperationPreferences" .operationPreferences stackSetOperationPreferencesCodec
        |> Codec.field "OperationId" .operationId clientRequestTokenCodec
        |> Codec.field "Accounts" .accounts accountListCodec
        |> Codec.buildObject


{-| Codec for DeleteStackInput. -}
deleteStackInputCodec : Codec DeleteStackInput
deleteStackInputCodec =
    Codec.object DeleteStackInput
        |> Codec.field "StackName" .stackName Codec.string
        |> Codec.field "RoleARN" .roleArn roleArncodec
        |> Codec.field "RetainResources" .retainResources retainResourcesCodec
        |> Codec.field "ClientRequestToken" .clientRequestToken clientRequestTokenCodec
        |> Codec.buildObject


{-| Codec for DeleteChangeSetOutput. -}
deleteChangeSetOutputCodec : Codec DeleteChangeSetOutput
deleteChangeSetOutputCodec =
    Codec.object DeleteChangeSetOutput |> Codec.buildObject


{-| Codec for DeleteChangeSetInput. -}
deleteChangeSetInputCodec : Codec DeleteChangeSetInput
deleteChangeSetInputCodec =
    Codec.object DeleteChangeSetInput
        |> Codec.field "StackName" .stackName stackNameOrIdCodec
        |> Codec.field "ChangeSetName" .changeSetName changeSetNameOrIdCodec
        |> Codec.buildObject


{-| Codec for CreationTime. -}
creationTimeCodec : Codec CreationTime
creationTimeCodec =
    Codec.string


{-| Codec for CreateStackSetOutput. -}
createStackSetOutputCodec : Codec CreateStackSetOutput
createStackSetOutputCodec =
    Codec.object CreateStackSetOutput |> Codec.field "StackSetId" .stackSetId Codec.string |> Codec.buildObject


{-| Codec for CreateStackSetInput. -}
createStackSetInputCodec : Codec CreateStackSetInput
createStackSetInputCodec =
    Codec.object CreateStackSetInput
        |> Codec.field "TemplateURL" .templateUrl templateUrlcodec
        |> Codec.field "TemplateBody" .templateBody templateBodyCodec
        |> Codec.field "Tags" .tags tagsCodec
        |> Codec.field "StackSetName" .stackSetName Codec.string
        |> Codec.field "Parameters" .parameters parametersCodec
        |> Codec.field "ExecutionRoleName" .executionRoleName executionRoleNameCodec
        |> Codec.field "Description" .description descriptionCodec
        |> Codec.field "ClientRequestToken" .clientRequestToken clientRequestTokenCodec
        |> Codec.field "Capabilities" .capabilities capabilitiesCodec
        |> Codec.field "AdministrationRoleARN" .administrationRoleArn roleArncodec
        |> Codec.buildObject


{-| Codec for CreateStackOutput. -}
createStackOutputCodec : Codec CreateStackOutput
createStackOutputCodec =
    Codec.object CreateStackOutput |> Codec.field "StackId" .stackId Codec.string |> Codec.buildObject


{-| Codec for CreateStackInstancesOutput. -}
createStackInstancesOutputCodec : Codec CreateStackInstancesOutput
createStackInstancesOutputCodec =
    Codec.object CreateStackInstancesOutput
        |> Codec.field "OperationId" .operationId clientRequestTokenCodec
        |> Codec.buildObject


{-| Codec for CreateStackInstancesInput. -}
createStackInstancesInputCodec : Codec CreateStackInstancesInput
createStackInstancesInputCodec =
    Codec.object CreateStackInstancesInput
        |> Codec.field "StackSetName" .stackSetName Codec.string
        |> Codec.field "Regions" .regions regionListCodec
        |> Codec.field "ParameterOverrides" .parameterOverrides parametersCodec
        |> Codec.field "OperationPreferences" .operationPreferences stackSetOperationPreferencesCodec
        |> Codec.field "OperationId" .operationId clientRequestTokenCodec
        |> Codec.field "Accounts" .accounts accountListCodec
        |> Codec.buildObject


{-| Codec for CreateStackInput. -}
createStackInputCodec : Codec CreateStackInput
createStackInputCodec =
    Codec.object CreateStackInput
        |> Codec.field "TimeoutInMinutes" .timeoutInMinutes timeoutMinutesCodec
        |> Codec.field "TemplateURL" .templateUrl templateUrlcodec
        |> Codec.field "TemplateBody" .templateBody templateBodyCodec
        |> Codec.field "Tags" .tags tagsCodec
        |> Codec.field "StackPolicyURL" .stackPolicyUrl stackPolicyUrlcodec
        |> Codec.field "StackPolicyBody" .stackPolicyBody stackPolicyBodyCodec
        |> Codec.field "StackName" .stackName Codec.string
        |> Codec.field "RollbackConfiguration" .rollbackConfiguration rollbackConfigurationCodec
        |> Codec.field "RoleARN" .roleArn roleArncodec
        |> Codec.field "ResourceTypes" .resourceTypes resourceTypesCodec
        |> Codec.field "Parameters" .parameters parametersCodec
        |> Codec.field "OnFailure" .onFailure onFailureCodec
        |> Codec.field "NotificationARNs" .notificationArns notificationArnsCodec
        |> Codec.field "EnableTerminationProtection" .enableTerminationProtection Codec.bool
        |> Codec.field "DisableRollback" .disableRollback Codec.bool
        |> Codec.field "ClientRequestToken" .clientRequestToken clientRequestTokenCodec
        |> Codec.field "Capabilities" .capabilities capabilitiesCodec
        |> Codec.buildObject


{-| Codec for CreateChangeSetOutput. -}
createChangeSetOutputCodec : Codec CreateChangeSetOutput
createChangeSetOutputCodec =
    Codec.object CreateChangeSetOutput
        |> Codec.field "StackId" .stackId Codec.string
        |> Codec.field "Id" .id changeSetIdCodec
        |> Codec.buildObject


{-| Codec for CreateChangeSetInput. -}
createChangeSetInputCodec : Codec CreateChangeSetInput
createChangeSetInputCodec =
    Codec.object CreateChangeSetInput
        |> Codec.field "UsePreviousTemplate" .usePreviousTemplate Codec.bool
        |> Codec.field "TemplateURL" .templateUrl templateUrlcodec
        |> Codec.field "TemplateBody" .templateBody templateBodyCodec
        |> Codec.field "Tags" .tags tagsCodec
        |> Codec.field "StackName" .stackName stackNameOrIdCodec
        |> Codec.field "RollbackConfiguration" .rollbackConfiguration rollbackConfigurationCodec
        |> Codec.field "RoleARN" .roleArn roleArncodec
        |> Codec.field "ResourceTypes" .resourceTypes resourceTypesCodec
        |> Codec.field "Parameters" .parameters parametersCodec
        |> Codec.field "NotificationARNs" .notificationArns notificationArnsCodec
        |> Codec.field "Description" .description descriptionCodec
        |> Codec.field "ClientToken" .clientToken clientTokenCodec
        |> Codec.field "ChangeSetType" .changeSetType changeSetTypeCodec
        |> Codec.field "ChangeSetName" .changeSetName changeSetNameCodec
        |> Codec.field "Capabilities" .capabilities capabilitiesCodec
        |> Codec.buildObject


{-| Codec for ContinueUpdateRollbackOutput. -}
continueUpdateRollbackOutputCodec : Codec ContinueUpdateRollbackOutput
continueUpdateRollbackOutputCodec =
    Codec.object ContinueUpdateRollbackOutput |> Codec.buildObject


{-| Codec for ContinueUpdateRollbackInput. -}
continueUpdateRollbackInputCodec : Codec ContinueUpdateRollbackInput
continueUpdateRollbackInputCodec =
    Codec.object ContinueUpdateRollbackInput
        |> Codec.field "StackName" .stackName stackNameOrIdCodec
        |> Codec.field "RoleARN" .roleArn roleArncodec
        |> Codec.field "ResourcesToSkip" .resourcesToSkip resourcesToSkipCodec
        |> Codec.field "ClientRequestToken" .clientRequestToken clientRequestTokenCodec
        |> Codec.buildObject


{-| Codec for ClientToken. -}
clientTokenCodec : Codec ClientToken
clientTokenCodec =
    Codec.build (Refined.encoder clientToken) (Refined.decoder clientToken)


{-| Codec for ClientRequestToken. -}
clientRequestTokenCodec : Codec ClientRequestToken
clientRequestTokenCodec =
    Codec.build (Refined.encoder clientRequestToken) (Refined.decoder clientRequestToken)


{-| Codec for Changes. -}
changesCodec : Codec Changes
changesCodec =
    Codec.list changeCodec


{-| Codec for ChangeType. -}
changeTypeCodec : Codec ChangeType
changeTypeCodec =
    Codec.build (Enum.encoder changeType) (Enum.decoder changeType)


{-| Codec for ChangeSource. -}
changeSourceCodec : Codec ChangeSource
changeSourceCodec =
    Codec.build (Enum.encoder changeSource) (Enum.decoder changeSource)


{-| Codec for ChangeSetType. -}
changeSetTypeCodec : Codec ChangeSetType
changeSetTypeCodec =
    Codec.build (Enum.encoder changeSetType) (Enum.decoder changeSetType)


{-| Codec for ChangeSetSummary. -}
changeSetSummaryCodec : Codec ChangeSetSummary
changeSetSummaryCodec =
    Codec.object ChangeSetSummary
        |> Codec.field "StatusReason" .statusReason Codec.string
        |> Codec.field "Status" .status changeSetStatusCodec
        |> Codec.field "StackName" .stackName Codec.string
        |> Codec.field "StackId" .stackId Codec.string
        |> Codec.field "ExecutionStatus" .executionStatus executionStatusCodec
        |> Codec.field "Description" .description descriptionCodec
        |> Codec.field "CreationTime" .creationTime creationTimeCodec
        |> Codec.field "ChangeSetName" .changeSetName changeSetNameCodec
        |> Codec.field "ChangeSetId" .changeSetId changeSetIdCodec
        |> Codec.buildObject


{-| Codec for ChangeSetSummaries. -}
changeSetSummariesCodec : Codec ChangeSetSummaries
changeSetSummariesCodec =
    Codec.list changeSetSummaryCodec


{-| Codec for ChangeSetStatusReason. -}
changeSetStatusReasonCodec : Codec ChangeSetStatusReason
changeSetStatusReasonCodec =
    Codec.string


{-| Codec for ChangeSetStatus. -}
changeSetStatusCodec : Codec ChangeSetStatus
changeSetStatusCodec =
    Codec.build (Enum.encoder changeSetStatus) (Enum.decoder changeSetStatus)


{-| Codec for ChangeSetNameOrId. -}
changeSetNameOrIdCodec : Codec ChangeSetNameOrId
changeSetNameOrIdCodec =
    Codec.build (Refined.encoder changeSetNameOrId) (Refined.decoder changeSetNameOrId)


{-| Codec for ChangeSetName. -}
changeSetNameCodec : Codec ChangeSetName
changeSetNameCodec =
    Codec.build (Refined.encoder changeSetName) (Refined.decoder changeSetName)


{-| Codec for ChangeSetId. -}
changeSetIdCodec : Codec ChangeSetId
changeSetIdCodec =
    Codec.build (Refined.encoder changeSetId) (Refined.decoder changeSetId)


{-| Codec for ChangeAction. -}
changeActionCodec : Codec ChangeAction
changeActionCodec =
    Codec.build (Enum.encoder changeAction) (Enum.decoder changeAction)


{-| Codec for Change. -}
changeCodec : Codec Change
changeCodec =
    Codec.object Change
        |> Codec.field "Type" .type_ changeTypeCodec
        |> Codec.field "ResourceChange" .resourceChange resourceChangeCodec
        |> Codec.buildObject


{-| Codec for CausingEntity. -}
causingEntityCodec : Codec CausingEntity
causingEntityCodec =
    Codec.string


{-| Codec for Capability. -}
capabilityCodec : Codec Capability
capabilityCodec =
    Codec.build (Enum.encoder capability) (Enum.decoder capability)


{-| Codec for CapabilitiesReason. -}
capabilitiesReasonCodec : Codec CapabilitiesReason
capabilitiesReasonCodec =
    Codec.string


{-| Codec for Capabilities. -}
capabilitiesCodec : Codec Capabilities
capabilitiesCodec =
    Codec.list capabilityCodec


{-| Codec for CancelUpdateStackInput. -}
cancelUpdateStackInputCodec : Codec CancelUpdateStackInput
cancelUpdateStackInputCodec =
    Codec.object CancelUpdateStackInput
        |> Codec.field "StackName" .stackName Codec.string
        |> Codec.field "ClientRequestToken" .clientRequestToken clientRequestTokenCodec
        |> Codec.buildObject


{-| Codec for BoxedMaxResults. -}
boxedMaxResultsCodec : Codec BoxedMaxResults
boxedMaxResultsCodec =
    Codec.build (Refined.encoder boxedMaxResults) (Refined.decoder boxedMaxResults)


{-| Codec for BoxedInteger. -}
boxedIntegerCodec : Codec BoxedInteger
boxedIntegerCodec =
    Codec.int


{-| Codec for Arn. -}
arnCodec : Codec Arn
arnCodec =
    Codec.string


{-| Codec for AllowedValues. -}
allowedValuesCodec : Codec AllowedValues
allowedValuesCodec =
    Codec.list Codec.string


{-| Codec for AllowedValue. -}
allowedValueCodec : Codec AllowedValue
allowedValueCodec =
    Codec.string


{-| Codec for AccountList. -}
accountListCodec : Codec AccountList
accountListCodec =
    Codec.list accountCodec


{-| Codec for AccountLimitList. -}
accountLimitListCodec : Codec AccountLimitList
accountLimitListCodec =
    Codec.list accountLimitCodec


{-| Codec for AccountLimit. -}
accountLimitCodec : Codec AccountLimit
accountLimitCodec =
    Codec.object AccountLimit
        |> Codec.field "Value" .value Codec.int
        |> Codec.field "Name" .name Codec.string
        |> Codec.buildObject


{-| Codec for AccountGateStatusReason. -}
accountGateStatusReasonCodec : Codec AccountGateStatusReason
accountGateStatusReasonCodec =
    Codec.string


{-| Codec for AccountGateStatus. -}
accountGateStatusCodec : Codec AccountGateStatus
accountGateStatusCodec =
    Codec.build (Enum.encoder accountGateStatus) (Enum.decoder accountGateStatus)


{-| Codec for AccountGateResult. -}
accountGateResultCodec : Codec AccountGateResult
accountGateResultCodec =
    Codec.object AccountGateResult
        |> Codec.field "StatusReason" .statusReason Codec.string
        |> Codec.field "Status" .status accountGateStatusCodec
        |> Codec.buildObject


{-| Codec for Account. -}
accountCodec : Codec Account
accountCodec =
    Codec.build (Refined.encoder account) (Refined.decoder account)
