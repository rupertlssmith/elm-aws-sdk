module AWS.Batch exposing (service)

import AWS.Core.Decode
import AWS.Core.Http
import AWS.Core.Service
import Codec exposing (Codec)
import Dict exposing (Dict)
import Enum exposing (Enum)


{-| Configuration for this service. -}
service : AWS.Core.Service.Service
service =
    let
        optionsFn =
            AWS.Core.Service.setJsonVersion "1.1"
    in
    AWS.Core.Service.defineGlobal "batch" "2016-08-10" AWS.Core.Service.REST_JSON AWS.Core.Service.SignV4 optionsFn


{-| AWS Endpoint. -}
updateJobQueue : UpdateJobQueueRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateJobQueueResponse)
updateJobQueue req =
    let
        jsonBody =
            req |> Codec.encoder updateJobQueueRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "UpdateJobQueue"
                (AWS.Core.Decode.ResultDecoder "UpdateJobQueueResponse" (Codec.decoder updateJobQueueResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/v1/updatejobqueue" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
updateComputeEnvironment :
    UpdateComputeEnvironmentRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateComputeEnvironmentResponse)
updateComputeEnvironment req =
    let
        jsonBody =
            req |> Codec.encoder updateComputeEnvironmentRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "UpdateComputeEnvironment"
                (AWS.Core.Decode.ResultDecoder
                    "UpdateComputeEnvironmentResponse"
                    (Codec.decoder updateComputeEnvironmentResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/v1/updatecomputeenvironment" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
terminateJob : TerminateJobRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TerminateJobResponse)
terminateJob req =
    let
        jsonBody =
            req |> Codec.encoder terminateJobRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "TerminateJob"
                (AWS.Core.Decode.ResultDecoder "TerminateJobResponse" (Codec.decoder terminateJobResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/v1/terminatejob" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
submitJob : SubmitJobRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SubmitJobResponse)
submitJob req =
    let
        jsonBody =
            req |> Codec.encoder submitJobRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "SubmitJob"
                (AWS.Core.Decode.ResultDecoder "SubmitJobResponse" (Codec.decoder submitJobResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/v1/submitjob" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
registerJobDefinition :
    RegisterJobDefinitionRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RegisterJobDefinitionResponse)
registerJobDefinition req =
    let
        jsonBody =
            req |> Codec.encoder registerJobDefinitionRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "RegisterJobDefinition"
                (AWS.Core.Decode.ResultDecoder
                    "RegisterJobDefinitionResponse"
                    (Codec.decoder registerJobDefinitionResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/v1/registerjobdefinition" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listJobs : ListJobsRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListJobsResponse)
listJobs req =
    let
        jsonBody =
            req |> Codec.encoder listJobsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListJobs"
                (AWS.Core.Decode.ResultDecoder "ListJobsResponse" (Codec.decoder listJobsResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/v1/listjobs" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeJobs : DescribeJobsRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeJobsResponse)
describeJobs req =
    let
        jsonBody =
            req |> Codec.encoder describeJobsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeJobs"
                (AWS.Core.Decode.ResultDecoder "DescribeJobsResponse" (Codec.decoder describeJobsResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/v1/describejobs" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeJobQueues :
    DescribeJobQueuesRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeJobQueuesResponse)
describeJobQueues req =
    let
        jsonBody =
            req |> Codec.encoder describeJobQueuesRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeJobQueues"
                (AWS.Core.Decode.ResultDecoder
                    "DescribeJobQueuesResponse"
                    (Codec.decoder describeJobQueuesResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/v1/describejobqueues" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeJobDefinitions :
    DescribeJobDefinitionsRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeJobDefinitionsResponse)
describeJobDefinitions req =
    let
        jsonBody =
            req |> Codec.encoder describeJobDefinitionsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeJobDefinitions"
                (AWS.Core.Decode.ResultDecoder
                    "DescribeJobDefinitionsResponse"
                    (Codec.decoder describeJobDefinitionsResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/v1/describejobdefinitions" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
describeComputeEnvironments :
    DescribeComputeEnvironmentsRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeComputeEnvironmentsResponse)
describeComputeEnvironments req =
    let
        jsonBody =
            req |> Codec.encoder describeComputeEnvironmentsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DescribeComputeEnvironments"
                (AWS.Core.Decode.ResultDecoder
                    "DescribeComputeEnvironmentsResponse"
                    (Codec.decoder describeComputeEnvironmentsResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/v1/describecomputeenvironments" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deregisterJobDefinition :
    DeregisterJobDefinitionRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeregisterJobDefinitionResponse)
deregisterJobDefinition req =
    let
        jsonBody =
            req |> Codec.encoder deregisterJobDefinitionRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DeregisterJobDefinition"
                (AWS.Core.Decode.ResultDecoder
                    "DeregisterJobDefinitionResponse"
                    (Codec.decoder deregisterJobDefinitionResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/v1/deregisterjobdefinition" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteJobQueue : DeleteJobQueueRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteJobQueueResponse)
deleteJobQueue req =
    let
        jsonBody =
            req |> Codec.encoder deleteJobQueueRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DeleteJobQueue"
                (AWS.Core.Decode.ResultDecoder "DeleteJobQueueResponse" (Codec.decoder deleteJobQueueResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/v1/deletejobqueue" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteComputeEnvironment :
    DeleteComputeEnvironmentRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteComputeEnvironmentResponse)
deleteComputeEnvironment req =
    let
        jsonBody =
            req |> Codec.encoder deleteComputeEnvironmentRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DeleteComputeEnvironment"
                (AWS.Core.Decode.ResultDecoder
                    "DeleteComputeEnvironmentResponse"
                    (Codec.decoder deleteComputeEnvironmentResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/v1/deletecomputeenvironment" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createJobQueue : CreateJobQueueRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateJobQueueResponse)
createJobQueue req =
    let
        jsonBody =
            req |> Codec.encoder createJobQueueRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateJobQueue"
                (AWS.Core.Decode.ResultDecoder "CreateJobQueueResponse" (Codec.decoder createJobQueueResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/v1/createjobqueue" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createComputeEnvironment :
    CreateComputeEnvironmentRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateComputeEnvironmentResponse)
createComputeEnvironment req =
    let
        jsonBody =
            req |> Codec.encoder createComputeEnvironmentRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateComputeEnvironment"
                (AWS.Core.Decode.ResultDecoder
                    "CreateComputeEnvironmentResponse"
                    (Codec.decoder createComputeEnvironmentResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/v1/createcomputeenvironment" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
cancelJob : CancelJobRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CancelJobResponse)
cancelJob req =
    let
        jsonBody =
            req |> Codec.encoder cancelJobRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CancelJob"
                (AWS.Core.Decode.ResultDecoder "CancelJobResponse" (Codec.decoder cancelJobResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/v1/canceljob" jsonBody wrappedDecoder


type ArrayJobDependency
    = ArrayJobDependencyNToN
    | ArrayJobDependencySequential


arrayJobDependency : Enum ArrayJobDependency
arrayJobDependency =
    Enum.define
        [ ArrayJobDependencyNToN, ArrayJobDependencySequential ]
        (\val ->
            case val of
                ArrayJobDependencyNToN ->
                    "N_TO_N"

                ArrayJobDependencySequential ->
                    "SEQUENTIAL"
        )


type alias ArrayJobStatusSummary =
    Dict String Int


type alias ArrayProperties =
    { size : Int }


type alias ArrayPropertiesDetail =
    { statusSummary : ArrayJobStatusSummary, size : Int, index : Int }


type alias ArrayPropertiesSummary =
    { size : Int, index : Int }


type alias AttemptContainerDetail =
    { taskArn : String
    , reason : String
    , networkInterfaces : NetworkInterfaceList
    , logStreamName : String
    , exitCode : Int
    , containerInstanceArn : String
    }


type alias AttemptDetail =
    { stoppedAt : Int, statusReason : String, startedAt : Int, container : AttemptContainerDetail }


type alias AttemptDetails =
    List AttemptDetail


type alias Boolean =
    Bool


type Cestate
    = CestateEnabled
    | CestateDisabled


cestate : Enum Cestate
cestate =
    Enum.define
        [ CestateEnabled, CestateDisabled ]
        (\val ->
            case val of
                CestateEnabled ->
                    "ENABLED"

                CestateDisabled ->
                    "DISABLED"
        )


type Cestatus
    = CestatusCreating
    | CestatusUpdating
    | CestatusDeleting
    | CestatusDeleted
    | CestatusValid
    | CestatusInvalid


cestatus : Enum Cestatus
cestatus =
    Enum.define
        [ CestatusCreating, CestatusUpdating, CestatusDeleting, CestatusDeleted, CestatusValid, CestatusInvalid ]
        (\val ->
            case val of
                CestatusCreating ->
                    "CREATING"

                CestatusUpdating ->
                    "UPDATING"

                CestatusDeleting ->
                    "DELETING"

                CestatusDeleted ->
                    "DELETED"

                CestatusValid ->
                    "VALID"

                CestatusInvalid ->
                    "INVALID"
        )


type Cetype
    = CetypeManaged
    | CetypeUnmanaged


cetype : Enum Cetype
cetype =
    Enum.define
        [ CetypeManaged, CetypeUnmanaged ]
        (\val ->
            case val of
                CetypeManaged ->
                    "MANAGED"

                CetypeUnmanaged ->
                    "UNMANAGED"
        )


type Crtype
    = CrtypeEc2
    | CrtypeSpot


crtype : Enum Crtype
crtype =
    Enum.define
        [ CrtypeEc2, CrtypeSpot ]
        (\val ->
            case val of
                CrtypeEc2 ->
                    "EC2"

                CrtypeSpot ->
                    "SPOT"
        )


type alias CancelJobRequest =
    { reason : String, jobId : String }


type alias CancelJobResponse =
    {}


type alias ComputeEnvironmentDetail =
    { type_ : Cetype
    , statusReason : String
    , status : Cestatus
    , state : Cestate
    , serviceRole : String
    , ecsClusterArn : String
    , computeResources : ComputeResource
    , computeEnvironmentName : String
    , computeEnvironmentArn : String
    }


type alias ComputeEnvironmentDetailList =
    List ComputeEnvironmentDetail


type alias ComputeEnvironmentOrder =
    { order : Int, computeEnvironment : String }


type alias ComputeEnvironmentOrders =
    List ComputeEnvironmentOrder


type alias ComputeResource =
    { type_ : Crtype
    , tags : TagsMap
    , subnets : StringList
    , spotIamFleetRole : String
    , securityGroupIds : StringList
    , placementGroup : String
    , minvCpus : Int
    , maxvCpus : Int
    , launchTemplate : LaunchTemplateSpecification
    , instanceTypes : StringList
    , instanceRole : String
    , imageId : String
    , ec2KeyPair : String
    , desiredvCpus : Int
    , bidPercentage : Int
    }


type alias ComputeResourceUpdate =
    { minvCpus : Int, maxvCpus : Int, desiredvCpus : Int }


type alias ContainerDetail =
    { volumes : Volumes
    , vcpus : Int
    , user : String
    , ulimits : Ulimits
    , taskArn : String
    , resourceRequirements : ResourceRequirements
    , reason : String
    , readonlyRootFilesystem : Bool
    , privileged : Bool
    , networkInterfaces : NetworkInterfaceList
    , mountPoints : MountPoints
    , memory : Int
    , logStreamName : String
    , linuxParameters : LinuxParameters
    , jobRoleArn : String
    , instanceType : String
    , image : String
    , exitCode : Int
    , environment : EnvironmentVariables
    , containerInstanceArn : String
    , command : StringList
    }


type alias ContainerOverrides =
    { vcpus : Int
    , resourceRequirements : ResourceRequirements
    , memory : Int
    , instanceType : String
    , environment : EnvironmentVariables
    , command : StringList
    }


type alias ContainerProperties =
    { volumes : Volumes
    , vcpus : Int
    , user : String
    , ulimits : Ulimits
    , resourceRequirements : ResourceRequirements
    , readonlyRootFilesystem : Bool
    , privileged : Bool
    , mountPoints : MountPoints
    , memory : Int
    , linuxParameters : LinuxParameters
    , jobRoleArn : String
    , instanceType : String
    , image : String
    , environment : EnvironmentVariables
    , command : StringList
    }


type alias ContainerSummary =
    { reason : String, exitCode : Int }


type alias CreateComputeEnvironmentRequest =
    { type_ : Cetype
    , state : Cestate
    , serviceRole : String
    , computeResources : ComputeResource
    , computeEnvironmentName : String
    }


type alias CreateComputeEnvironmentResponse =
    { computeEnvironmentName : String, computeEnvironmentArn : String }


type alias CreateJobQueueRequest =
    { state : Jqstate, priority : Int, jobQueueName : String, computeEnvironmentOrder : ComputeEnvironmentOrders }


type alias CreateJobQueueResponse =
    { jobQueueName : String, jobQueueArn : String }


type alias DeleteComputeEnvironmentRequest =
    { computeEnvironment : String }


type alias DeleteComputeEnvironmentResponse =
    {}


type alias DeleteJobQueueRequest =
    { jobQueue : String }


type alias DeleteJobQueueResponse =
    {}


type alias DeregisterJobDefinitionRequest =
    { jobDefinition : String }


type alias DeregisterJobDefinitionResponse =
    {}


type alias DescribeComputeEnvironmentsRequest =
    { nextToken : String, maxResults : Int, computeEnvironments : StringList }


type alias DescribeComputeEnvironmentsResponse =
    { nextToken : String, computeEnvironments : ComputeEnvironmentDetailList }


type alias DescribeJobDefinitionsRequest =
    { status : String, nextToken : String, maxResults : Int, jobDefinitions : StringList, jobDefinitionName : String }


type alias DescribeJobDefinitionsResponse =
    { nextToken : String, jobDefinitions : JobDefinitionList }


type alias DescribeJobQueuesRequest =
    { nextToken : String, maxResults : Int, jobQueues : StringList }


type alias DescribeJobQueuesResponse =
    { nextToken : String, jobQueues : JobQueueDetailList }


type alias DescribeJobsRequest =
    { jobs : StringList }


type alias DescribeJobsResponse =
    { jobs : JobDetailList }


type alias Device =
    { permissions : DeviceCgroupPermissions, hostPath : String, containerPath : String }


type DeviceCgroupPermission
    = DeviceCgroupPermissionRead
    | DeviceCgroupPermissionWrite
    | DeviceCgroupPermissionMknod


deviceCgroupPermission : Enum DeviceCgroupPermission
deviceCgroupPermission =
    Enum.define
        [ DeviceCgroupPermissionRead, DeviceCgroupPermissionWrite, DeviceCgroupPermissionMknod ]
        (\val ->
            case val of
                DeviceCgroupPermissionRead ->
                    "READ"

                DeviceCgroupPermissionWrite ->
                    "WRITE"

                DeviceCgroupPermissionMknod ->
                    "MKNOD"
        )


type alias DeviceCgroupPermissions =
    List DeviceCgroupPermission


type alias DevicesList =
    List Device


type alias EnvironmentVariables =
    List KeyValuePair


type alias Host =
    { sourcePath : String }


type alias Integer =
    Int


type Jqstate
    = JqstateEnabled
    | JqstateDisabled


jqstate : Enum Jqstate
jqstate =
    Enum.define
        [ JqstateEnabled, JqstateDisabled ]
        (\val ->
            case val of
                JqstateEnabled ->
                    "ENABLED"

                JqstateDisabled ->
                    "DISABLED"
        )


type Jqstatus
    = JqstatusCreating
    | JqstatusUpdating
    | JqstatusDeleting
    | JqstatusDeleted
    | JqstatusValid
    | JqstatusInvalid


jqstatus : Enum Jqstatus
jqstatus =
    Enum.define
        [ JqstatusCreating, JqstatusUpdating, JqstatusDeleting, JqstatusDeleted, JqstatusValid, JqstatusInvalid ]
        (\val ->
            case val of
                JqstatusCreating ->
                    "CREATING"

                JqstatusUpdating ->
                    "UPDATING"

                JqstatusDeleting ->
                    "DELETING"

                JqstatusDeleted ->
                    "DELETED"

                JqstatusValid ->
                    "VALID"

                JqstatusInvalid ->
                    "INVALID"
        )


type alias JobDefinition =
    { type_ : String
    , timeout : JobTimeout
    , status : String
    , revision : Int
    , retryStrategy : RetryStrategy
    , parameters : ParametersMap
    , nodeProperties : NodeProperties
    , jobDefinitionName : String
    , jobDefinitionArn : String
    , containerProperties : ContainerProperties
    }


type alias JobDefinitionList =
    List JobDefinition


type JobDefinitionType
    = JobDefinitionTypeContainer
    | JobDefinitionTypeMultinode


jobDefinitionType : Enum JobDefinitionType
jobDefinitionType =
    Enum.define
        [ JobDefinitionTypeContainer, JobDefinitionTypeMultinode ]
        (\val ->
            case val of
                JobDefinitionTypeContainer ->
                    "container"

                JobDefinitionTypeMultinode ->
                    "multinode"
        )


type alias JobDependency =
    { type_ : ArrayJobDependency, jobId : String }


type alias JobDependencyList =
    List JobDependency


type alias JobDetail =
    { timeout : JobTimeout
    , stoppedAt : Int
    , statusReason : String
    , status : JobStatus
    , startedAt : Int
    , retryStrategy : RetryStrategy
    , parameters : ParametersMap
    , nodeProperties : NodeProperties
    , nodeDetails : NodeDetails
    , jobQueue : String
    , jobName : String
    , jobId : String
    , jobDefinition : String
    , dependsOn : JobDependencyList
    , createdAt : Int
    , container : ContainerDetail
    , attempts : AttemptDetails
    , arrayProperties : ArrayPropertiesDetail
    }


type alias JobDetailList =
    List JobDetail


type alias JobQueueDetail =
    { statusReason : String
    , status : Jqstatus
    , state : Jqstate
    , priority : Int
    , jobQueueName : String
    , jobQueueArn : String
    , computeEnvironmentOrder : ComputeEnvironmentOrders
    }


type alias JobQueueDetailList =
    List JobQueueDetail


type JobStatus
    = JobStatusSubmitted
    | JobStatusPending
    | JobStatusRunnable
    | JobStatusStarting
    | JobStatusRunning
    | JobStatusSucceeded
    | JobStatusFailed


jobStatus : Enum JobStatus
jobStatus =
    Enum.define
        [ JobStatusSubmitted
        , JobStatusPending
        , JobStatusRunnable
        , JobStatusStarting
        , JobStatusRunning
        , JobStatusSucceeded
        , JobStatusFailed
        ]
        (\val ->
            case val of
                JobStatusSubmitted ->
                    "SUBMITTED"

                JobStatusPending ->
                    "PENDING"

                JobStatusRunnable ->
                    "RUNNABLE"

                JobStatusStarting ->
                    "STARTING"

                JobStatusRunning ->
                    "RUNNING"

                JobStatusSucceeded ->
                    "SUCCEEDED"

                JobStatusFailed ->
                    "FAILED"
        )


type alias JobSummary =
    { stoppedAt : Int
    , statusReason : String
    , status : JobStatus
    , startedAt : Int
    , nodeProperties : NodePropertiesSummary
    , jobName : String
    , jobId : String
    , createdAt : Int
    , container : ContainerSummary
    , arrayProperties : ArrayPropertiesSummary
    }


type alias JobSummaryList =
    List JobSummary


type alias JobTimeout =
    { attemptDurationSeconds : Int }


type alias KeyValuePair =
    { value : String, name : String }


type alias LaunchTemplateSpecification =
    { version : String, launchTemplateName : String, launchTemplateId : String }


type alias LinuxParameters =
    { devices : DevicesList }


type alias ListJobsRequest =
    { nextToken : String
    , multiNodeJobId : String
    , maxResults : Int
    , jobStatus : JobStatus
    , jobQueue : String
    , arrayJobId : String
    }


type alias ListJobsResponse =
    { nextToken : String, jobSummaryList : JobSummaryList }


type alias Long =
    Int


type alias MountPoint =
    { sourceVolume : String, readOnly : Bool, containerPath : String }


type alias MountPoints =
    List MountPoint


type alias NetworkInterface =
    { privateIpv4Address : String, ipv6Address : String, attachmentId : String }


type alias NetworkInterfaceList =
    List NetworkInterface


type alias NodeDetails =
    { nodeIndex : Int, isMainNode : Bool }


type alias NodeOverrides =
    { numNodes : Int, nodePropertyOverrides : NodePropertyOverrides }


type alias NodeProperties =
    { numNodes : Int, nodeRangeProperties : NodeRangeProperties, mainNode : Int }


type alias NodePropertiesSummary =
    { numNodes : Int, nodeIndex : Int, isMainNode : Bool }


type alias NodePropertyOverride =
    { targetNodes : String, containerOverrides : ContainerOverrides }


type alias NodePropertyOverrides =
    List NodePropertyOverride


type alias NodeRangeProperties =
    List NodeRangeProperty


type alias NodeRangeProperty =
    { targetNodes : String, container : ContainerProperties }


type alias ParametersMap =
    Dict String String


type alias RegisterJobDefinitionRequest =
    { type_ : JobDefinitionType
    , timeout : JobTimeout
    , retryStrategy : RetryStrategy
    , parameters : ParametersMap
    , nodeProperties : NodeProperties
    , jobDefinitionName : String
    , containerProperties : ContainerProperties
    }


type alias RegisterJobDefinitionResponse =
    { revision : Int, jobDefinitionName : String, jobDefinitionArn : String }


type alias ResourceRequirement =
    { value : String, type_ : ResourceType }


type alias ResourceRequirements =
    List ResourceRequirement


type ResourceType
    = ResourceTypeGpu


resourceType : Enum ResourceType
resourceType =
    Enum.define
        [ ResourceTypeGpu ]
        (\val ->
            case val of
                ResourceTypeGpu ->
                    "GPU"
        )


type alias RetryStrategy =
    { attempts : Int }


type alias String_ =
    String


type alias StringList =
    List String


type alias SubmitJobRequest =
    { timeout : JobTimeout
    , retryStrategy : RetryStrategy
    , parameters : ParametersMap
    , nodeOverrides : NodeOverrides
    , jobQueue : String
    , jobName : String
    , jobDefinition : String
    , dependsOn : JobDependencyList
    , containerOverrides : ContainerOverrides
    , arrayProperties : ArrayProperties
    }


type alias SubmitJobResponse =
    { jobName : String, jobId : String }


type alias TagsMap =
    Dict String String


type alias TerminateJobRequest =
    { reason : String, jobId : String }


type alias TerminateJobResponse =
    {}


type alias Ulimit =
    { softLimit : Int, name : String, hardLimit : Int }


type alias Ulimits =
    List Ulimit


type alias UpdateComputeEnvironmentRequest =
    { state : Cestate, serviceRole : String, computeResources : ComputeResourceUpdate, computeEnvironment : String }


type alias UpdateComputeEnvironmentResponse =
    { computeEnvironmentName : String, computeEnvironmentArn : String }


type alias UpdateJobQueueRequest =
    { state : Jqstate, priority : Int, jobQueue : String, computeEnvironmentOrder : ComputeEnvironmentOrders }


type alias UpdateJobQueueResponse =
    { jobQueueName : String, jobQueueArn : String }


type alias Volume =
    { name : String, host : Host }


type alias Volumes =
    List Volume


{-| Codec for Volumes. -}
volumesCodec : Codec Volumes
volumesCodec =
    Codec.list volumeCodec


{-| Codec for Volume. -}
volumeCodec : Codec Volume
volumeCodec =
    Codec.object Volume
        |> Codec.field "name" .name Codec.string
        |> Codec.field "host" .host hostCodec
        |> Codec.buildObject


{-| Codec for UpdateJobQueueResponse. -}
updateJobQueueResponseCodec : Codec UpdateJobQueueResponse
updateJobQueueResponseCodec =
    Codec.object UpdateJobQueueResponse
        |> Codec.field "jobQueueName" .jobQueueName Codec.string
        |> Codec.field "jobQueueArn" .jobQueueArn Codec.string
        |> Codec.buildObject


{-| Codec for UpdateJobQueueRequest. -}
updateJobQueueRequestCodec : Codec UpdateJobQueueRequest
updateJobQueueRequestCodec =
    Codec.object UpdateJobQueueRequest
        |> Codec.field "state" .state jqstateCodec
        |> Codec.field "priority" .priority Codec.int
        |> Codec.field "jobQueue" .jobQueue Codec.string
        |> Codec.field "computeEnvironmentOrder" .computeEnvironmentOrder computeEnvironmentOrdersCodec
        |> Codec.buildObject


{-| Codec for UpdateComputeEnvironmentResponse. -}
updateComputeEnvironmentResponseCodec : Codec UpdateComputeEnvironmentResponse
updateComputeEnvironmentResponseCodec =
    Codec.object UpdateComputeEnvironmentResponse
        |> Codec.field "computeEnvironmentName" .computeEnvironmentName Codec.string
        |> Codec.field "computeEnvironmentArn" .computeEnvironmentArn Codec.string
        |> Codec.buildObject


{-| Codec for UpdateComputeEnvironmentRequest. -}
updateComputeEnvironmentRequestCodec : Codec UpdateComputeEnvironmentRequest
updateComputeEnvironmentRequestCodec =
    Codec.object UpdateComputeEnvironmentRequest
        |> Codec.field "state" .state cestateCodec
        |> Codec.field "serviceRole" .serviceRole Codec.string
        |> Codec.field "computeResources" .computeResources computeResourceUpdateCodec
        |> Codec.field "computeEnvironment" .computeEnvironment Codec.string
        |> Codec.buildObject


{-| Codec for Ulimits. -}
ulimitsCodec : Codec Ulimits
ulimitsCodec =
    Codec.list ulimitCodec


{-| Codec for Ulimit. -}
ulimitCodec : Codec Ulimit
ulimitCodec =
    Codec.object Ulimit
        |> Codec.field "softLimit" .softLimit Codec.int
        |> Codec.field "name" .name Codec.string
        |> Codec.field "hardLimit" .hardLimit Codec.int
        |> Codec.buildObject


{-| Codec for TerminateJobResponse. -}
terminateJobResponseCodec : Codec TerminateJobResponse
terminateJobResponseCodec =
    Codec.object TerminateJobResponse |> Codec.buildObject


{-| Codec for TerminateJobRequest. -}
terminateJobRequestCodec : Codec TerminateJobRequest
terminateJobRequestCodec =
    Codec.object TerminateJobRequest
        |> Codec.field "reason" .reason Codec.string
        |> Codec.field "jobId" .jobId Codec.string
        |> Codec.buildObject


{-| Codec for TagsMap. -}
tagsMapCodec : Codec TagsMap
tagsMapCodec =
    Codec.dict Codec.string


{-| Codec for SubmitJobResponse. -}
submitJobResponseCodec : Codec SubmitJobResponse
submitJobResponseCodec =
    Codec.object SubmitJobResponse
        |> Codec.field "jobName" .jobName Codec.string
        |> Codec.field "jobId" .jobId Codec.string
        |> Codec.buildObject


{-| Codec for SubmitJobRequest. -}
submitJobRequestCodec : Codec SubmitJobRequest
submitJobRequestCodec =
    Codec.object SubmitJobRequest
        |> Codec.field "timeout" .timeout jobTimeoutCodec
        |> Codec.field "retryStrategy" .retryStrategy retryStrategyCodec
        |> Codec.field "parameters" .parameters parametersMapCodec
        |> Codec.field "nodeOverrides" .nodeOverrides nodeOverridesCodec
        |> Codec.field "jobQueue" .jobQueue Codec.string
        |> Codec.field "jobName" .jobName Codec.string
        |> Codec.field "jobDefinition" .jobDefinition Codec.string
        |> Codec.field "dependsOn" .dependsOn jobDependencyListCodec
        |> Codec.field "containerOverrides" .containerOverrides containerOverridesCodec
        |> Codec.field "arrayProperties" .arrayProperties arrayPropertiesCodec
        |> Codec.buildObject


{-| Codec for StringList. -}
stringListCodec : Codec StringList
stringListCodec =
    Codec.list Codec.string


{-| Codec for String_. -}
stringCodec : Codec String_
stringCodec =
    Codec.string


{-| Codec for RetryStrategy. -}
retryStrategyCodec : Codec RetryStrategy
retryStrategyCodec =
    Codec.object RetryStrategy |> Codec.field "attempts" .attempts Codec.int |> Codec.buildObject


{-| Codec for ResourceType. -}
resourceTypeCodec : Codec ResourceType
resourceTypeCodec =
    Codec.build (Enum.encoder resourceType) (Enum.decoder resourceType)


{-| Codec for ResourceRequirements. -}
resourceRequirementsCodec : Codec ResourceRequirements
resourceRequirementsCodec =
    Codec.list resourceRequirementCodec


{-| Codec for ResourceRequirement. -}
resourceRequirementCodec : Codec ResourceRequirement
resourceRequirementCodec =
    Codec.object ResourceRequirement
        |> Codec.field "value" .value Codec.string
        |> Codec.field "type" .type_ resourceTypeCodec
        |> Codec.buildObject


{-| Codec for RegisterJobDefinitionResponse. -}
registerJobDefinitionResponseCodec : Codec RegisterJobDefinitionResponse
registerJobDefinitionResponseCodec =
    Codec.object RegisterJobDefinitionResponse
        |> Codec.field "revision" .revision Codec.int
        |> Codec.field "jobDefinitionName" .jobDefinitionName Codec.string
        |> Codec.field "jobDefinitionArn" .jobDefinitionArn Codec.string
        |> Codec.buildObject


{-| Codec for RegisterJobDefinitionRequest. -}
registerJobDefinitionRequestCodec : Codec RegisterJobDefinitionRequest
registerJobDefinitionRequestCodec =
    Codec.object RegisterJobDefinitionRequest
        |> Codec.field "type" .type_ jobDefinitionTypeCodec
        |> Codec.field "timeout" .timeout jobTimeoutCodec
        |> Codec.field "retryStrategy" .retryStrategy retryStrategyCodec
        |> Codec.field "parameters" .parameters parametersMapCodec
        |> Codec.field "nodeProperties" .nodeProperties nodePropertiesCodec
        |> Codec.field "jobDefinitionName" .jobDefinitionName Codec.string
        |> Codec.field "containerProperties" .containerProperties containerPropertiesCodec
        |> Codec.buildObject


{-| Codec for ParametersMap. -}
parametersMapCodec : Codec ParametersMap
parametersMapCodec =
    Codec.dict Codec.string


{-| Codec for NodeRangeProperty. -}
nodeRangePropertyCodec : Codec NodeRangeProperty
nodeRangePropertyCodec =
    Codec.object NodeRangeProperty
        |> Codec.field "targetNodes" .targetNodes Codec.string
        |> Codec.field "container" .container containerPropertiesCodec
        |> Codec.buildObject


{-| Codec for NodeRangeProperties. -}
nodeRangePropertiesCodec : Codec NodeRangeProperties
nodeRangePropertiesCodec =
    Codec.list nodeRangePropertyCodec


{-| Codec for NodePropertyOverrides. -}
nodePropertyOverridesCodec : Codec NodePropertyOverrides
nodePropertyOverridesCodec =
    Codec.list nodePropertyOverrideCodec


{-| Codec for NodePropertyOverride. -}
nodePropertyOverrideCodec : Codec NodePropertyOverride
nodePropertyOverrideCodec =
    Codec.object NodePropertyOverride
        |> Codec.field "targetNodes" .targetNodes Codec.string
        |> Codec.field "containerOverrides" .containerOverrides containerOverridesCodec
        |> Codec.buildObject


{-| Codec for NodePropertiesSummary. -}
nodePropertiesSummaryCodec : Codec NodePropertiesSummary
nodePropertiesSummaryCodec =
    Codec.object NodePropertiesSummary
        |> Codec.field "numNodes" .numNodes Codec.int
        |> Codec.field "nodeIndex" .nodeIndex Codec.int
        |> Codec.field "isMainNode" .isMainNode Codec.bool
        |> Codec.buildObject


{-| Codec for NodeProperties. -}
nodePropertiesCodec : Codec NodeProperties
nodePropertiesCodec =
    Codec.object NodeProperties
        |> Codec.field "numNodes" .numNodes Codec.int
        |> Codec.field "nodeRangeProperties" .nodeRangeProperties nodeRangePropertiesCodec
        |> Codec.field "mainNode" .mainNode Codec.int
        |> Codec.buildObject


{-| Codec for NodeOverrides. -}
nodeOverridesCodec : Codec NodeOverrides
nodeOverridesCodec =
    Codec.object NodeOverrides
        |> Codec.field "numNodes" .numNodes Codec.int
        |> Codec.field "nodePropertyOverrides" .nodePropertyOverrides nodePropertyOverridesCodec
        |> Codec.buildObject


{-| Codec for NodeDetails. -}
nodeDetailsCodec : Codec NodeDetails
nodeDetailsCodec =
    Codec.object NodeDetails
        |> Codec.field "nodeIndex" .nodeIndex Codec.int
        |> Codec.field "isMainNode" .isMainNode Codec.bool
        |> Codec.buildObject


{-| Codec for NetworkInterfaceList. -}
networkInterfaceListCodec : Codec NetworkInterfaceList
networkInterfaceListCodec =
    Codec.list networkInterfaceCodec


{-| Codec for NetworkInterface. -}
networkInterfaceCodec : Codec NetworkInterface
networkInterfaceCodec =
    Codec.object NetworkInterface
        |> Codec.field "privateIpv4Address" .privateIpv4Address Codec.string
        |> Codec.field "ipv6Address" .ipv6Address Codec.string
        |> Codec.field "attachmentId" .attachmentId Codec.string
        |> Codec.buildObject


{-| Codec for MountPoints. -}
mountPointsCodec : Codec MountPoints
mountPointsCodec =
    Codec.list mountPointCodec


{-| Codec for MountPoint. -}
mountPointCodec : Codec MountPoint
mountPointCodec =
    Codec.object MountPoint
        |> Codec.field "sourceVolume" .sourceVolume Codec.string
        |> Codec.field "readOnly" .readOnly Codec.bool
        |> Codec.field "containerPath" .containerPath Codec.string
        |> Codec.buildObject


{-| Codec for Long. -}
longCodec : Codec Long
longCodec =
    Codec.int


{-| Codec for ListJobsResponse. -}
listJobsResponseCodec : Codec ListJobsResponse
listJobsResponseCodec =
    Codec.object ListJobsResponse
        |> Codec.field "nextToken" .nextToken Codec.string
        |> Codec.field "jobSummaryList" .jobSummaryList jobSummaryListCodec
        |> Codec.buildObject


{-| Codec for ListJobsRequest. -}
listJobsRequestCodec : Codec ListJobsRequest
listJobsRequestCodec =
    Codec.object ListJobsRequest
        |> Codec.field "nextToken" .nextToken Codec.string
        |> Codec.field "multiNodeJobId" .multiNodeJobId Codec.string
        |> Codec.field "maxResults" .maxResults Codec.int
        |> Codec.field "jobStatus" .jobStatus jobStatusCodec
        |> Codec.field "jobQueue" .jobQueue Codec.string
        |> Codec.field "arrayJobId" .arrayJobId Codec.string
        |> Codec.buildObject


{-| Codec for LinuxParameters. -}
linuxParametersCodec : Codec LinuxParameters
linuxParametersCodec =
    Codec.object LinuxParameters |> Codec.field "devices" .devices devicesListCodec |> Codec.buildObject


{-| Codec for LaunchTemplateSpecification. -}
launchTemplateSpecificationCodec : Codec LaunchTemplateSpecification
launchTemplateSpecificationCodec =
    Codec.object LaunchTemplateSpecification
        |> Codec.field "version" .version Codec.string
        |> Codec.field "launchTemplateName" .launchTemplateName Codec.string
        |> Codec.field "launchTemplateId" .launchTemplateId Codec.string
        |> Codec.buildObject


{-| Codec for KeyValuePair. -}
keyValuePairCodec : Codec KeyValuePair
keyValuePairCodec =
    Codec.object KeyValuePair
        |> Codec.field "value" .value Codec.string
        |> Codec.field "name" .name Codec.string
        |> Codec.buildObject


{-| Codec for JobTimeout. -}
jobTimeoutCodec : Codec JobTimeout
jobTimeoutCodec =
    Codec.object JobTimeout
        |> Codec.field "attemptDurationSeconds" .attemptDurationSeconds Codec.int
        |> Codec.buildObject


{-| Codec for JobSummaryList. -}
jobSummaryListCodec : Codec JobSummaryList
jobSummaryListCodec =
    Codec.list jobSummaryCodec


{-| Codec for JobSummary. -}
jobSummaryCodec : Codec JobSummary
jobSummaryCodec =
    Codec.object JobSummary
        |> Codec.field "stoppedAt" .stoppedAt Codec.int
        |> Codec.field "statusReason" .statusReason Codec.string
        |> Codec.field "status" .status jobStatusCodec
        |> Codec.field "startedAt" .startedAt Codec.int
        |> Codec.field "nodeProperties" .nodeProperties nodePropertiesSummaryCodec
        |> Codec.field "jobName" .jobName Codec.string
        |> Codec.field "jobId" .jobId Codec.string
        |> Codec.field "createdAt" .createdAt Codec.int
        |> Codec.field "container" .container containerSummaryCodec
        |> Codec.field "arrayProperties" .arrayProperties arrayPropertiesSummaryCodec
        |> Codec.buildObject


{-| Codec for JobStatus. -}
jobStatusCodec : Codec JobStatus
jobStatusCodec =
    Codec.build (Enum.encoder jobStatus) (Enum.decoder jobStatus)


{-| Codec for JobQueueDetailList. -}
jobQueueDetailListCodec : Codec JobQueueDetailList
jobQueueDetailListCodec =
    Codec.list jobQueueDetailCodec


{-| Codec for JobQueueDetail. -}
jobQueueDetailCodec : Codec JobQueueDetail
jobQueueDetailCodec =
    Codec.object JobQueueDetail
        |> Codec.field "statusReason" .statusReason Codec.string
        |> Codec.field "status" .status jqstatusCodec
        |> Codec.field "state" .state jqstateCodec
        |> Codec.field "priority" .priority Codec.int
        |> Codec.field "jobQueueName" .jobQueueName Codec.string
        |> Codec.field "jobQueueArn" .jobQueueArn Codec.string
        |> Codec.field "computeEnvironmentOrder" .computeEnvironmentOrder computeEnvironmentOrdersCodec
        |> Codec.buildObject


{-| Codec for JobDetailList. -}
jobDetailListCodec : Codec JobDetailList
jobDetailListCodec =
    Codec.list jobDetailCodec


{-| Codec for JobDetail. -}
jobDetailCodec : Codec JobDetail
jobDetailCodec =
    Codec.object JobDetail
        |> Codec.field "timeout" .timeout jobTimeoutCodec
        |> Codec.field "stoppedAt" .stoppedAt Codec.int
        |> Codec.field "statusReason" .statusReason Codec.string
        |> Codec.field "status" .status jobStatusCodec
        |> Codec.field "startedAt" .startedAt Codec.int
        |> Codec.field "retryStrategy" .retryStrategy retryStrategyCodec
        |> Codec.field "parameters" .parameters parametersMapCodec
        |> Codec.field "nodeProperties" .nodeProperties nodePropertiesCodec
        |> Codec.field "nodeDetails" .nodeDetails nodeDetailsCodec
        |> Codec.field "jobQueue" .jobQueue Codec.string
        |> Codec.field "jobName" .jobName Codec.string
        |> Codec.field "jobId" .jobId Codec.string
        |> Codec.field "jobDefinition" .jobDefinition Codec.string
        |> Codec.field "dependsOn" .dependsOn jobDependencyListCodec
        |> Codec.field "createdAt" .createdAt Codec.int
        |> Codec.field "container" .container containerDetailCodec
        |> Codec.field "attempts" .attempts attemptDetailsCodec
        |> Codec.field "arrayProperties" .arrayProperties arrayPropertiesDetailCodec
        |> Codec.buildObject


{-| Codec for JobDependencyList. -}
jobDependencyListCodec : Codec JobDependencyList
jobDependencyListCodec =
    Codec.list jobDependencyCodec


{-| Codec for JobDependency. -}
jobDependencyCodec : Codec JobDependency
jobDependencyCodec =
    Codec.object JobDependency
        |> Codec.field "type" .type_ arrayJobDependencyCodec
        |> Codec.field "jobId" .jobId Codec.string
        |> Codec.buildObject


{-| Codec for JobDefinitionType. -}
jobDefinitionTypeCodec : Codec JobDefinitionType
jobDefinitionTypeCodec =
    Codec.build (Enum.encoder jobDefinitionType) (Enum.decoder jobDefinitionType)


{-| Codec for JobDefinitionList. -}
jobDefinitionListCodec : Codec JobDefinitionList
jobDefinitionListCodec =
    Codec.list jobDefinitionCodec


{-| Codec for JobDefinition. -}
jobDefinitionCodec : Codec JobDefinition
jobDefinitionCodec =
    Codec.object JobDefinition
        |> Codec.field "type" .type_ Codec.string
        |> Codec.field "timeout" .timeout jobTimeoutCodec
        |> Codec.field "status" .status Codec.string
        |> Codec.field "revision" .revision Codec.int
        |> Codec.field "retryStrategy" .retryStrategy retryStrategyCodec
        |> Codec.field "parameters" .parameters parametersMapCodec
        |> Codec.field "nodeProperties" .nodeProperties nodePropertiesCodec
        |> Codec.field "jobDefinitionName" .jobDefinitionName Codec.string
        |> Codec.field "jobDefinitionArn" .jobDefinitionArn Codec.string
        |> Codec.field "containerProperties" .containerProperties containerPropertiesCodec
        |> Codec.buildObject


{-| Codec for Jqstatus. -}
jqstatusCodec : Codec Jqstatus
jqstatusCodec =
    Codec.build (Enum.encoder jqstatus) (Enum.decoder jqstatus)


{-| Codec for Jqstate. -}
jqstateCodec : Codec Jqstate
jqstateCodec =
    Codec.build (Enum.encoder jqstate) (Enum.decoder jqstate)


{-| Codec for Integer. -}
integerCodec : Codec Integer
integerCodec =
    Codec.int


{-| Codec for Host. -}
hostCodec : Codec Host
hostCodec =
    Codec.object Host |> Codec.field "sourcePath" .sourcePath Codec.string |> Codec.buildObject


{-| Codec for EnvironmentVariables. -}
environmentVariablesCodec : Codec EnvironmentVariables
environmentVariablesCodec =
    Codec.list keyValuePairCodec


{-| Codec for DevicesList. -}
devicesListCodec : Codec DevicesList
devicesListCodec =
    Codec.list deviceCodec


{-| Codec for DeviceCgroupPermissions. -}
deviceCgroupPermissionsCodec : Codec DeviceCgroupPermissions
deviceCgroupPermissionsCodec =
    Codec.list deviceCgroupPermissionCodec


{-| Codec for DeviceCgroupPermission. -}
deviceCgroupPermissionCodec : Codec DeviceCgroupPermission
deviceCgroupPermissionCodec =
    Codec.build (Enum.encoder deviceCgroupPermission) (Enum.decoder deviceCgroupPermission)


{-| Codec for Device. -}
deviceCodec : Codec Device
deviceCodec =
    Codec.object Device
        |> Codec.field "permissions" .permissions deviceCgroupPermissionsCodec
        |> Codec.field "hostPath" .hostPath Codec.string
        |> Codec.field "containerPath" .containerPath Codec.string
        |> Codec.buildObject


{-| Codec for DescribeJobsResponse. -}
describeJobsResponseCodec : Codec DescribeJobsResponse
describeJobsResponseCodec =
    Codec.object DescribeJobsResponse |> Codec.field "jobs" .jobs jobDetailListCodec |> Codec.buildObject


{-| Codec for DescribeJobsRequest. -}
describeJobsRequestCodec : Codec DescribeJobsRequest
describeJobsRequestCodec =
    Codec.object DescribeJobsRequest |> Codec.field "jobs" .jobs stringListCodec |> Codec.buildObject


{-| Codec for DescribeJobQueuesResponse. -}
describeJobQueuesResponseCodec : Codec DescribeJobQueuesResponse
describeJobQueuesResponseCodec =
    Codec.object DescribeJobQueuesResponse
        |> Codec.field "nextToken" .nextToken Codec.string
        |> Codec.field "jobQueues" .jobQueues jobQueueDetailListCodec
        |> Codec.buildObject


{-| Codec for DescribeJobQueuesRequest. -}
describeJobQueuesRequestCodec : Codec DescribeJobQueuesRequest
describeJobQueuesRequestCodec =
    Codec.object DescribeJobQueuesRequest
        |> Codec.field "nextToken" .nextToken Codec.string
        |> Codec.field "maxResults" .maxResults Codec.int
        |> Codec.field "jobQueues" .jobQueues stringListCodec
        |> Codec.buildObject


{-| Codec for DescribeJobDefinitionsResponse. -}
describeJobDefinitionsResponseCodec : Codec DescribeJobDefinitionsResponse
describeJobDefinitionsResponseCodec =
    Codec.object DescribeJobDefinitionsResponse
        |> Codec.field "nextToken" .nextToken Codec.string
        |> Codec.field "jobDefinitions" .jobDefinitions jobDefinitionListCodec
        |> Codec.buildObject


{-| Codec for DescribeJobDefinitionsRequest. -}
describeJobDefinitionsRequestCodec : Codec DescribeJobDefinitionsRequest
describeJobDefinitionsRequestCodec =
    Codec.object DescribeJobDefinitionsRequest
        |> Codec.field "status" .status Codec.string
        |> Codec.field "nextToken" .nextToken Codec.string
        |> Codec.field "maxResults" .maxResults Codec.int
        |> Codec.field "jobDefinitions" .jobDefinitions stringListCodec
        |> Codec.field "jobDefinitionName" .jobDefinitionName Codec.string
        |> Codec.buildObject


{-| Codec for DescribeComputeEnvironmentsResponse. -}
describeComputeEnvironmentsResponseCodec : Codec DescribeComputeEnvironmentsResponse
describeComputeEnvironmentsResponseCodec =
    Codec.object DescribeComputeEnvironmentsResponse
        |> Codec.field "nextToken" .nextToken Codec.string
        |> Codec.field "computeEnvironments" .computeEnvironments computeEnvironmentDetailListCodec
        |> Codec.buildObject


{-| Codec for DescribeComputeEnvironmentsRequest. -}
describeComputeEnvironmentsRequestCodec : Codec DescribeComputeEnvironmentsRequest
describeComputeEnvironmentsRequestCodec =
    Codec.object DescribeComputeEnvironmentsRequest
        |> Codec.field "nextToken" .nextToken Codec.string
        |> Codec.field "maxResults" .maxResults Codec.int
        |> Codec.field "computeEnvironments" .computeEnvironments stringListCodec
        |> Codec.buildObject


{-| Codec for DeregisterJobDefinitionResponse. -}
deregisterJobDefinitionResponseCodec : Codec DeregisterJobDefinitionResponse
deregisterJobDefinitionResponseCodec =
    Codec.object DeregisterJobDefinitionResponse |> Codec.buildObject


{-| Codec for DeregisterJobDefinitionRequest. -}
deregisterJobDefinitionRequestCodec : Codec DeregisterJobDefinitionRequest
deregisterJobDefinitionRequestCodec =
    Codec.object DeregisterJobDefinitionRequest
        |> Codec.field "jobDefinition" .jobDefinition Codec.string
        |> Codec.buildObject


{-| Codec for DeleteJobQueueResponse. -}
deleteJobQueueResponseCodec : Codec DeleteJobQueueResponse
deleteJobQueueResponseCodec =
    Codec.object DeleteJobQueueResponse |> Codec.buildObject


{-| Codec for DeleteJobQueueRequest. -}
deleteJobQueueRequestCodec : Codec DeleteJobQueueRequest
deleteJobQueueRequestCodec =
    Codec.object DeleteJobQueueRequest |> Codec.field "jobQueue" .jobQueue Codec.string |> Codec.buildObject


{-| Codec for DeleteComputeEnvironmentResponse. -}
deleteComputeEnvironmentResponseCodec : Codec DeleteComputeEnvironmentResponse
deleteComputeEnvironmentResponseCodec =
    Codec.object DeleteComputeEnvironmentResponse |> Codec.buildObject


{-| Codec for DeleteComputeEnvironmentRequest. -}
deleteComputeEnvironmentRequestCodec : Codec DeleteComputeEnvironmentRequest
deleteComputeEnvironmentRequestCodec =
    Codec.object DeleteComputeEnvironmentRequest
        |> Codec.field "computeEnvironment" .computeEnvironment Codec.string
        |> Codec.buildObject


{-| Codec for CreateJobQueueResponse. -}
createJobQueueResponseCodec : Codec CreateJobQueueResponse
createJobQueueResponseCodec =
    Codec.object CreateJobQueueResponse
        |> Codec.field "jobQueueName" .jobQueueName Codec.string
        |> Codec.field "jobQueueArn" .jobQueueArn Codec.string
        |> Codec.buildObject


{-| Codec for CreateJobQueueRequest. -}
createJobQueueRequestCodec : Codec CreateJobQueueRequest
createJobQueueRequestCodec =
    Codec.object CreateJobQueueRequest
        |> Codec.field "state" .state jqstateCodec
        |> Codec.field "priority" .priority Codec.int
        |> Codec.field "jobQueueName" .jobQueueName Codec.string
        |> Codec.field "computeEnvironmentOrder" .computeEnvironmentOrder computeEnvironmentOrdersCodec
        |> Codec.buildObject


{-| Codec for CreateComputeEnvironmentResponse. -}
createComputeEnvironmentResponseCodec : Codec CreateComputeEnvironmentResponse
createComputeEnvironmentResponseCodec =
    Codec.object CreateComputeEnvironmentResponse
        |> Codec.field "computeEnvironmentName" .computeEnvironmentName Codec.string
        |> Codec.field "computeEnvironmentArn" .computeEnvironmentArn Codec.string
        |> Codec.buildObject


{-| Codec for CreateComputeEnvironmentRequest. -}
createComputeEnvironmentRequestCodec : Codec CreateComputeEnvironmentRequest
createComputeEnvironmentRequestCodec =
    Codec.object CreateComputeEnvironmentRequest
        |> Codec.field "type" .type_ cetypeCodec
        |> Codec.field "state" .state cestateCodec
        |> Codec.field "serviceRole" .serviceRole Codec.string
        |> Codec.field "computeResources" .computeResources computeResourceCodec
        |> Codec.field "computeEnvironmentName" .computeEnvironmentName Codec.string
        |> Codec.buildObject


{-| Codec for ContainerSummary. -}
containerSummaryCodec : Codec ContainerSummary
containerSummaryCodec =
    Codec.object ContainerSummary
        |> Codec.field "reason" .reason Codec.string
        |> Codec.field "exitCode" .exitCode Codec.int
        |> Codec.buildObject


{-| Codec for ContainerProperties. -}
containerPropertiesCodec : Codec ContainerProperties
containerPropertiesCodec =
    Codec.object ContainerProperties
        |> Codec.field "volumes" .volumes volumesCodec
        |> Codec.field "vcpus" .vcpus Codec.int
        |> Codec.field "user" .user Codec.string
        |> Codec.field "ulimits" .ulimits ulimitsCodec
        |> Codec.field "resourceRequirements" .resourceRequirements resourceRequirementsCodec
        |> Codec.field "readonlyRootFilesystem" .readonlyRootFilesystem Codec.bool
        |> Codec.field "privileged" .privileged Codec.bool
        |> Codec.field "mountPoints" .mountPoints mountPointsCodec
        |> Codec.field "memory" .memory Codec.int
        |> Codec.field "linuxParameters" .linuxParameters linuxParametersCodec
        |> Codec.field "jobRoleArn" .jobRoleArn Codec.string
        |> Codec.field "instanceType" .instanceType Codec.string
        |> Codec.field "image" .image Codec.string
        |> Codec.field "environment" .environment environmentVariablesCodec
        |> Codec.field "command" .command stringListCodec
        |> Codec.buildObject


{-| Codec for ContainerOverrides. -}
containerOverridesCodec : Codec ContainerOverrides
containerOverridesCodec =
    Codec.object ContainerOverrides
        |> Codec.field "vcpus" .vcpus Codec.int
        |> Codec.field "resourceRequirements" .resourceRequirements resourceRequirementsCodec
        |> Codec.field "memory" .memory Codec.int
        |> Codec.field "instanceType" .instanceType Codec.string
        |> Codec.field "environment" .environment environmentVariablesCodec
        |> Codec.field "command" .command stringListCodec
        |> Codec.buildObject


{-| Codec for ContainerDetail. -}
containerDetailCodec : Codec ContainerDetail
containerDetailCodec =
    Codec.object ContainerDetail
        |> Codec.field "volumes" .volumes volumesCodec
        |> Codec.field "vcpus" .vcpus Codec.int
        |> Codec.field "user" .user Codec.string
        |> Codec.field "ulimits" .ulimits ulimitsCodec
        |> Codec.field "taskArn" .taskArn Codec.string
        |> Codec.field "resourceRequirements" .resourceRequirements resourceRequirementsCodec
        |> Codec.field "reason" .reason Codec.string
        |> Codec.field "readonlyRootFilesystem" .readonlyRootFilesystem Codec.bool
        |> Codec.field "privileged" .privileged Codec.bool
        |> Codec.field "networkInterfaces" .networkInterfaces networkInterfaceListCodec
        |> Codec.field "mountPoints" .mountPoints mountPointsCodec
        |> Codec.field "memory" .memory Codec.int
        |> Codec.field "logStreamName" .logStreamName Codec.string
        |> Codec.field "linuxParameters" .linuxParameters linuxParametersCodec
        |> Codec.field "jobRoleArn" .jobRoleArn Codec.string
        |> Codec.field "instanceType" .instanceType Codec.string
        |> Codec.field "image" .image Codec.string
        |> Codec.field "exitCode" .exitCode Codec.int
        |> Codec.field "environment" .environment environmentVariablesCodec
        |> Codec.field "containerInstanceArn" .containerInstanceArn Codec.string
        |> Codec.field "command" .command stringListCodec
        |> Codec.buildObject


{-| Codec for ComputeResourceUpdate. -}
computeResourceUpdateCodec : Codec ComputeResourceUpdate
computeResourceUpdateCodec =
    Codec.object ComputeResourceUpdate
        |> Codec.field "minvCpus" .minvCpus Codec.int
        |> Codec.field "maxvCpus" .maxvCpus Codec.int
        |> Codec.field "desiredvCpus" .desiredvCpus Codec.int
        |> Codec.buildObject


{-| Codec for ComputeResource. -}
computeResourceCodec : Codec ComputeResource
computeResourceCodec =
    Codec.object ComputeResource
        |> Codec.field "type" .type_ crtypeCodec
        |> Codec.field "tags" .tags tagsMapCodec
        |> Codec.field "subnets" .subnets stringListCodec
        |> Codec.field "spotIamFleetRole" .spotIamFleetRole Codec.string
        |> Codec.field "securityGroupIds" .securityGroupIds stringListCodec
        |> Codec.field "placementGroup" .placementGroup Codec.string
        |> Codec.field "minvCpus" .minvCpus Codec.int
        |> Codec.field "maxvCpus" .maxvCpus Codec.int
        |> Codec.field "launchTemplate" .launchTemplate launchTemplateSpecificationCodec
        |> Codec.field "instanceTypes" .instanceTypes stringListCodec
        |> Codec.field "instanceRole" .instanceRole Codec.string
        |> Codec.field "imageId" .imageId Codec.string
        |> Codec.field "ec2KeyPair" .ec2KeyPair Codec.string
        |> Codec.field "desiredvCpus" .desiredvCpus Codec.int
        |> Codec.field "bidPercentage" .bidPercentage Codec.int
        |> Codec.buildObject


{-| Codec for ComputeEnvironmentOrders. -}
computeEnvironmentOrdersCodec : Codec ComputeEnvironmentOrders
computeEnvironmentOrdersCodec =
    Codec.list computeEnvironmentOrderCodec


{-| Codec for ComputeEnvironmentOrder. -}
computeEnvironmentOrderCodec : Codec ComputeEnvironmentOrder
computeEnvironmentOrderCodec =
    Codec.object ComputeEnvironmentOrder
        |> Codec.field "order" .order Codec.int
        |> Codec.field "computeEnvironment" .computeEnvironment Codec.string
        |> Codec.buildObject


{-| Codec for ComputeEnvironmentDetailList. -}
computeEnvironmentDetailListCodec : Codec ComputeEnvironmentDetailList
computeEnvironmentDetailListCodec =
    Codec.list computeEnvironmentDetailCodec


{-| Codec for ComputeEnvironmentDetail. -}
computeEnvironmentDetailCodec : Codec ComputeEnvironmentDetail
computeEnvironmentDetailCodec =
    Codec.object ComputeEnvironmentDetail
        |> Codec.field "type" .type_ cetypeCodec
        |> Codec.field "statusReason" .statusReason Codec.string
        |> Codec.field "status" .status cestatusCodec
        |> Codec.field "state" .state cestateCodec
        |> Codec.field "serviceRole" .serviceRole Codec.string
        |> Codec.field "ecsClusterArn" .ecsClusterArn Codec.string
        |> Codec.field "computeResources" .computeResources computeResourceCodec
        |> Codec.field "computeEnvironmentName" .computeEnvironmentName Codec.string
        |> Codec.field "computeEnvironmentArn" .computeEnvironmentArn Codec.string
        |> Codec.buildObject


{-| Codec for CancelJobResponse. -}
cancelJobResponseCodec : Codec CancelJobResponse
cancelJobResponseCodec =
    Codec.object CancelJobResponse |> Codec.buildObject


{-| Codec for CancelJobRequest. -}
cancelJobRequestCodec : Codec CancelJobRequest
cancelJobRequestCodec =
    Codec.object CancelJobRequest
        |> Codec.field "reason" .reason Codec.string
        |> Codec.field "jobId" .jobId Codec.string
        |> Codec.buildObject


{-| Codec for Crtype. -}
crtypeCodec : Codec Crtype
crtypeCodec =
    Codec.build (Enum.encoder crtype) (Enum.decoder crtype)


{-| Codec for Cetype. -}
cetypeCodec : Codec Cetype
cetypeCodec =
    Codec.build (Enum.encoder cetype) (Enum.decoder cetype)


{-| Codec for Cestatus. -}
cestatusCodec : Codec Cestatus
cestatusCodec =
    Codec.build (Enum.encoder cestatus) (Enum.decoder cestatus)


{-| Codec for Cestate. -}
cestateCodec : Codec Cestate
cestateCodec =
    Codec.build (Enum.encoder cestate) (Enum.decoder cestate)


{-| Codec for Boolean. -}
booleanCodec : Codec Boolean
booleanCodec =
    Codec.bool


{-| Codec for AttemptDetails. -}
attemptDetailsCodec : Codec AttemptDetails
attemptDetailsCodec =
    Codec.list attemptDetailCodec


{-| Codec for AttemptDetail. -}
attemptDetailCodec : Codec AttemptDetail
attemptDetailCodec =
    Codec.object AttemptDetail
        |> Codec.field "stoppedAt" .stoppedAt Codec.int
        |> Codec.field "statusReason" .statusReason Codec.string
        |> Codec.field "startedAt" .startedAt Codec.int
        |> Codec.field "container" .container attemptContainerDetailCodec
        |> Codec.buildObject


{-| Codec for AttemptContainerDetail. -}
attemptContainerDetailCodec : Codec AttemptContainerDetail
attemptContainerDetailCodec =
    Codec.object AttemptContainerDetail
        |> Codec.field "taskArn" .taskArn Codec.string
        |> Codec.field "reason" .reason Codec.string
        |> Codec.field "networkInterfaces" .networkInterfaces networkInterfaceListCodec
        |> Codec.field "logStreamName" .logStreamName Codec.string
        |> Codec.field "exitCode" .exitCode Codec.int
        |> Codec.field "containerInstanceArn" .containerInstanceArn Codec.string
        |> Codec.buildObject


{-| Codec for ArrayPropertiesSummary. -}
arrayPropertiesSummaryCodec : Codec ArrayPropertiesSummary
arrayPropertiesSummaryCodec =
    Codec.object ArrayPropertiesSummary
        |> Codec.field "size" .size Codec.int
        |> Codec.field "index" .index Codec.int
        |> Codec.buildObject


{-| Codec for ArrayPropertiesDetail. -}
arrayPropertiesDetailCodec : Codec ArrayPropertiesDetail
arrayPropertiesDetailCodec =
    Codec.object ArrayPropertiesDetail
        |> Codec.field "statusSummary" .statusSummary arrayJobStatusSummaryCodec
        |> Codec.field "size" .size Codec.int
        |> Codec.field "index" .index Codec.int
        |> Codec.buildObject


{-| Codec for ArrayProperties. -}
arrayPropertiesCodec : Codec ArrayProperties
arrayPropertiesCodec =
    Codec.object ArrayProperties |> Codec.field "size" .size Codec.int |> Codec.buildObject


{-| Codec for ArrayJobStatusSummary. -}
arrayJobStatusSummaryCodec : Codec ArrayJobStatusSummary
arrayJobStatusSummaryCodec =
    Codec.dict Codec.int


{-| Codec for ArrayJobDependency. -}
arrayJobDependencyCodec : Codec ArrayJobDependency
arrayJobDependencyCodec =
    Codec.build (Enum.encoder arrayJobDependency) (Enum.decoder arrayJobDependency)
