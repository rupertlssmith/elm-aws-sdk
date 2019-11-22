module AWS.Route53 exposing (service)

import AWS.Core.Decode
import AWS.Core.Http
import AWS.Core.Service
import Codec exposing (Codec)
import Enum exposing (Enum)
import Json.Decode exposing (Decoder)
import Json.Encode exposing (Value)
import Refined exposing (IntError, Refined, StringError)


{-| Configuration for this service. -}
service : AWS.Core.Service.Region -> AWS.Core.Service.Service
service =
    let
        optionsFn =
            identity
    in
    AWS.Core.Service.defineRegional "route53" "2013-04-01" AWS.Core.Service.REST_XML AWS.Core.Service.SignV4 optionsFn


{-| AWS Endpoint. -}
updateTrafficPolicyInstance :
    UpdateTrafficPolicyInstanceRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateTrafficPolicyInstanceResponse)
updateTrafficPolicyInstance req =
    let
        jsonBody =
            req |> Codec.encoder updateTrafficPolicyInstanceRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "UpdateTrafficPolicyInstance"
                (AWS.Core.Decode.ResultDecoder
                    "UpdateTrafficPolicyInstanceResponse"
                    (Codec.decoder updateTrafficPolicyInstanceResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
updateTrafficPolicyComment :
    UpdateTrafficPolicyCommentRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateTrafficPolicyCommentResponse)
updateTrafficPolicyComment req =
    let
        jsonBody =
            req |> Codec.encoder updateTrafficPolicyCommentRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "UpdateTrafficPolicyComment"
                (AWS.Core.Decode.ResultDecoder
                    "UpdateTrafficPolicyCommentResponse"
                    (Codec.decoder updateTrafficPolicyCommentResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
updateHostedZoneComment :
    UpdateHostedZoneCommentRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateHostedZoneCommentResponse)
updateHostedZoneComment req =
    let
        jsonBody =
            req |> Codec.encoder updateHostedZoneCommentRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "UpdateHostedZoneComment"
                (AWS.Core.Decode.ResultDecoder
                    "UpdateHostedZoneCommentResponse"
                    (Codec.decoder updateHostedZoneCommentResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
updateHealthCheck :
    UpdateHealthCheckRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateHealthCheckResponse)
updateHealthCheck req =
    let
        jsonBody =
            req |> Codec.encoder updateHealthCheckRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "UpdateHealthCheck"
                (AWS.Core.Decode.ResultDecoder
                    "UpdateHealthCheckResponse"
                    (Codec.decoder updateHealthCheckResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
testDnsanswer : TestDnsanswerRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TestDnsanswerResponse)
testDnsanswer req =
    let
        jsonBody =
            req |> Codec.encoder testDnsanswerRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "TestDnsanswer"
                (AWS.Core.Decode.ResultDecoder "TestDNSAnswerResponse" (Codec.decoder testDnsanswerResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listVpcassociationAuthorizations :
    ListVpcassociationAuthorizationsRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListVpcassociationAuthorizationsResponse)
listVpcassociationAuthorizations req =
    let
        jsonBody =
            req |> Codec.encoder listVpcassociationAuthorizationsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListVpcassociationAuthorizations"
                (AWS.Core.Decode.ResultDecoder
                    "ListVPCAssociationAuthorizationsResponse"
                    (Codec.decoder listVpcassociationAuthorizationsResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listTrafficPolicyVersions :
    ListTrafficPolicyVersionsRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTrafficPolicyVersionsResponse)
listTrafficPolicyVersions req =
    let
        jsonBody =
            req |> Codec.encoder listTrafficPolicyVersionsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListTrafficPolicyVersions"
                (AWS.Core.Decode.ResultDecoder
                    "ListTrafficPolicyVersionsResponse"
                    (Codec.decoder listTrafficPolicyVersionsResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listTrafficPolicyInstancesByPolicy :
    ListTrafficPolicyInstancesByPolicyRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTrafficPolicyInstancesByPolicyResponse)
listTrafficPolicyInstancesByPolicy req =
    let
        jsonBody =
            req |> Codec.encoder listTrafficPolicyInstancesByPolicyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListTrafficPolicyInstancesByPolicy"
                (AWS.Core.Decode.ResultDecoder
                    "ListTrafficPolicyInstancesByPolicyResponse"
                    (Codec.decoder listTrafficPolicyInstancesByPolicyResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listTrafficPolicyInstancesByHostedZone :
    ListTrafficPolicyInstancesByHostedZoneRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTrafficPolicyInstancesByHostedZoneResponse)
listTrafficPolicyInstancesByHostedZone req =
    let
        jsonBody =
            req |> Codec.encoder listTrafficPolicyInstancesByHostedZoneRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListTrafficPolicyInstancesByHostedZone"
                (AWS.Core.Decode.ResultDecoder
                    "ListTrafficPolicyInstancesByHostedZoneResponse"
                    (Codec.decoder listTrafficPolicyInstancesByHostedZoneResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listTrafficPolicyInstances :
    ListTrafficPolicyInstancesRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTrafficPolicyInstancesResponse)
listTrafficPolicyInstances req =
    let
        jsonBody =
            req |> Codec.encoder listTrafficPolicyInstancesRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListTrafficPolicyInstances"
                (AWS.Core.Decode.ResultDecoder
                    "ListTrafficPolicyInstancesResponse"
                    (Codec.decoder listTrafficPolicyInstancesResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listTrafficPolicies :
    ListTrafficPoliciesRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTrafficPoliciesResponse)
listTrafficPolicies req =
    let
        jsonBody =
            req |> Codec.encoder listTrafficPoliciesRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListTrafficPolicies"
                (AWS.Core.Decode.ResultDecoder
                    "ListTrafficPoliciesResponse"
                    (Codec.decoder listTrafficPoliciesResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listTagsForResources :
    ListTagsForResourcesRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTagsForResourcesResponse)
listTagsForResources req =
    let
        jsonBody =
            req |> Codec.encoder listTagsForResourcesRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListTagsForResources"
                (AWS.Core.Decode.ResultDecoder
                    "ListTagsForResourcesResponse"
                    (Codec.decoder listTagsForResourcesResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listTagsForResource :
    ListTagsForResourceRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTagsForResourceResponse)
listTagsForResource req =
    let
        jsonBody =
            req |> Codec.encoder listTagsForResourceRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListTagsForResource"
                (AWS.Core.Decode.ResultDecoder
                    "ListTagsForResourceResponse"
                    (Codec.decoder listTagsForResourceResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listReusableDelegationSets :
    ListReusableDelegationSetsRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListReusableDelegationSetsResponse)
listReusableDelegationSets req =
    let
        jsonBody =
            req |> Codec.encoder listReusableDelegationSetsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListReusableDelegationSets"
                (AWS.Core.Decode.ResultDecoder
                    "ListReusableDelegationSetsResponse"
                    (Codec.decoder listReusableDelegationSetsResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listResourceRecordSets :
    ListResourceRecordSetsRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListResourceRecordSetsResponse)
listResourceRecordSets req =
    let
        jsonBody =
            req |> Codec.encoder listResourceRecordSetsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListResourceRecordSets"
                (AWS.Core.Decode.ResultDecoder
                    "ListResourceRecordSetsResponse"
                    (Codec.decoder listResourceRecordSetsResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listQueryLoggingConfigs :
    ListQueryLoggingConfigsRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListQueryLoggingConfigsResponse)
listQueryLoggingConfigs req =
    let
        jsonBody =
            req |> Codec.encoder listQueryLoggingConfigsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListQueryLoggingConfigs"
                (AWS.Core.Decode.ResultDecoder
                    "ListQueryLoggingConfigsResponse"
                    (Codec.decoder listQueryLoggingConfigsResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listHostedZonesByName :
    ListHostedZonesByNameRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListHostedZonesByNameResponse)
listHostedZonesByName req =
    let
        jsonBody =
            req |> Codec.encoder listHostedZonesByNameRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListHostedZonesByName"
                (AWS.Core.Decode.ResultDecoder
                    "ListHostedZonesByNameResponse"
                    (Codec.decoder listHostedZonesByNameResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listHostedZones :
    ListHostedZonesRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListHostedZonesResponse)
listHostedZones req =
    let
        jsonBody =
            req |> Codec.encoder listHostedZonesRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListHostedZones"
                (AWS.Core.Decode.ResultDecoder "ListHostedZonesResponse" (Codec.decoder listHostedZonesResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listHealthChecks :
    ListHealthChecksRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListHealthChecksResponse)
listHealthChecks req =
    let
        jsonBody =
            req |> Codec.encoder listHealthChecksRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListHealthChecks"
                (AWS.Core.Decode.ResultDecoder "ListHealthChecksResponse" (Codec.decoder listHealthChecksResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listGeoLocations :
    ListGeoLocationsRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListGeoLocationsResponse)
listGeoLocations req =
    let
        jsonBody =
            req |> Codec.encoder listGeoLocationsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListGeoLocations"
                (AWS.Core.Decode.ResultDecoder "ListGeoLocationsResponse" (Codec.decoder listGeoLocationsResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getTrafficPolicyInstanceCount :
    GetTrafficPolicyInstanceCountRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetTrafficPolicyInstanceCountResponse)
getTrafficPolicyInstanceCount req =
    let
        jsonBody =
            req |> Codec.encoder getTrafficPolicyInstanceCountRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetTrafficPolicyInstanceCount"
                (AWS.Core.Decode.ResultDecoder
                    "GetTrafficPolicyInstanceCountResponse"
                    (Codec.decoder getTrafficPolicyInstanceCountResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getTrafficPolicyInstance :
    GetTrafficPolicyInstanceRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetTrafficPolicyInstanceResponse)
getTrafficPolicyInstance req =
    let
        jsonBody =
            req |> Codec.encoder getTrafficPolicyInstanceRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetTrafficPolicyInstance"
                (AWS.Core.Decode.ResultDecoder
                    "GetTrafficPolicyInstanceResponse"
                    (Codec.decoder getTrafficPolicyInstanceResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getTrafficPolicy :
    GetTrafficPolicyRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetTrafficPolicyResponse)
getTrafficPolicy req =
    let
        jsonBody =
            req |> Codec.encoder getTrafficPolicyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetTrafficPolicy"
                (AWS.Core.Decode.ResultDecoder "GetTrafficPolicyResponse" (Codec.decoder getTrafficPolicyResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getReusableDelegationSetLimit :
    GetReusableDelegationSetLimitRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetReusableDelegationSetLimitResponse)
getReusableDelegationSetLimit req =
    let
        jsonBody =
            req |> Codec.encoder getReusableDelegationSetLimitRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetReusableDelegationSetLimit"
                (AWS.Core.Decode.ResultDecoder
                    "GetReusableDelegationSetLimitResponse"
                    (Codec.decoder getReusableDelegationSetLimitResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getReusableDelegationSet :
    GetReusableDelegationSetRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetReusableDelegationSetResponse)
getReusableDelegationSet req =
    let
        jsonBody =
            req |> Codec.encoder getReusableDelegationSetRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetReusableDelegationSet"
                (AWS.Core.Decode.ResultDecoder
                    "GetReusableDelegationSetResponse"
                    (Codec.decoder getReusableDelegationSetResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getQueryLoggingConfig :
    GetQueryLoggingConfigRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetQueryLoggingConfigResponse)
getQueryLoggingConfig req =
    let
        jsonBody =
            req |> Codec.encoder getQueryLoggingConfigRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetQueryLoggingConfig"
                (AWS.Core.Decode.ResultDecoder
                    "GetQueryLoggingConfigResponse"
                    (Codec.decoder getQueryLoggingConfigResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getHostedZoneLimit :
    GetHostedZoneLimitRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetHostedZoneLimitResponse)
getHostedZoneLimit req =
    let
        jsonBody =
            req |> Codec.encoder getHostedZoneLimitRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetHostedZoneLimit"
                (AWS.Core.Decode.ResultDecoder
                    "GetHostedZoneLimitResponse"
                    (Codec.decoder getHostedZoneLimitResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getHostedZoneCount :
    GetHostedZoneCountRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetHostedZoneCountResponse)
getHostedZoneCount req =
    let
        jsonBody =
            req |> Codec.encoder getHostedZoneCountRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetHostedZoneCount"
                (AWS.Core.Decode.ResultDecoder
                    "GetHostedZoneCountResponse"
                    (Codec.decoder getHostedZoneCountResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getHostedZone : GetHostedZoneRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetHostedZoneResponse)
getHostedZone req =
    let
        jsonBody =
            req |> Codec.encoder getHostedZoneRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetHostedZone"
                (AWS.Core.Decode.ResultDecoder "GetHostedZoneResponse" (Codec.decoder getHostedZoneResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getHealthCheckStatus :
    GetHealthCheckStatusRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetHealthCheckStatusResponse)
getHealthCheckStatus req =
    let
        jsonBody =
            req |> Codec.encoder getHealthCheckStatusRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetHealthCheckStatus"
                (AWS.Core.Decode.ResultDecoder
                    "GetHealthCheckStatusResponse"
                    (Codec.decoder getHealthCheckStatusResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getHealthCheckLastFailureReason :
    GetHealthCheckLastFailureReasonRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetHealthCheckLastFailureReasonResponse)
getHealthCheckLastFailureReason req =
    let
        jsonBody =
            req |> Codec.encoder getHealthCheckLastFailureReasonRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetHealthCheckLastFailureReason"
                (AWS.Core.Decode.ResultDecoder
                    "GetHealthCheckLastFailureReasonResponse"
                    (Codec.decoder getHealthCheckLastFailureReasonResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getHealthCheckCount :
    GetHealthCheckCountRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetHealthCheckCountResponse)
getHealthCheckCount req =
    let
        jsonBody =
            req |> Codec.encoder getHealthCheckCountRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetHealthCheckCount"
                (AWS.Core.Decode.ResultDecoder
                    "GetHealthCheckCountResponse"
                    (Codec.decoder getHealthCheckCountResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getHealthCheck : GetHealthCheckRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetHealthCheckResponse)
getHealthCheck req =
    let
        jsonBody =
            req |> Codec.encoder getHealthCheckRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetHealthCheck"
                (AWS.Core.Decode.ResultDecoder "GetHealthCheckResponse" (Codec.decoder getHealthCheckResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getGeoLocation : GetGeoLocationRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetGeoLocationResponse)
getGeoLocation req =
    let
        jsonBody =
            req |> Codec.encoder getGeoLocationRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetGeoLocation"
                (AWS.Core.Decode.ResultDecoder "GetGeoLocationResponse" (Codec.decoder getGeoLocationResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getCheckerIpRanges :
    GetCheckerIpRangesRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetCheckerIpRangesResponse)
getCheckerIpRanges req =
    let
        jsonBody =
            req |> Codec.encoder getCheckerIpRangesRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetCheckerIpRanges"
                (AWS.Core.Decode.ResultDecoder
                    "GetCheckerIpRangesResponse"
                    (Codec.decoder getCheckerIpRangesResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getChange : GetChangeRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetChangeResponse)
getChange req =
    let
        jsonBody =
            req |> Codec.encoder getChangeRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetChange"
                (AWS.Core.Decode.ResultDecoder "GetChangeResponse" (Codec.decoder getChangeResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getAccountLimit :
    GetAccountLimitRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetAccountLimitResponse)
getAccountLimit req =
    let
        jsonBody =
            req |> Codec.encoder getAccountLimitRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetAccountLimit"
                (AWS.Core.Decode.ResultDecoder "GetAccountLimitResponse" (Codec.decoder getAccountLimitResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.GET "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
disassociateVpcfromHostedZone :
    DisassociateVpcfromHostedZoneRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DisassociateVpcfromHostedZoneResponse)
disassociateVpcfromHostedZone req =
    let
        jsonBody =
            req |> Codec.encoder disassociateVpcfromHostedZoneRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DisassociateVpcfromHostedZone"
                (AWS.Core.Decode.ResultDecoder
                    "DisassociateVPCFromHostedZoneResponse"
                    (Codec.decoder disassociateVpcfromHostedZoneResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteVpcassociationAuthorization :
    DeleteVpcassociationAuthorizationRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteVpcassociationAuthorizationResponse)
deleteVpcassociationAuthorization req =
    let
        jsonBody =
            req |> Codec.encoder deleteVpcassociationAuthorizationRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DeleteVpcassociationAuthorization"
                (AWS.Core.Decode.ResultDecoder
                    "DeleteVPCAssociationAuthorizationResponse"
                    (Codec.decoder deleteVpcassociationAuthorizationResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteTrafficPolicyInstance :
    DeleteTrafficPolicyInstanceRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteTrafficPolicyInstanceResponse)
deleteTrafficPolicyInstance req =
    let
        jsonBody =
            req |> Codec.encoder deleteTrafficPolicyInstanceRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DeleteTrafficPolicyInstance"
                (AWS.Core.Decode.ResultDecoder
                    "DeleteTrafficPolicyInstanceResponse"
                    (Codec.decoder deleteTrafficPolicyInstanceResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.DELETE "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteTrafficPolicy :
    DeleteTrafficPolicyRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteTrafficPolicyResponse)
deleteTrafficPolicy req =
    let
        jsonBody =
            req |> Codec.encoder deleteTrafficPolicyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DeleteTrafficPolicy"
                (AWS.Core.Decode.ResultDecoder
                    "DeleteTrafficPolicyResponse"
                    (Codec.decoder deleteTrafficPolicyResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.DELETE "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteReusableDelegationSet :
    DeleteReusableDelegationSetRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteReusableDelegationSetResponse)
deleteReusableDelegationSet req =
    let
        jsonBody =
            req |> Codec.encoder deleteReusableDelegationSetRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DeleteReusableDelegationSet"
                (AWS.Core.Decode.ResultDecoder
                    "DeleteReusableDelegationSetResponse"
                    (Codec.decoder deleteReusableDelegationSetResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.DELETE "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteQueryLoggingConfig :
    DeleteQueryLoggingConfigRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteQueryLoggingConfigResponse)
deleteQueryLoggingConfig req =
    let
        jsonBody =
            req |> Codec.encoder deleteQueryLoggingConfigRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DeleteQueryLoggingConfig"
                (AWS.Core.Decode.ResultDecoder
                    "DeleteQueryLoggingConfigResponse"
                    (Codec.decoder deleteQueryLoggingConfigResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.DELETE "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteHostedZone :
    DeleteHostedZoneRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteHostedZoneResponse)
deleteHostedZone req =
    let
        jsonBody =
            req |> Codec.encoder deleteHostedZoneRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DeleteHostedZone"
                (AWS.Core.Decode.ResultDecoder "DeleteHostedZoneResponse" (Codec.decoder deleteHostedZoneResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.DELETE "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteHealthCheck :
    DeleteHealthCheckRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteHealthCheckResponse)
deleteHealthCheck req =
    let
        jsonBody =
            req |> Codec.encoder deleteHealthCheckRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DeleteHealthCheck"
                (AWS.Core.Decode.ResultDecoder
                    "DeleteHealthCheckResponse"
                    (Codec.decoder deleteHealthCheckResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.DELETE "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createVpcassociationAuthorization :
    CreateVpcassociationAuthorizationRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateVpcassociationAuthorizationResponse)
createVpcassociationAuthorization req =
    let
        jsonBody =
            req |> Codec.encoder createVpcassociationAuthorizationRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateVpcassociationAuthorization"
                (AWS.Core.Decode.ResultDecoder
                    "CreateVPCAssociationAuthorizationResponse"
                    (Codec.decoder createVpcassociationAuthorizationResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createTrafficPolicyVersion :
    CreateTrafficPolicyVersionRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateTrafficPolicyVersionResponse)
createTrafficPolicyVersion req =
    let
        jsonBody =
            req |> Codec.encoder createTrafficPolicyVersionRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateTrafficPolicyVersion"
                (AWS.Core.Decode.ResultDecoder
                    "CreateTrafficPolicyVersionResponse"
                    (Codec.decoder createTrafficPolicyVersionResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createTrafficPolicyInstance :
    CreateTrafficPolicyInstanceRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateTrafficPolicyInstanceResponse)
createTrafficPolicyInstance req =
    let
        jsonBody =
            req |> Codec.encoder createTrafficPolicyInstanceRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateTrafficPolicyInstance"
                (AWS.Core.Decode.ResultDecoder
                    "CreateTrafficPolicyInstanceResponse"
                    (Codec.decoder createTrafficPolicyInstanceResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createTrafficPolicy :
    CreateTrafficPolicyRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateTrafficPolicyResponse)
createTrafficPolicy req =
    let
        jsonBody =
            req |> Codec.encoder createTrafficPolicyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateTrafficPolicy"
                (AWS.Core.Decode.ResultDecoder
                    "CreateTrafficPolicyResponse"
                    (Codec.decoder createTrafficPolicyResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createReusableDelegationSet :
    CreateReusableDelegationSetRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateReusableDelegationSetResponse)
createReusableDelegationSet req =
    let
        jsonBody =
            req |> Codec.encoder createReusableDelegationSetRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateReusableDelegationSet"
                (AWS.Core.Decode.ResultDecoder
                    "CreateReusableDelegationSetResponse"
                    (Codec.decoder createReusableDelegationSetResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createQueryLoggingConfig :
    CreateQueryLoggingConfigRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateQueryLoggingConfigResponse)
createQueryLoggingConfig req =
    let
        jsonBody =
            req |> Codec.encoder createQueryLoggingConfigRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateQueryLoggingConfig"
                (AWS.Core.Decode.ResultDecoder
                    "CreateQueryLoggingConfigResponse"
                    (Codec.decoder createQueryLoggingConfigResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createHostedZone :
    CreateHostedZoneRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateHostedZoneResponse)
createHostedZone req =
    let
        jsonBody =
            req |> Codec.encoder createHostedZoneRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateHostedZone"
                (AWS.Core.Decode.ResultDecoder "CreateHostedZoneResponse" (Codec.decoder createHostedZoneResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createHealthCheck :
    CreateHealthCheckRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateHealthCheckResponse)
createHealthCheck req =
    let
        jsonBody =
            req |> Codec.encoder createHealthCheckRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateHealthCheck"
                (AWS.Core.Decode.ResultDecoder
                    "CreateHealthCheckResponse"
                    (Codec.decoder createHealthCheckResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
changeTagsForResource :
    ChangeTagsForResourceRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ChangeTagsForResourceResponse)
changeTagsForResource req =
    let
        jsonBody =
            req |> Codec.encoder changeTagsForResourceRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ChangeTagsForResource"
                (AWS.Core.Decode.ResultDecoder
                    "ChangeTagsForResourceResponse"
                    (Codec.decoder changeTagsForResourceResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
changeResourceRecordSets :
    ChangeResourceRecordSetsRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ChangeResourceRecordSetsResponse)
changeResourceRecordSets req =
    let
        jsonBody =
            req |> Codec.encoder changeResourceRecordSetsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ChangeResourceRecordSets"
                (AWS.Core.Decode.ResultDecoder
                    "ChangeResourceRecordSetsResponse"
                    (Codec.decoder changeResourceRecordSetsResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
associateVpcwithHostedZone :
    AssociateVpcwithHostedZoneRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AssociateVpcwithHostedZoneResponse)
associateVpcwithHostedZone req =
    let
        jsonBody =
            req |> Codec.encoder associateVpcwithHostedZoneRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "AssociateVpcwithHostedZone"
                (AWS.Core.Decode.ResultDecoder
                    "AssociateVPCWithHostedZoneResponse"
                    (Codec.decoder associateVpcwithHostedZoneResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


type alias AccountLimit =
    { value : Int, type_ : AccountLimitType }


type AccountLimitType
    = AccountLimitTypeMaxHealthChecksByOwner
    | AccountLimitTypeMaxHostedZonesByOwner
    | AccountLimitTypeMaxTrafficPolicyInstancesByOwner
    | AccountLimitTypeMaxReusableDelegationSetsByOwner
    | AccountLimitTypeMaxTrafficPoliciesByOwner


accountLimitType : Enum AccountLimitType
accountLimitType =
    Enum.define
        [ AccountLimitTypeMaxHealthChecksByOwner
        , AccountLimitTypeMaxHostedZonesByOwner
        , AccountLimitTypeMaxTrafficPolicyInstancesByOwner
        , AccountLimitTypeMaxReusableDelegationSetsByOwner
        , AccountLimitTypeMaxTrafficPoliciesByOwner
        ]
        (\val ->
            case val of
                AccountLimitTypeMaxHealthChecksByOwner ->
                    "MAX_HEALTH_CHECKS_BY_OWNER"

                AccountLimitTypeMaxHostedZonesByOwner ->
                    "MAX_HOSTED_ZONES_BY_OWNER"

                AccountLimitTypeMaxTrafficPolicyInstancesByOwner ->
                    "MAX_TRAFFIC_POLICY_INSTANCES_BY_OWNER"

                AccountLimitTypeMaxReusableDelegationSetsByOwner ->
                    "MAX_REUSABLE_DELEGATION_SETS_BY_OWNER"

                AccountLimitTypeMaxTrafficPoliciesByOwner ->
                    "MAX_TRAFFIC_POLICIES_BY_OWNER"
        )


type alias AlarmIdentifier =
    { region : String, name : AlarmName }


type AlarmName
    = AlarmName String


alarmName : Refined String AlarmName StringError
alarmName =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 256) |> Result.map AlarmName

        unboxFn (AlarmName val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias AliasHealthEnabled =
    Bool


type alias AliasTarget =
    { hostedZoneId : ResourceId, evaluateTargetHealth : Bool, dnsname : Dnsname }


type alias AssociateVpccomment =
    String


type alias AssociateVpcwithHostedZoneRequest =
    { vpc : Vpc, hostedZoneId : ResourceId, comment : String }


type alias AssociateVpcwithHostedZoneResponse =
    { changeInfo : ChangeInfo }


type alias Change =
    { resourceRecordSet : ResourceRecordSet, action : ChangeAction }


type ChangeAction
    = ChangeActionCreate
    | ChangeActionDelete
    | ChangeActionUpsert


changeAction : Enum ChangeAction
changeAction =
    Enum.define
        [ ChangeActionCreate, ChangeActionDelete, ChangeActionUpsert ]
        (\val ->
            case val of
                ChangeActionCreate ->
                    "CREATE"

                ChangeActionDelete ->
                    "DELETE"

                ChangeActionUpsert ->
                    "UPSERT"
        )


type alias ChangeBatch =
    { comment : ResourceDescription, changes : Changes }


type alias ChangeInfo =
    { submittedAt : TimeStamp, status : ChangeStatus, id : ResourceId, comment : ResourceDescription }


type alias ChangeResourceRecordSetsRequest =
    { hostedZoneId : ResourceId, changeBatch : ChangeBatch }


type alias ChangeResourceRecordSetsResponse =
    { changeInfo : ChangeInfo }


type ChangeStatus
    = ChangeStatusPending
    | ChangeStatusInsync


changeStatus : Enum ChangeStatus
changeStatus =
    Enum.define
        [ ChangeStatusPending, ChangeStatusInsync ]
        (\val ->
            case val of
                ChangeStatusPending ->
                    "PENDING"

                ChangeStatusInsync ->
                    "INSYNC"
        )


type alias ChangeTagsForResourceRequest =
    { resourceType : TagResourceType, resourceId : TagResourceId, removeTagKeys : TagKeyList, addTags : TagList }


type alias ChangeTagsForResourceResponse =
    {}


type alias Changes =
    List Change


type alias CheckerIpRanges =
    List String


type alias ChildHealthCheckList =
    List HealthCheckId


type alias CloudWatchAlarmConfiguration =
    { threshold : Float
    , statistic : Statistic
    , period : Period
    , namespace : Namespace
    , metricName : MetricName
    , evaluationPeriods : EvaluationPeriods
    , dimensions : DimensionList
    , comparisonOperator : ComparisonOperator
    }


type alias CloudWatchLogsLogGroupArn =
    String


type alias CloudWatchRegion =
    String


type ComparisonOperator
    = ComparisonOperatorGreaterThanOrEqualToThreshold
    | ComparisonOperatorGreaterThanThreshold
    | ComparisonOperatorLessThanThreshold
    | ComparisonOperatorLessThanOrEqualToThreshold


comparisonOperator : Enum ComparisonOperator
comparisonOperator =
    Enum.define
        [ ComparisonOperatorGreaterThanOrEqualToThreshold
        , ComparisonOperatorGreaterThanThreshold
        , ComparisonOperatorLessThanThreshold
        , ComparisonOperatorLessThanOrEqualToThreshold
        ]
        (\val ->
            case val of
                ComparisonOperatorGreaterThanOrEqualToThreshold ->
                    "GreaterThanOrEqualToThreshold"

                ComparisonOperatorGreaterThanThreshold ->
                    "GreaterThanThreshold"

                ComparisonOperatorLessThanThreshold ->
                    "LessThanThreshold"

                ComparisonOperatorLessThanOrEqualToThreshold ->
                    "LessThanOrEqualToThreshold"
        )


type alias CreateHealthCheckRequest =
    { healthCheckConfig : HealthCheckConfig, callerReference : HealthCheckNonce }


type alias CreateHealthCheckResponse =
    { location : ResourceUri, healthCheck : HealthCheck }


type alias CreateHostedZoneRequest =
    { vpc : Vpc
    , name : Dnsname
    , hostedZoneConfig : HostedZoneConfig
    , delegationSetId : ResourceId
    , callerReference : Nonce
    }


type alias CreateHostedZoneResponse =
    { vpc : Vpc
    , location : ResourceUri
    , hostedZone : HostedZone
    , delegationSet : DelegationSet
    , changeInfo : ChangeInfo
    }


type alias CreateQueryLoggingConfigRequest =
    { hostedZoneId : ResourceId, cloudWatchLogsLogGroupArn : String }


type alias CreateQueryLoggingConfigResponse =
    { queryLoggingConfig : QueryLoggingConfig, location : ResourceUri }


type alias CreateReusableDelegationSetRequest =
    { hostedZoneId : ResourceId, callerReference : Nonce }


type alias CreateReusableDelegationSetResponse =
    { location : ResourceUri, delegationSet : DelegationSet }


type alias CreateTrafficPolicyInstanceRequest =
    { trafficPolicyVersion : TrafficPolicyVersion
    , trafficPolicyId : TrafficPolicyId
    , ttl : Int
    , name : Dnsname
    , hostedZoneId : ResourceId
    }


type alias CreateTrafficPolicyInstanceResponse =
    { trafficPolicyInstance : TrafficPolicyInstance, location : ResourceUri }


type alias CreateTrafficPolicyRequest =
    { name : TrafficPolicyName, document : TrafficPolicyDocument, comment : TrafficPolicyComment }


type alias CreateTrafficPolicyResponse =
    { trafficPolicy : TrafficPolicy, location : ResourceUri }


type alias CreateTrafficPolicyVersionRequest =
    { id : TrafficPolicyId, document : TrafficPolicyDocument, comment : TrafficPolicyComment }


type alias CreateTrafficPolicyVersionResponse =
    { trafficPolicy : TrafficPolicy, location : ResourceUri }


type alias CreateVpcassociationAuthorizationRequest =
    { vpc : Vpc, hostedZoneId : ResourceId }


type alias CreateVpcassociationAuthorizationResponse =
    { vpc : Vpc, hostedZoneId : ResourceId }


type Dnsname
    = Dnsname String


dnsname : Refined String Dnsname StringError
dnsname =
    let
        guardFn val =
            Refined.maxLength 1024 val |> Result.map Dnsname

        unboxFn (Dnsname val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias Dnsrcode =
    String


type alias DelegationSet =
    { nameServers : DelegationSetNameServers, id : ResourceId, callerReference : Nonce }


type alias DelegationSetNameServers =
    List Dnsname


type alias DelegationSets =
    List DelegationSet


type alias DeleteHealthCheckRequest =
    { healthCheckId : HealthCheckId }


type alias DeleteHealthCheckResponse =
    {}


type alias DeleteHostedZoneRequest =
    { id : ResourceId }


type alias DeleteHostedZoneResponse =
    { changeInfo : ChangeInfo }


type alias DeleteQueryLoggingConfigRequest =
    { id : QueryLoggingConfigId }


type alias DeleteQueryLoggingConfigResponse =
    {}


type alias DeleteReusableDelegationSetRequest =
    { id : ResourceId }


type alias DeleteReusableDelegationSetResponse =
    {}


type alias DeleteTrafficPolicyInstanceRequest =
    { id : TrafficPolicyInstanceId }


type alias DeleteTrafficPolicyInstanceResponse =
    {}


type alias DeleteTrafficPolicyRequest =
    { version : TrafficPolicyVersion, id : TrafficPolicyId }


type alias DeleteTrafficPolicyResponse =
    {}


type alias DeleteVpcassociationAuthorizationRequest =
    { vpc : Vpc, hostedZoneId : ResourceId }


type alias DeleteVpcassociationAuthorizationResponse =
    {}


type alias Dimension =
    { value : DimensionField, name : DimensionField }


type DimensionField
    = DimensionField String


dimensionField : Refined String DimensionField StringError
dimensionField =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 255) |> Result.map DimensionField

        unboxFn (DimensionField val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias DimensionList =
    List Dimension


type alias Disabled =
    Bool


type alias DisassociateVpccomment =
    String


type alias DisassociateVpcfromHostedZoneRequest =
    { vpc : Vpc, hostedZoneId : ResourceId, comment : String }


type alias DisassociateVpcfromHostedZoneResponse =
    { changeInfo : ChangeInfo }


type alias EnableSni =
    Bool


type EvaluationPeriods
    = EvaluationPeriods Int


evaluationPeriods : Refined Int EvaluationPeriods IntError
evaluationPeriods =
    let
        guardFn val =
            Refined.gt 1 val |> Result.map EvaluationPeriods

        unboxFn (EvaluationPeriods val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type FailureThreshold
    = FailureThreshold Int


failureThreshold : Refined Int FailureThreshold IntError
failureThreshold =
    let
        guardFn val =
            Refined.gt 1 val |> Result.andThen (Refined.lt 10) |> Result.map FailureThreshold

        unboxFn (FailureThreshold val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type FullyQualifiedDomainName
    = FullyQualifiedDomainName String


fullyQualifiedDomainName : Refined String FullyQualifiedDomainName StringError
fullyQualifiedDomainName =
    let
        guardFn val =
            Refined.maxLength 255 val |> Result.map FullyQualifiedDomainName

        unboxFn (FullyQualifiedDomainName val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias GeoLocation =
    { subdivisionCode : GeoLocationSubdivisionCode
    , countryCode : GeoLocationCountryCode
    , continentCode : GeoLocationContinentCode
    }


type GeoLocationContinentCode
    = GeoLocationContinentCode String


geoLocationContinentCode : Refined String GeoLocationContinentCode StringError
geoLocationContinentCode =
    let
        guardFn val =
            Refined.minLength 2 val |> Result.andThen (Refined.maxLength 2) |> Result.map GeoLocationContinentCode

        unboxFn (GeoLocationContinentCode val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type GeoLocationContinentName
    = GeoLocationContinentName String


geoLocationContinentName : Refined String GeoLocationContinentName StringError
geoLocationContinentName =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 32) |> Result.map GeoLocationContinentName

        unboxFn (GeoLocationContinentName val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type GeoLocationCountryCode
    = GeoLocationCountryCode String


geoLocationCountryCode : Refined String GeoLocationCountryCode StringError
geoLocationCountryCode =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 2) |> Result.map GeoLocationCountryCode

        unboxFn (GeoLocationCountryCode val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type GeoLocationCountryName
    = GeoLocationCountryName String


geoLocationCountryName : Refined String GeoLocationCountryName StringError
geoLocationCountryName =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 64) |> Result.map GeoLocationCountryName

        unboxFn (GeoLocationCountryName val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias GeoLocationDetails =
    { subdivisionName : GeoLocationSubdivisionName
    , subdivisionCode : GeoLocationSubdivisionCode
    , countryName : GeoLocationCountryName
    , countryCode : GeoLocationCountryCode
    , continentName : GeoLocationContinentName
    , continentCode : GeoLocationContinentCode
    }


type alias GeoLocationDetailsList =
    List GeoLocationDetails


type GeoLocationSubdivisionCode
    = GeoLocationSubdivisionCode String


geoLocationSubdivisionCode : Refined String GeoLocationSubdivisionCode StringError
geoLocationSubdivisionCode =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 3) |> Result.map GeoLocationSubdivisionCode

        unboxFn (GeoLocationSubdivisionCode val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type GeoLocationSubdivisionName
    = GeoLocationSubdivisionName String


geoLocationSubdivisionName : Refined String GeoLocationSubdivisionName StringError
geoLocationSubdivisionName =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 64) |> Result.map GeoLocationSubdivisionName

        unboxFn (GeoLocationSubdivisionName val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias GetAccountLimitRequest =
    { type_ : AccountLimitType }


type alias GetAccountLimitResponse =
    { limit : AccountLimit, count : Int }


type alias GetChangeRequest =
    { id : ResourceId }


type alias GetChangeResponse =
    { changeInfo : ChangeInfo }


type alias GetCheckerIpRangesRequest =
    {}


type alias GetCheckerIpRangesResponse =
    { checkerIpRanges : CheckerIpRanges }


type alias GetGeoLocationRequest =
    { subdivisionCode : GeoLocationSubdivisionCode
    , countryCode : GeoLocationCountryCode
    , continentCode : GeoLocationContinentCode
    }


type alias GetGeoLocationResponse =
    { geoLocationDetails : GeoLocationDetails }


type alias GetHealthCheckCountRequest =
    {}


type alias GetHealthCheckCountResponse =
    { healthCheckCount : Int }


type alias GetHealthCheckLastFailureReasonRequest =
    { healthCheckId : HealthCheckId }


type alias GetHealthCheckLastFailureReasonResponse =
    { healthCheckObservations : HealthCheckObservations }


type alias GetHealthCheckRequest =
    { healthCheckId : HealthCheckId }


type alias GetHealthCheckResponse =
    { healthCheck : HealthCheck }


type alias GetHealthCheckStatusRequest =
    { healthCheckId : HealthCheckId }


type alias GetHealthCheckStatusResponse =
    { healthCheckObservations : HealthCheckObservations }


type alias GetHostedZoneCountRequest =
    {}


type alias GetHostedZoneCountResponse =
    { hostedZoneCount : Int }


type alias GetHostedZoneLimitRequest =
    { type_ : HostedZoneLimitType, hostedZoneId : ResourceId }


type alias GetHostedZoneLimitResponse =
    { limit : HostedZoneLimit, count : Int }


type alias GetHostedZoneRequest =
    { id : ResourceId }


type alias GetHostedZoneResponse =
    { vpcs : Vpcs, hostedZone : HostedZone, delegationSet : DelegationSet }


type alias GetQueryLoggingConfigRequest =
    { id : QueryLoggingConfigId }


type alias GetQueryLoggingConfigResponse =
    { queryLoggingConfig : QueryLoggingConfig }


type alias GetReusableDelegationSetLimitRequest =
    { type_ : ReusableDelegationSetLimitType, delegationSetId : ResourceId }


type alias GetReusableDelegationSetLimitResponse =
    { limit : ReusableDelegationSetLimit, count : Int }


type alias GetReusableDelegationSetRequest =
    { id : ResourceId }


type alias GetReusableDelegationSetResponse =
    { delegationSet : DelegationSet }


type alias GetTrafficPolicyInstanceCountRequest =
    {}


type alias GetTrafficPolicyInstanceCountResponse =
    { trafficPolicyInstanceCount : Int }


type alias GetTrafficPolicyInstanceRequest =
    { id : TrafficPolicyInstanceId }


type alias GetTrafficPolicyInstanceResponse =
    { trafficPolicyInstance : TrafficPolicyInstance }


type alias GetTrafficPolicyRequest =
    { version : TrafficPolicyVersion, id : TrafficPolicyId }


type alias GetTrafficPolicyResponse =
    { trafficPolicy : TrafficPolicy }


type alias HealthCheck =
    { linkedService : LinkedService
    , id : HealthCheckId
    , healthCheckVersion : Int
    , healthCheckConfig : HealthCheckConfig
    , cloudWatchAlarmConfiguration : CloudWatchAlarmConfiguration
    , callerReference : HealthCheckNonce
    }


type alias HealthCheckConfig =
    { type_ : HealthCheckType
    , searchString : SearchString
    , resourcePath : ResourcePath
    , requestInterval : RequestInterval
    , regions : HealthCheckRegionList
    , port : Port
    , measureLatency : Bool
    , inverted : Bool
    , insufficientDataHealthStatus : InsufficientDataHealthStatus
    , ipaddress : Ipaddress
    , healthThreshold : HealthThreshold
    , fullyQualifiedDomainName : FullyQualifiedDomainName
    , failureThreshold : FailureThreshold
    , enableSni : Bool
    , disabled : Bool
    , childHealthChecks : ChildHealthCheckList
    , alarmIdentifier : AlarmIdentifier
    }


type alias HealthCheckCount =
    Int


type HealthCheckId
    = HealthCheckId String


healthCheckId : Refined String HealthCheckId StringError
healthCheckId =
    let
        guardFn val =
            Refined.maxLength 64 val |> Result.map HealthCheckId

        unboxFn (HealthCheckId val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type HealthCheckNonce
    = HealthCheckNonce String


healthCheckNonce : Refined String HealthCheckNonce StringError
healthCheckNonce =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 64) |> Result.map HealthCheckNonce

        unboxFn (HealthCheckNonce val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias HealthCheckObservation =
    { statusReport : StatusReport, region : String, ipaddress : Ipaddress }


type alias HealthCheckObservations =
    List HealthCheckObservation


type alias HealthCheckRegion =
    String


type alias HealthCheckRegionList =
    List String


type HealthCheckType
    = HealthCheckTypeHttp
    | HealthCheckTypeHttps
    | HealthCheckTypeHttpStrMatch
    | HealthCheckTypeHttpsStrMatch
    | HealthCheckTypeTcp
    | HealthCheckTypeCalculated
    | HealthCheckTypeCloudwatchMetric


healthCheckType : Enum HealthCheckType
healthCheckType =
    Enum.define
        [ HealthCheckTypeHttp
        , HealthCheckTypeHttps
        , HealthCheckTypeHttpStrMatch
        , HealthCheckTypeHttpsStrMatch
        , HealthCheckTypeTcp
        , HealthCheckTypeCalculated
        , HealthCheckTypeCloudwatchMetric
        ]
        (\val ->
            case val of
                HealthCheckTypeHttp ->
                    "HTTP"

                HealthCheckTypeHttps ->
                    "HTTPS"

                HealthCheckTypeHttpStrMatch ->
                    "HTTP_STR_MATCH"

                HealthCheckTypeHttpsStrMatch ->
                    "HTTPS_STR_MATCH"

                HealthCheckTypeTcp ->
                    "TCP"

                HealthCheckTypeCalculated ->
                    "CALCULATED"

                HealthCheckTypeCloudwatchMetric ->
                    "CLOUDWATCH_METRIC"
        )


type alias HealthCheckVersion =
    Int


type alias HealthChecks =
    List HealthCheck


type HealthThreshold
    = HealthThreshold Int


healthThreshold : Refined Int HealthThreshold IntError
healthThreshold =
    let
        guardFn val =
            Refined.gt 0 val |> Result.andThen (Refined.lt 256) |> Result.map HealthThreshold

        unboxFn (HealthThreshold val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type alias HostedZone =
    { resourceRecordSetCount : Int
    , name : Dnsname
    , linkedService : LinkedService
    , id : ResourceId
    , config : HostedZoneConfig
    , callerReference : Nonce
    }


type alias HostedZoneConfig =
    { privateZone : Bool, comment : ResourceDescription }


type alias HostedZoneCount =
    Int


type alias HostedZoneLimit =
    { value : Int, type_ : HostedZoneLimitType }


type HostedZoneLimitType
    = HostedZoneLimitTypeMaxRrsetsByZone
    | HostedZoneLimitTypeMaxVpcsAssociatedByZone


hostedZoneLimitType : Enum HostedZoneLimitType
hostedZoneLimitType =
    Enum.define
        [ HostedZoneLimitTypeMaxRrsetsByZone, HostedZoneLimitTypeMaxVpcsAssociatedByZone ]
        (\val ->
            case val of
                HostedZoneLimitTypeMaxRrsetsByZone ->
                    "MAX_RRSETS_BY_ZONE"

                HostedZoneLimitTypeMaxVpcsAssociatedByZone ->
                    "MAX_VPCS_ASSOCIATED_BY_ZONE"
        )


type alias HostedZoneRrsetCount =
    Int


type alias HostedZones =
    List HostedZone


type Ipaddress
    = Ipaddress String


ipaddress : Refined String Ipaddress StringError
ipaddress =
    let
        guardFn val =
            Refined.maxLength 45 val
                |> Result.andThen
                    (Refined.regexMatch
                        "(^((([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5]))$|^(([0-9a-fA-F]{1,4}:){7,7}[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,7}:|([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|[0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6})|:((:[0-9a-fA-F]{1,4}){1,7}|:)|fe80:(:[0-9a-fA-F]{0,4}){0,4}%[0-9a-zA-Z]{1,}|::(ffff(:0{1,4}){0,1}:){0,1}((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])|([0-9a-fA-F]{1,4}:){1,4}:((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9]))$)"
                    )
                |> Result.map Ipaddress

        unboxFn (Ipaddress val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias IpaddressCidr =
    String


type InsufficientDataHealthStatus
    = InsufficientDataHealthStatusHealthy
    | InsufficientDataHealthStatusUnhealthy
    | InsufficientDataHealthStatusLastKnownStatus


insufficientDataHealthStatus : Enum InsufficientDataHealthStatus
insufficientDataHealthStatus =
    Enum.define
        [ InsufficientDataHealthStatusHealthy
        , InsufficientDataHealthStatusUnhealthy
        , InsufficientDataHealthStatusLastKnownStatus
        ]
        (\val ->
            case val of
                InsufficientDataHealthStatusHealthy ->
                    "Healthy"

                InsufficientDataHealthStatusUnhealthy ->
                    "Unhealthy"

                InsufficientDataHealthStatusLastKnownStatus ->
                    "LastKnownStatus"
        )


type alias Inverted =
    Bool


type alias IsPrivateZone =
    Bool


type alias LimitValue =
    Int


type alias LinkedService =
    { servicePrincipal : ServicePrincipal, description : ResourceDescription }


type alias ListGeoLocationsRequest =
    { startSubdivisionCode : GeoLocationSubdivisionCode
    , startCountryCode : GeoLocationCountryCode
    , startContinentCode : GeoLocationContinentCode
    , maxItems : String
    }


type alias ListGeoLocationsResponse =
    { nextSubdivisionCode : GeoLocationSubdivisionCode
    , nextCountryCode : GeoLocationCountryCode
    , nextContinentCode : GeoLocationContinentCode
    , maxItems : String
    , isTruncated : Bool
    , geoLocationDetailsList : GeoLocationDetailsList
    }


type alias ListHealthChecksRequest =
    { maxItems : String, marker : PageMarker }


type alias ListHealthChecksResponse =
    { nextMarker : PageMarker, maxItems : String, marker : PageMarker, isTruncated : Bool, healthChecks : HealthChecks }


type alias ListHostedZonesByNameRequest =
    { maxItems : String, hostedZoneId : ResourceId, dnsname : Dnsname }


type alias ListHostedZonesByNameResponse =
    { nextHostedZoneId : ResourceId
    , nextDnsname : Dnsname
    , maxItems : String
    , isTruncated : Bool
    , hostedZones : HostedZones
    , hostedZoneId : ResourceId
    , dnsname : Dnsname
    }


type alias ListHostedZonesRequest =
    { maxItems : String, marker : PageMarker, delegationSetId : ResourceId }


type alias ListHostedZonesResponse =
    { nextMarker : PageMarker, maxItems : String, marker : PageMarker, isTruncated : Bool, hostedZones : HostedZones }


type alias ListQueryLoggingConfigsRequest =
    { nextToken : PaginationToken, maxResults : String, hostedZoneId : ResourceId }


type alias ListQueryLoggingConfigsResponse =
    { queryLoggingConfigs : QueryLoggingConfigs, nextToken : PaginationToken }


type alias ListResourceRecordSetsRequest =
    { startRecordType : Rrtype
    , startRecordName : Dnsname
    , startRecordIdentifier : ResourceRecordSetIdentifier
    , maxItems : String
    , hostedZoneId : ResourceId
    }


type alias ListResourceRecordSetsResponse =
    { resourceRecordSets : ResourceRecordSets
    , nextRecordType : Rrtype
    , nextRecordName : Dnsname
    , nextRecordIdentifier : ResourceRecordSetIdentifier
    , maxItems : String
    , isTruncated : Bool
    }


type alias ListReusableDelegationSetsRequest =
    { maxItems : String, marker : PageMarker }


type alias ListReusableDelegationSetsResponse =
    { nextMarker : PageMarker
    , maxItems : String
    , marker : PageMarker
    , isTruncated : Bool
    , delegationSets : DelegationSets
    }


type alias ListTagsForResourceRequest =
    { resourceType : TagResourceType, resourceId : TagResourceId }


type alias ListTagsForResourceResponse =
    { resourceTagSet : ResourceTagSet }


type alias ListTagsForResourcesRequest =
    { resourceType : TagResourceType, resourceIds : TagResourceIdList }


type alias ListTagsForResourcesResponse =
    { resourceTagSets : ResourceTagSetList }


type alias ListTrafficPoliciesRequest =
    { trafficPolicyIdMarker : TrafficPolicyId, maxItems : String }


type alias ListTrafficPoliciesResponse =
    { trafficPolicySummaries : TrafficPolicySummaries
    , trafficPolicyIdMarker : TrafficPolicyId
    , maxItems : String
    , isTruncated : Bool
    }


type alias ListTrafficPolicyInstancesByHostedZoneRequest =
    { trafficPolicyInstanceTypeMarker : Rrtype
    , trafficPolicyInstanceNameMarker : Dnsname
    , maxItems : String
    , hostedZoneId : ResourceId
    }


type alias ListTrafficPolicyInstancesByHostedZoneResponse =
    { trafficPolicyInstances : TrafficPolicyInstances
    , trafficPolicyInstanceTypeMarker : Rrtype
    , trafficPolicyInstanceNameMarker : Dnsname
    , maxItems : String
    , isTruncated : Bool
    }


type alias ListTrafficPolicyInstancesByPolicyRequest =
    { trafficPolicyVersion : TrafficPolicyVersion
    , trafficPolicyInstanceTypeMarker : Rrtype
    , trafficPolicyInstanceNameMarker : Dnsname
    , trafficPolicyId : TrafficPolicyId
    , maxItems : String
    , hostedZoneIdMarker : ResourceId
    }


type alias ListTrafficPolicyInstancesByPolicyResponse =
    { trafficPolicyInstances : TrafficPolicyInstances
    , trafficPolicyInstanceTypeMarker : Rrtype
    , trafficPolicyInstanceNameMarker : Dnsname
    , maxItems : String
    , isTruncated : Bool
    , hostedZoneIdMarker : ResourceId
    }


type alias ListTrafficPolicyInstancesRequest =
    { trafficPolicyInstanceTypeMarker : Rrtype
    , trafficPolicyInstanceNameMarker : Dnsname
    , maxItems : String
    , hostedZoneIdMarker : ResourceId
    }


type alias ListTrafficPolicyInstancesResponse =
    { trafficPolicyInstances : TrafficPolicyInstances
    , trafficPolicyInstanceTypeMarker : Rrtype
    , trafficPolicyInstanceNameMarker : Dnsname
    , maxItems : String
    , isTruncated : Bool
    , hostedZoneIdMarker : ResourceId
    }


type alias ListTrafficPolicyVersionsRequest =
    { trafficPolicyVersionMarker : TrafficPolicyVersionMarker, maxItems : String, id : TrafficPolicyId }


type alias ListTrafficPolicyVersionsResponse =
    { trafficPolicyVersionMarker : TrafficPolicyVersionMarker
    , trafficPolicies : TrafficPolicies
    , maxItems : String
    , isTruncated : Bool
    }


type alias ListVpcassociationAuthorizationsRequest =
    { nextToken : PaginationToken, maxResults : String, hostedZoneId : ResourceId }


type alias ListVpcassociationAuthorizationsResponse =
    { vpcs : Vpcs, nextToken : PaginationToken, hostedZoneId : ResourceId }


type alias MaxResults =
    String


type alias MeasureLatency =
    Bool


type Message
    = Message String


message : Refined String Message StringError
message =
    let
        guardFn val =
            Refined.maxLength 1024 val |> Result.map Message

        unboxFn (Message val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type MetricName
    = MetricName String


metricName : Refined String MetricName StringError
metricName =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 255) |> Result.map MetricName

        unboxFn (MetricName val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type Nameserver
    = Nameserver String


nameserver : Refined String Nameserver StringError
nameserver =
    let
        guardFn val =
            Refined.minLength 0 val |> Result.andThen (Refined.maxLength 255) |> Result.map Nameserver

        unboxFn (Nameserver val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type Namespace
    = Namespace String


namespace : Refined String Namespace StringError
namespace =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 255) |> Result.map Namespace

        unboxFn (Namespace val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type Nonce
    = Nonce String


nonce : Refined String Nonce StringError
nonce =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 128) |> Result.map Nonce

        unboxFn (Nonce val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type PageMarker
    = PageMarker String


pageMarker : Refined String PageMarker StringError
pageMarker =
    let
        guardFn val =
            Refined.maxLength 64 val |> Result.map PageMarker

        unboxFn (PageMarker val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias PageMaxItems =
    String


type alias PageTruncated =
    Bool


type PaginationToken
    = PaginationToken String


paginationToken : Refined String PaginationToken StringError
paginationToken =
    let
        guardFn val =
            Refined.maxLength 256 val |> Result.map PaginationToken

        unboxFn (PaginationToken val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type Period
    = Period Int


period : Refined Int Period IntError
period =
    let
        guardFn val =
            Refined.gt 60 val |> Result.map Period

        unboxFn (Period val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type Port
    = Port Int


port : Refined Int Port IntError
port =
    let
        guardFn val =
            Refined.gt 1 val |> Result.andThen (Refined.lt 65535) |> Result.map Port

        unboxFn (Port val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type alias QueryLoggingConfig =
    { id : QueryLoggingConfigId, hostedZoneId : ResourceId, cloudWatchLogsLogGroupArn : String }


type QueryLoggingConfigId
    = QueryLoggingConfigId String


queryLoggingConfigId : Refined String QueryLoggingConfigId StringError
queryLoggingConfigId =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 36) |> Result.map QueryLoggingConfigId

        unboxFn (QueryLoggingConfigId val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias QueryLoggingConfigs =
    List QueryLoggingConfig


type Rdata
    = Rdata String


rdata : Refined String Rdata StringError
rdata =
    let
        guardFn val =
            Refined.maxLength 4000 val |> Result.map Rdata

        unboxFn (Rdata val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type Rrtype
    = RrtypeSoa
    | RrtypeA
    | RrtypeTxt
    | RrtypeNs
    | RrtypeCname
    | RrtypeMx
    | RrtypeNaptr
    | RrtypePtr
    | RrtypeSrv
    | RrtypeSpf
    | RrtypeAaaa
    | RrtypeCaa


rrtype : Enum Rrtype
rrtype =
    Enum.define
        [ RrtypeSoa
        , RrtypeA
        , RrtypeTxt
        , RrtypeNs
        , RrtypeCname
        , RrtypeMx
        , RrtypeNaptr
        , RrtypePtr
        , RrtypeSrv
        , RrtypeSpf
        , RrtypeAaaa
        , RrtypeCaa
        ]
        (\val ->
            case val of
                RrtypeSoa ->
                    "SOA"

                RrtypeA ->
                    "A"

                RrtypeTxt ->
                    "TXT"

                RrtypeNs ->
                    "NS"

                RrtypeCname ->
                    "CNAME"

                RrtypeMx ->
                    "MX"

                RrtypeNaptr ->
                    "NAPTR"

                RrtypePtr ->
                    "PTR"

                RrtypeSrv ->
                    "SRV"

                RrtypeSpf ->
                    "SPF"

                RrtypeAaaa ->
                    "AAAA"

                RrtypeCaa ->
                    "CAA"
        )


type alias RecordData =
    List RecordDataEntry


type RecordDataEntry
    = RecordDataEntry String


recordDataEntry : Refined String RecordDataEntry StringError
recordDataEntry =
    let
        guardFn val =
            Refined.minLength 0 val |> Result.andThen (Refined.maxLength 512) |> Result.map RecordDataEntry

        unboxFn (RecordDataEntry val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type RequestInterval
    = RequestInterval Int


requestInterval : Refined Int RequestInterval IntError
requestInterval =
    let
        guardFn val =
            Refined.gt 10 val |> Result.andThen (Refined.lt 30) |> Result.map RequestInterval

        unboxFn (RequestInterval val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type alias ResettableElementName =
    String


type alias ResettableElementNameList =
    List String


type ResourceDescription
    = ResourceDescription String


resourceDescription : Refined String ResourceDescription StringError
resourceDescription =
    let
        guardFn val =
            Refined.maxLength 256 val |> Result.map ResourceDescription

        unboxFn (ResourceDescription val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type ResourceId
    = ResourceId String


resourceId : Refined String ResourceId StringError
resourceId =
    let
        guardFn val =
            Refined.maxLength 32 val |> Result.map ResourceId

        unboxFn (ResourceId val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type ResourcePath
    = ResourcePath String


resourcePath : Refined String ResourcePath StringError
resourcePath =
    let
        guardFn val =
            Refined.maxLength 255 val |> Result.map ResourcePath

        unboxFn (ResourcePath val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias ResourceRecord =
    { value : Rdata }


type alias ResourceRecordSet =
    { weight : Int
    , type_ : Rrtype
    , trafficPolicyInstanceId : TrafficPolicyInstanceId
    , ttl : Int
    , setIdentifier : ResourceRecordSetIdentifier
    , resourceRecords : ResourceRecords
    , region : String
    , name : Dnsname
    , multiValueAnswer : Bool
    , healthCheckId : HealthCheckId
    , geoLocation : GeoLocation
    , failover : ResourceRecordSetFailover
    , aliasTarget : AliasTarget
    }


type ResourceRecordSetFailover
    = ResourceRecordSetFailoverPrimary
    | ResourceRecordSetFailoverSecondary


resourceRecordSetFailover : Enum ResourceRecordSetFailover
resourceRecordSetFailover =
    Enum.define
        [ ResourceRecordSetFailoverPrimary, ResourceRecordSetFailoverSecondary ]
        (\val ->
            case val of
                ResourceRecordSetFailoverPrimary ->
                    "PRIMARY"

                ResourceRecordSetFailoverSecondary ->
                    "SECONDARY"
        )


type ResourceRecordSetIdentifier
    = ResourceRecordSetIdentifier String


resourceRecordSetIdentifier : Refined String ResourceRecordSetIdentifier StringError
resourceRecordSetIdentifier =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 128) |> Result.map ResourceRecordSetIdentifier

        unboxFn (ResourceRecordSetIdentifier val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias ResourceRecordSetMultiValueAnswer =
    Bool


type alias ResourceRecordSetRegion =
    String


type alias ResourceRecordSetWeight =
    Int


type alias ResourceRecordSets =
    List ResourceRecordSet


type alias ResourceRecords =
    List ResourceRecord


type alias ResourceTagSet =
    { tags : TagList, resourceType : TagResourceType, resourceId : TagResourceId }


type alias ResourceTagSetList =
    List ResourceTagSet


type ResourceUri
    = ResourceUri String


resourceUri : Refined String ResourceUri StringError
resourceUri =
    let
        guardFn val =
            Refined.maxLength 1024 val |> Result.map ResourceUri

        unboxFn (ResourceUri val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias ReusableDelegationSetLimit =
    { value : Int, type_ : ReusableDelegationSetLimitType }


type ReusableDelegationSetLimitType
    = ReusableDelegationSetLimitTypeMaxZonesByReusableDelegationSet


reusableDelegationSetLimitType : Enum ReusableDelegationSetLimitType
reusableDelegationSetLimitType =
    Enum.define
        [ ReusableDelegationSetLimitTypeMaxZonesByReusableDelegationSet ]
        (\val ->
            case val of
                ReusableDelegationSetLimitTypeMaxZonesByReusableDelegationSet ->
                    "MAX_ZONES_BY_REUSABLE_DELEGATION_SET"
        )


type SearchString
    = SearchString String


searchString : Refined String SearchString StringError
searchString =
    let
        guardFn val =
            Refined.maxLength 255 val |> Result.map SearchString

        unboxFn (SearchString val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type ServicePrincipal
    = ServicePrincipal String


servicePrincipal : Refined String ServicePrincipal StringError
servicePrincipal =
    let
        guardFn val =
            Refined.maxLength 128 val |> Result.map ServicePrincipal

        unboxFn (ServicePrincipal val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type Statistic
    = StatisticAverage
    | StatisticSum
    | StatisticSampleCount
    | StatisticMaximum
    | StatisticMinimum


statistic : Enum Statistic
statistic =
    Enum.define
        [ StatisticAverage, StatisticSum, StatisticSampleCount, StatisticMaximum, StatisticMinimum ]
        (\val ->
            case val of
                StatisticAverage ->
                    "Average"

                StatisticSum ->
                    "Sum"

                StatisticSampleCount ->
                    "SampleCount"

                StatisticMaximum ->
                    "Maximum"

                StatisticMinimum ->
                    "Minimum"
        )


type alias Status =
    String


type alias StatusReport =
    { status : String, checkedTime : TimeStamp }


type SubnetMask
    = SubnetMask String


subnetMask : Refined String SubnetMask StringError
subnetMask =
    let
        guardFn val =
            Refined.minLength 0 val |> Result.andThen (Refined.maxLength 3) |> Result.map SubnetMask

        unboxFn (SubnetMask val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias Ttl =
    Int


type alias Tag =
    { value : TagValue, key : TagKey }


type TagKey
    = TagKey String


tagKey : Refined String TagKey StringError
tagKey =
    let
        guardFn val =
            Refined.maxLength 128 val |> Result.map TagKey

        unboxFn (TagKey val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias TagKeyList =
    List TagKey


type alias TagList =
    List Tag


type TagResourceId
    = TagResourceId String


tagResourceId : Refined String TagResourceId StringError
tagResourceId =
    let
        guardFn val =
            Refined.maxLength 64 val |> Result.map TagResourceId

        unboxFn (TagResourceId val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias TagResourceIdList =
    List TagResourceId


type TagResourceType
    = TagResourceTypeHealthcheck
    | TagResourceTypeHostedzone


tagResourceType : Enum TagResourceType
tagResourceType =
    Enum.define
        [ TagResourceTypeHealthcheck, TagResourceTypeHostedzone ]
        (\val ->
            case val of
                TagResourceTypeHealthcheck ->
                    "healthcheck"

                TagResourceTypeHostedzone ->
                    "hostedzone"
        )


type TagValue
    = TagValue String


tagValue : Refined String TagValue StringError
tagValue =
    let
        guardFn val =
            Refined.maxLength 256 val |> Result.map TagValue

        unboxFn (TagValue val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias TestDnsanswerRequest =
    { resolverIp : Ipaddress
    , recordType : Rrtype
    , recordName : Dnsname
    , hostedZoneId : ResourceId
    , edns0ClientSubnetMask : SubnetMask
    , edns0ClientSubnetIp : Ipaddress
    }


type alias TestDnsanswerResponse =
    { responseCode : String
    , recordType : Rrtype
    , recordName : Dnsname
    , recordData : RecordData
    , protocol : String
    , nameserver : Nameserver
    }


type alias Threshold =
    Float


type alias TimeStamp =
    String


type alias TrafficPolicies =
    List TrafficPolicy


type alias TrafficPolicy =
    { version : TrafficPolicyVersion
    , type_ : Rrtype
    , name : TrafficPolicyName
    , id : TrafficPolicyId
    , document : TrafficPolicyDocument
    , comment : TrafficPolicyComment
    }


type TrafficPolicyComment
    = TrafficPolicyComment String


trafficPolicyComment : Refined String TrafficPolicyComment StringError
trafficPolicyComment =
    let
        guardFn val =
            Refined.maxLength 1024 val |> Result.map TrafficPolicyComment

        unboxFn (TrafficPolicyComment val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type TrafficPolicyDocument
    = TrafficPolicyDocument String


trafficPolicyDocument : Refined String TrafficPolicyDocument StringError
trafficPolicyDocument =
    let
        guardFn val =
            Refined.maxLength 102400 val |> Result.map TrafficPolicyDocument

        unboxFn (TrafficPolicyDocument val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type TrafficPolicyId
    = TrafficPolicyId String


trafficPolicyId : Refined String TrafficPolicyId StringError
trafficPolicyId =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 36) |> Result.map TrafficPolicyId

        unboxFn (TrafficPolicyId val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias TrafficPolicyInstance =
    { trafficPolicyVersion : TrafficPolicyVersion
    , trafficPolicyType : Rrtype
    , trafficPolicyId : TrafficPolicyId
    , ttl : Int
    , state : String
    , name : Dnsname
    , message : Message
    , id : TrafficPolicyInstanceId
    , hostedZoneId : ResourceId
    }


type alias TrafficPolicyInstanceCount =
    Int


type TrafficPolicyInstanceId
    = TrafficPolicyInstanceId String


trafficPolicyInstanceId : Refined String TrafficPolicyInstanceId StringError
trafficPolicyInstanceId =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 36) |> Result.map TrafficPolicyInstanceId

        unboxFn (TrafficPolicyInstanceId val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias TrafficPolicyInstanceState =
    String


type alias TrafficPolicyInstances =
    List TrafficPolicyInstance


type TrafficPolicyName
    = TrafficPolicyName String


trafficPolicyName : Refined String TrafficPolicyName StringError
trafficPolicyName =
    let
        guardFn val =
            Refined.maxLength 512 val |> Result.map TrafficPolicyName

        unboxFn (TrafficPolicyName val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias TrafficPolicySummaries =
    List TrafficPolicySummary


type alias TrafficPolicySummary =
    { type_ : Rrtype
    , trafficPolicyCount : TrafficPolicyVersion
    , name : TrafficPolicyName
    , latestVersion : TrafficPolicyVersion
    , id : TrafficPolicyId
    }


type TrafficPolicyVersion
    = TrafficPolicyVersion Int


trafficPolicyVersion : Refined Int TrafficPolicyVersion IntError
trafficPolicyVersion =
    let
        guardFn val =
            Refined.gt 1 val |> Result.andThen (Refined.lt 1000) |> Result.map TrafficPolicyVersion

        unboxFn (TrafficPolicyVersion val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type TrafficPolicyVersionMarker
    = TrafficPolicyVersionMarker String


trafficPolicyVersionMarker : Refined String TrafficPolicyVersionMarker StringError
trafficPolicyVersionMarker =
    let
        guardFn val =
            Refined.maxLength 4 val |> Result.map TrafficPolicyVersionMarker

        unboxFn (TrafficPolicyVersionMarker val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias TransportProtocol =
    String


type alias UpdateHealthCheckRequest =
    { searchString : SearchString
    , resourcePath : ResourcePath
    , resetElements : ResettableElementNameList
    , regions : HealthCheckRegionList
    , port : Port
    , inverted : Bool
    , insufficientDataHealthStatus : InsufficientDataHealthStatus
    , ipaddress : Ipaddress
    , healthThreshold : HealthThreshold
    , healthCheckVersion : Int
    , healthCheckId : HealthCheckId
    , fullyQualifiedDomainName : FullyQualifiedDomainName
    , failureThreshold : FailureThreshold
    , enableSni : Bool
    , disabled : Bool
    , childHealthChecks : ChildHealthCheckList
    , alarmIdentifier : AlarmIdentifier
    }


type alias UpdateHealthCheckResponse =
    { healthCheck : HealthCheck }


type alias UpdateHostedZoneCommentRequest =
    { id : ResourceId, comment : ResourceDescription }


type alias UpdateHostedZoneCommentResponse =
    { hostedZone : HostedZone }


type alias UpdateTrafficPolicyCommentRequest =
    { version : TrafficPolicyVersion, id : TrafficPolicyId, comment : TrafficPolicyComment }


type alias UpdateTrafficPolicyCommentResponse =
    { trafficPolicy : TrafficPolicy }


type alias UpdateTrafficPolicyInstanceRequest =
    { trafficPolicyVersion : TrafficPolicyVersion
    , trafficPolicyId : TrafficPolicyId
    , ttl : Int
    , id : TrafficPolicyInstanceId
    }


type alias UpdateTrafficPolicyInstanceResponse =
    { trafficPolicyInstance : TrafficPolicyInstance }


type alias UsageCount =
    Int


type alias Vpc =
    { vpcregion : String, vpcid : Vpcid }


type Vpcid
    = Vpcid String


vpcid : Refined String Vpcid StringError
vpcid =
    let
        guardFn val =
            Refined.maxLength 1024 val |> Result.map Vpcid

        unboxFn (Vpcid val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias Vpcregion =
    String


type alias Vpcs =
    List Vpc


{-| Codec for Vpcs. -}
vpcsCodec : Codec Vpcs
vpcsCodec =
    Codec.list vpccodec


{-| Codec for Vpcregion. -}
vpcregionCodec : Codec Vpcregion
vpcregionCodec =
    Codec.string


{-| Codec for Vpcid. -}
vpcidCodec : Codec Vpcid
vpcidCodec =
    Codec.build (Refined.encoder vpcid) (Refined.decoder vpcid)


{-| Codec for Vpc. -}
vpccodec : Codec Vpc
vpccodec =
    Codec.object Vpc
        |> Codec.field "VPCRegion" .vpcregion Codec.string
        |> Codec.field "VPCId" .vpcid vpcidCodec
        |> Codec.buildObject


{-| Codec for UsageCount. -}
usageCountCodec : Codec UsageCount
usageCountCodec =
    Codec.int


{-| Codec for UpdateTrafficPolicyInstanceResponse. -}
updateTrafficPolicyInstanceResponseCodec : Codec UpdateTrafficPolicyInstanceResponse
updateTrafficPolicyInstanceResponseCodec =
    Codec.object UpdateTrafficPolicyInstanceResponse
        |> Codec.field "TrafficPolicyInstance" .trafficPolicyInstance trafficPolicyInstanceCodec
        |> Codec.buildObject


{-| Codec for UpdateTrafficPolicyInstanceRequest. -}
updateTrafficPolicyInstanceRequestCodec : Codec UpdateTrafficPolicyInstanceRequest
updateTrafficPolicyInstanceRequestCodec =
    Codec.object UpdateTrafficPolicyInstanceRequest
        |> Codec.field "TrafficPolicyVersion" .trafficPolicyVersion trafficPolicyVersionCodec
        |> Codec.field "TrafficPolicyId" .trafficPolicyId trafficPolicyIdCodec
        |> Codec.field "TTL" .ttl Codec.int
        |> Codec.field "Id" .id trafficPolicyInstanceIdCodec
        |> Codec.buildObject


{-| Codec for UpdateTrafficPolicyCommentResponse. -}
updateTrafficPolicyCommentResponseCodec : Codec UpdateTrafficPolicyCommentResponse
updateTrafficPolicyCommentResponseCodec =
    Codec.object UpdateTrafficPolicyCommentResponse
        |> Codec.field "TrafficPolicy" .trafficPolicy trafficPolicyCodec
        |> Codec.buildObject


{-| Codec for UpdateTrafficPolicyCommentRequest. -}
updateTrafficPolicyCommentRequestCodec : Codec UpdateTrafficPolicyCommentRequest
updateTrafficPolicyCommentRequestCodec =
    Codec.object UpdateTrafficPolicyCommentRequest
        |> Codec.field "Version" .version trafficPolicyVersionCodec
        |> Codec.field "Id" .id trafficPolicyIdCodec
        |> Codec.field "Comment" .comment trafficPolicyCommentCodec
        |> Codec.buildObject


{-| Codec for UpdateHostedZoneCommentResponse. -}
updateHostedZoneCommentResponseCodec : Codec UpdateHostedZoneCommentResponse
updateHostedZoneCommentResponseCodec =
    Codec.object UpdateHostedZoneCommentResponse
        |> Codec.field "HostedZone" .hostedZone hostedZoneCodec
        |> Codec.buildObject


{-| Codec for UpdateHostedZoneCommentRequest. -}
updateHostedZoneCommentRequestCodec : Codec UpdateHostedZoneCommentRequest
updateHostedZoneCommentRequestCodec =
    Codec.object UpdateHostedZoneCommentRequest
        |> Codec.field "Id" .id resourceIdCodec
        |> Codec.field "Comment" .comment resourceDescriptionCodec
        |> Codec.buildObject


{-| Codec for UpdateHealthCheckResponse. -}
updateHealthCheckResponseCodec : Codec UpdateHealthCheckResponse
updateHealthCheckResponseCodec =
    Codec.object UpdateHealthCheckResponse
        |> Codec.field "HealthCheck" .healthCheck healthCheckCodec
        |> Codec.buildObject


{-| Codec for UpdateHealthCheckRequest. -}
updateHealthCheckRequestCodec : Codec UpdateHealthCheckRequest
updateHealthCheckRequestCodec =
    Codec.object UpdateHealthCheckRequest
        |> Codec.field "SearchString" .searchString searchStringCodec
        |> Codec.field "ResourcePath" .resourcePath resourcePathCodec
        |> Codec.field "ResetElements" .resetElements resettableElementNameListCodec
        |> Codec.field "Regions" .regions healthCheckRegionListCodec
        |> Codec.field "Port" .port portCodec
        |> Codec.field "Inverted" .inverted Codec.bool
        |> Codec.field "InsufficientDataHealthStatus" .insufficientDataHealthStatus insufficientDataHealthStatusCodec
        |> Codec.field "IPAddress" .ipaddress ipaddressCodec
        |> Codec.field "HealthThreshold" .healthThreshold healthThresholdCodec
        |> Codec.field "HealthCheckVersion" .healthCheckVersion Codec.int
        |> Codec.field "HealthCheckId" .healthCheckId healthCheckIdCodec
        |> Codec.field "FullyQualifiedDomainName" .fullyQualifiedDomainName fullyQualifiedDomainNameCodec
        |> Codec.field "FailureThreshold" .failureThreshold failureThresholdCodec
        |> Codec.field "EnableSNI" .enableSni Codec.bool
        |> Codec.field "Disabled" .disabled Codec.bool
        |> Codec.field "ChildHealthChecks" .childHealthChecks childHealthCheckListCodec
        |> Codec.field "AlarmIdentifier" .alarmIdentifier alarmIdentifierCodec
        |> Codec.buildObject


{-| Codec for TransportProtocol. -}
transportProtocolCodec : Codec TransportProtocol
transportProtocolCodec =
    Codec.string


{-| Codec for TrafficPolicyVersionMarker. -}
trafficPolicyVersionMarkerCodec : Codec TrafficPolicyVersionMarker
trafficPolicyVersionMarkerCodec =
    Codec.build (Refined.encoder trafficPolicyVersionMarker) (Refined.decoder trafficPolicyVersionMarker)


{-| Codec for TrafficPolicyVersion. -}
trafficPolicyVersionCodec : Codec TrafficPolicyVersion
trafficPolicyVersionCodec =
    Codec.build (Refined.encoder trafficPolicyVersion) (Refined.decoder trafficPolicyVersion)


{-| Codec for TrafficPolicySummary. -}
trafficPolicySummaryCodec : Codec TrafficPolicySummary
trafficPolicySummaryCodec =
    Codec.object TrafficPolicySummary
        |> Codec.field "Type" .type_ rrtypeCodec
        |> Codec.field "TrafficPolicyCount" .trafficPolicyCount trafficPolicyVersionCodec
        |> Codec.field "Name" .name trafficPolicyNameCodec
        |> Codec.field "LatestVersion" .latestVersion trafficPolicyVersionCodec
        |> Codec.field "Id" .id trafficPolicyIdCodec
        |> Codec.buildObject


{-| Codec for TrafficPolicySummaries. -}
trafficPolicySummariesCodec : Codec TrafficPolicySummaries
trafficPolicySummariesCodec =
    Codec.list trafficPolicySummaryCodec


{-| Codec for TrafficPolicyName. -}
trafficPolicyNameCodec : Codec TrafficPolicyName
trafficPolicyNameCodec =
    Codec.build (Refined.encoder trafficPolicyName) (Refined.decoder trafficPolicyName)


{-| Codec for TrafficPolicyInstances. -}
trafficPolicyInstancesCodec : Codec TrafficPolicyInstances
trafficPolicyInstancesCodec =
    Codec.list trafficPolicyInstanceCodec


{-| Codec for TrafficPolicyInstanceState. -}
trafficPolicyInstanceStateCodec : Codec TrafficPolicyInstanceState
trafficPolicyInstanceStateCodec =
    Codec.string


{-| Codec for TrafficPolicyInstanceId. -}
trafficPolicyInstanceIdCodec : Codec TrafficPolicyInstanceId
trafficPolicyInstanceIdCodec =
    Codec.build (Refined.encoder trafficPolicyInstanceId) (Refined.decoder trafficPolicyInstanceId)


{-| Codec for TrafficPolicyInstanceCount. -}
trafficPolicyInstanceCountCodec : Codec TrafficPolicyInstanceCount
trafficPolicyInstanceCountCodec =
    Codec.int


{-| Codec for TrafficPolicyInstance. -}
trafficPolicyInstanceCodec : Codec TrafficPolicyInstance
trafficPolicyInstanceCodec =
    Codec.object TrafficPolicyInstance
        |> Codec.field "TrafficPolicyVersion" .trafficPolicyVersion trafficPolicyVersionCodec
        |> Codec.field "TrafficPolicyType" .trafficPolicyType rrtypeCodec
        |> Codec.field "TrafficPolicyId" .trafficPolicyId trafficPolicyIdCodec
        |> Codec.field "TTL" .ttl Codec.int
        |> Codec.field "State" .state Codec.string
        |> Codec.field "Name" .name dnsnameCodec
        |> Codec.field "Message" .message messageCodec
        |> Codec.field "Id" .id trafficPolicyInstanceIdCodec
        |> Codec.field "HostedZoneId" .hostedZoneId resourceIdCodec
        |> Codec.buildObject


{-| Codec for TrafficPolicyId. -}
trafficPolicyIdCodec : Codec TrafficPolicyId
trafficPolicyIdCodec =
    Codec.build (Refined.encoder trafficPolicyId) (Refined.decoder trafficPolicyId)


{-| Codec for TrafficPolicyDocument. -}
trafficPolicyDocumentCodec : Codec TrafficPolicyDocument
trafficPolicyDocumentCodec =
    Codec.build (Refined.encoder trafficPolicyDocument) (Refined.decoder trafficPolicyDocument)


{-| Codec for TrafficPolicyComment. -}
trafficPolicyCommentCodec : Codec TrafficPolicyComment
trafficPolicyCommentCodec =
    Codec.build (Refined.encoder trafficPolicyComment) (Refined.decoder trafficPolicyComment)


{-| Codec for TrafficPolicy. -}
trafficPolicyCodec : Codec TrafficPolicy
trafficPolicyCodec =
    Codec.object TrafficPolicy
        |> Codec.field "Version" .version trafficPolicyVersionCodec
        |> Codec.field "Type" .type_ rrtypeCodec
        |> Codec.field "Name" .name trafficPolicyNameCodec
        |> Codec.field "Id" .id trafficPolicyIdCodec
        |> Codec.field "Document" .document trafficPolicyDocumentCodec
        |> Codec.field "Comment" .comment trafficPolicyCommentCodec
        |> Codec.buildObject


{-| Codec for TrafficPolicies. -}
trafficPoliciesCodec : Codec TrafficPolicies
trafficPoliciesCodec =
    Codec.list trafficPolicyCodec


{-| Codec for TimeStamp. -}
timeStampCodec : Codec TimeStamp
timeStampCodec =
    Codec.string


{-| Codec for Threshold. -}
thresholdCodec : Codec Threshold
thresholdCodec =
    Codec.float


{-| Codec for TestDnsanswerResponse. -}
testDnsanswerResponseCodec : Codec TestDnsanswerResponse
testDnsanswerResponseCodec =
    Codec.object TestDnsanswerResponse
        |> Codec.field "ResponseCode" .responseCode Codec.string
        |> Codec.field "RecordType" .recordType rrtypeCodec
        |> Codec.field "RecordName" .recordName dnsnameCodec
        |> Codec.field "RecordData" .recordData recordDataCodec
        |> Codec.field "Protocol" .protocol Codec.string
        |> Codec.field "Nameserver" .nameserver nameserverCodec
        |> Codec.buildObject


{-| Codec for TestDnsanswerRequest. -}
testDnsanswerRequestCodec : Codec TestDnsanswerRequest
testDnsanswerRequestCodec =
    Codec.object TestDnsanswerRequest
        |> Codec.field "ResolverIP" .resolverIp ipaddressCodec
        |> Codec.field "RecordType" .recordType rrtypeCodec
        |> Codec.field "RecordName" .recordName dnsnameCodec
        |> Codec.field "HostedZoneId" .hostedZoneId resourceIdCodec
        |> Codec.field "EDNS0ClientSubnetMask" .edns0ClientSubnetMask subnetMaskCodec
        |> Codec.field "EDNS0ClientSubnetIP" .edns0ClientSubnetIp ipaddressCodec
        |> Codec.buildObject


{-| Codec for TagValue. -}
tagValueCodec : Codec TagValue
tagValueCodec =
    Codec.build (Refined.encoder tagValue) (Refined.decoder tagValue)


{-| Codec for TagResourceType. -}
tagResourceTypeCodec : Codec TagResourceType
tagResourceTypeCodec =
    Codec.build (Enum.encoder tagResourceType) (Enum.decoder tagResourceType)


{-| Codec for TagResourceIdList. -}
tagResourceIdListCodec : Codec TagResourceIdList
tagResourceIdListCodec =
    Codec.list tagResourceIdCodec


{-| Codec for TagResourceId. -}
tagResourceIdCodec : Codec TagResourceId
tagResourceIdCodec =
    Codec.build (Refined.encoder tagResourceId) (Refined.decoder tagResourceId)


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


{-| Codec for Ttl. -}
ttlcodec : Codec Ttl
ttlcodec =
    Codec.int


{-| Codec for SubnetMask. -}
subnetMaskCodec : Codec SubnetMask
subnetMaskCodec =
    Codec.build (Refined.encoder subnetMask) (Refined.decoder subnetMask)


{-| Codec for StatusReport. -}
statusReportCodec : Codec StatusReport
statusReportCodec =
    Codec.object StatusReport
        |> Codec.field "Status" .status Codec.string
        |> Codec.field "CheckedTime" .checkedTime timeStampCodec
        |> Codec.buildObject


{-| Codec for Status. -}
statusCodec : Codec Status
statusCodec =
    Codec.string


{-| Codec for Statistic. -}
statisticCodec : Codec Statistic
statisticCodec =
    Codec.build (Enum.encoder statistic) (Enum.decoder statistic)


{-| Codec for ServicePrincipal. -}
servicePrincipalCodec : Codec ServicePrincipal
servicePrincipalCodec =
    Codec.build (Refined.encoder servicePrincipal) (Refined.decoder servicePrincipal)


{-| Codec for SearchString. -}
searchStringCodec : Codec SearchString
searchStringCodec =
    Codec.build (Refined.encoder searchString) (Refined.decoder searchString)


{-| Codec for ReusableDelegationSetLimitType. -}
reusableDelegationSetLimitTypeCodec : Codec ReusableDelegationSetLimitType
reusableDelegationSetLimitTypeCodec =
    Codec.build (Enum.encoder reusableDelegationSetLimitType) (Enum.decoder reusableDelegationSetLimitType)


{-| Codec for ReusableDelegationSetLimit. -}
reusableDelegationSetLimitCodec : Codec ReusableDelegationSetLimit
reusableDelegationSetLimitCodec =
    Codec.object ReusableDelegationSetLimit
        |> Codec.field "Value" .value Codec.int
        |> Codec.field "Type" .type_ reusableDelegationSetLimitTypeCodec
        |> Codec.buildObject


{-| Codec for ResourceUri. -}
resourceUricodec : Codec ResourceUri
resourceUricodec =
    Codec.build (Refined.encoder resourceUri) (Refined.decoder resourceUri)


{-| Codec for ResourceTagSetList. -}
resourceTagSetListCodec : Codec ResourceTagSetList
resourceTagSetListCodec =
    Codec.list resourceTagSetCodec


{-| Codec for ResourceTagSet. -}
resourceTagSetCodec : Codec ResourceTagSet
resourceTagSetCodec =
    Codec.object ResourceTagSet
        |> Codec.field "Tags" .tags tagListCodec
        |> Codec.field "ResourceType" .resourceType tagResourceTypeCodec
        |> Codec.field "ResourceId" .resourceId tagResourceIdCodec
        |> Codec.buildObject


{-| Codec for ResourceRecords. -}
resourceRecordsCodec : Codec ResourceRecords
resourceRecordsCodec =
    Codec.list resourceRecordCodec


{-| Codec for ResourceRecordSets. -}
resourceRecordSetsCodec : Codec ResourceRecordSets
resourceRecordSetsCodec =
    Codec.list resourceRecordSetCodec


{-| Codec for ResourceRecordSetWeight. -}
resourceRecordSetWeightCodec : Codec ResourceRecordSetWeight
resourceRecordSetWeightCodec =
    Codec.int


{-| Codec for ResourceRecordSetRegion. -}
resourceRecordSetRegionCodec : Codec ResourceRecordSetRegion
resourceRecordSetRegionCodec =
    Codec.string


{-| Codec for ResourceRecordSetMultiValueAnswer. -}
resourceRecordSetMultiValueAnswerCodec : Codec ResourceRecordSetMultiValueAnswer
resourceRecordSetMultiValueAnswerCodec =
    Codec.bool


{-| Codec for ResourceRecordSetIdentifier. -}
resourceRecordSetIdentifierCodec : Codec ResourceRecordSetIdentifier
resourceRecordSetIdentifierCodec =
    Codec.build (Refined.encoder resourceRecordSetIdentifier) (Refined.decoder resourceRecordSetIdentifier)


{-| Codec for ResourceRecordSetFailover. -}
resourceRecordSetFailoverCodec : Codec ResourceRecordSetFailover
resourceRecordSetFailoverCodec =
    Codec.build (Enum.encoder resourceRecordSetFailover) (Enum.decoder resourceRecordSetFailover)


{-| Codec for ResourceRecordSet. -}
resourceRecordSetCodec : Codec ResourceRecordSet
resourceRecordSetCodec =
    Codec.object ResourceRecordSet
        |> Codec.field "Weight" .weight Codec.int
        |> Codec.field "Type" .type_ rrtypeCodec
        |> Codec.field "TrafficPolicyInstanceId" .trafficPolicyInstanceId trafficPolicyInstanceIdCodec
        |> Codec.field "TTL" .ttl Codec.int
        |> Codec.field "SetIdentifier" .setIdentifier resourceRecordSetIdentifierCodec
        |> Codec.field "ResourceRecords" .resourceRecords resourceRecordsCodec
        |> Codec.field "Region" .region Codec.string
        |> Codec.field "Name" .name dnsnameCodec
        |> Codec.field "MultiValueAnswer" .multiValueAnswer Codec.bool
        |> Codec.field "HealthCheckId" .healthCheckId healthCheckIdCodec
        |> Codec.field "GeoLocation" .geoLocation geoLocationCodec
        |> Codec.field "Failover" .failover resourceRecordSetFailoverCodec
        |> Codec.field "AliasTarget" .aliasTarget aliasTargetCodec
        |> Codec.buildObject


{-| Codec for ResourceRecord. -}
resourceRecordCodec : Codec ResourceRecord
resourceRecordCodec =
    Codec.object ResourceRecord |> Codec.field "Value" .value rdataCodec |> Codec.buildObject


{-| Codec for ResourcePath. -}
resourcePathCodec : Codec ResourcePath
resourcePathCodec =
    Codec.build (Refined.encoder resourcePath) (Refined.decoder resourcePath)


{-| Codec for ResourceId. -}
resourceIdCodec : Codec ResourceId
resourceIdCodec =
    Codec.build (Refined.encoder resourceId) (Refined.decoder resourceId)


{-| Codec for ResourceDescription. -}
resourceDescriptionCodec : Codec ResourceDescription
resourceDescriptionCodec =
    Codec.build (Refined.encoder resourceDescription) (Refined.decoder resourceDescription)


{-| Codec for ResettableElementNameList. -}
resettableElementNameListCodec : Codec ResettableElementNameList
resettableElementNameListCodec =
    Codec.list Codec.string


{-| Codec for ResettableElementName. -}
resettableElementNameCodec : Codec ResettableElementName
resettableElementNameCodec =
    Codec.string


{-| Codec for RequestInterval. -}
requestIntervalCodec : Codec RequestInterval
requestIntervalCodec =
    Codec.build (Refined.encoder requestInterval) (Refined.decoder requestInterval)


{-| Codec for RecordDataEntry. -}
recordDataEntryCodec : Codec RecordDataEntry
recordDataEntryCodec =
    Codec.build (Refined.encoder recordDataEntry) (Refined.decoder recordDataEntry)


{-| Codec for RecordData. -}
recordDataCodec : Codec RecordData
recordDataCodec =
    Codec.list recordDataEntryCodec


{-| Codec for Rrtype. -}
rrtypeCodec : Codec Rrtype
rrtypeCodec =
    Codec.build (Enum.encoder rrtype) (Enum.decoder rrtype)


{-| Codec for Rdata. -}
rdataCodec : Codec Rdata
rdataCodec =
    Codec.build (Refined.encoder rdata) (Refined.decoder rdata)


{-| Codec for QueryLoggingConfigs. -}
queryLoggingConfigsCodec : Codec QueryLoggingConfigs
queryLoggingConfigsCodec =
    Codec.list queryLoggingConfigCodec


{-| Codec for QueryLoggingConfigId. -}
queryLoggingConfigIdCodec : Codec QueryLoggingConfigId
queryLoggingConfigIdCodec =
    Codec.build (Refined.encoder queryLoggingConfigId) (Refined.decoder queryLoggingConfigId)


{-| Codec for QueryLoggingConfig. -}
queryLoggingConfigCodec : Codec QueryLoggingConfig
queryLoggingConfigCodec =
    Codec.object QueryLoggingConfig
        |> Codec.field "Id" .id queryLoggingConfigIdCodec
        |> Codec.field "HostedZoneId" .hostedZoneId resourceIdCodec
        |> Codec.field "CloudWatchLogsLogGroupArn" .cloudWatchLogsLogGroupArn Codec.string
        |> Codec.buildObject


{-| Codec for Port. -}
portCodec : Codec Port
portCodec =
    Codec.build (Refined.encoder port) (Refined.decoder port)


{-| Codec for Period. -}
periodCodec : Codec Period
periodCodec =
    Codec.build (Refined.encoder period) (Refined.decoder period)


{-| Codec for PaginationToken. -}
paginationTokenCodec : Codec PaginationToken
paginationTokenCodec =
    Codec.build (Refined.encoder paginationToken) (Refined.decoder paginationToken)


{-| Codec for PageTruncated. -}
pageTruncatedCodec : Codec PageTruncated
pageTruncatedCodec =
    Codec.bool


{-| Codec for PageMaxItems. -}
pageMaxItemsCodec : Codec PageMaxItems
pageMaxItemsCodec =
    Codec.string


{-| Codec for PageMarker. -}
pageMarkerCodec : Codec PageMarker
pageMarkerCodec =
    Codec.build (Refined.encoder pageMarker) (Refined.decoder pageMarker)


{-| Codec for Nonce. -}
nonceCodec : Codec Nonce
nonceCodec =
    Codec.build (Refined.encoder nonce) (Refined.decoder nonce)


{-| Codec for Namespace. -}
namespaceCodec : Codec Namespace
namespaceCodec =
    Codec.build (Refined.encoder namespace) (Refined.decoder namespace)


{-| Codec for Nameserver. -}
nameserverCodec : Codec Nameserver
nameserverCodec =
    Codec.build (Refined.encoder nameserver) (Refined.decoder nameserver)


{-| Codec for MetricName. -}
metricNameCodec : Codec MetricName
metricNameCodec =
    Codec.build (Refined.encoder metricName) (Refined.decoder metricName)


{-| Codec for Message. -}
messageCodec : Codec Message
messageCodec =
    Codec.build (Refined.encoder message) (Refined.decoder message)


{-| Codec for MeasureLatency. -}
measureLatencyCodec : Codec MeasureLatency
measureLatencyCodec =
    Codec.bool


{-| Codec for MaxResults. -}
maxResultsCodec : Codec MaxResults
maxResultsCodec =
    Codec.string


{-| Codec for ListVpcassociationAuthorizationsResponse. -}
listVpcassociationAuthorizationsResponseCodec : Codec ListVpcassociationAuthorizationsResponse
listVpcassociationAuthorizationsResponseCodec =
    Codec.object ListVpcassociationAuthorizationsResponse
        |> Codec.field "VPCs" .vpcs vpcsCodec
        |> Codec.field "NextToken" .nextToken paginationTokenCodec
        |> Codec.field "HostedZoneId" .hostedZoneId resourceIdCodec
        |> Codec.buildObject


{-| Codec for ListVpcassociationAuthorizationsRequest. -}
listVpcassociationAuthorizationsRequestCodec : Codec ListVpcassociationAuthorizationsRequest
listVpcassociationAuthorizationsRequestCodec =
    Codec.object ListVpcassociationAuthorizationsRequest
        |> Codec.field "NextToken" .nextToken paginationTokenCodec
        |> Codec.field "MaxResults" .maxResults Codec.string
        |> Codec.field "HostedZoneId" .hostedZoneId resourceIdCodec
        |> Codec.buildObject


{-| Codec for ListTrafficPolicyVersionsResponse. -}
listTrafficPolicyVersionsResponseCodec : Codec ListTrafficPolicyVersionsResponse
listTrafficPolicyVersionsResponseCodec =
    Codec.object ListTrafficPolicyVersionsResponse
        |> Codec.field "TrafficPolicyVersionMarker" .trafficPolicyVersionMarker trafficPolicyVersionMarkerCodec
        |> Codec.field "TrafficPolicies" .trafficPolicies trafficPoliciesCodec
        |> Codec.field "MaxItems" .maxItems Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.buildObject


{-| Codec for ListTrafficPolicyVersionsRequest. -}
listTrafficPolicyVersionsRequestCodec : Codec ListTrafficPolicyVersionsRequest
listTrafficPolicyVersionsRequestCodec =
    Codec.object ListTrafficPolicyVersionsRequest
        |> Codec.field "TrafficPolicyVersionMarker" .trafficPolicyVersionMarker trafficPolicyVersionMarkerCodec
        |> Codec.field "MaxItems" .maxItems Codec.string
        |> Codec.field "Id" .id trafficPolicyIdCodec
        |> Codec.buildObject


{-| Codec for ListTrafficPolicyInstancesResponse. -}
listTrafficPolicyInstancesResponseCodec : Codec ListTrafficPolicyInstancesResponse
listTrafficPolicyInstancesResponseCodec =
    Codec.object ListTrafficPolicyInstancesResponse
        |> Codec.field "TrafficPolicyInstances" .trafficPolicyInstances trafficPolicyInstancesCodec
        |> Codec.field "TrafficPolicyInstanceTypeMarker" .trafficPolicyInstanceTypeMarker rrtypeCodec
        |> Codec.field "TrafficPolicyInstanceNameMarker" .trafficPolicyInstanceNameMarker dnsnameCodec
        |> Codec.field "MaxItems" .maxItems Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.field "HostedZoneIdMarker" .hostedZoneIdMarker resourceIdCodec
        |> Codec.buildObject


{-| Codec for ListTrafficPolicyInstancesRequest. -}
listTrafficPolicyInstancesRequestCodec : Codec ListTrafficPolicyInstancesRequest
listTrafficPolicyInstancesRequestCodec =
    Codec.object ListTrafficPolicyInstancesRequest
        |> Codec.field "TrafficPolicyInstanceTypeMarker" .trafficPolicyInstanceTypeMarker rrtypeCodec
        |> Codec.field "TrafficPolicyInstanceNameMarker" .trafficPolicyInstanceNameMarker dnsnameCodec
        |> Codec.field "MaxItems" .maxItems Codec.string
        |> Codec.field "HostedZoneIdMarker" .hostedZoneIdMarker resourceIdCodec
        |> Codec.buildObject


{-| Codec for ListTrafficPolicyInstancesByPolicyResponse. -}
listTrafficPolicyInstancesByPolicyResponseCodec : Codec ListTrafficPolicyInstancesByPolicyResponse
listTrafficPolicyInstancesByPolicyResponseCodec =
    Codec.object ListTrafficPolicyInstancesByPolicyResponse
        |> Codec.field "TrafficPolicyInstances" .trafficPolicyInstances trafficPolicyInstancesCodec
        |> Codec.field "TrafficPolicyInstanceTypeMarker" .trafficPolicyInstanceTypeMarker rrtypeCodec
        |> Codec.field "TrafficPolicyInstanceNameMarker" .trafficPolicyInstanceNameMarker dnsnameCodec
        |> Codec.field "MaxItems" .maxItems Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.field "HostedZoneIdMarker" .hostedZoneIdMarker resourceIdCodec
        |> Codec.buildObject


{-| Codec for ListTrafficPolicyInstancesByPolicyRequest. -}
listTrafficPolicyInstancesByPolicyRequestCodec : Codec ListTrafficPolicyInstancesByPolicyRequest
listTrafficPolicyInstancesByPolicyRequestCodec =
    Codec.object ListTrafficPolicyInstancesByPolicyRequest
        |> Codec.field "TrafficPolicyVersion" .trafficPolicyVersion trafficPolicyVersionCodec
        |> Codec.field "TrafficPolicyInstanceTypeMarker" .trafficPolicyInstanceTypeMarker rrtypeCodec
        |> Codec.field "TrafficPolicyInstanceNameMarker" .trafficPolicyInstanceNameMarker dnsnameCodec
        |> Codec.field "TrafficPolicyId" .trafficPolicyId trafficPolicyIdCodec
        |> Codec.field "MaxItems" .maxItems Codec.string
        |> Codec.field "HostedZoneIdMarker" .hostedZoneIdMarker resourceIdCodec
        |> Codec.buildObject


{-| Codec for ListTrafficPolicyInstancesByHostedZoneResponse. -}
listTrafficPolicyInstancesByHostedZoneResponseCodec : Codec ListTrafficPolicyInstancesByHostedZoneResponse
listTrafficPolicyInstancesByHostedZoneResponseCodec =
    Codec.object ListTrafficPolicyInstancesByHostedZoneResponse
        |> Codec.field "TrafficPolicyInstances" .trafficPolicyInstances trafficPolicyInstancesCodec
        |> Codec.field "TrafficPolicyInstanceTypeMarker" .trafficPolicyInstanceTypeMarker rrtypeCodec
        |> Codec.field "TrafficPolicyInstanceNameMarker" .trafficPolicyInstanceNameMarker dnsnameCodec
        |> Codec.field "MaxItems" .maxItems Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.buildObject


{-| Codec for ListTrafficPolicyInstancesByHostedZoneRequest. -}
listTrafficPolicyInstancesByHostedZoneRequestCodec : Codec ListTrafficPolicyInstancesByHostedZoneRequest
listTrafficPolicyInstancesByHostedZoneRequestCodec =
    Codec.object ListTrafficPolicyInstancesByHostedZoneRequest
        |> Codec.field "TrafficPolicyInstanceTypeMarker" .trafficPolicyInstanceTypeMarker rrtypeCodec
        |> Codec.field "TrafficPolicyInstanceNameMarker" .trafficPolicyInstanceNameMarker dnsnameCodec
        |> Codec.field "MaxItems" .maxItems Codec.string
        |> Codec.field "HostedZoneId" .hostedZoneId resourceIdCodec
        |> Codec.buildObject


{-| Codec for ListTrafficPoliciesResponse. -}
listTrafficPoliciesResponseCodec : Codec ListTrafficPoliciesResponse
listTrafficPoliciesResponseCodec =
    Codec.object ListTrafficPoliciesResponse
        |> Codec.field "TrafficPolicySummaries" .trafficPolicySummaries trafficPolicySummariesCodec
        |> Codec.field "TrafficPolicyIdMarker" .trafficPolicyIdMarker trafficPolicyIdCodec
        |> Codec.field "MaxItems" .maxItems Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.buildObject


{-| Codec for ListTrafficPoliciesRequest. -}
listTrafficPoliciesRequestCodec : Codec ListTrafficPoliciesRequest
listTrafficPoliciesRequestCodec =
    Codec.object ListTrafficPoliciesRequest
        |> Codec.field "TrafficPolicyIdMarker" .trafficPolicyIdMarker trafficPolicyIdCodec
        |> Codec.field "MaxItems" .maxItems Codec.string
        |> Codec.buildObject


{-| Codec for ListTagsForResourcesResponse. -}
listTagsForResourcesResponseCodec : Codec ListTagsForResourcesResponse
listTagsForResourcesResponseCodec =
    Codec.object ListTagsForResourcesResponse
        |> Codec.field "ResourceTagSets" .resourceTagSets resourceTagSetListCodec
        |> Codec.buildObject


{-| Codec for ListTagsForResourcesRequest. -}
listTagsForResourcesRequestCodec : Codec ListTagsForResourcesRequest
listTagsForResourcesRequestCodec =
    Codec.object ListTagsForResourcesRequest
        |> Codec.field "ResourceType" .resourceType tagResourceTypeCodec
        |> Codec.field "ResourceIds" .resourceIds tagResourceIdListCodec
        |> Codec.buildObject


{-| Codec for ListTagsForResourceResponse. -}
listTagsForResourceResponseCodec : Codec ListTagsForResourceResponse
listTagsForResourceResponseCodec =
    Codec.object ListTagsForResourceResponse
        |> Codec.field "ResourceTagSet" .resourceTagSet resourceTagSetCodec
        |> Codec.buildObject


{-| Codec for ListTagsForResourceRequest. -}
listTagsForResourceRequestCodec : Codec ListTagsForResourceRequest
listTagsForResourceRequestCodec =
    Codec.object ListTagsForResourceRequest
        |> Codec.field "ResourceType" .resourceType tagResourceTypeCodec
        |> Codec.field "ResourceId" .resourceId tagResourceIdCodec
        |> Codec.buildObject


{-| Codec for ListReusableDelegationSetsResponse. -}
listReusableDelegationSetsResponseCodec : Codec ListReusableDelegationSetsResponse
listReusableDelegationSetsResponseCodec =
    Codec.object ListReusableDelegationSetsResponse
        |> Codec.field "NextMarker" .nextMarker pageMarkerCodec
        |> Codec.field "MaxItems" .maxItems Codec.string
        |> Codec.field "Marker" .marker pageMarkerCodec
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.field "DelegationSets" .delegationSets delegationSetsCodec
        |> Codec.buildObject


{-| Codec for ListReusableDelegationSetsRequest. -}
listReusableDelegationSetsRequestCodec : Codec ListReusableDelegationSetsRequest
listReusableDelegationSetsRequestCodec =
    Codec.object ListReusableDelegationSetsRequest
        |> Codec.field "MaxItems" .maxItems Codec.string
        |> Codec.field "Marker" .marker pageMarkerCodec
        |> Codec.buildObject


{-| Codec for ListResourceRecordSetsResponse. -}
listResourceRecordSetsResponseCodec : Codec ListResourceRecordSetsResponse
listResourceRecordSetsResponseCodec =
    Codec.object ListResourceRecordSetsResponse
        |> Codec.field "ResourceRecordSets" .resourceRecordSets resourceRecordSetsCodec
        |> Codec.field "NextRecordType" .nextRecordType rrtypeCodec
        |> Codec.field "NextRecordName" .nextRecordName dnsnameCodec
        |> Codec.field "NextRecordIdentifier" .nextRecordIdentifier resourceRecordSetIdentifierCodec
        |> Codec.field "MaxItems" .maxItems Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.buildObject


{-| Codec for ListResourceRecordSetsRequest. -}
listResourceRecordSetsRequestCodec : Codec ListResourceRecordSetsRequest
listResourceRecordSetsRequestCodec =
    Codec.object ListResourceRecordSetsRequest
        |> Codec.field "StartRecordType" .startRecordType rrtypeCodec
        |> Codec.field "StartRecordName" .startRecordName dnsnameCodec
        |> Codec.field "StartRecordIdentifier" .startRecordIdentifier resourceRecordSetIdentifierCodec
        |> Codec.field "MaxItems" .maxItems Codec.string
        |> Codec.field "HostedZoneId" .hostedZoneId resourceIdCodec
        |> Codec.buildObject


{-| Codec for ListQueryLoggingConfigsResponse. -}
listQueryLoggingConfigsResponseCodec : Codec ListQueryLoggingConfigsResponse
listQueryLoggingConfigsResponseCodec =
    Codec.object ListQueryLoggingConfigsResponse
        |> Codec.field "QueryLoggingConfigs" .queryLoggingConfigs queryLoggingConfigsCodec
        |> Codec.field "NextToken" .nextToken paginationTokenCodec
        |> Codec.buildObject


{-| Codec for ListQueryLoggingConfigsRequest. -}
listQueryLoggingConfigsRequestCodec : Codec ListQueryLoggingConfigsRequest
listQueryLoggingConfigsRequestCodec =
    Codec.object ListQueryLoggingConfigsRequest
        |> Codec.field "NextToken" .nextToken paginationTokenCodec
        |> Codec.field "MaxResults" .maxResults Codec.string
        |> Codec.field "HostedZoneId" .hostedZoneId resourceIdCodec
        |> Codec.buildObject


{-| Codec for ListHostedZonesResponse. -}
listHostedZonesResponseCodec : Codec ListHostedZonesResponse
listHostedZonesResponseCodec =
    Codec.object ListHostedZonesResponse
        |> Codec.field "NextMarker" .nextMarker pageMarkerCodec
        |> Codec.field "MaxItems" .maxItems Codec.string
        |> Codec.field "Marker" .marker pageMarkerCodec
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.field "HostedZones" .hostedZones hostedZonesCodec
        |> Codec.buildObject


{-| Codec for ListHostedZonesRequest. -}
listHostedZonesRequestCodec : Codec ListHostedZonesRequest
listHostedZonesRequestCodec =
    Codec.object ListHostedZonesRequest
        |> Codec.field "MaxItems" .maxItems Codec.string
        |> Codec.field "Marker" .marker pageMarkerCodec
        |> Codec.field "DelegationSetId" .delegationSetId resourceIdCodec
        |> Codec.buildObject


{-| Codec for ListHostedZonesByNameResponse. -}
listHostedZonesByNameResponseCodec : Codec ListHostedZonesByNameResponse
listHostedZonesByNameResponseCodec =
    Codec.object ListHostedZonesByNameResponse
        |> Codec.field "NextHostedZoneId" .nextHostedZoneId resourceIdCodec
        |> Codec.field "NextDNSName" .nextDnsname dnsnameCodec
        |> Codec.field "MaxItems" .maxItems Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.field "HostedZones" .hostedZones hostedZonesCodec
        |> Codec.field "HostedZoneId" .hostedZoneId resourceIdCodec
        |> Codec.field "DNSName" .dnsname dnsnameCodec
        |> Codec.buildObject


{-| Codec for ListHostedZonesByNameRequest. -}
listHostedZonesByNameRequestCodec : Codec ListHostedZonesByNameRequest
listHostedZonesByNameRequestCodec =
    Codec.object ListHostedZonesByNameRequest
        |> Codec.field "MaxItems" .maxItems Codec.string
        |> Codec.field "HostedZoneId" .hostedZoneId resourceIdCodec
        |> Codec.field "DNSName" .dnsname dnsnameCodec
        |> Codec.buildObject


{-| Codec for ListHealthChecksResponse. -}
listHealthChecksResponseCodec : Codec ListHealthChecksResponse
listHealthChecksResponseCodec =
    Codec.object ListHealthChecksResponse
        |> Codec.field "NextMarker" .nextMarker pageMarkerCodec
        |> Codec.field "MaxItems" .maxItems Codec.string
        |> Codec.field "Marker" .marker pageMarkerCodec
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.field "HealthChecks" .healthChecks healthChecksCodec
        |> Codec.buildObject


{-| Codec for ListHealthChecksRequest. -}
listHealthChecksRequestCodec : Codec ListHealthChecksRequest
listHealthChecksRequestCodec =
    Codec.object ListHealthChecksRequest
        |> Codec.field "MaxItems" .maxItems Codec.string
        |> Codec.field "Marker" .marker pageMarkerCodec
        |> Codec.buildObject


{-| Codec for ListGeoLocationsResponse. -}
listGeoLocationsResponseCodec : Codec ListGeoLocationsResponse
listGeoLocationsResponseCodec =
    Codec.object ListGeoLocationsResponse
        |> Codec.field "NextSubdivisionCode" .nextSubdivisionCode geoLocationSubdivisionCodeCodec
        |> Codec.field "NextCountryCode" .nextCountryCode geoLocationCountryCodeCodec
        |> Codec.field "NextContinentCode" .nextContinentCode geoLocationContinentCodeCodec
        |> Codec.field "MaxItems" .maxItems Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.field "GeoLocationDetailsList" .geoLocationDetailsList geoLocationDetailsListCodec
        |> Codec.buildObject


{-| Codec for ListGeoLocationsRequest. -}
listGeoLocationsRequestCodec : Codec ListGeoLocationsRequest
listGeoLocationsRequestCodec =
    Codec.object ListGeoLocationsRequest
        |> Codec.field "StartSubdivisionCode" .startSubdivisionCode geoLocationSubdivisionCodeCodec
        |> Codec.field "StartCountryCode" .startCountryCode geoLocationCountryCodeCodec
        |> Codec.field "StartContinentCode" .startContinentCode geoLocationContinentCodeCodec
        |> Codec.field "MaxItems" .maxItems Codec.string
        |> Codec.buildObject


{-| Codec for LinkedService. -}
linkedServiceCodec : Codec LinkedService
linkedServiceCodec =
    Codec.object LinkedService
        |> Codec.field "ServicePrincipal" .servicePrincipal servicePrincipalCodec
        |> Codec.field "Description" .description resourceDescriptionCodec
        |> Codec.buildObject


{-| Codec for LimitValue. -}
limitValueCodec : Codec LimitValue
limitValueCodec =
    Codec.int


{-| Codec for IsPrivateZone. -}
isPrivateZoneCodec : Codec IsPrivateZone
isPrivateZoneCodec =
    Codec.bool


{-| Codec for Inverted. -}
invertedCodec : Codec Inverted
invertedCodec =
    Codec.bool


{-| Codec for InsufficientDataHealthStatus. -}
insufficientDataHealthStatusCodec : Codec InsufficientDataHealthStatus
insufficientDataHealthStatusCodec =
    Codec.build (Enum.encoder insufficientDataHealthStatus) (Enum.decoder insufficientDataHealthStatus)


{-| Codec for IpaddressCidr. -}
ipaddressCidrCodec : Codec IpaddressCidr
ipaddressCidrCodec =
    Codec.string


{-| Codec for Ipaddress. -}
ipaddressCodec : Codec Ipaddress
ipaddressCodec =
    Codec.build (Refined.encoder ipaddress) (Refined.decoder ipaddress)


{-| Codec for HostedZones. -}
hostedZonesCodec : Codec HostedZones
hostedZonesCodec =
    Codec.list hostedZoneCodec


{-| Codec for HostedZoneRrsetCount. -}
hostedZoneRrsetCountCodec : Codec HostedZoneRrsetCount
hostedZoneRrsetCountCodec =
    Codec.int


{-| Codec for HostedZoneLimitType. -}
hostedZoneLimitTypeCodec : Codec HostedZoneLimitType
hostedZoneLimitTypeCodec =
    Codec.build (Enum.encoder hostedZoneLimitType) (Enum.decoder hostedZoneLimitType)


{-| Codec for HostedZoneLimit. -}
hostedZoneLimitCodec : Codec HostedZoneLimit
hostedZoneLimitCodec =
    Codec.object HostedZoneLimit
        |> Codec.field "Value" .value Codec.int
        |> Codec.field "Type" .type_ hostedZoneLimitTypeCodec
        |> Codec.buildObject


{-| Codec for HostedZoneCount. -}
hostedZoneCountCodec : Codec HostedZoneCount
hostedZoneCountCodec =
    Codec.int


{-| Codec for HostedZoneConfig. -}
hostedZoneConfigCodec : Codec HostedZoneConfig
hostedZoneConfigCodec =
    Codec.object HostedZoneConfig
        |> Codec.field "PrivateZone" .privateZone Codec.bool
        |> Codec.field "Comment" .comment resourceDescriptionCodec
        |> Codec.buildObject


{-| Codec for HostedZone. -}
hostedZoneCodec : Codec HostedZone
hostedZoneCodec =
    Codec.object HostedZone
        |> Codec.field "ResourceRecordSetCount" .resourceRecordSetCount Codec.int
        |> Codec.field "Name" .name dnsnameCodec
        |> Codec.field "LinkedService" .linkedService linkedServiceCodec
        |> Codec.field "Id" .id resourceIdCodec
        |> Codec.field "Config" .config hostedZoneConfigCodec
        |> Codec.field "CallerReference" .callerReference nonceCodec
        |> Codec.buildObject


{-| Codec for HealthThreshold. -}
healthThresholdCodec : Codec HealthThreshold
healthThresholdCodec =
    Codec.build (Refined.encoder healthThreshold) (Refined.decoder healthThreshold)


{-| Codec for HealthChecks. -}
healthChecksCodec : Codec HealthChecks
healthChecksCodec =
    Codec.list healthCheckCodec


{-| Codec for HealthCheckVersion. -}
healthCheckVersionCodec : Codec HealthCheckVersion
healthCheckVersionCodec =
    Codec.int


{-| Codec for HealthCheckType. -}
healthCheckTypeCodec : Codec HealthCheckType
healthCheckTypeCodec =
    Codec.build (Enum.encoder healthCheckType) (Enum.decoder healthCheckType)


{-| Codec for HealthCheckRegionList. -}
healthCheckRegionListCodec : Codec HealthCheckRegionList
healthCheckRegionListCodec =
    Codec.list Codec.string


{-| Codec for HealthCheckRegion. -}
healthCheckRegionCodec : Codec HealthCheckRegion
healthCheckRegionCodec =
    Codec.string


{-| Codec for HealthCheckObservations. -}
healthCheckObservationsCodec : Codec HealthCheckObservations
healthCheckObservationsCodec =
    Codec.list healthCheckObservationCodec


{-| Codec for HealthCheckObservation. -}
healthCheckObservationCodec : Codec HealthCheckObservation
healthCheckObservationCodec =
    Codec.object HealthCheckObservation
        |> Codec.field "StatusReport" .statusReport statusReportCodec
        |> Codec.field "Region" .region Codec.string
        |> Codec.field "IPAddress" .ipaddress ipaddressCodec
        |> Codec.buildObject


{-| Codec for HealthCheckNonce. -}
healthCheckNonceCodec : Codec HealthCheckNonce
healthCheckNonceCodec =
    Codec.build (Refined.encoder healthCheckNonce) (Refined.decoder healthCheckNonce)


{-| Codec for HealthCheckId. -}
healthCheckIdCodec : Codec HealthCheckId
healthCheckIdCodec =
    Codec.build (Refined.encoder healthCheckId) (Refined.decoder healthCheckId)


{-| Codec for HealthCheckCount. -}
healthCheckCountCodec : Codec HealthCheckCount
healthCheckCountCodec =
    Codec.int


{-| Codec for HealthCheckConfig. -}
healthCheckConfigCodec : Codec HealthCheckConfig
healthCheckConfigCodec =
    Codec.object HealthCheckConfig
        |> Codec.field "Type" .type_ healthCheckTypeCodec
        |> Codec.field "SearchString" .searchString searchStringCodec
        |> Codec.field "ResourcePath" .resourcePath resourcePathCodec
        |> Codec.field "RequestInterval" .requestInterval requestIntervalCodec
        |> Codec.field "Regions" .regions healthCheckRegionListCodec
        |> Codec.field "Port" .port portCodec
        |> Codec.field "MeasureLatency" .measureLatency Codec.bool
        |> Codec.field "Inverted" .inverted Codec.bool
        |> Codec.field "InsufficientDataHealthStatus" .insufficientDataHealthStatus insufficientDataHealthStatusCodec
        |> Codec.field "IPAddress" .ipaddress ipaddressCodec
        |> Codec.field "HealthThreshold" .healthThreshold healthThresholdCodec
        |> Codec.field "FullyQualifiedDomainName" .fullyQualifiedDomainName fullyQualifiedDomainNameCodec
        |> Codec.field "FailureThreshold" .failureThreshold failureThresholdCodec
        |> Codec.field "EnableSNI" .enableSni Codec.bool
        |> Codec.field "Disabled" .disabled Codec.bool
        |> Codec.field "ChildHealthChecks" .childHealthChecks childHealthCheckListCodec
        |> Codec.field "AlarmIdentifier" .alarmIdentifier alarmIdentifierCodec
        |> Codec.buildObject


{-| Codec for HealthCheck. -}
healthCheckCodec : Codec HealthCheck
healthCheckCodec =
    Codec.object HealthCheck
        |> Codec.field "LinkedService" .linkedService linkedServiceCodec
        |> Codec.field "Id" .id healthCheckIdCodec
        |> Codec.field "HealthCheckVersion" .healthCheckVersion Codec.int
        |> Codec.field "HealthCheckConfig" .healthCheckConfig healthCheckConfigCodec
        |> Codec.field "CloudWatchAlarmConfiguration" .cloudWatchAlarmConfiguration cloudWatchAlarmConfigurationCodec
        |> Codec.field "CallerReference" .callerReference healthCheckNonceCodec
        |> Codec.buildObject


{-| Codec for GetTrafficPolicyResponse. -}
getTrafficPolicyResponseCodec : Codec GetTrafficPolicyResponse
getTrafficPolicyResponseCodec =
    Codec.object GetTrafficPolicyResponse
        |> Codec.field "TrafficPolicy" .trafficPolicy trafficPolicyCodec
        |> Codec.buildObject


{-| Codec for GetTrafficPolicyRequest. -}
getTrafficPolicyRequestCodec : Codec GetTrafficPolicyRequest
getTrafficPolicyRequestCodec =
    Codec.object GetTrafficPolicyRequest
        |> Codec.field "Version" .version trafficPolicyVersionCodec
        |> Codec.field "Id" .id trafficPolicyIdCodec
        |> Codec.buildObject


{-| Codec for GetTrafficPolicyInstanceResponse. -}
getTrafficPolicyInstanceResponseCodec : Codec GetTrafficPolicyInstanceResponse
getTrafficPolicyInstanceResponseCodec =
    Codec.object GetTrafficPolicyInstanceResponse
        |> Codec.field "TrafficPolicyInstance" .trafficPolicyInstance trafficPolicyInstanceCodec
        |> Codec.buildObject


{-| Codec for GetTrafficPolicyInstanceRequest. -}
getTrafficPolicyInstanceRequestCodec : Codec GetTrafficPolicyInstanceRequest
getTrafficPolicyInstanceRequestCodec =
    Codec.object GetTrafficPolicyInstanceRequest
        |> Codec.field "Id" .id trafficPolicyInstanceIdCodec
        |> Codec.buildObject


{-| Codec for GetTrafficPolicyInstanceCountResponse. -}
getTrafficPolicyInstanceCountResponseCodec : Codec GetTrafficPolicyInstanceCountResponse
getTrafficPolicyInstanceCountResponseCodec =
    Codec.object GetTrafficPolicyInstanceCountResponse
        |> Codec.field "TrafficPolicyInstanceCount" .trafficPolicyInstanceCount Codec.int
        |> Codec.buildObject


{-| Codec for GetTrafficPolicyInstanceCountRequest. -}
getTrafficPolicyInstanceCountRequestCodec : Codec GetTrafficPolicyInstanceCountRequest
getTrafficPolicyInstanceCountRequestCodec =
    Codec.object GetTrafficPolicyInstanceCountRequest |> Codec.buildObject


{-| Codec for GetReusableDelegationSetResponse. -}
getReusableDelegationSetResponseCodec : Codec GetReusableDelegationSetResponse
getReusableDelegationSetResponseCodec =
    Codec.object GetReusableDelegationSetResponse
        |> Codec.field "DelegationSet" .delegationSet delegationSetCodec
        |> Codec.buildObject


{-| Codec for GetReusableDelegationSetRequest. -}
getReusableDelegationSetRequestCodec : Codec GetReusableDelegationSetRequest
getReusableDelegationSetRequestCodec =
    Codec.object GetReusableDelegationSetRequest |> Codec.field "Id" .id resourceIdCodec |> Codec.buildObject


{-| Codec for GetReusableDelegationSetLimitResponse. -}
getReusableDelegationSetLimitResponseCodec : Codec GetReusableDelegationSetLimitResponse
getReusableDelegationSetLimitResponseCodec =
    Codec.object GetReusableDelegationSetLimitResponse
        |> Codec.field "Limit" .limit reusableDelegationSetLimitCodec
        |> Codec.field "Count" .count Codec.int
        |> Codec.buildObject


{-| Codec for GetReusableDelegationSetLimitRequest. -}
getReusableDelegationSetLimitRequestCodec : Codec GetReusableDelegationSetLimitRequest
getReusableDelegationSetLimitRequestCodec =
    Codec.object GetReusableDelegationSetLimitRequest
        |> Codec.field "Type" .type_ reusableDelegationSetLimitTypeCodec
        |> Codec.field "DelegationSetId" .delegationSetId resourceIdCodec
        |> Codec.buildObject


{-| Codec for GetQueryLoggingConfigResponse. -}
getQueryLoggingConfigResponseCodec : Codec GetQueryLoggingConfigResponse
getQueryLoggingConfigResponseCodec =
    Codec.object GetQueryLoggingConfigResponse
        |> Codec.field "QueryLoggingConfig" .queryLoggingConfig queryLoggingConfigCodec
        |> Codec.buildObject


{-| Codec for GetQueryLoggingConfigRequest. -}
getQueryLoggingConfigRequestCodec : Codec GetQueryLoggingConfigRequest
getQueryLoggingConfigRequestCodec =
    Codec.object GetQueryLoggingConfigRequest |> Codec.field "Id" .id queryLoggingConfigIdCodec |> Codec.buildObject


{-| Codec for GetHostedZoneResponse. -}
getHostedZoneResponseCodec : Codec GetHostedZoneResponse
getHostedZoneResponseCodec =
    Codec.object GetHostedZoneResponse
        |> Codec.field "VPCs" .vpcs vpcsCodec
        |> Codec.field "HostedZone" .hostedZone hostedZoneCodec
        |> Codec.field "DelegationSet" .delegationSet delegationSetCodec
        |> Codec.buildObject


{-| Codec for GetHostedZoneRequest. -}
getHostedZoneRequestCodec : Codec GetHostedZoneRequest
getHostedZoneRequestCodec =
    Codec.object GetHostedZoneRequest |> Codec.field "Id" .id resourceIdCodec |> Codec.buildObject


{-| Codec for GetHostedZoneLimitResponse. -}
getHostedZoneLimitResponseCodec : Codec GetHostedZoneLimitResponse
getHostedZoneLimitResponseCodec =
    Codec.object GetHostedZoneLimitResponse
        |> Codec.field "Limit" .limit hostedZoneLimitCodec
        |> Codec.field "Count" .count Codec.int
        |> Codec.buildObject


{-| Codec for GetHostedZoneLimitRequest. -}
getHostedZoneLimitRequestCodec : Codec GetHostedZoneLimitRequest
getHostedZoneLimitRequestCodec =
    Codec.object GetHostedZoneLimitRequest
        |> Codec.field "Type" .type_ hostedZoneLimitTypeCodec
        |> Codec.field "HostedZoneId" .hostedZoneId resourceIdCodec
        |> Codec.buildObject


{-| Codec for GetHostedZoneCountResponse. -}
getHostedZoneCountResponseCodec : Codec GetHostedZoneCountResponse
getHostedZoneCountResponseCodec =
    Codec.object GetHostedZoneCountResponse
        |> Codec.field "HostedZoneCount" .hostedZoneCount Codec.int
        |> Codec.buildObject


{-| Codec for GetHostedZoneCountRequest. -}
getHostedZoneCountRequestCodec : Codec GetHostedZoneCountRequest
getHostedZoneCountRequestCodec =
    Codec.object GetHostedZoneCountRequest |> Codec.buildObject


{-| Codec for GetHealthCheckStatusResponse. -}
getHealthCheckStatusResponseCodec : Codec GetHealthCheckStatusResponse
getHealthCheckStatusResponseCodec =
    Codec.object GetHealthCheckStatusResponse
        |> Codec.field "HealthCheckObservations" .healthCheckObservations healthCheckObservationsCodec
        |> Codec.buildObject


{-| Codec for GetHealthCheckStatusRequest. -}
getHealthCheckStatusRequestCodec : Codec GetHealthCheckStatusRequest
getHealthCheckStatusRequestCodec =
    Codec.object GetHealthCheckStatusRequest
        |> Codec.field "HealthCheckId" .healthCheckId healthCheckIdCodec
        |> Codec.buildObject


{-| Codec for GetHealthCheckResponse. -}
getHealthCheckResponseCodec : Codec GetHealthCheckResponse
getHealthCheckResponseCodec =
    Codec.object GetHealthCheckResponse |> Codec.field "HealthCheck" .healthCheck healthCheckCodec |> Codec.buildObject


{-| Codec for GetHealthCheckRequest. -}
getHealthCheckRequestCodec : Codec GetHealthCheckRequest
getHealthCheckRequestCodec =
    Codec.object GetHealthCheckRequest
        |> Codec.field "HealthCheckId" .healthCheckId healthCheckIdCodec
        |> Codec.buildObject


{-| Codec for GetHealthCheckLastFailureReasonResponse. -}
getHealthCheckLastFailureReasonResponseCodec : Codec GetHealthCheckLastFailureReasonResponse
getHealthCheckLastFailureReasonResponseCodec =
    Codec.object GetHealthCheckLastFailureReasonResponse
        |> Codec.field "HealthCheckObservations" .healthCheckObservations healthCheckObservationsCodec
        |> Codec.buildObject


{-| Codec for GetHealthCheckLastFailureReasonRequest. -}
getHealthCheckLastFailureReasonRequestCodec : Codec GetHealthCheckLastFailureReasonRequest
getHealthCheckLastFailureReasonRequestCodec =
    Codec.object GetHealthCheckLastFailureReasonRequest
        |> Codec.field "HealthCheckId" .healthCheckId healthCheckIdCodec
        |> Codec.buildObject


{-| Codec for GetHealthCheckCountResponse. -}
getHealthCheckCountResponseCodec : Codec GetHealthCheckCountResponse
getHealthCheckCountResponseCodec =
    Codec.object GetHealthCheckCountResponse
        |> Codec.field "HealthCheckCount" .healthCheckCount Codec.int
        |> Codec.buildObject


{-| Codec for GetHealthCheckCountRequest. -}
getHealthCheckCountRequestCodec : Codec GetHealthCheckCountRequest
getHealthCheckCountRequestCodec =
    Codec.object GetHealthCheckCountRequest |> Codec.buildObject


{-| Codec for GetGeoLocationResponse. -}
getGeoLocationResponseCodec : Codec GetGeoLocationResponse
getGeoLocationResponseCodec =
    Codec.object GetGeoLocationResponse
        |> Codec.field "GeoLocationDetails" .geoLocationDetails geoLocationDetailsCodec
        |> Codec.buildObject


{-| Codec for GetGeoLocationRequest. -}
getGeoLocationRequestCodec : Codec GetGeoLocationRequest
getGeoLocationRequestCodec =
    Codec.object GetGeoLocationRequest
        |> Codec.field "SubdivisionCode" .subdivisionCode geoLocationSubdivisionCodeCodec
        |> Codec.field "CountryCode" .countryCode geoLocationCountryCodeCodec
        |> Codec.field "ContinentCode" .continentCode geoLocationContinentCodeCodec
        |> Codec.buildObject


{-| Codec for GetCheckerIpRangesResponse. -}
getCheckerIpRangesResponseCodec : Codec GetCheckerIpRangesResponse
getCheckerIpRangesResponseCodec =
    Codec.object GetCheckerIpRangesResponse
        |> Codec.field "CheckerIpRanges" .checkerIpRanges checkerIpRangesCodec
        |> Codec.buildObject


{-| Codec for GetCheckerIpRangesRequest. -}
getCheckerIpRangesRequestCodec : Codec GetCheckerIpRangesRequest
getCheckerIpRangesRequestCodec =
    Codec.object GetCheckerIpRangesRequest |> Codec.buildObject


{-| Codec for GetChangeResponse. -}
getChangeResponseCodec : Codec GetChangeResponse
getChangeResponseCodec =
    Codec.object GetChangeResponse |> Codec.field "ChangeInfo" .changeInfo changeInfoCodec |> Codec.buildObject


{-| Codec for GetChangeRequest. -}
getChangeRequestCodec : Codec GetChangeRequest
getChangeRequestCodec =
    Codec.object GetChangeRequest |> Codec.field "Id" .id resourceIdCodec |> Codec.buildObject


{-| Codec for GetAccountLimitResponse. -}
getAccountLimitResponseCodec : Codec GetAccountLimitResponse
getAccountLimitResponseCodec =
    Codec.object GetAccountLimitResponse
        |> Codec.field "Limit" .limit accountLimitCodec
        |> Codec.field "Count" .count Codec.int
        |> Codec.buildObject


{-| Codec for GetAccountLimitRequest. -}
getAccountLimitRequestCodec : Codec GetAccountLimitRequest
getAccountLimitRequestCodec =
    Codec.object GetAccountLimitRequest |> Codec.field "Type" .type_ accountLimitTypeCodec |> Codec.buildObject


{-| Codec for GeoLocationSubdivisionName. -}
geoLocationSubdivisionNameCodec : Codec GeoLocationSubdivisionName
geoLocationSubdivisionNameCodec =
    Codec.build (Refined.encoder geoLocationSubdivisionName) (Refined.decoder geoLocationSubdivisionName)


{-| Codec for GeoLocationSubdivisionCode. -}
geoLocationSubdivisionCodeCodec : Codec GeoLocationSubdivisionCode
geoLocationSubdivisionCodeCodec =
    Codec.build (Refined.encoder geoLocationSubdivisionCode) (Refined.decoder geoLocationSubdivisionCode)


{-| Codec for GeoLocationDetailsList. -}
geoLocationDetailsListCodec : Codec GeoLocationDetailsList
geoLocationDetailsListCodec =
    Codec.list geoLocationDetailsCodec


{-| Codec for GeoLocationDetails. -}
geoLocationDetailsCodec : Codec GeoLocationDetails
geoLocationDetailsCodec =
    Codec.object GeoLocationDetails
        |> Codec.field "SubdivisionName" .subdivisionName geoLocationSubdivisionNameCodec
        |> Codec.field "SubdivisionCode" .subdivisionCode geoLocationSubdivisionCodeCodec
        |> Codec.field "CountryName" .countryName geoLocationCountryNameCodec
        |> Codec.field "CountryCode" .countryCode geoLocationCountryCodeCodec
        |> Codec.field "ContinentName" .continentName geoLocationContinentNameCodec
        |> Codec.field "ContinentCode" .continentCode geoLocationContinentCodeCodec
        |> Codec.buildObject


{-| Codec for GeoLocationCountryName. -}
geoLocationCountryNameCodec : Codec GeoLocationCountryName
geoLocationCountryNameCodec =
    Codec.build (Refined.encoder geoLocationCountryName) (Refined.decoder geoLocationCountryName)


{-| Codec for GeoLocationCountryCode. -}
geoLocationCountryCodeCodec : Codec GeoLocationCountryCode
geoLocationCountryCodeCodec =
    Codec.build (Refined.encoder geoLocationCountryCode) (Refined.decoder geoLocationCountryCode)


{-| Codec for GeoLocationContinentName. -}
geoLocationContinentNameCodec : Codec GeoLocationContinentName
geoLocationContinentNameCodec =
    Codec.build (Refined.encoder geoLocationContinentName) (Refined.decoder geoLocationContinentName)


{-| Codec for GeoLocationContinentCode. -}
geoLocationContinentCodeCodec : Codec GeoLocationContinentCode
geoLocationContinentCodeCodec =
    Codec.build (Refined.encoder geoLocationContinentCode) (Refined.decoder geoLocationContinentCode)


{-| Codec for GeoLocation. -}
geoLocationCodec : Codec GeoLocation
geoLocationCodec =
    Codec.object GeoLocation
        |> Codec.field "SubdivisionCode" .subdivisionCode geoLocationSubdivisionCodeCodec
        |> Codec.field "CountryCode" .countryCode geoLocationCountryCodeCodec
        |> Codec.field "ContinentCode" .continentCode geoLocationContinentCodeCodec
        |> Codec.buildObject


{-| Codec for FullyQualifiedDomainName. -}
fullyQualifiedDomainNameCodec : Codec FullyQualifiedDomainName
fullyQualifiedDomainNameCodec =
    Codec.build (Refined.encoder fullyQualifiedDomainName) (Refined.decoder fullyQualifiedDomainName)


{-| Codec for FailureThreshold. -}
failureThresholdCodec : Codec FailureThreshold
failureThresholdCodec =
    Codec.build (Refined.encoder failureThreshold) (Refined.decoder failureThreshold)


{-| Codec for EvaluationPeriods. -}
evaluationPeriodsCodec : Codec EvaluationPeriods
evaluationPeriodsCodec =
    Codec.build (Refined.encoder evaluationPeriods) (Refined.decoder evaluationPeriods)


{-| Codec for EnableSni. -}
enableSnicodec : Codec EnableSni
enableSnicodec =
    Codec.bool


{-| Codec for DisassociateVpcfromHostedZoneResponse. -}
disassociateVpcfromHostedZoneResponseCodec : Codec DisassociateVpcfromHostedZoneResponse
disassociateVpcfromHostedZoneResponseCodec =
    Codec.object DisassociateVpcfromHostedZoneResponse
        |> Codec.field "ChangeInfo" .changeInfo changeInfoCodec
        |> Codec.buildObject


{-| Codec for DisassociateVpcfromHostedZoneRequest. -}
disassociateVpcfromHostedZoneRequestCodec : Codec DisassociateVpcfromHostedZoneRequest
disassociateVpcfromHostedZoneRequestCodec =
    Codec.object DisassociateVpcfromHostedZoneRequest
        |> Codec.field "VPC" .vpc vpccodec
        |> Codec.field "HostedZoneId" .hostedZoneId resourceIdCodec
        |> Codec.field "Comment" .comment Codec.string
        |> Codec.buildObject


{-| Codec for DisassociateVpccomment. -}
disassociateVpccommentCodec : Codec DisassociateVpccomment
disassociateVpccommentCodec =
    Codec.string


{-| Codec for Disabled. -}
disabledCodec : Codec Disabled
disabledCodec =
    Codec.bool


{-| Codec for DimensionList. -}
dimensionListCodec : Codec DimensionList
dimensionListCodec =
    Codec.list dimensionCodec


{-| Codec for DimensionField. -}
dimensionFieldCodec : Codec DimensionField
dimensionFieldCodec =
    Codec.build (Refined.encoder dimensionField) (Refined.decoder dimensionField)


{-| Codec for Dimension. -}
dimensionCodec : Codec Dimension
dimensionCodec =
    Codec.object Dimension
        |> Codec.field "Value" .value dimensionFieldCodec
        |> Codec.field "Name" .name dimensionFieldCodec
        |> Codec.buildObject


{-| Codec for DeleteVpcassociationAuthorizationResponse. -}
deleteVpcassociationAuthorizationResponseCodec : Codec DeleteVpcassociationAuthorizationResponse
deleteVpcassociationAuthorizationResponseCodec =
    Codec.object DeleteVpcassociationAuthorizationResponse |> Codec.buildObject


{-| Codec for DeleteVpcassociationAuthorizationRequest. -}
deleteVpcassociationAuthorizationRequestCodec : Codec DeleteVpcassociationAuthorizationRequest
deleteVpcassociationAuthorizationRequestCodec =
    Codec.object DeleteVpcassociationAuthorizationRequest
        |> Codec.field "VPC" .vpc vpccodec
        |> Codec.field "HostedZoneId" .hostedZoneId resourceIdCodec
        |> Codec.buildObject


{-| Codec for DeleteTrafficPolicyResponse. -}
deleteTrafficPolicyResponseCodec : Codec DeleteTrafficPolicyResponse
deleteTrafficPolicyResponseCodec =
    Codec.object DeleteTrafficPolicyResponse |> Codec.buildObject


{-| Codec for DeleteTrafficPolicyRequest. -}
deleteTrafficPolicyRequestCodec : Codec DeleteTrafficPolicyRequest
deleteTrafficPolicyRequestCodec =
    Codec.object DeleteTrafficPolicyRequest
        |> Codec.field "Version" .version trafficPolicyVersionCodec
        |> Codec.field "Id" .id trafficPolicyIdCodec
        |> Codec.buildObject


{-| Codec for DeleteTrafficPolicyInstanceResponse. -}
deleteTrafficPolicyInstanceResponseCodec : Codec DeleteTrafficPolicyInstanceResponse
deleteTrafficPolicyInstanceResponseCodec =
    Codec.object DeleteTrafficPolicyInstanceResponse |> Codec.buildObject


{-| Codec for DeleteTrafficPolicyInstanceRequest. -}
deleteTrafficPolicyInstanceRequestCodec : Codec DeleteTrafficPolicyInstanceRequest
deleteTrafficPolicyInstanceRequestCodec =
    Codec.object DeleteTrafficPolicyInstanceRequest
        |> Codec.field "Id" .id trafficPolicyInstanceIdCodec
        |> Codec.buildObject


{-| Codec for DeleteReusableDelegationSetResponse. -}
deleteReusableDelegationSetResponseCodec : Codec DeleteReusableDelegationSetResponse
deleteReusableDelegationSetResponseCodec =
    Codec.object DeleteReusableDelegationSetResponse |> Codec.buildObject


{-| Codec for DeleteReusableDelegationSetRequest. -}
deleteReusableDelegationSetRequestCodec : Codec DeleteReusableDelegationSetRequest
deleteReusableDelegationSetRequestCodec =
    Codec.object DeleteReusableDelegationSetRequest |> Codec.field "Id" .id resourceIdCodec |> Codec.buildObject


{-| Codec for DeleteQueryLoggingConfigResponse. -}
deleteQueryLoggingConfigResponseCodec : Codec DeleteQueryLoggingConfigResponse
deleteQueryLoggingConfigResponseCodec =
    Codec.object DeleteQueryLoggingConfigResponse |> Codec.buildObject


{-| Codec for DeleteQueryLoggingConfigRequest. -}
deleteQueryLoggingConfigRequestCodec : Codec DeleteQueryLoggingConfigRequest
deleteQueryLoggingConfigRequestCodec =
    Codec.object DeleteQueryLoggingConfigRequest |> Codec.field "Id" .id queryLoggingConfigIdCodec |> Codec.buildObject


{-| Codec for DeleteHostedZoneResponse. -}
deleteHostedZoneResponseCodec : Codec DeleteHostedZoneResponse
deleteHostedZoneResponseCodec =
    Codec.object DeleteHostedZoneResponse |> Codec.field "ChangeInfo" .changeInfo changeInfoCodec |> Codec.buildObject


{-| Codec for DeleteHostedZoneRequest. -}
deleteHostedZoneRequestCodec : Codec DeleteHostedZoneRequest
deleteHostedZoneRequestCodec =
    Codec.object DeleteHostedZoneRequest |> Codec.field "Id" .id resourceIdCodec |> Codec.buildObject


{-| Codec for DeleteHealthCheckResponse. -}
deleteHealthCheckResponseCodec : Codec DeleteHealthCheckResponse
deleteHealthCheckResponseCodec =
    Codec.object DeleteHealthCheckResponse |> Codec.buildObject


{-| Codec for DeleteHealthCheckRequest. -}
deleteHealthCheckRequestCodec : Codec DeleteHealthCheckRequest
deleteHealthCheckRequestCodec =
    Codec.object DeleteHealthCheckRequest
        |> Codec.field "HealthCheckId" .healthCheckId healthCheckIdCodec
        |> Codec.buildObject


{-| Codec for DelegationSets. -}
delegationSetsCodec : Codec DelegationSets
delegationSetsCodec =
    Codec.list delegationSetCodec


{-| Codec for DelegationSetNameServers. -}
delegationSetNameServersCodec : Codec DelegationSetNameServers
delegationSetNameServersCodec =
    Codec.list dnsnameCodec


{-| Codec for DelegationSet. -}
delegationSetCodec : Codec DelegationSet
delegationSetCodec =
    Codec.object DelegationSet
        |> Codec.field "NameServers" .nameServers delegationSetNameServersCodec
        |> Codec.field "Id" .id resourceIdCodec
        |> Codec.field "CallerReference" .callerReference nonceCodec
        |> Codec.buildObject


{-| Codec for Dnsrcode. -}
dnsrcodeCodec : Codec Dnsrcode
dnsrcodeCodec =
    Codec.string


{-| Codec for Dnsname. -}
dnsnameCodec : Codec Dnsname
dnsnameCodec =
    Codec.build (Refined.encoder dnsname) (Refined.decoder dnsname)


{-| Codec for CreateVpcassociationAuthorizationResponse. -}
createVpcassociationAuthorizationResponseCodec : Codec CreateVpcassociationAuthorizationResponse
createVpcassociationAuthorizationResponseCodec =
    Codec.object CreateVpcassociationAuthorizationResponse
        |> Codec.field "VPC" .vpc vpccodec
        |> Codec.field "HostedZoneId" .hostedZoneId resourceIdCodec
        |> Codec.buildObject


{-| Codec for CreateVpcassociationAuthorizationRequest. -}
createVpcassociationAuthorizationRequestCodec : Codec CreateVpcassociationAuthorizationRequest
createVpcassociationAuthorizationRequestCodec =
    Codec.object CreateVpcassociationAuthorizationRequest
        |> Codec.field "VPC" .vpc vpccodec
        |> Codec.field "HostedZoneId" .hostedZoneId resourceIdCodec
        |> Codec.buildObject


{-| Codec for CreateTrafficPolicyVersionResponse. -}
createTrafficPolicyVersionResponseCodec : Codec CreateTrafficPolicyVersionResponse
createTrafficPolicyVersionResponseCodec =
    Codec.object CreateTrafficPolicyVersionResponse
        |> Codec.field "TrafficPolicy" .trafficPolicy trafficPolicyCodec
        |> Codec.field "Location" .location resourceUricodec
        |> Codec.buildObject


{-| Codec for CreateTrafficPolicyVersionRequest. -}
createTrafficPolicyVersionRequestCodec : Codec CreateTrafficPolicyVersionRequest
createTrafficPolicyVersionRequestCodec =
    Codec.object CreateTrafficPolicyVersionRequest
        |> Codec.field "Id" .id trafficPolicyIdCodec
        |> Codec.field "Document" .document trafficPolicyDocumentCodec
        |> Codec.field "Comment" .comment trafficPolicyCommentCodec
        |> Codec.buildObject


{-| Codec for CreateTrafficPolicyResponse. -}
createTrafficPolicyResponseCodec : Codec CreateTrafficPolicyResponse
createTrafficPolicyResponseCodec =
    Codec.object CreateTrafficPolicyResponse
        |> Codec.field "TrafficPolicy" .trafficPolicy trafficPolicyCodec
        |> Codec.field "Location" .location resourceUricodec
        |> Codec.buildObject


{-| Codec for CreateTrafficPolicyRequest. -}
createTrafficPolicyRequestCodec : Codec CreateTrafficPolicyRequest
createTrafficPolicyRequestCodec =
    Codec.object CreateTrafficPolicyRequest
        |> Codec.field "Name" .name trafficPolicyNameCodec
        |> Codec.field "Document" .document trafficPolicyDocumentCodec
        |> Codec.field "Comment" .comment trafficPolicyCommentCodec
        |> Codec.buildObject


{-| Codec for CreateTrafficPolicyInstanceResponse. -}
createTrafficPolicyInstanceResponseCodec : Codec CreateTrafficPolicyInstanceResponse
createTrafficPolicyInstanceResponseCodec =
    Codec.object CreateTrafficPolicyInstanceResponse
        |> Codec.field "TrafficPolicyInstance" .trafficPolicyInstance trafficPolicyInstanceCodec
        |> Codec.field "Location" .location resourceUricodec
        |> Codec.buildObject


{-| Codec for CreateTrafficPolicyInstanceRequest. -}
createTrafficPolicyInstanceRequestCodec : Codec CreateTrafficPolicyInstanceRequest
createTrafficPolicyInstanceRequestCodec =
    Codec.object CreateTrafficPolicyInstanceRequest
        |> Codec.field "TrafficPolicyVersion" .trafficPolicyVersion trafficPolicyVersionCodec
        |> Codec.field "TrafficPolicyId" .trafficPolicyId trafficPolicyIdCodec
        |> Codec.field "TTL" .ttl Codec.int
        |> Codec.field "Name" .name dnsnameCodec
        |> Codec.field "HostedZoneId" .hostedZoneId resourceIdCodec
        |> Codec.buildObject


{-| Codec for CreateReusableDelegationSetResponse. -}
createReusableDelegationSetResponseCodec : Codec CreateReusableDelegationSetResponse
createReusableDelegationSetResponseCodec =
    Codec.object CreateReusableDelegationSetResponse
        |> Codec.field "Location" .location resourceUricodec
        |> Codec.field "DelegationSet" .delegationSet delegationSetCodec
        |> Codec.buildObject


{-| Codec for CreateReusableDelegationSetRequest. -}
createReusableDelegationSetRequestCodec : Codec CreateReusableDelegationSetRequest
createReusableDelegationSetRequestCodec =
    Codec.object CreateReusableDelegationSetRequest
        |> Codec.field "HostedZoneId" .hostedZoneId resourceIdCodec
        |> Codec.field "CallerReference" .callerReference nonceCodec
        |> Codec.buildObject


{-| Codec for CreateQueryLoggingConfigResponse. -}
createQueryLoggingConfigResponseCodec : Codec CreateQueryLoggingConfigResponse
createQueryLoggingConfigResponseCodec =
    Codec.object CreateQueryLoggingConfigResponse
        |> Codec.field "QueryLoggingConfig" .queryLoggingConfig queryLoggingConfigCodec
        |> Codec.field "Location" .location resourceUricodec
        |> Codec.buildObject


{-| Codec for CreateQueryLoggingConfigRequest. -}
createQueryLoggingConfigRequestCodec : Codec CreateQueryLoggingConfigRequest
createQueryLoggingConfigRequestCodec =
    Codec.object CreateQueryLoggingConfigRequest
        |> Codec.field "HostedZoneId" .hostedZoneId resourceIdCodec
        |> Codec.field "CloudWatchLogsLogGroupArn" .cloudWatchLogsLogGroupArn Codec.string
        |> Codec.buildObject


{-| Codec for CreateHostedZoneResponse. -}
createHostedZoneResponseCodec : Codec CreateHostedZoneResponse
createHostedZoneResponseCodec =
    Codec.object CreateHostedZoneResponse
        |> Codec.field "VPC" .vpc vpccodec
        |> Codec.field "Location" .location resourceUricodec
        |> Codec.field "HostedZone" .hostedZone hostedZoneCodec
        |> Codec.field "DelegationSet" .delegationSet delegationSetCodec
        |> Codec.field "ChangeInfo" .changeInfo changeInfoCodec
        |> Codec.buildObject


{-| Codec for CreateHostedZoneRequest. -}
createHostedZoneRequestCodec : Codec CreateHostedZoneRequest
createHostedZoneRequestCodec =
    Codec.object CreateHostedZoneRequest
        |> Codec.field "VPC" .vpc vpccodec
        |> Codec.field "Name" .name dnsnameCodec
        |> Codec.field "HostedZoneConfig" .hostedZoneConfig hostedZoneConfigCodec
        |> Codec.field "DelegationSetId" .delegationSetId resourceIdCodec
        |> Codec.field "CallerReference" .callerReference nonceCodec
        |> Codec.buildObject


{-| Codec for CreateHealthCheckResponse. -}
createHealthCheckResponseCodec : Codec CreateHealthCheckResponse
createHealthCheckResponseCodec =
    Codec.object CreateHealthCheckResponse
        |> Codec.field "Location" .location resourceUricodec
        |> Codec.field "HealthCheck" .healthCheck healthCheckCodec
        |> Codec.buildObject


{-| Codec for CreateHealthCheckRequest. -}
createHealthCheckRequestCodec : Codec CreateHealthCheckRequest
createHealthCheckRequestCodec =
    Codec.object CreateHealthCheckRequest
        |> Codec.field "HealthCheckConfig" .healthCheckConfig healthCheckConfigCodec
        |> Codec.field "CallerReference" .callerReference healthCheckNonceCodec
        |> Codec.buildObject


{-| Codec for ComparisonOperator. -}
comparisonOperatorCodec : Codec ComparisonOperator
comparisonOperatorCodec =
    Codec.build (Enum.encoder comparisonOperator) (Enum.decoder comparisonOperator)


{-| Codec for CloudWatchRegion. -}
cloudWatchRegionCodec : Codec CloudWatchRegion
cloudWatchRegionCodec =
    Codec.string


{-| Codec for CloudWatchLogsLogGroupArn. -}
cloudWatchLogsLogGroupArnCodec : Codec CloudWatchLogsLogGroupArn
cloudWatchLogsLogGroupArnCodec =
    Codec.string


{-| Codec for CloudWatchAlarmConfiguration. -}
cloudWatchAlarmConfigurationCodec : Codec CloudWatchAlarmConfiguration
cloudWatchAlarmConfigurationCodec =
    Codec.object CloudWatchAlarmConfiguration
        |> Codec.field "Threshold" .threshold Codec.float
        |> Codec.field "Statistic" .statistic statisticCodec
        |> Codec.field "Period" .period periodCodec
        |> Codec.field "Namespace" .namespace namespaceCodec
        |> Codec.field "MetricName" .metricName metricNameCodec
        |> Codec.field "EvaluationPeriods" .evaluationPeriods evaluationPeriodsCodec
        |> Codec.field "Dimensions" .dimensions dimensionListCodec
        |> Codec.field "ComparisonOperator" .comparisonOperator comparisonOperatorCodec
        |> Codec.buildObject


{-| Codec for ChildHealthCheckList. -}
childHealthCheckListCodec : Codec ChildHealthCheckList
childHealthCheckListCodec =
    Codec.list healthCheckIdCodec


{-| Codec for CheckerIpRanges. -}
checkerIpRangesCodec : Codec CheckerIpRanges
checkerIpRangesCodec =
    Codec.list Codec.string


{-| Codec for Changes. -}
changesCodec : Codec Changes
changesCodec =
    Codec.list changeCodec


{-| Codec for ChangeTagsForResourceResponse. -}
changeTagsForResourceResponseCodec : Codec ChangeTagsForResourceResponse
changeTagsForResourceResponseCodec =
    Codec.object ChangeTagsForResourceResponse |> Codec.buildObject


{-| Codec for ChangeTagsForResourceRequest. -}
changeTagsForResourceRequestCodec : Codec ChangeTagsForResourceRequest
changeTagsForResourceRequestCodec =
    Codec.object ChangeTagsForResourceRequest
        |> Codec.field "ResourceType" .resourceType tagResourceTypeCodec
        |> Codec.field "ResourceId" .resourceId tagResourceIdCodec
        |> Codec.field "RemoveTagKeys" .removeTagKeys tagKeyListCodec
        |> Codec.field "AddTags" .addTags tagListCodec
        |> Codec.buildObject


{-| Codec for ChangeStatus. -}
changeStatusCodec : Codec ChangeStatus
changeStatusCodec =
    Codec.build (Enum.encoder changeStatus) (Enum.decoder changeStatus)


{-| Codec for ChangeResourceRecordSetsResponse. -}
changeResourceRecordSetsResponseCodec : Codec ChangeResourceRecordSetsResponse
changeResourceRecordSetsResponseCodec =
    Codec.object ChangeResourceRecordSetsResponse
        |> Codec.field "ChangeInfo" .changeInfo changeInfoCodec
        |> Codec.buildObject


{-| Codec for ChangeResourceRecordSetsRequest. -}
changeResourceRecordSetsRequestCodec : Codec ChangeResourceRecordSetsRequest
changeResourceRecordSetsRequestCodec =
    Codec.object ChangeResourceRecordSetsRequest
        |> Codec.field "HostedZoneId" .hostedZoneId resourceIdCodec
        |> Codec.field "ChangeBatch" .changeBatch changeBatchCodec
        |> Codec.buildObject


{-| Codec for ChangeInfo. -}
changeInfoCodec : Codec ChangeInfo
changeInfoCodec =
    Codec.object ChangeInfo
        |> Codec.field "SubmittedAt" .submittedAt timeStampCodec
        |> Codec.field "Status" .status changeStatusCodec
        |> Codec.field "Id" .id resourceIdCodec
        |> Codec.field "Comment" .comment resourceDescriptionCodec
        |> Codec.buildObject


{-| Codec for ChangeBatch. -}
changeBatchCodec : Codec ChangeBatch
changeBatchCodec =
    Codec.object ChangeBatch
        |> Codec.field "Comment" .comment resourceDescriptionCodec
        |> Codec.field "Changes" .changes changesCodec
        |> Codec.buildObject


{-| Codec for ChangeAction. -}
changeActionCodec : Codec ChangeAction
changeActionCodec =
    Codec.build (Enum.encoder changeAction) (Enum.decoder changeAction)


{-| Codec for Change. -}
changeCodec : Codec Change
changeCodec =
    Codec.object Change
        |> Codec.field "ResourceRecordSet" .resourceRecordSet resourceRecordSetCodec
        |> Codec.field "Action" .action changeActionCodec
        |> Codec.buildObject


{-| Codec for AssociateVpcwithHostedZoneResponse. -}
associateVpcwithHostedZoneResponseCodec : Codec AssociateVpcwithHostedZoneResponse
associateVpcwithHostedZoneResponseCodec =
    Codec.object AssociateVpcwithHostedZoneResponse
        |> Codec.field "ChangeInfo" .changeInfo changeInfoCodec
        |> Codec.buildObject


{-| Codec for AssociateVpcwithHostedZoneRequest. -}
associateVpcwithHostedZoneRequestCodec : Codec AssociateVpcwithHostedZoneRequest
associateVpcwithHostedZoneRequestCodec =
    Codec.object AssociateVpcwithHostedZoneRequest
        |> Codec.field "VPC" .vpc vpccodec
        |> Codec.field "HostedZoneId" .hostedZoneId resourceIdCodec
        |> Codec.field "Comment" .comment Codec.string
        |> Codec.buildObject


{-| Codec for AssociateVpccomment. -}
associateVpccommentCodec : Codec AssociateVpccomment
associateVpccommentCodec =
    Codec.string


{-| Codec for AliasTarget. -}
aliasTargetCodec : Codec AliasTarget
aliasTargetCodec =
    Codec.object AliasTarget
        |> Codec.field "HostedZoneId" .hostedZoneId resourceIdCodec
        |> Codec.field "EvaluateTargetHealth" .evaluateTargetHealth Codec.bool
        |> Codec.field "DNSName" .dnsname dnsnameCodec
        |> Codec.buildObject


{-| Codec for AliasHealthEnabled. -}
aliasHealthEnabledCodec : Codec AliasHealthEnabled
aliasHealthEnabledCodec =
    Codec.bool


{-| Codec for AlarmName. -}
alarmNameCodec : Codec AlarmName
alarmNameCodec =
    Codec.build (Refined.encoder alarmName) (Refined.decoder alarmName)


{-| Codec for AlarmIdentifier. -}
alarmIdentifierCodec : Codec AlarmIdentifier
alarmIdentifierCodec =
    Codec.object AlarmIdentifier
        |> Codec.field "Region" .region Codec.string
        |> Codec.field "Name" .name alarmNameCodec
        |> Codec.buildObject


{-| Codec for AccountLimitType. -}
accountLimitTypeCodec : Codec AccountLimitType
accountLimitTypeCodec =
    Codec.build (Enum.encoder accountLimitType) (Enum.decoder accountLimitType)


{-| Codec for AccountLimit. -}
accountLimitCodec : Codec AccountLimit
accountLimitCodec =
    Codec.object AccountLimit
        |> Codec.field "Value" .value Codec.int
        |> Codec.field "Type" .type_ accountLimitTypeCodec
        |> Codec.buildObject
