module AWS.IAM exposing (service)

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
service : AWS.Core.Service.Region -> AWS.Core.Service.Service
service =
    let
        optionsFn =
            AWS.Core.Service.setXmlNamespace "https://iam.amazonaws.com/doc/2010-05-08/"
    in
    AWS.Core.Service.defineRegional "iam" "2010-05-08" AWS.Core.Service.query AWS.Core.Service.signV4 optionsFn


{-| AWS Endpoint. -}
uploadSigningCertificate :
    UploadSigningCertificateRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UploadSigningCertificateResponse)
uploadSigningCertificate req =
    let
        jsonBody =
            req |> Codec.encoder uploadSigningCertificateRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "UploadSigningCertificate"
                (AWS.Core.Decode.ResultDecoder
                    "UploadSigningCertificateResponse"
                    (Codec.decoder uploadSigningCertificateResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
uploadServerCertificate :
    UploadServerCertificateRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UploadServerCertificateResponse)
uploadServerCertificate req =
    let
        jsonBody =
            req |> Codec.encoder uploadServerCertificateRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "UploadServerCertificate"
                (AWS.Core.Decode.ResultDecoder
                    "UploadServerCertificateResponse"
                    (Codec.decoder uploadServerCertificateResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
uploadSshpublicKey :
    UploadSshpublicKeyRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UploadSshpublicKeyResponse)
uploadSshpublicKey req =
    let
        jsonBody =
            req |> Codec.encoder uploadSshpublicKeyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "UploadSshpublicKey"
                (AWS.Core.Decode.ResultDecoder
                    "UploadSSHPublicKeyResponse"
                    (Codec.decoder uploadSshpublicKeyResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
updateUser : UpdateUserRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
updateUser req =
    let
        jsonBody =
            req |> Codec.encoder updateUserRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "UpdateUser" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
updateSigningCertificate : UpdateSigningCertificateRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
updateSigningCertificate req =
    let
        jsonBody =
            req |> Codec.encoder updateSigningCertificateRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "UpdateSigningCertificate" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
updateServiceSpecificCredential :
    UpdateServiceSpecificCredentialRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
updateServiceSpecificCredential req =
    let
        jsonBody =
            req |> Codec.encoder updateServiceSpecificCredentialRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "UpdateServiceSpecificCredential" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
updateServerCertificate : UpdateServerCertificateRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
updateServerCertificate req =
    let
        jsonBody =
            req |> Codec.encoder updateServerCertificateRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "UpdateServerCertificate" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
updateSshpublicKey : UpdateSshpublicKeyRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
updateSshpublicKey req =
    let
        jsonBody =
            req |> Codec.encoder updateSshpublicKeyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "UpdateSshpublicKey" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
updateSamlprovider :
    UpdateSamlproviderRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateSamlproviderResponse)
updateSamlprovider req =
    let
        jsonBody =
            req |> Codec.encoder updateSamlproviderRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "UpdateSamlprovider"
                (AWS.Core.Decode.ResultDecoder
                    "UpdateSAMLProviderResponse"
                    (Codec.decoder updateSamlproviderResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
updateRoleDescription :
    UpdateRoleDescriptionRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateRoleDescriptionResponse)
updateRoleDescription req =
    let
        jsonBody =
            req |> Codec.encoder updateRoleDescriptionRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "UpdateRoleDescription"
                (AWS.Core.Decode.ResultDecoder
                    "UpdateRoleDescriptionResponse"
                    (Codec.decoder updateRoleDescriptionResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
updateRole : UpdateRoleRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateRoleResponse)
updateRole req =
    let
        jsonBody =
            req |> Codec.encoder updateRoleRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "UpdateRole"
                (AWS.Core.Decode.ResultDecoder "UpdateRoleResponse" (Codec.decoder updateRoleResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
updateOpenIdconnectProviderThumbprint :
    UpdateOpenIdconnectProviderThumbprintRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
updateOpenIdconnectProviderThumbprint req =
    let
        jsonBody =
            req |> Codec.encoder updateOpenIdconnectProviderThumbprintRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "UpdateOpenIdconnectProviderThumbprint"
                (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
updateLoginProfile : UpdateLoginProfileRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
updateLoginProfile req =
    let
        jsonBody =
            req |> Codec.encoder updateLoginProfileRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "UpdateLoginProfile" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
updateGroup : UpdateGroupRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
updateGroup req =
    let
        jsonBody =
            req |> Codec.encoder updateGroupRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "UpdateGroup" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
updateAssumeRolePolicy : UpdateAssumeRolePolicyRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
updateAssumeRolePolicy req =
    let
        jsonBody =
            req |> Codec.encoder updateAssumeRolePolicyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "UpdateAssumeRolePolicy" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
updateAccountPasswordPolicy :
    UpdateAccountPasswordPolicyRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
updateAccountPasswordPolicy req =
    let
        jsonBody =
            req |> Codec.encoder updateAccountPasswordPolicyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "UpdateAccountPasswordPolicy" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
updateAccessKey : UpdateAccessKeyRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
updateAccessKey req =
    let
        jsonBody =
            req |> Codec.encoder updateAccessKeyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "UpdateAccessKey" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
untagUser : UntagUserRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
untagUser req =
    let
        jsonBody =
            req |> Codec.encoder untagUserRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "UntagUser" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
untagRole : UntagRoleRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
untagRole req =
    let
        jsonBody =
            req |> Codec.encoder untagRoleRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "UntagRole" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
tagUser : TagUserRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
tagUser req =
    let
        jsonBody =
            req |> Codec.encoder tagUserRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "TagUser" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
tagRole : TagRoleRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
tagRole req =
    let
        jsonBody =
            req |> Codec.encoder tagRoleRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "TagRole" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
simulatePrincipalPolicy :
    SimulatePrincipalPolicyRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SimulatePolicyResponse)
simulatePrincipalPolicy req =
    let
        jsonBody =
            req |> Codec.encoder simulatePrincipalPolicyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "SimulatePrincipalPolicy"
                (AWS.Core.Decode.ResultDecoder "SimulatePolicyResponse" (Codec.decoder simulatePolicyResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
simulateCustomPolicy :
    SimulateCustomPolicyRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SimulatePolicyResponse)
simulateCustomPolicy req =
    let
        jsonBody =
            req |> Codec.encoder simulateCustomPolicyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "SimulateCustomPolicy"
                (AWS.Core.Decode.ResultDecoder "SimulatePolicyResponse" (Codec.decoder simulatePolicyResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
setSecurityTokenServicePreferences :
    SetSecurityTokenServicePreferencesRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
setSecurityTokenServicePreferences req =
    let
        jsonBody =
            req |> Codec.encoder setSecurityTokenServicePreferencesRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "SetSecurityTokenServicePreferences" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
setDefaultPolicyVersion : SetDefaultPolicyVersionRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
setDefaultPolicyVersion req =
    let
        jsonBody =
            req |> Codec.encoder setDefaultPolicyVersionRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "SetDefaultPolicyVersion" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
resyncMfadevice : ResyncMfadeviceRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
resyncMfadevice req =
    let
        jsonBody =
            req |> Codec.encoder resyncMfadeviceRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "ResyncMfadevice" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
resetServiceSpecificCredential :
    ResetServiceSpecificCredentialRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ResetServiceSpecificCredentialResponse)
resetServiceSpecificCredential req =
    let
        jsonBody =
            req |> Codec.encoder resetServiceSpecificCredentialRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ResetServiceSpecificCredential"
                (AWS.Core.Decode.ResultDecoder
                    "ResetServiceSpecificCredentialResponse"
                    (Codec.decoder resetServiceSpecificCredentialResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
removeUserFromGroup : RemoveUserFromGroupRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
removeUserFromGroup req =
    let
        jsonBody =
            req |> Codec.encoder removeUserFromGroupRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "RemoveUserFromGroup" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
removeRoleFromInstanceProfile :
    RemoveRoleFromInstanceProfileRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
removeRoleFromInstanceProfile req =
    let
        jsonBody =
            req |> Codec.encoder removeRoleFromInstanceProfileRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "RemoveRoleFromInstanceProfile" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
removeClientIdfromOpenIdconnectProvider :
    RemoveClientIdfromOpenIdconnectProviderRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
removeClientIdfromOpenIdconnectProvider req =
    let
        jsonBody =
            req |> Codec.encoder removeClientIdfromOpenIdconnectProviderRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "RemoveClientIdfromOpenIdconnectProvider"
                (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
putUserPolicy : PutUserPolicyRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
putUserPolicy req =
    let
        jsonBody =
            req |> Codec.encoder putUserPolicyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "PutUserPolicy" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
putUserPermissionsBoundary :
    PutUserPermissionsBoundaryRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
putUserPermissionsBoundary req =
    let
        jsonBody =
            req |> Codec.encoder putUserPermissionsBoundaryRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "PutUserPermissionsBoundary" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
putRolePolicy : PutRolePolicyRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
putRolePolicy req =
    let
        jsonBody =
            req |> Codec.encoder putRolePolicyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "PutRolePolicy" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
putRolePermissionsBoundary :
    PutRolePermissionsBoundaryRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
putRolePermissionsBoundary req =
    let
        jsonBody =
            req |> Codec.encoder putRolePermissionsBoundaryRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "PutRolePermissionsBoundary" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
putGroupPolicy : PutGroupPolicyRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
putGroupPolicy req =
    let
        jsonBody =
            req |> Codec.encoder putGroupPolicyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "PutGroupPolicy" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listVirtualMfadevices :
    ListVirtualMfadevicesRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListVirtualMfadevicesResponse)
listVirtualMfadevices req =
    let
        jsonBody =
            req |> Codec.encoder listVirtualMfadevicesRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListVirtualMfadevices"
                (AWS.Core.Decode.ResultDecoder
                    "ListVirtualMFADevicesResponse"
                    (Codec.decoder listVirtualMfadevicesResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listUsers : ListUsersRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListUsersResponse)
listUsers req =
    let
        jsonBody =
            req |> Codec.encoder listUsersRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListUsers"
                (AWS.Core.Decode.ResultDecoder "ListUsersResponse" (Codec.decoder listUsersResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listUserTags : ListUserTagsRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListUserTagsResponse)
listUserTags req =
    let
        jsonBody =
            req |> Codec.encoder listUserTagsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListUserTags"
                (AWS.Core.Decode.ResultDecoder "ListUserTagsResponse" (Codec.decoder listUserTagsResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listUserPolicies :
    ListUserPoliciesRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListUserPoliciesResponse)
listUserPolicies req =
    let
        jsonBody =
            req |> Codec.encoder listUserPoliciesRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListUserPolicies"
                (AWS.Core.Decode.ResultDecoder "ListUserPoliciesResponse" (Codec.decoder listUserPoliciesResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listSigningCertificates :
    ListSigningCertificatesRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListSigningCertificatesResponse)
listSigningCertificates req =
    let
        jsonBody =
            req |> Codec.encoder listSigningCertificatesRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListSigningCertificates"
                (AWS.Core.Decode.ResultDecoder
                    "ListSigningCertificatesResponse"
                    (Codec.decoder listSigningCertificatesResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listServiceSpecificCredentials :
    ListServiceSpecificCredentialsRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListServiceSpecificCredentialsResponse)
listServiceSpecificCredentials req =
    let
        jsonBody =
            req |> Codec.encoder listServiceSpecificCredentialsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListServiceSpecificCredentials"
                (AWS.Core.Decode.ResultDecoder
                    "ListServiceSpecificCredentialsResponse"
                    (Codec.decoder listServiceSpecificCredentialsResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listServerCertificates :
    ListServerCertificatesRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListServerCertificatesResponse)
listServerCertificates req =
    let
        jsonBody =
            req |> Codec.encoder listServerCertificatesRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListServerCertificates"
                (AWS.Core.Decode.ResultDecoder
                    "ListServerCertificatesResponse"
                    (Codec.decoder listServerCertificatesResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listSshpublicKeys :
    ListSshpublicKeysRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListSshpublicKeysResponse)
listSshpublicKeys req =
    let
        jsonBody =
            req |> Codec.encoder listSshpublicKeysRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListSshpublicKeys"
                (AWS.Core.Decode.ResultDecoder
                    "ListSSHPublicKeysResponse"
                    (Codec.decoder listSshpublicKeysResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listSamlproviders :
    ListSamlprovidersRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListSamlprovidersResponse)
listSamlproviders req =
    let
        jsonBody =
            req |> Codec.encoder listSamlprovidersRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListSamlproviders"
                (AWS.Core.Decode.ResultDecoder
                    "ListSAMLProvidersResponse"
                    (Codec.decoder listSamlprovidersResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listRoles : ListRolesRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListRolesResponse)
listRoles req =
    let
        jsonBody =
            req |> Codec.encoder listRolesRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListRoles"
                (AWS.Core.Decode.ResultDecoder "ListRolesResponse" (Codec.decoder listRolesResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listRoleTags : ListRoleTagsRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListRoleTagsResponse)
listRoleTags req =
    let
        jsonBody =
            req |> Codec.encoder listRoleTagsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListRoleTags"
                (AWS.Core.Decode.ResultDecoder "ListRoleTagsResponse" (Codec.decoder listRoleTagsResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listRolePolicies :
    ListRolePoliciesRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListRolePoliciesResponse)
listRolePolicies req =
    let
        jsonBody =
            req |> Codec.encoder listRolePoliciesRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListRolePolicies"
                (AWS.Core.Decode.ResultDecoder "ListRolePoliciesResponse" (Codec.decoder listRolePoliciesResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listPolicyVersions :
    ListPolicyVersionsRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListPolicyVersionsResponse)
listPolicyVersions req =
    let
        jsonBody =
            req |> Codec.encoder listPolicyVersionsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListPolicyVersions"
                (AWS.Core.Decode.ResultDecoder
                    "ListPolicyVersionsResponse"
                    (Codec.decoder listPolicyVersionsResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listPoliciesGrantingServiceAccess :
    ListPoliciesGrantingServiceAccessRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListPoliciesGrantingServiceAccessResponse)
listPoliciesGrantingServiceAccess req =
    let
        jsonBody =
            req |> Codec.encoder listPoliciesGrantingServiceAccessRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListPoliciesGrantingServiceAccess"
                (AWS.Core.Decode.ResultDecoder
                    "ListPoliciesGrantingServiceAccessResponse"
                    (Codec.decoder listPoliciesGrantingServiceAccessResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listPolicies : ListPoliciesRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListPoliciesResponse)
listPolicies req =
    let
        jsonBody =
            req |> Codec.encoder listPoliciesRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListPolicies"
                (AWS.Core.Decode.ResultDecoder "ListPoliciesResponse" (Codec.decoder listPoliciesResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listOpenIdconnectProviders :
    ListOpenIdconnectProvidersRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListOpenIdconnectProvidersResponse)
listOpenIdconnectProviders req =
    let
        jsonBody =
            req |> Codec.encoder listOpenIdconnectProvidersRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListOpenIdconnectProviders"
                (AWS.Core.Decode.ResultDecoder
                    "ListOpenIDConnectProvidersResponse"
                    (Codec.decoder listOpenIdconnectProvidersResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listMfadevices : ListMfadevicesRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListMfadevicesResponse)
listMfadevices req =
    let
        jsonBody =
            req |> Codec.encoder listMfadevicesRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListMfadevices"
                (AWS.Core.Decode.ResultDecoder "ListMFADevicesResponse" (Codec.decoder listMfadevicesResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listInstanceProfilesForRole :
    ListInstanceProfilesForRoleRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListInstanceProfilesForRoleResponse)
listInstanceProfilesForRole req =
    let
        jsonBody =
            req |> Codec.encoder listInstanceProfilesForRoleRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListInstanceProfilesForRole"
                (AWS.Core.Decode.ResultDecoder
                    "ListInstanceProfilesForRoleResponse"
                    (Codec.decoder listInstanceProfilesForRoleResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listInstanceProfiles :
    ListInstanceProfilesRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListInstanceProfilesResponse)
listInstanceProfiles req =
    let
        jsonBody =
            req |> Codec.encoder listInstanceProfilesRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListInstanceProfiles"
                (AWS.Core.Decode.ResultDecoder
                    "ListInstanceProfilesResponse"
                    (Codec.decoder listInstanceProfilesResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listGroupsForUser :
    ListGroupsForUserRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListGroupsForUserResponse)
listGroupsForUser req =
    let
        jsonBody =
            req |> Codec.encoder listGroupsForUserRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListGroupsForUser"
                (AWS.Core.Decode.ResultDecoder
                    "ListGroupsForUserResponse"
                    (Codec.decoder listGroupsForUserResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listGroups : ListGroupsRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListGroupsResponse)
listGroups req =
    let
        jsonBody =
            req |> Codec.encoder listGroupsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListGroups"
                (AWS.Core.Decode.ResultDecoder "ListGroupsResponse" (Codec.decoder listGroupsResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listGroupPolicies :
    ListGroupPoliciesRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListGroupPoliciesResponse)
listGroupPolicies req =
    let
        jsonBody =
            req |> Codec.encoder listGroupPoliciesRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListGroupPolicies"
                (AWS.Core.Decode.ResultDecoder
                    "ListGroupPoliciesResponse"
                    (Codec.decoder listGroupPoliciesResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listEntitiesForPolicy :
    ListEntitiesForPolicyRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListEntitiesForPolicyResponse)
listEntitiesForPolicy req =
    let
        jsonBody =
            req |> Codec.encoder listEntitiesForPolicyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListEntitiesForPolicy"
                (AWS.Core.Decode.ResultDecoder
                    "ListEntitiesForPolicyResponse"
                    (Codec.decoder listEntitiesForPolicyResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listAttachedUserPolicies :
    ListAttachedUserPoliciesRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListAttachedUserPoliciesResponse)
listAttachedUserPolicies req =
    let
        jsonBody =
            req |> Codec.encoder listAttachedUserPoliciesRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListAttachedUserPolicies"
                (AWS.Core.Decode.ResultDecoder
                    "ListAttachedUserPoliciesResponse"
                    (Codec.decoder listAttachedUserPoliciesResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listAttachedRolePolicies :
    ListAttachedRolePoliciesRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListAttachedRolePoliciesResponse)
listAttachedRolePolicies req =
    let
        jsonBody =
            req |> Codec.encoder listAttachedRolePoliciesRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListAttachedRolePolicies"
                (AWS.Core.Decode.ResultDecoder
                    "ListAttachedRolePoliciesResponse"
                    (Codec.decoder listAttachedRolePoliciesResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listAttachedGroupPolicies :
    ListAttachedGroupPoliciesRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListAttachedGroupPoliciesResponse)
listAttachedGroupPolicies req =
    let
        jsonBody =
            req |> Codec.encoder listAttachedGroupPoliciesRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListAttachedGroupPolicies"
                (AWS.Core.Decode.ResultDecoder
                    "ListAttachedGroupPoliciesResponse"
                    (Codec.decoder listAttachedGroupPoliciesResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listAccountAliases :
    ListAccountAliasesRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListAccountAliasesResponse)
listAccountAliases req =
    let
        jsonBody =
            req |> Codec.encoder listAccountAliasesRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListAccountAliases"
                (AWS.Core.Decode.ResultDecoder
                    "ListAccountAliasesResponse"
                    (Codec.decoder listAccountAliasesResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
listAccessKeys : ListAccessKeysRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListAccessKeysResponse)
listAccessKeys req =
    let
        jsonBody =
            req |> Codec.encoder listAccessKeysRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListAccessKeys"
                (AWS.Core.Decode.ResultDecoder "ListAccessKeysResponse" (Codec.decoder listAccessKeysResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getUserPolicy : GetUserPolicyRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetUserPolicyResponse)
getUserPolicy req =
    let
        jsonBody =
            req |> Codec.encoder getUserPolicyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetUserPolicy"
                (AWS.Core.Decode.ResultDecoder "GetUserPolicyResponse" (Codec.decoder getUserPolicyResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getUser : GetUserRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetUserResponse)
getUser req =
    let
        jsonBody =
            req |> Codec.encoder getUserRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetUser"
                (AWS.Core.Decode.ResultDecoder "GetUserResponse" (Codec.decoder getUserResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getServiceLinkedRoleDeletionStatus :
    GetServiceLinkedRoleDeletionStatusRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetServiceLinkedRoleDeletionStatusResponse)
getServiceLinkedRoleDeletionStatus req =
    let
        jsonBody =
            req |> Codec.encoder getServiceLinkedRoleDeletionStatusRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetServiceLinkedRoleDeletionStatus"
                (AWS.Core.Decode.ResultDecoder
                    "GetServiceLinkedRoleDeletionStatusResponse"
                    (Codec.decoder getServiceLinkedRoleDeletionStatusResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getServiceLastAccessedDetailsWithEntities :
    GetServiceLastAccessedDetailsWithEntitiesRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetServiceLastAccessedDetailsWithEntitiesResponse)
getServiceLastAccessedDetailsWithEntities req =
    let
        jsonBody =
            req |> Codec.encoder getServiceLastAccessedDetailsWithEntitiesRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetServiceLastAccessedDetailsWithEntities"
                (AWS.Core.Decode.ResultDecoder
                    "GetServiceLastAccessedDetailsWithEntitiesResponse"
                    (Codec.decoder getServiceLastAccessedDetailsWithEntitiesResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getServiceLastAccessedDetails :
    GetServiceLastAccessedDetailsRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetServiceLastAccessedDetailsResponse)
getServiceLastAccessedDetails req =
    let
        jsonBody =
            req |> Codec.encoder getServiceLastAccessedDetailsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetServiceLastAccessedDetails"
                (AWS.Core.Decode.ResultDecoder
                    "GetServiceLastAccessedDetailsResponse"
                    (Codec.decoder getServiceLastAccessedDetailsResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getServerCertificate :
    GetServerCertificateRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetServerCertificateResponse)
getServerCertificate req =
    let
        jsonBody =
            req |> Codec.encoder getServerCertificateRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetServerCertificate"
                (AWS.Core.Decode.ResultDecoder
                    "GetServerCertificateResponse"
                    (Codec.decoder getServerCertificateResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getSshpublicKey :
    GetSshpublicKeyRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetSshpublicKeyResponse)
getSshpublicKey req =
    let
        jsonBody =
            req |> Codec.encoder getSshpublicKeyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetSshpublicKey"
                (AWS.Core.Decode.ResultDecoder "GetSSHPublicKeyResponse" (Codec.decoder getSshpublicKeyResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getSamlprovider :
    GetSamlproviderRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetSamlproviderResponse)
getSamlprovider req =
    let
        jsonBody =
            req |> Codec.encoder getSamlproviderRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetSamlprovider"
                (AWS.Core.Decode.ResultDecoder "GetSAMLProviderResponse" (Codec.decoder getSamlproviderResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getRolePolicy : GetRolePolicyRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetRolePolicyResponse)
getRolePolicy req =
    let
        jsonBody =
            req |> Codec.encoder getRolePolicyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetRolePolicy"
                (AWS.Core.Decode.ResultDecoder "GetRolePolicyResponse" (Codec.decoder getRolePolicyResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getRole : GetRoleRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetRoleResponse)
getRole req =
    let
        jsonBody =
            req |> Codec.encoder getRoleRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetRole"
                (AWS.Core.Decode.ResultDecoder "GetRoleResponse" (Codec.decoder getRoleResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getPolicyVersion :
    GetPolicyVersionRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetPolicyVersionResponse)
getPolicyVersion req =
    let
        jsonBody =
            req |> Codec.encoder getPolicyVersionRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetPolicyVersion"
                (AWS.Core.Decode.ResultDecoder "GetPolicyVersionResponse" (Codec.decoder getPolicyVersionResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


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
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getOrganizationsAccessReport :
    GetOrganizationsAccessReportRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetOrganizationsAccessReportResponse)
getOrganizationsAccessReport req =
    let
        jsonBody =
            req |> Codec.encoder getOrganizationsAccessReportRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetOrganizationsAccessReport"
                (AWS.Core.Decode.ResultDecoder
                    "GetOrganizationsAccessReportResponse"
                    (Codec.decoder getOrganizationsAccessReportResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getOpenIdconnectProvider :
    GetOpenIdconnectProviderRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetOpenIdconnectProviderResponse)
getOpenIdconnectProvider req =
    let
        jsonBody =
            req |> Codec.encoder getOpenIdconnectProviderRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetOpenIdconnectProvider"
                (AWS.Core.Decode.ResultDecoder
                    "GetOpenIDConnectProviderResponse"
                    (Codec.decoder getOpenIdconnectProviderResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getLoginProfile :
    GetLoginProfileRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetLoginProfileResponse)
getLoginProfile req =
    let
        jsonBody =
            req |> Codec.encoder getLoginProfileRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetLoginProfile"
                (AWS.Core.Decode.ResultDecoder "GetLoginProfileResponse" (Codec.decoder getLoginProfileResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getInstanceProfile :
    GetInstanceProfileRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetInstanceProfileResponse)
getInstanceProfile req =
    let
        jsonBody =
            req |> Codec.encoder getInstanceProfileRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetInstanceProfile"
                (AWS.Core.Decode.ResultDecoder
                    "GetInstanceProfileResponse"
                    (Codec.decoder getInstanceProfileResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getGroupPolicy : GetGroupPolicyRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetGroupPolicyResponse)
getGroupPolicy req =
    let
        jsonBody =
            req |> Codec.encoder getGroupPolicyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetGroupPolicy"
                (AWS.Core.Decode.ResultDecoder "GetGroupPolicyResponse" (Codec.decoder getGroupPolicyResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getGroup : GetGroupRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetGroupResponse)
getGroup req =
    let
        jsonBody =
            req |> Codec.encoder getGroupRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetGroup"
                (AWS.Core.Decode.ResultDecoder "GetGroupResponse" (Codec.decoder getGroupResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getCredentialReport : AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetCredentialReportResponse)
getCredentialReport =
    let
        jsonBody =
            AWS.Core.Http.emptyBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetCredentialReport"
                (AWS.Core.Decode.ResultDecoder
                    "GetCredentialReportResponse"
                    (Codec.decoder getCredentialReportResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getContextKeysForPrincipalPolicy :
    GetContextKeysForPrincipalPolicyRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetContextKeysForPolicyResponse)
getContextKeysForPrincipalPolicy req =
    let
        jsonBody =
            req |> Codec.encoder getContextKeysForPrincipalPolicyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetContextKeysForPrincipalPolicy"
                (AWS.Core.Decode.ResultDecoder
                    "GetContextKeysForPolicyResponse"
                    (Codec.decoder getContextKeysForPolicyResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getContextKeysForCustomPolicy :
    GetContextKeysForCustomPolicyRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetContextKeysForPolicyResponse)
getContextKeysForCustomPolicy req =
    let
        jsonBody =
            req |> Codec.encoder getContextKeysForCustomPolicyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetContextKeysForCustomPolicy"
                (AWS.Core.Decode.ResultDecoder
                    "GetContextKeysForPolicyResponse"
                    (Codec.decoder getContextKeysForPolicyResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getAccountSummary : AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetAccountSummaryResponse)
getAccountSummary =
    let
        jsonBody =
            AWS.Core.Http.emptyBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetAccountSummary"
                (AWS.Core.Decode.ResultDecoder
                    "GetAccountSummaryResponse"
                    (Codec.decoder getAccountSummaryResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getAccountPasswordPolicy : AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetAccountPasswordPolicyResponse)
getAccountPasswordPolicy =
    let
        jsonBody =
            AWS.Core.Http.emptyBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetAccountPasswordPolicy"
                (AWS.Core.Decode.ResultDecoder
                    "GetAccountPasswordPolicyResponse"
                    (Codec.decoder getAccountPasswordPolicyResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getAccountAuthorizationDetails :
    GetAccountAuthorizationDetailsRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetAccountAuthorizationDetailsResponse)
getAccountAuthorizationDetails req =
    let
        jsonBody =
            req |> Codec.encoder getAccountAuthorizationDetailsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetAccountAuthorizationDetails"
                (AWS.Core.Decode.ResultDecoder
                    "GetAccountAuthorizationDetailsResponse"
                    (Codec.decoder getAccountAuthorizationDetailsResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
getAccessKeyLastUsed :
    GetAccessKeyLastUsedRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetAccessKeyLastUsedResponse)
getAccessKeyLastUsed req =
    let
        jsonBody =
            req |> Codec.encoder getAccessKeyLastUsedRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GetAccessKeyLastUsed"
                (AWS.Core.Decode.ResultDecoder
                    "GetAccessKeyLastUsedResponse"
                    (Codec.decoder getAccessKeyLastUsedResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
generateServiceLastAccessedDetails :
    GenerateServiceLastAccessedDetailsRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GenerateServiceLastAccessedDetailsResponse)
generateServiceLastAccessedDetails req =
    let
        jsonBody =
            req |> Codec.encoder generateServiceLastAccessedDetailsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GenerateServiceLastAccessedDetails"
                (AWS.Core.Decode.ResultDecoder
                    "GenerateServiceLastAccessedDetailsResponse"
                    (Codec.decoder generateServiceLastAccessedDetailsResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
generateOrganizationsAccessReport :
    GenerateOrganizationsAccessReportRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GenerateOrganizationsAccessReportResponse)
generateOrganizationsAccessReport req =
    let
        jsonBody =
            req |> Codec.encoder generateOrganizationsAccessReportRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GenerateOrganizationsAccessReport"
                (AWS.Core.Decode.ResultDecoder
                    "GenerateOrganizationsAccessReportResponse"
                    (Codec.decoder generateOrganizationsAccessReportResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
generateCredentialReport : AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GenerateCredentialReportResponse)
generateCredentialReport =
    let
        jsonBody =
            AWS.Core.Http.emptyBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "GenerateCredentialReport"
                (AWS.Core.Decode.ResultDecoder
                    "GenerateCredentialReportResponse"
                    (Codec.decoder generateCredentialReportResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
enableMfadevice : EnableMfadeviceRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
enableMfadevice req =
    let
        jsonBody =
            req |> Codec.encoder enableMfadeviceRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "EnableMfadevice" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
detachUserPolicy : DetachUserPolicyRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
detachUserPolicy req =
    let
        jsonBody =
            req |> Codec.encoder detachUserPolicyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DetachUserPolicy" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
detachRolePolicy : DetachRolePolicyRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
detachRolePolicy req =
    let
        jsonBody =
            req |> Codec.encoder detachRolePolicyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DetachRolePolicy" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
detachGroupPolicy : DetachGroupPolicyRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
detachGroupPolicy req =
    let
        jsonBody =
            req |> Codec.encoder detachGroupPolicyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DetachGroupPolicy" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteVirtualMfadevice : DeleteVirtualMfadeviceRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteVirtualMfadevice req =
    let
        jsonBody =
            req |> Codec.encoder deleteVirtualMfadeviceRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteVirtualMfadevice" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteUserPolicy : DeleteUserPolicyRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteUserPolicy req =
    let
        jsonBody =
            req |> Codec.encoder deleteUserPolicyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteUserPolicy" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteUserPermissionsBoundary :
    DeleteUserPermissionsBoundaryRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteUserPermissionsBoundary req =
    let
        jsonBody =
            req |> Codec.encoder deleteUserPermissionsBoundaryRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteUserPermissionsBoundary" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteUser : DeleteUserRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteUser req =
    let
        jsonBody =
            req |> Codec.encoder deleteUserRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteUser" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteSigningCertificate : DeleteSigningCertificateRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteSigningCertificate req =
    let
        jsonBody =
            req |> Codec.encoder deleteSigningCertificateRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteSigningCertificate" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteServiceSpecificCredential :
    DeleteServiceSpecificCredentialRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteServiceSpecificCredential req =
    let
        jsonBody =
            req |> Codec.encoder deleteServiceSpecificCredentialRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteServiceSpecificCredential" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteServiceLinkedRole :
    DeleteServiceLinkedRoleRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteServiceLinkedRoleResponse)
deleteServiceLinkedRole req =
    let
        jsonBody =
            req |> Codec.encoder deleteServiceLinkedRoleRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "DeleteServiceLinkedRole"
                (AWS.Core.Decode.ResultDecoder
                    "DeleteServiceLinkedRoleResponse"
                    (Codec.decoder deleteServiceLinkedRoleResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteServerCertificate : DeleteServerCertificateRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteServerCertificate req =
    let
        jsonBody =
            req |> Codec.encoder deleteServerCertificateRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteServerCertificate" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteSshpublicKey : DeleteSshpublicKeyRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteSshpublicKey req =
    let
        jsonBody =
            req |> Codec.encoder deleteSshpublicKeyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteSshpublicKey" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteSamlprovider : DeleteSamlproviderRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteSamlprovider req =
    let
        jsonBody =
            req |> Codec.encoder deleteSamlproviderRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteSamlprovider" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteRolePolicy : DeleteRolePolicyRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteRolePolicy req =
    let
        jsonBody =
            req |> Codec.encoder deleteRolePolicyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteRolePolicy" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteRolePermissionsBoundary :
    DeleteRolePermissionsBoundaryRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteRolePermissionsBoundary req =
    let
        jsonBody =
            req |> Codec.encoder deleteRolePermissionsBoundaryRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteRolePermissionsBoundary" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteRole : DeleteRoleRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteRole req =
    let
        jsonBody =
            req |> Codec.encoder deleteRoleRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteRole" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deletePolicyVersion : DeletePolicyVersionRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deletePolicyVersion req =
    let
        jsonBody =
            req |> Codec.encoder deletePolicyVersionRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeletePolicyVersion" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deletePolicy : DeletePolicyRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deletePolicy req =
    let
        jsonBody =
            req |> Codec.encoder deletePolicyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeletePolicy" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteOpenIdconnectProvider :
    DeleteOpenIdconnectProviderRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteOpenIdconnectProvider req =
    let
        jsonBody =
            req |> Codec.encoder deleteOpenIdconnectProviderRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteOpenIdconnectProvider" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteLoginProfile : DeleteLoginProfileRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteLoginProfile req =
    let
        jsonBody =
            req |> Codec.encoder deleteLoginProfileRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteLoginProfile" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteInstanceProfile : DeleteInstanceProfileRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteInstanceProfile req =
    let
        jsonBody =
            req |> Codec.encoder deleteInstanceProfileRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteInstanceProfile" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteGroupPolicy : DeleteGroupPolicyRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteGroupPolicy req =
    let
        jsonBody =
            req |> Codec.encoder deleteGroupPolicyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteGroupPolicy" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteGroup : DeleteGroupRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteGroup req =
    let
        jsonBody =
            req |> Codec.encoder deleteGroupRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteGroup" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteAccountPasswordPolicy : AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteAccountPasswordPolicy =
    let
        jsonBody =
            AWS.Core.Http.emptyBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteAccountPasswordPolicy" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteAccountAlias : DeleteAccountAliasRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteAccountAlias req =
    let
        jsonBody =
            req |> Codec.encoder deleteAccountAliasRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteAccountAlias" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deleteAccessKey : DeleteAccessKeyRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteAccessKey req =
    let
        jsonBody =
            req |> Codec.encoder deleteAccessKeyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeleteAccessKey" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
deactivateMfadevice : DeactivateMfadeviceRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deactivateMfadevice req =
    let
        jsonBody =
            req |> Codec.encoder deactivateMfadeviceRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "DeactivateMfadevice" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createVirtualMfadevice :
    CreateVirtualMfadeviceRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateVirtualMfadeviceResponse)
createVirtualMfadevice req =
    let
        jsonBody =
            req |> Codec.encoder createVirtualMfadeviceRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateVirtualMfadevice"
                (AWS.Core.Decode.ResultDecoder
                    "CreateVirtualMFADeviceResponse"
                    (Codec.decoder createVirtualMfadeviceResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createUser : CreateUserRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateUserResponse)
createUser req =
    let
        jsonBody =
            req |> Codec.encoder createUserRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateUser"
                (AWS.Core.Decode.ResultDecoder "CreateUserResponse" (Codec.decoder createUserResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createServiceSpecificCredential :
    CreateServiceSpecificCredentialRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateServiceSpecificCredentialResponse)
createServiceSpecificCredential req =
    let
        jsonBody =
            req |> Codec.encoder createServiceSpecificCredentialRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateServiceSpecificCredential"
                (AWS.Core.Decode.ResultDecoder
                    "CreateServiceSpecificCredentialResponse"
                    (Codec.decoder createServiceSpecificCredentialResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createServiceLinkedRole :
    CreateServiceLinkedRoleRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateServiceLinkedRoleResponse)
createServiceLinkedRole req =
    let
        jsonBody =
            req |> Codec.encoder createServiceLinkedRoleRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateServiceLinkedRole"
                (AWS.Core.Decode.ResultDecoder
                    "CreateServiceLinkedRoleResponse"
                    (Codec.decoder createServiceLinkedRoleResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createSamlprovider :
    CreateSamlproviderRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateSamlproviderResponse)
createSamlprovider req =
    let
        jsonBody =
            req |> Codec.encoder createSamlproviderRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateSamlprovider"
                (AWS.Core.Decode.ResultDecoder
                    "CreateSAMLProviderResponse"
                    (Codec.decoder createSamlproviderResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createRole : CreateRoleRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateRoleResponse)
createRole req =
    let
        jsonBody =
            req |> Codec.encoder createRoleRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateRole"
                (AWS.Core.Decode.ResultDecoder "CreateRoleResponse" (Codec.decoder createRoleResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createPolicyVersion :
    CreatePolicyVersionRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreatePolicyVersionResponse)
createPolicyVersion req =
    let
        jsonBody =
            req |> Codec.encoder createPolicyVersionRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreatePolicyVersion"
                (AWS.Core.Decode.ResultDecoder
                    "CreatePolicyVersionResponse"
                    (Codec.decoder createPolicyVersionResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createPolicy : CreatePolicyRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreatePolicyResponse)
createPolicy req =
    let
        jsonBody =
            req |> Codec.encoder createPolicyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreatePolicy"
                (AWS.Core.Decode.ResultDecoder "CreatePolicyResponse" (Codec.decoder createPolicyResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createOpenIdconnectProvider :
    CreateOpenIdconnectProviderRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateOpenIdconnectProviderResponse)
createOpenIdconnectProvider req =
    let
        jsonBody =
            req |> Codec.encoder createOpenIdconnectProviderRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateOpenIdconnectProvider"
                (AWS.Core.Decode.ResultDecoder
                    "CreateOpenIDConnectProviderResponse"
                    (Codec.decoder createOpenIdconnectProviderResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createLoginProfile :
    CreateLoginProfileRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateLoginProfileResponse)
createLoginProfile req =
    let
        jsonBody =
            req |> Codec.encoder createLoginProfileRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateLoginProfile"
                (AWS.Core.Decode.ResultDecoder
                    "CreateLoginProfileResponse"
                    (Codec.decoder createLoginProfileResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createInstanceProfile :
    CreateInstanceProfileRequest
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateInstanceProfileResponse)
createInstanceProfile req =
    let
        jsonBody =
            req |> Codec.encoder createInstanceProfileRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateInstanceProfile"
                (AWS.Core.Decode.ResultDecoder
                    "CreateInstanceProfileResponse"
                    (Codec.decoder createInstanceProfileResponseCodec)
                )
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createGroup : CreateGroupRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateGroupResponse)
createGroup req =
    let
        jsonBody =
            req |> Codec.encoder createGroupRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateGroup"
                (AWS.Core.Decode.ResultDecoder "CreateGroupResponse" (Codec.decoder createGroupResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createAccountAlias : CreateAccountAliasRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
createAccountAlias req =
    let
        jsonBody =
            req |> Codec.encoder createAccountAliasRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "CreateAccountAlias" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
createAccessKey :
    CreateAccessKeyRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateAccessKeyResponse)
createAccessKey req =
    let
        jsonBody =
            req |> Codec.encoder createAccessKeyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "CreateAccessKey"
                (AWS.Core.Decode.ResultDecoder "CreateAccessKeyResponse" (Codec.decoder createAccessKeyResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
changePassword : ChangePasswordRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
changePassword req =
    let
        jsonBody =
            req |> Codec.encoder changePasswordRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "ChangePassword" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
attachUserPolicy : AttachUserPolicyRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
attachUserPolicy req =
    let
        jsonBody =
            req |> Codec.encoder attachUserPolicyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "AttachUserPolicy" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
attachRolePolicy : AttachRolePolicyRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
attachRolePolicy req =
    let
        jsonBody =
            req |> Codec.encoder attachRolePolicyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "AttachRolePolicy" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
attachGroupPolicy : AttachGroupPolicyRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
attachGroupPolicy req =
    let
        jsonBody =
            req |> Codec.encoder attachGroupPolicyRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "AttachGroupPolicy" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
addUserToGroup : AddUserToGroupRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
addUserToGroup req =
    let
        jsonBody =
            req |> Codec.encoder addUserToGroupRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "AddUserToGroup" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
addRoleToInstanceProfile : AddRoleToInstanceProfileRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
addRoleToInstanceProfile req =
    let
        jsonBody =
            req |> Codec.encoder addRoleToInstanceProfileRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "AddRoleToInstanceProfile" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


{-| AWS Endpoint. -}
addClientIdtoOpenIdconnectProvider :
    AddClientIdtoOpenIdconnectProviderRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
addClientIdtoOpenIdconnectProvider req =
    let
        jsonBody =
            req |> Codec.encoder addClientIdtoOpenIdconnectProviderRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder "AddClientIdtoOpenIdconnectProvider" (AWS.Core.Decode.FixedResult ())
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


type alias AccessDetail =
    { totalAuthenticatedEntities : Int
    , serviceNamespace : ServiceNamespaceType
    , serviceName : String
    , region : String
    , lastAuthenticatedTime : DateType
    , entityPath : OrganizationsEntityPathType
    }


type alias AccessDetails =
    List AccessDetail


type alias AccessKey =
    { userName : UserNameType
    , status : StatusType
    , secretAccessKey : String
    , createDate : DateType
    , accessKeyId : AccessKeyIdType
    }


type alias AccessKeyLastUsed =
    { serviceName : String, region : String, lastUsedDate : DateType }


type alias AccessKeyMetadata =
    { userName : UserNameType, status : StatusType, createDate : DateType, accessKeyId : AccessKeyIdType }


type alias ActionNameListType =
    List ActionNameType


type ActionNameType
    = ActionNameType String


actionNameType : Guarded String ActionNameType StringError
actionNameType =
    let
        guardFn val =
            Guarded.minLength 3 val |> Result.andThen (Guarded.maxLength 128) |> Result.map ActionNameType

        unboxFn (ActionNameType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type alias AddClientIdtoOpenIdconnectProviderRequest =
    { openIdconnectProviderArn : ArnType, clientId : ClientIdtype }


type alias AddRoleToInstanceProfileRequest =
    { roleName : RoleNameType, instanceProfileName : InstanceProfileNameType }


type alias AddUserToGroupRequest =
    { userName : ExistingUserNameType, groupName : GroupNameType }


type alias ArnListType =
    List ArnType


type alias AttachGroupPolicyRequest =
    { policyArn : ArnType, groupName : GroupNameType }


type alias AttachRolePolicyRequest =
    { roleName : RoleNameType, policyArn : ArnType }


type alias AttachUserPolicyRequest =
    { userName : UserNameType, policyArn : ArnType }


type alias AttachedPermissionsBoundary =
    { permissionsBoundaryType : PermissionsBoundaryAttachmentType, permissionsBoundaryArn : ArnType }


type alias AttachedPolicy =
    { policyName : PolicyNameType, policyArn : ArnType }


type alias BootstrapDatum =
    String


type alias ChangePasswordRequest =
    { oldPassword : PasswordType, newPassword : PasswordType }


type alias ColumnNumber =
    Int


type alias ContextEntry =
    { contextKeyValues : ContextKeyValueListType
    , contextKeyType : ContextKeyTypeEnum
    , contextKeyName : ContextKeyNameType
    }


type alias ContextEntryListType =
    List ContextEntry


type ContextKeyNameType
    = ContextKeyNameType String


contextKeyNameType : Guarded String ContextKeyNameType StringError
contextKeyNameType =
    let
        guardFn val =
            Guarded.minLength 5 val |> Result.andThen (Guarded.maxLength 256) |> Result.map ContextKeyNameType

        unboxFn (ContextKeyNameType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type alias ContextKeyNamesResultListType =
    List ContextKeyNameType


type ContextKeyTypeEnum
    = ContextKeyTypeEnumString_
    | ContextKeyTypeEnumStringList
    | ContextKeyTypeEnumNumeric
    | ContextKeyTypeEnumNumericList
    | ContextKeyTypeEnumBoolean
    | ContextKeyTypeEnumBooleanList
    | ContextKeyTypeEnumIp
    | ContextKeyTypeEnumIpList
    | ContextKeyTypeEnumBinary
    | ContextKeyTypeEnumBinaryList
    | ContextKeyTypeEnumDate
    | ContextKeyTypeEnumDateList


contextKeyTypeEnum : Enum ContextKeyTypeEnum
contextKeyTypeEnum =
    Enum.make
        [ ContextKeyTypeEnumString_
        , ContextKeyTypeEnumStringList
        , ContextKeyTypeEnumNumeric
        , ContextKeyTypeEnumNumericList
        , ContextKeyTypeEnumBoolean
        , ContextKeyTypeEnumBooleanList
        , ContextKeyTypeEnumIp
        , ContextKeyTypeEnumIpList
        , ContextKeyTypeEnumBinary
        , ContextKeyTypeEnumBinaryList
        , ContextKeyTypeEnumDate
        , ContextKeyTypeEnumDateList
        ]
        (\val ->
            case val of
                ContextKeyTypeEnumString_ ->
                    "string"

                ContextKeyTypeEnumStringList ->
                    "stringList"

                ContextKeyTypeEnumNumeric ->
                    "numeric"

                ContextKeyTypeEnumNumericList ->
                    "numericList"

                ContextKeyTypeEnumBoolean ->
                    "boolean"

                ContextKeyTypeEnumBooleanList ->
                    "booleanList"

                ContextKeyTypeEnumIp ->
                    "ip"

                ContextKeyTypeEnumIpList ->
                    "ipList"

                ContextKeyTypeEnumBinary ->
                    "binary"

                ContextKeyTypeEnumBinaryList ->
                    "binaryList"

                ContextKeyTypeEnumDate ->
                    "date"

                ContextKeyTypeEnumDateList ->
                    "dateList"
        )


type alias ContextKeyValueListType =
    List String


type alias ContextKeyValueType =
    String


type alias CreateAccessKeyRequest =
    { userName : ExistingUserNameType }


type alias CreateAccessKeyResponse =
    { accessKey : AccessKey }


type alias CreateAccountAliasRequest =
    { accountAlias : AccountAliasType }


type alias CreateGroupRequest =
    { path : PathType, groupName : GroupNameType }


type alias CreateGroupResponse =
    { group : Group }


type alias CreateInstanceProfileRequest =
    { path : PathType, instanceProfileName : InstanceProfileNameType }


type alias CreateInstanceProfileResponse =
    { instanceProfile : InstanceProfile }


type alias CreateLoginProfileRequest =
    { userName : UserNameType, passwordResetRequired : Bool, password : PasswordType }


type alias CreateLoginProfileResponse =
    { loginProfile : LoginProfile }


type alias CreateOpenIdconnectProviderRequest =
    { url : OpenIdconnectProviderUrlType, thumbprintList : ThumbprintListType, clientIdlist : ClientIdlistType }


type alias CreateOpenIdconnectProviderResponse =
    { openIdconnectProviderArn : ArnType }


type alias CreatePolicyRequest =
    { policyName : PolicyNameType
    , policyDocument : PolicyDocumentType
    , path : PolicyPathType
    , description : PolicyDescriptionType
    }


type alias CreatePolicyResponse =
    { policy : Policy }


type alias CreatePolicyVersionRequest =
    { setAsDefault : Bool, policyDocument : PolicyDocumentType, policyArn : ArnType }


type alias CreatePolicyVersionResponse =
    { policyVersion : PolicyVersion }


type alias CreateRoleRequest =
    { tags : TagListType
    , roleName : RoleNameType
    , permissionsBoundary : ArnType
    , path : PathType
    , maxSessionDuration : RoleMaxSessionDurationType
    , description : RoleDescriptionType
    , assumeRolePolicyDocument : PolicyDocumentType
    }


type alias CreateRoleResponse =
    { role : Role }


type alias CreateSamlproviderRequest =
    { samlmetadataDocument : SamlmetadataDocumentType, name : SamlproviderNameType }


type alias CreateSamlproviderResponse =
    { samlproviderArn : ArnType }


type alias CreateServiceLinkedRoleRequest =
    { description : RoleDescriptionType, customSuffix : CustomSuffixType, awsserviceName : GroupNameType }


type alias CreateServiceLinkedRoleResponse =
    { role : Role }


type alias CreateServiceSpecificCredentialRequest =
    { userName : UserNameType, serviceName : String }


type alias CreateServiceSpecificCredentialResponse =
    { serviceSpecificCredential : ServiceSpecificCredential }


type alias CreateUserRequest =
    { userName : UserNameType, tags : TagListType, permissionsBoundary : ArnType, path : PathType }


type alias CreateUserResponse =
    { user : User }


type alias CreateVirtualMfadeviceRequest =
    { virtualMfadeviceName : VirtualMfadeviceName, path : PathType }


type alias CreateVirtualMfadeviceResponse =
    { virtualMfadevice : VirtualMfadevice }


type alias DeactivateMfadeviceRequest =
    { userName : ExistingUserNameType, serialNumber : SerialNumberType }


type alias DeleteAccessKeyRequest =
    { userName : ExistingUserNameType, accessKeyId : AccessKeyIdType }


type alias DeleteAccountAliasRequest =
    { accountAlias : AccountAliasType }


type alias DeleteGroupPolicyRequest =
    { policyName : PolicyNameType, groupName : GroupNameType }


type alias DeleteGroupRequest =
    { groupName : GroupNameType }


type alias DeleteInstanceProfileRequest =
    { instanceProfileName : InstanceProfileNameType }


type alias DeleteLoginProfileRequest =
    { userName : UserNameType }


type alias DeleteOpenIdconnectProviderRequest =
    { openIdconnectProviderArn : ArnType }


type alias DeletePolicyRequest =
    { policyArn : ArnType }


type alias DeletePolicyVersionRequest =
    { versionId : PolicyVersionIdType, policyArn : ArnType }


type alias DeleteRolePermissionsBoundaryRequest =
    { roleName : RoleNameType }


type alias DeleteRolePolicyRequest =
    { roleName : RoleNameType, policyName : PolicyNameType }


type alias DeleteRoleRequest =
    { roleName : RoleNameType }


type alias DeleteSamlproviderRequest =
    { samlproviderArn : ArnType }


type alias DeleteSshpublicKeyRequest =
    { userName : UserNameType, sshpublicKeyId : PublicKeyIdType }


type alias DeleteServerCertificateRequest =
    { serverCertificateName : ServerCertificateNameType }


type alias DeleteServiceLinkedRoleRequest =
    { roleName : RoleNameType }


type alias DeleteServiceLinkedRoleResponse =
    { deletionTaskId : DeletionTaskIdType }


type alias DeleteServiceSpecificCredentialRequest =
    { userName : UserNameType, serviceSpecificCredentialId : ServiceSpecificCredentialId }


type alias DeleteSigningCertificateRequest =
    { userName : ExistingUserNameType, certificateId : CertificateIdType }


type alias DeleteUserPermissionsBoundaryRequest =
    { userName : UserNameType }


type alias DeleteUserPolicyRequest =
    { userName : ExistingUserNameType, policyName : PolicyNameType }


type alias DeleteUserRequest =
    { userName : ExistingUserNameType }


type alias DeleteVirtualMfadeviceRequest =
    { serialNumber : SerialNumberType }


type alias DeletionTaskFailureReasonType =
    { roleUsageList : RoleUsageListType, reason : ReasonType }


type DeletionTaskIdType
    = DeletionTaskIdType String


deletionTaskIdType : Guarded String DeletionTaskIdType StringError
deletionTaskIdType =
    let
        guardFn val =
            Guarded.minLength 1 val |> Result.andThen (Guarded.maxLength 1000) |> Result.map DeletionTaskIdType

        unboxFn (DeletionTaskIdType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type DeletionTaskStatusType
    = DeletionTaskStatusTypeSucceeded
    | DeletionTaskStatusTypeInProgress
    | DeletionTaskStatusTypeFailed
    | DeletionTaskStatusTypeNotStarted


deletionTaskStatusType : Enum DeletionTaskStatusType
deletionTaskStatusType =
    Enum.make
        [ DeletionTaskStatusTypeSucceeded
        , DeletionTaskStatusTypeInProgress
        , DeletionTaskStatusTypeFailed
        , DeletionTaskStatusTypeNotStarted
        ]
        (\val ->
            case val of
                DeletionTaskStatusTypeSucceeded ->
                    "SUCCEEDED"

                DeletionTaskStatusTypeInProgress ->
                    "IN_PROGRESS"

                DeletionTaskStatusTypeFailed ->
                    "FAILED"

                DeletionTaskStatusTypeNotStarted ->
                    "NOT_STARTED"
        )


type alias DetachGroupPolicyRequest =
    { policyArn : ArnType, groupName : GroupNameType }


type alias DetachRolePolicyRequest =
    { roleName : RoleNameType, policyArn : ArnType }


type alias DetachUserPolicyRequest =
    { userName : UserNameType, policyArn : ArnType }


type alias EnableMfadeviceRequest =
    { userName : ExistingUserNameType
    , serialNumber : SerialNumberType
    , authenticationCode2 : AuthenticationCodeType
    , authenticationCode1 : AuthenticationCodeType
    }


type alias EntityDetails =
    { lastAuthenticated : DateType, entityInfo : EntityInfo }


type alias EntityInfo =
    { type_ : PolicyOwnerEntityType, path : PathType, name : UserNameType, id : IdType, arn : ArnType }


type EntityType
    = EntityTypeUser
    | EntityTypeRole
    | EntityTypeGroup
    | EntityTypeLocalManagedPolicy
    | EntityTypeAwsmanagedPolicy


entityType : Enum EntityType
entityType =
    Enum.make
        [ EntityTypeUser, EntityTypeRole, EntityTypeGroup, EntityTypeLocalManagedPolicy, EntityTypeAwsmanagedPolicy ]
        (\val ->
            case val of
                EntityTypeUser ->
                    "User"

                EntityTypeRole ->
                    "Role"

                EntityTypeGroup ->
                    "Group"

                EntityTypeLocalManagedPolicy ->
                    "LocalManagedPolicy"

                EntityTypeAwsmanagedPolicy ->
                    "AWSManagedPolicy"
        )


type alias ErrorDetails =
    { message : String, code : String }


type alias EvalDecisionDetailsType =
    Dict EvalDecisionSourceType PolicyEvaluationDecisionType


type EvalDecisionSourceType
    = EvalDecisionSourceType String


evalDecisionSourceType : Guarded String EvalDecisionSourceType StringError
evalDecisionSourceType =
    let
        guardFn val =
            Guarded.minLength 3 val |> Result.andThen (Guarded.maxLength 256) |> Result.map EvalDecisionSourceType

        unboxFn (EvalDecisionSourceType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type alias EvaluationResult =
    { resourceSpecificResults : ResourceSpecificResultListType
    , organizationsDecisionDetail : OrganizationsDecisionDetail
    , missingContextValues : ContextKeyNamesResultListType
    , matchedStatements : StatementListType
    , evalResourceName : ResourceNameType
    , evalDecisionDetails : EvalDecisionDetailsType
    , evalDecision : PolicyEvaluationDecisionType
    , evalActionName : ActionNameType
    }


type alias EvaluationResultsListType =
    List EvaluationResult


type alias GenerateCredentialReportResponse =
    { state : ReportStateType, description : String }


type alias GenerateOrganizationsAccessReportRequest =
    { organizationsPolicyId : OrganizationsPolicyIdType, entityPath : OrganizationsEntityPathType }


type alias GenerateOrganizationsAccessReportResponse =
    { jobId : JobIdtype }


type alias GenerateServiceLastAccessedDetailsRequest =
    { arn : ArnType }


type alias GenerateServiceLastAccessedDetailsResponse =
    { jobId : JobIdtype }


type alias GetAccessKeyLastUsedRequest =
    { accessKeyId : AccessKeyIdType }


type alias GetAccessKeyLastUsedResponse =
    { userName : ExistingUserNameType, accessKeyLastUsed : AccessKeyLastUsed }


type alias GetAccountAuthorizationDetailsRequest =
    { maxItems : MaxItemsType, marker : MarkerType, filter : EntityListType }


type alias GetAccountAuthorizationDetailsResponse =
    { userDetailList : UserDetailListType
    , roleDetailList : RoleDetailListType
    , policies : ManagedPolicyDetailListType
    , marker : String
    , isTruncated : Bool
    , groupDetailList : GroupDetailListType
    }


type alias GetAccountPasswordPolicyResponse =
    { passwordPolicy : PasswordPolicy }


type alias GetAccountSummaryResponse =
    { summaryMap : SummaryMapType }


type alias GetContextKeysForCustomPolicyRequest =
    { policyInputList : SimulationPolicyListType }


type alias GetContextKeysForPolicyResponse =
    { contextKeyNames : ContextKeyNamesResultListType }


type alias GetContextKeysForPrincipalPolicyRequest =
    { policySourceArn : ArnType, policyInputList : SimulationPolicyListType }


type alias GetCredentialReportResponse =
    { reportFormat : ReportFormatType, generatedTime : DateType, content : String }


type alias GetGroupPolicyRequest =
    { policyName : PolicyNameType, groupName : GroupNameType }


type alias GetGroupPolicyResponse =
    { policyName : PolicyNameType, policyDocument : PolicyDocumentType, groupName : GroupNameType }


type alias GetGroupRequest =
    { maxItems : MaxItemsType, marker : MarkerType, groupName : GroupNameType }


type alias GetGroupResponse =
    { users : UserListType, marker : String, isTruncated : Bool, group : Group }


type alias GetInstanceProfileRequest =
    { instanceProfileName : InstanceProfileNameType }


type alias GetInstanceProfileResponse =
    { instanceProfile : InstanceProfile }


type alias GetLoginProfileRequest =
    { userName : UserNameType }


type alias GetLoginProfileResponse =
    { loginProfile : LoginProfile }


type alias GetOpenIdconnectProviderRequest =
    { openIdconnectProviderArn : ArnType }


type alias GetOpenIdconnectProviderResponse =
    { url : OpenIdconnectProviderUrlType
    , thumbprintList : ThumbprintListType
    , createDate : DateType
    , clientIdlist : ClientIdlistType
    }


type alias GetOrganizationsAccessReportRequest =
    { sortKey : SortKeyType, maxItems : MaxItemsType, marker : MarkerType, jobId : JobIdtype }


type alias GetOrganizationsAccessReportResponse =
    { numberOfServicesNotAccessed : Int
    , numberOfServicesAccessible : Int
    , marker : MarkerType
    , jobStatus : JobStatusType
    , jobCreationDate : DateType
    , jobCompletionDate : DateType
    , isTruncated : Bool
    , errorDetails : ErrorDetails
    , accessDetails : AccessDetails
    }


type alias GetPolicyRequest =
    { policyArn : ArnType }


type alias GetPolicyResponse =
    { policy : Policy }


type alias GetPolicyVersionRequest =
    { versionId : PolicyVersionIdType, policyArn : ArnType }


type alias GetPolicyVersionResponse =
    { policyVersion : PolicyVersion }


type alias GetRolePolicyRequest =
    { roleName : RoleNameType, policyName : PolicyNameType }


type alias GetRolePolicyResponse =
    { roleName : RoleNameType, policyName : PolicyNameType, policyDocument : PolicyDocumentType }


type alias GetRoleRequest =
    { roleName : RoleNameType }


type alias GetRoleResponse =
    { role : Role }


type alias GetSamlproviderRequest =
    { samlproviderArn : ArnType }


type alias GetSamlproviderResponse =
    { validUntil : DateType, samlmetadataDocument : SamlmetadataDocumentType, createDate : DateType }


type alias GetSshpublicKeyRequest =
    { userName : UserNameType, sshpublicKeyId : PublicKeyIdType, encoding : EncodingType }


type alias GetSshpublicKeyResponse =
    { sshpublicKey : SshpublicKey }


type alias GetServerCertificateRequest =
    { serverCertificateName : ServerCertificateNameType }


type alias GetServerCertificateResponse =
    { serverCertificate : ServerCertificate }


type alias GetServiceLastAccessedDetailsRequest =
    { maxItems : MaxItemsType, marker : MarkerType, jobId : JobIdtype }


type alias GetServiceLastAccessedDetailsResponse =
    { servicesLastAccessed : ServicesLastAccessed
    , marker : String
    , jobStatus : JobStatusType
    , jobCreationDate : DateType
    , jobCompletionDate : DateType
    , isTruncated : Bool
    , error : ErrorDetails
    }


type alias GetServiceLastAccessedDetailsWithEntitiesRequest =
    { serviceNamespace : ServiceNamespaceType, maxItems : MaxItemsType, marker : MarkerType, jobId : JobIdtype }


type alias GetServiceLastAccessedDetailsWithEntitiesResponse =
    { marker : String
    , jobStatus : JobStatusType
    , jobCreationDate : DateType
    , jobCompletionDate : DateType
    , isTruncated : Bool
    , error : ErrorDetails
    , entityDetailsList : EntityDetailsListType
    }


type alias GetServiceLinkedRoleDeletionStatusRequest =
    { deletionTaskId : DeletionTaskIdType }


type alias GetServiceLinkedRoleDeletionStatusResponse =
    { status : DeletionTaskStatusType, reason : DeletionTaskFailureReasonType }


type alias GetUserPolicyRequest =
    { userName : ExistingUserNameType, policyName : PolicyNameType }


type alias GetUserPolicyResponse =
    { userName : ExistingUserNameType, policyName : PolicyNameType, policyDocument : PolicyDocumentType }


type alias GetUserRequest =
    { userName : ExistingUserNameType }


type alias GetUserResponse =
    { user : User }


type alias Group =
    { path : PathType, groupName : GroupNameType, groupId : IdType, createDate : DateType, arn : ArnType }


type alias GroupDetail =
    { path : PathType
    , groupPolicyList : PolicyDetailListType
    , groupName : GroupNameType
    , groupId : IdType
    , createDate : DateType
    , attachedManagedPolicies : AttachedPoliciesListType
    , arn : ArnType
    }


type alias InstanceProfile =
    { roles : RoleListType
    , path : PathType
    , instanceProfileName : InstanceProfileNameType
    , instanceProfileId : IdType
    , createDate : DateType
    , arn : ArnType
    }


type alias LineNumber =
    Int


type alias ListAccessKeysRequest =
    { userName : ExistingUserNameType, maxItems : MaxItemsType, marker : MarkerType }


type alias ListAccessKeysResponse =
    { marker : String, isTruncated : Bool, accessKeyMetadata : AccessKeyMetadataListType }


type alias ListAccountAliasesRequest =
    { maxItems : MaxItemsType, marker : MarkerType }


type alias ListAccountAliasesResponse =
    { marker : String, isTruncated : Bool, accountAliases : AccountAliasListType }


type alias ListAttachedGroupPoliciesRequest =
    { pathPrefix : PolicyPathType, maxItems : MaxItemsType, marker : MarkerType, groupName : GroupNameType }


type alias ListAttachedGroupPoliciesResponse =
    { marker : String, isTruncated : Bool, attachedPolicies : AttachedPoliciesListType }


type alias ListAttachedRolePoliciesRequest =
    { roleName : RoleNameType, pathPrefix : PolicyPathType, maxItems : MaxItemsType, marker : MarkerType }


type alias ListAttachedRolePoliciesResponse =
    { marker : String, isTruncated : Bool, attachedPolicies : AttachedPoliciesListType }


type alias ListAttachedUserPoliciesRequest =
    { userName : UserNameType, pathPrefix : PolicyPathType, maxItems : MaxItemsType, marker : MarkerType }


type alias ListAttachedUserPoliciesResponse =
    { marker : String, isTruncated : Bool, attachedPolicies : AttachedPoliciesListType }


type alias ListEntitiesForPolicyRequest =
    { policyUsageFilter : PolicyUsageType
    , policyArn : ArnType
    , pathPrefix : PathType
    , maxItems : MaxItemsType
    , marker : MarkerType
    , entityFilter : EntityType
    }


type alias ListEntitiesForPolicyResponse =
    { policyUsers : PolicyUserListType
    , policyRoles : PolicyRoleListType
    , policyGroups : PolicyGroupListType
    , marker : String
    , isTruncated : Bool
    }


type alias ListGroupPoliciesRequest =
    { maxItems : MaxItemsType, marker : MarkerType, groupName : GroupNameType }


type alias ListGroupPoliciesResponse =
    { policyNames : PolicyNameListType, marker : String, isTruncated : Bool }


type alias ListGroupsForUserRequest =
    { userName : ExistingUserNameType, maxItems : MaxItemsType, marker : MarkerType }


type alias ListGroupsForUserResponse =
    { marker : String, isTruncated : Bool, groups : GroupListType }


type alias ListGroupsRequest =
    { pathPrefix : PathPrefixType, maxItems : MaxItemsType, marker : MarkerType }


type alias ListGroupsResponse =
    { marker : String, isTruncated : Bool, groups : GroupListType }


type alias ListInstanceProfilesForRoleRequest =
    { roleName : RoleNameType, maxItems : MaxItemsType, marker : MarkerType }


type alias ListInstanceProfilesForRoleResponse =
    { marker : String, isTruncated : Bool, instanceProfiles : InstanceProfileListType }


type alias ListInstanceProfilesRequest =
    { pathPrefix : PathPrefixType, maxItems : MaxItemsType, marker : MarkerType }


type alias ListInstanceProfilesResponse =
    { marker : String, isTruncated : Bool, instanceProfiles : InstanceProfileListType }


type alias ListMfadevicesRequest =
    { userName : ExistingUserNameType, maxItems : MaxItemsType, marker : MarkerType }


type alias ListMfadevicesResponse =
    { marker : String, mfadevices : MfaDeviceListType, isTruncated : Bool }


type alias ListOpenIdconnectProvidersRequest =
    {}


type alias ListOpenIdconnectProvidersResponse =
    { openIdconnectProviderList : OpenIdconnectProviderListType }


type alias ListPoliciesGrantingServiceAccessEntry =
    { serviceNamespace : ServiceNamespaceType, policies : PolicyGrantingServiceAccessListType }


type alias ListPoliciesGrantingServiceAccessRequest =
    { serviceNamespaces : ServiceNamespaceListType, marker : MarkerType, arn : ArnType }


type alias ListPoliciesGrantingServiceAccessResponse =
    { policiesGrantingServiceAccess : ListPolicyGrantingServiceAccessResponseListType
    , marker : String
    , isTruncated : Bool
    }


type alias ListPoliciesRequest =
    { scope : PolicyScopeType
    , policyUsageFilter : PolicyUsageType
    , pathPrefix : PolicyPathType
    , onlyAttached : Bool
    , maxItems : MaxItemsType
    , marker : MarkerType
    }


type alias ListPoliciesResponse =
    { policies : PolicyListType, marker : String, isTruncated : Bool }


type alias ListPolicyVersionsRequest =
    { policyArn : ArnType, maxItems : MaxItemsType, marker : MarkerType }


type alias ListPolicyVersionsResponse =
    { versions : PolicyDocumentVersionListType, marker : String, isTruncated : Bool }


type alias ListRolePoliciesRequest =
    { roleName : RoleNameType, maxItems : MaxItemsType, marker : MarkerType }


type alias ListRolePoliciesResponse =
    { policyNames : PolicyNameListType, marker : String, isTruncated : Bool }


type alias ListRoleTagsRequest =
    { roleName : RoleNameType, maxItems : MaxItemsType, marker : MarkerType }


type alias ListRoleTagsResponse =
    { tags : TagListType, marker : String, isTruncated : Bool }


type alias ListRolesRequest =
    { pathPrefix : PathPrefixType, maxItems : MaxItemsType, marker : MarkerType }


type alias ListRolesResponse =
    { roles : RoleListType, marker : String, isTruncated : Bool }


type alias ListSamlprovidersRequest =
    {}


type alias ListSamlprovidersResponse =
    { samlproviderList : SamlproviderListType }


type alias ListSshpublicKeysRequest =
    { userName : UserNameType, maxItems : MaxItemsType, marker : MarkerType }


type alias ListSshpublicKeysResponse =
    { sshpublicKeys : SshpublicKeyListType, marker : String, isTruncated : Bool }


type alias ListServerCertificatesRequest =
    { pathPrefix : PathPrefixType, maxItems : MaxItemsType, marker : MarkerType }


type alias ListServerCertificatesResponse =
    { serverCertificateMetadataList : ServerCertificateMetadataListType, marker : String, isTruncated : Bool }


type alias ListServiceSpecificCredentialsRequest =
    { userName : UserNameType, serviceName : String }


type alias ListServiceSpecificCredentialsResponse =
    { serviceSpecificCredentials : ServiceSpecificCredentialsListType }


type alias ListSigningCertificatesRequest =
    { userName : ExistingUserNameType, maxItems : MaxItemsType, marker : MarkerType }


type alias ListSigningCertificatesResponse =
    { marker : String, isTruncated : Bool, certificates : CertificateListType }


type alias ListUserPoliciesRequest =
    { userName : ExistingUserNameType, maxItems : MaxItemsType, marker : MarkerType }


type alias ListUserPoliciesResponse =
    { policyNames : PolicyNameListType, marker : String, isTruncated : Bool }


type alias ListUserTagsRequest =
    { userName : ExistingUserNameType, maxItems : MaxItemsType, marker : MarkerType }


type alias ListUserTagsResponse =
    { tags : TagListType, marker : String, isTruncated : Bool }


type alias ListUsersRequest =
    { pathPrefix : PathPrefixType, maxItems : MaxItemsType, marker : MarkerType }


type alias ListUsersResponse =
    { users : UserListType, marker : String, isTruncated : Bool }


type alias ListVirtualMfadevicesRequest =
    { maxItems : MaxItemsType, marker : MarkerType, assignmentStatus : AssignmentStatusType }


type alias ListVirtualMfadevicesResponse =
    { virtualMfadevices : VirtualMfadeviceListType, marker : String, isTruncated : Bool }


type alias LoginProfile =
    { userName : UserNameType, passwordResetRequired : Bool, createDate : DateType }


type alias Mfadevice =
    { userName : UserNameType, serialNumber : SerialNumberType, enableDate : DateType }


type alias ManagedPolicyDetail =
    { updateDate : DateType
    , policyVersionList : PolicyDocumentVersionListType
    , policyName : PolicyNameType
    , policyId : IdType
    , permissionsBoundaryUsageCount : Int
    , path : PolicyPathType
    , isAttachable : Bool
    , description : PolicyDescriptionType
    , defaultVersionId : PolicyVersionIdType
    , createDate : DateType
    , attachmentCount : Int
    , arn : ArnType
    }


type alias ManagedPolicyDetailListType =
    List ManagedPolicyDetail


type alias OpenIdconnectProviderListEntry =
    { arn : ArnType }


type alias OpenIdconnectProviderListType =
    List OpenIdconnectProviderListEntry


type OpenIdconnectProviderUrlType
    = OpenIdconnectProviderUrlType String


openIdconnectProviderUrlType : Guarded String OpenIdconnectProviderUrlType StringError
openIdconnectProviderUrlType =
    let
        guardFn val =
            Guarded.minLength 1 val |> Result.andThen (Guarded.maxLength 255) |> Result.map OpenIdconnectProviderUrlType

        unboxFn (OpenIdconnectProviderUrlType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type alias OrganizationsDecisionDetail =
    { allowedByOrganizations : Bool }


type alias PasswordPolicy =
    { requireUppercaseCharacters : Bool
    , requireSymbols : Bool
    , requireNumbers : Bool
    , requireLowercaseCharacters : Bool
    , passwordReusePrevention : PasswordReusePreventionType
    , minimumPasswordLength : MinimumPasswordLengthType
    , maxPasswordAge : MaxPasswordAgeType
    , hardExpiry : Bool
    , expirePasswords : Bool
    , allowUsersToChangePassword : Bool
    }


type PermissionsBoundaryAttachmentType
    = PermissionsBoundaryAttachmentTypePermissionsBoundaryPolicy


permissionsBoundaryAttachmentType : Enum PermissionsBoundaryAttachmentType
permissionsBoundaryAttachmentType =
    Enum.make
        [ PermissionsBoundaryAttachmentTypePermissionsBoundaryPolicy ]
        (\val ->
            case val of
                PermissionsBoundaryAttachmentTypePermissionsBoundaryPolicy ->
                    "PermissionsBoundaryPolicy"
        )


type alias Policy =
    { updateDate : DateType
    , policyName : PolicyNameType
    , policyId : IdType
    , permissionsBoundaryUsageCount : Int
    , path : PolicyPathType
    , isAttachable : Bool
    , description : PolicyDescriptionType
    , defaultVersionId : PolicyVersionIdType
    , createDate : DateType
    , attachmentCount : Int
    , arn : ArnType
    }


type alias PolicyDetail =
    { policyName : PolicyNameType, policyDocument : PolicyDocumentType }


type PolicyEvaluationDecisionType
    = PolicyEvaluationDecisionTypeAllowed
    | PolicyEvaluationDecisionTypeExplicitDeny
    | PolicyEvaluationDecisionTypeImplicitDeny


policyEvaluationDecisionType : Enum PolicyEvaluationDecisionType
policyEvaluationDecisionType =
    Enum.make
        [ PolicyEvaluationDecisionTypeAllowed
        , PolicyEvaluationDecisionTypeExplicitDeny
        , PolicyEvaluationDecisionTypeImplicitDeny
        ]
        (\val ->
            case val of
                PolicyEvaluationDecisionTypeAllowed ->
                    "allowed"

                PolicyEvaluationDecisionTypeExplicitDeny ->
                    "explicitDeny"

                PolicyEvaluationDecisionTypeImplicitDeny ->
                    "implicitDeny"
        )


type alias PolicyGrantingServiceAccess =
    { policyType : PolicyType
    , policyName : PolicyNameType
    , policyArn : ArnType
    , entityType : PolicyOwnerEntityType
    , entityName : EntityNameType
    }


type alias PolicyGroup =
    { groupName : GroupNameType, groupId : IdType }


type alias PolicyGroupListType =
    List PolicyGroup


type alias PolicyIdentifierType =
    String


type alias PolicyRole =
    { roleName : RoleNameType, roleId : IdType }


type alias PolicyRoleListType =
    List PolicyRole


type PolicySourceType
    = PolicySourceTypeUser
    | PolicySourceTypeGroup
    | PolicySourceTypeRole
    | PolicySourceTypeAwsManaged
    | PolicySourceTypeUserManaged
    | PolicySourceTypeResource
    | PolicySourceTypeNone


policySourceType : Enum PolicySourceType
policySourceType =
    Enum.make
        [ PolicySourceTypeUser
        , PolicySourceTypeGroup
        , PolicySourceTypeRole
        , PolicySourceTypeAwsManaged
        , PolicySourceTypeUserManaged
        , PolicySourceTypeResource
        , PolicySourceTypeNone
        ]
        (\val ->
            case val of
                PolicySourceTypeUser ->
                    "user"

                PolicySourceTypeGroup ->
                    "group"

                PolicySourceTypeRole ->
                    "role"

                PolicySourceTypeAwsManaged ->
                    "aws-managed"

                PolicySourceTypeUserManaged ->
                    "user-managed"

                PolicySourceTypeResource ->
                    "resource"

                PolicySourceTypeNone ->
                    "none"
        )


type PolicyUsageType
    = PolicyUsageTypePermissionsPolicy
    | PolicyUsageTypePermissionsBoundary


policyUsageType : Enum PolicyUsageType
policyUsageType =
    Enum.make
        [ PolicyUsageTypePermissionsPolicy, PolicyUsageTypePermissionsBoundary ]
        (\val ->
            case val of
                PolicyUsageTypePermissionsPolicy ->
                    "PermissionsPolicy"

                PolicyUsageTypePermissionsBoundary ->
                    "PermissionsBoundary"
        )


type alias PolicyUser =
    { userName : UserNameType, userId : IdType }


type alias PolicyUserListType =
    List PolicyUser


type alias PolicyVersion =
    { versionId : PolicyVersionIdType, isDefaultVersion : Bool, document : PolicyDocumentType, createDate : DateType }


type alias Position =
    { line : Int, column : Int }


type alias PutGroupPolicyRequest =
    { policyName : PolicyNameType, policyDocument : PolicyDocumentType, groupName : GroupNameType }


type alias PutRolePermissionsBoundaryRequest =
    { roleName : RoleNameType, permissionsBoundary : ArnType }


type alias PutRolePolicyRequest =
    { roleName : RoleNameType, policyName : PolicyNameType, policyDocument : PolicyDocumentType }


type alias PutUserPermissionsBoundaryRequest =
    { userName : UserNameType, permissionsBoundary : ArnType }


type alias PutUserPolicyRequest =
    { userName : ExistingUserNameType, policyName : PolicyNameType, policyDocument : PolicyDocumentType }


type ReasonType
    = ReasonType String


reasonType : Guarded String ReasonType StringError
reasonType =
    let
        guardFn val =
            Guarded.maxLength 1000 val |> Result.map ReasonType

        unboxFn (ReasonType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type RegionNameType
    = RegionNameType String


regionNameType : Guarded String RegionNameType StringError
regionNameType =
    let
        guardFn val =
            Guarded.minLength 1 val |> Result.andThen (Guarded.maxLength 100) |> Result.map RegionNameType

        unboxFn (RegionNameType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type alias RemoveClientIdfromOpenIdconnectProviderRequest =
    { openIdconnectProviderArn : ArnType, clientId : ClientIdtype }


type alias RemoveRoleFromInstanceProfileRequest =
    { roleName : RoleNameType, instanceProfileName : InstanceProfileNameType }


type alias RemoveUserFromGroupRequest =
    { userName : ExistingUserNameType, groupName : GroupNameType }


type alias ReportContentType =
    String


type ReportFormatType
    = ReportFormatTypeTextCsv


reportFormatType : Enum ReportFormatType
reportFormatType =
    Enum.make
        [ ReportFormatTypeTextCsv ]
        (\val ->
            case val of
                ReportFormatTypeTextCsv ->
                    "text/csv"
        )


type alias ReportStateDescriptionType =
    String


type ReportStateType
    = ReportStateTypeStarted
    | ReportStateTypeInprogress
    | ReportStateTypeComplete


reportStateType : Enum ReportStateType
reportStateType =
    Enum.make
        [ ReportStateTypeStarted, ReportStateTypeInprogress, ReportStateTypeComplete ]
        (\val ->
            case val of
                ReportStateTypeStarted ->
                    "STARTED"

                ReportStateTypeInprogress ->
                    "INPROGRESS"

                ReportStateTypeComplete ->
                    "COMPLETE"
        )


type alias ResetServiceSpecificCredentialRequest =
    { userName : UserNameType, serviceSpecificCredentialId : ServiceSpecificCredentialId }


type alias ResetServiceSpecificCredentialResponse =
    { serviceSpecificCredential : ServiceSpecificCredential }


type ResourceHandlingOptionType
    = ResourceHandlingOptionType String


resourceHandlingOptionType : Guarded String ResourceHandlingOptionType StringError
resourceHandlingOptionType =
    let
        guardFn val =
            Guarded.minLength 1 val |> Result.andThen (Guarded.maxLength 64) |> Result.map ResourceHandlingOptionType

        unboxFn (ResourceHandlingOptionType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type alias ResourceNameListType =
    List ResourceNameType


type ResourceNameType
    = ResourceNameType String


resourceNameType : Guarded String ResourceNameType StringError
resourceNameType =
    let
        guardFn val =
            Guarded.minLength 1 val |> Result.andThen (Guarded.maxLength 2048) |> Result.map ResourceNameType

        unboxFn (ResourceNameType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type alias ResourceSpecificResult =
    { missingContextValues : ContextKeyNamesResultListType
    , matchedStatements : StatementListType
    , evalResourceName : ResourceNameType
    , evalResourceDecision : PolicyEvaluationDecisionType
    , evalDecisionDetails : EvalDecisionDetailsType
    }


type alias ResourceSpecificResultListType =
    List ResourceSpecificResult


type alias ResyncMfadeviceRequest =
    { userName : ExistingUserNameType
    , serialNumber : SerialNumberType
    , authenticationCode2 : AuthenticationCodeType
    , authenticationCode1 : AuthenticationCodeType
    }


type alias Role =
    { tags : TagListType
    , roleName : RoleNameType
    , roleId : IdType
    , permissionsBoundary : AttachedPermissionsBoundary
    , path : PathType
    , maxSessionDuration : RoleMaxSessionDurationType
    , description : RoleDescriptionType
    , createDate : DateType
    , assumeRolePolicyDocument : PolicyDocumentType
    , arn : ArnType
    }


type alias RoleDetail =
    { tags : TagListType
    , rolePolicyList : PolicyDetailListType
    , roleName : RoleNameType
    , roleId : IdType
    , permissionsBoundary : AttachedPermissionsBoundary
    , path : PathType
    , instanceProfileList : InstanceProfileListType
    , createDate : DateType
    , attachedManagedPolicies : AttachedPoliciesListType
    , assumeRolePolicyDocument : PolicyDocumentType
    , arn : ArnType
    }


type alias RoleUsageListType =
    List RoleUsageType


type alias RoleUsageType =
    { resources : ArnListType, region : RegionNameType }


type SamlmetadataDocumentType
    = SamlmetadataDocumentType String


samlmetadataDocumentType : Guarded String SamlmetadataDocumentType StringError
samlmetadataDocumentType =
    let
        guardFn val =
            Guarded.minLength 1000 val
                |> Result.andThen (Guarded.maxLength 10000000)
                |> Result.map SamlmetadataDocumentType

        unboxFn (SamlmetadataDocumentType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type alias SamlproviderListEntry =
    { validUntil : DateType, createDate : DateType, arn : ArnType }


type alias SamlproviderListType =
    List SamlproviderListEntry


type SamlproviderNameType
    = SamlproviderNameType String


samlproviderNameType : Guarded String SamlproviderNameType StringError
samlproviderNameType =
    let
        guardFn val =
            Guarded.minLength 1 val
                |> Result.andThen Guarded.maxLength 128 |> Result.andThen (Guarded.regexMatch "[\\w._-]+")
                |> Result.map SamlproviderNameType

        unboxFn (SamlproviderNameType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type alias SshpublicKey =
    { userName : UserNameType
    , uploadDate : DateType
    , status : StatusType
    , sshpublicKeyId : PublicKeyIdType
    , sshpublicKeyBody : PublicKeyMaterialType
    , fingerprint : PublicKeyFingerprintType
    }


type alias SshpublicKeyListType =
    List SshpublicKeyMetadata


type alias SshpublicKeyMetadata =
    { userName : UserNameType, uploadDate : DateType, status : StatusType, sshpublicKeyId : PublicKeyIdType }


type alias ServerCertificate =
    { serverCertificateMetadata : ServerCertificateMetadata
    , certificateChain : CertificateChainType
    , certificateBody : CertificateBodyType
    }


type alias ServerCertificateMetadata =
    { uploadDate : DateType
    , serverCertificateName : ServerCertificateNameType
    , serverCertificateId : IdType
    , path : PathType
    , expiration : DateType
    , arn : ArnType
    }


type alias ServiceLastAccessed =
    { totalAuthenticatedEntities : Int
    , serviceNamespace : ServiceNamespaceType
    , serviceName : String
    , lastAuthenticatedEntity : ArnType
    , lastAuthenticated : DateType
    }


type alias ServiceSpecificCredential =
    { userName : UserNameType
    , status : StatusType
    , serviceUserName : ServiceUserName
    , serviceSpecificCredentialId : ServiceSpecificCredentialId
    , servicePassword : String
    , serviceName : String
    , createDate : DateType
    }


type alias ServiceSpecificCredentialMetadata =
    { userName : UserNameType
    , status : StatusType
    , serviceUserName : ServiceUserName
    , serviceSpecificCredentialId : ServiceSpecificCredentialId
    , serviceName : String
    , createDate : DateType
    }


type alias ServiceSpecificCredentialsListType =
    List ServiceSpecificCredentialMetadata


type alias ServicesLastAccessed =
    List ServiceLastAccessed


type alias SetDefaultPolicyVersionRequest =
    { versionId : PolicyVersionIdType, policyArn : ArnType }


type alias SetSecurityTokenServicePreferencesRequest =
    { globalEndpointTokenVersion : GlobalEndpointTokenVersion }


type alias SigningCertificate =
    { userName : UserNameType
    , uploadDate : DateType
    , status : StatusType
    , certificateId : CertificateIdType
    , certificateBody : CertificateBodyType
    }


type alias SimulateCustomPolicyRequest =
    { resourcePolicy : PolicyDocumentType
    , resourceOwner : ResourceNameType
    , resourceHandlingOption : ResourceHandlingOptionType
    , resourceArns : ResourceNameListType
    , policyInputList : SimulationPolicyListType
    , maxItems : MaxItemsType
    , marker : MarkerType
    , contextEntries : ContextEntryListType
    , callerArn : ResourceNameType
    , actionNames : ActionNameListType
    }


type alias SimulatePolicyResponse =
    { marker : String, isTruncated : Bool, evaluationResults : EvaluationResultsListType }


type alias SimulatePrincipalPolicyRequest =
    { resourcePolicy : PolicyDocumentType
    , resourceOwner : ResourceNameType
    , resourceHandlingOption : ResourceHandlingOptionType
    , resourceArns : ResourceNameListType
    , policySourceArn : ArnType
    , policyInputList : SimulationPolicyListType
    , maxItems : MaxItemsType
    , marker : MarkerType
    , contextEntries : ContextEntryListType
    , callerArn : ResourceNameType
    , actionNames : ActionNameListType
    }


type alias SimulationPolicyListType =
    List PolicyDocumentType


type alias Statement =
    { startPosition : Position, sourcePolicyType : PolicySourceType, sourcePolicyId : String, endPosition : Position }


type alias StatementListType =
    List Statement


type alias Tag =
    { value : TagValueType, key : TagKeyType }


type alias TagRoleRequest =
    { tags : TagListType, roleName : RoleNameType }


type alias TagUserRequest =
    { userName : ExistingUserNameType, tags : TagListType }


type alias UntagRoleRequest =
    { tagKeys : TagKeyListType, roleName : RoleNameType }


type alias UntagUserRequest =
    { userName : ExistingUserNameType, tagKeys : TagKeyListType }


type alias UpdateAccessKeyRequest =
    { userName : ExistingUserNameType, status : StatusType, accessKeyId : AccessKeyIdType }


type alias UpdateAccountPasswordPolicyRequest =
    { requireUppercaseCharacters : Bool
    , requireSymbols : Bool
    , requireNumbers : Bool
    , requireLowercaseCharacters : Bool
    , passwordReusePrevention : PasswordReusePreventionType
    , minimumPasswordLength : MinimumPasswordLengthType
    , maxPasswordAge : MaxPasswordAgeType
    , hardExpiry : Bool
    , allowUsersToChangePassword : Bool
    }


type alias UpdateAssumeRolePolicyRequest =
    { roleName : RoleNameType, policyDocument : PolicyDocumentType }


type alias UpdateGroupRequest =
    { newPath : PathType, newGroupName : GroupNameType, groupName : GroupNameType }


type alias UpdateLoginProfileRequest =
    { userName : UserNameType, passwordResetRequired : Bool, password : PasswordType }


type alias UpdateOpenIdconnectProviderThumbprintRequest =
    { thumbprintList : ThumbprintListType, openIdconnectProviderArn : ArnType }


type alias UpdateRoleDescriptionRequest =
    { roleName : RoleNameType, description : RoleDescriptionType }


type alias UpdateRoleDescriptionResponse =
    { role : Role }


type alias UpdateRoleRequest =
    { roleName : RoleNameType, maxSessionDuration : RoleMaxSessionDurationType, description : RoleDescriptionType }


type alias UpdateRoleResponse =
    {}


type alias UpdateSamlproviderRequest =
    { samlproviderArn : ArnType, samlmetadataDocument : SamlmetadataDocumentType }


type alias UpdateSamlproviderResponse =
    { samlproviderArn : ArnType }


type alias UpdateSshpublicKeyRequest =
    { userName : UserNameType, status : StatusType, sshpublicKeyId : PublicKeyIdType }


type alias UpdateServerCertificateRequest =
    { serverCertificateName : ServerCertificateNameType
    , newServerCertificateName : ServerCertificateNameType
    , newPath : PathType
    }


type alias UpdateServiceSpecificCredentialRequest =
    { userName : UserNameType, status : StatusType, serviceSpecificCredentialId : ServiceSpecificCredentialId }


type alias UpdateSigningCertificateRequest =
    { userName : ExistingUserNameType, status : StatusType, certificateId : CertificateIdType }


type alias UpdateUserRequest =
    { userName : ExistingUserNameType, newUserName : UserNameType, newPath : PathType }


type alias UploadSshpublicKeyRequest =
    { userName : UserNameType, sshpublicKeyBody : PublicKeyMaterialType }


type alias UploadSshpublicKeyResponse =
    { sshpublicKey : SshpublicKey }


type alias UploadServerCertificateRequest =
    { serverCertificateName : ServerCertificateNameType
    , privateKey : PrivateKeyType
    , path : PathType
    , certificateChain : CertificateChainType
    , certificateBody : CertificateBodyType
    }


type alias UploadServerCertificateResponse =
    { serverCertificateMetadata : ServerCertificateMetadata }


type alias UploadSigningCertificateRequest =
    { userName : ExistingUserNameType, certificateBody : CertificateBodyType }


type alias UploadSigningCertificateResponse =
    { certificate : SigningCertificate }


type alias User =
    { userName : UserNameType
    , userId : IdType
    , tags : TagListType
    , permissionsBoundary : AttachedPermissionsBoundary
    , path : PathType
    , passwordLastUsed : DateType
    , createDate : DateType
    , arn : ArnType
    }


type alias UserDetail =
    { userPolicyList : PolicyDetailListType
    , userName : UserNameType
    , userId : IdType
    , tags : TagListType
    , permissionsBoundary : AttachedPermissionsBoundary
    , path : PathType
    , groupList : GroupNameListType
    , createDate : DateType
    , attachedManagedPolicies : AttachedPoliciesListType
    , arn : ArnType
    }


type alias VirtualMfadevice =
    { user : User
    , serialNumber : SerialNumberType
    , qrcodePng : String
    , enableDate : DateType
    , base32StringSeed : String
    }


type AccessKeyIdType
    = AccessKeyIdType String


accessKeyIdType : Guarded String AccessKeyIdType StringError
accessKeyIdType =
    let
        guardFn val =
            Guarded.minLength 16 val
                |> Result.andThen Guarded.maxLength 128 |> Result.andThen (Guarded.regexMatch "[\\w]+")
                |> Result.map AccessKeyIdType

        unboxFn (AccessKeyIdType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type alias AccessKeyMetadataListType =
    List AccessKeyMetadata


type alias AccessKeySecretType =
    String


type alias AccountAliasListType =
    List AccountAliasType


type AccountAliasType
    = AccountAliasType String


accountAliasType : Guarded String AccountAliasType StringError
accountAliasType =
    let
        guardFn val =
            Guarded.minLength 3 val
                |> Result.andThen
                    Guarded.maxLength 63
                        |> Result.andThen (Guarded.regexMatch "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$")
                |> Result.map AccountAliasType

        unboxFn (AccountAliasType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type ArnType
    = ArnType String


arnType : Guarded String ArnType StringError
arnType =
    let
        guardFn val =
            Guarded.minLength 20 val |> Result.andThen (Guarded.maxLength 2048) |> Result.map ArnType

        unboxFn (ArnType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type AssignmentStatusType
    = AssignmentStatusTypeAssigned
    | AssignmentStatusTypeUnassigned
    | AssignmentStatusTypeAny


assignmentStatusType : Enum AssignmentStatusType
assignmentStatusType =
    Enum.make
        [ AssignmentStatusTypeAssigned, AssignmentStatusTypeUnassigned, AssignmentStatusTypeAny ]
        (\val ->
            case val of
                AssignmentStatusTypeAssigned ->
                    "Assigned"

                AssignmentStatusTypeUnassigned ->
                    "Unassigned"

                AssignmentStatusTypeAny ->
                    "Any"
        )


type alias AttachedPoliciesListType =
    List AttachedPolicy


type alias AttachmentCountType =
    Int


type AuthenticationCodeType
    = AuthenticationCodeType String


authenticationCodeType : Guarded String AuthenticationCodeType StringError
authenticationCodeType =
    let
        guardFn val =
            Guarded.minLength 6 val
                |> Result.andThen Guarded.maxLength 6 |> Result.andThen (Guarded.regexMatch "[\\d]+")
                |> Result.map AuthenticationCodeType

        unboxFn (AuthenticationCodeType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type alias BooleanObjectType =
    Bool


type alias BooleanType =
    Bool


type CertificateBodyType
    = CertificateBodyType String


certificateBodyType : Guarded String CertificateBodyType StringError
certificateBodyType =
    let
        guardFn val =
            Guarded.minLength 1 val
                |> Result.andThen
                    Guarded.maxLength 16384
                        |> Result.andThen (Guarded.regexMatch "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+")
                |> Result.map CertificateBodyType

        unboxFn (CertificateBodyType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type CertificateChainType
    = CertificateChainType String


certificateChainType : Guarded String CertificateChainType StringError
certificateChainType =
    let
        guardFn val =
            Guarded.minLength 1 val
                |> Result.andThen
                    Guarded.maxLength 2097152
                        |> Result.andThen (Guarded.regexMatch "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+")
                |> Result.map CertificateChainType

        unboxFn (CertificateChainType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type CertificateIdType
    = CertificateIdType String


certificateIdType : Guarded String CertificateIdType StringError
certificateIdType =
    let
        guardFn val =
            Guarded.minLength 24 val
                |> Result.andThen Guarded.maxLength 128 |> Result.andThen (Guarded.regexMatch "[\\w]+")
                |> Result.map CertificateIdType

        unboxFn (CertificateIdType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type alias CertificateListType =
    List SigningCertificate


type alias ClientIdlistType =
    List ClientIdtype


type ClientIdtype
    = ClientIdtype String


clientIdtype : Guarded String ClientIdtype StringError
clientIdtype =
    let
        guardFn val =
            Guarded.minLength 1 val |> Result.andThen (Guarded.maxLength 255) |> Result.map ClientIdtype

        unboxFn (ClientIdtype val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type CustomSuffixType
    = CustomSuffixType String


customSuffixType : Guarded String CustomSuffixType StringError
customSuffixType =
    let
        guardFn val =
            Guarded.minLength 1 val
                |> Result.andThen Guarded.maxLength 64 |> Result.andThen (Guarded.regexMatch "[\\w+=,.@-]+")
                |> Result.map CustomSuffixType

        unboxFn (CustomSuffixType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type alias DateType =
    String


type EncodingType
    = EncodingTypeSsh
    | EncodingTypePem


encodingType : Enum EncodingType
encodingType =
    Enum.make
        [ EncodingTypeSsh, EncodingTypePem ]
        (\val ->
            case val of
                EncodingTypeSsh ->
                    "SSH"

                EncodingTypePem ->
                    "PEM"
        )


type alias EntityDetailsListType =
    List EntityDetails


type alias EntityListType =
    List EntityType


type EntityNameType
    = EntityNameType String


entityNameType : Guarded String EntityNameType StringError
entityNameType =
    let
        guardFn val =
            Guarded.minLength 1 val
                |> Result.andThen Guarded.maxLength 128 |> Result.andThen (Guarded.regexMatch "[\\w+=,.@-]+")
                |> Result.map EntityNameType

        unboxFn (EntityNameType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type ExistingUserNameType
    = ExistingUserNameType String


existingUserNameType : Guarded String ExistingUserNameType StringError
existingUserNameType =
    let
        guardFn val =
            Guarded.minLength 1 val
                |> Result.andThen Guarded.maxLength 128 |> Result.andThen (Guarded.regexMatch "[\\w+=,.@-]+")
                |> Result.map ExistingUserNameType

        unboxFn (ExistingUserNameType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type GlobalEndpointTokenVersion
    = GlobalEndpointTokenVersionV1Token
    | GlobalEndpointTokenVersionV2Token


globalEndpointTokenVersion : Enum GlobalEndpointTokenVersion
globalEndpointTokenVersion =
    Enum.make
        [ GlobalEndpointTokenVersionV1Token, GlobalEndpointTokenVersionV2Token ]
        (\val ->
            case val of
                GlobalEndpointTokenVersionV1Token ->
                    "v1Token"

                GlobalEndpointTokenVersionV2Token ->
                    "v2Token"
        )


type alias GroupDetailListType =
    List GroupDetail


type alias GroupListType =
    List Group


type alias GroupNameListType =
    List GroupNameType


type GroupNameType
    = GroupNameType String


groupNameType : Guarded String GroupNameType StringError
groupNameType =
    let
        guardFn val =
            Guarded.minLength 1 val
                |> Result.andThen Guarded.maxLength 128 |> Result.andThen (Guarded.regexMatch "[\\w+=,.@-]+")
                |> Result.map GroupNameType

        unboxFn (GroupNameType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type IdType
    = IdType String


idType : Guarded String IdType StringError
idType =
    let
        guardFn val =
            Guarded.minLength 16 val
                |> Result.andThen Guarded.maxLength 128 |> Result.andThen (Guarded.regexMatch "[\\w]+")
                |> Result.map IdType

        unboxFn (IdType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type alias InstanceProfileListType =
    List InstanceProfile


type InstanceProfileNameType
    = InstanceProfileNameType String


instanceProfileNameType : Guarded String InstanceProfileNameType StringError
instanceProfileNameType =
    let
        guardFn val =
            Guarded.minLength 1 val
                |> Result.andThen Guarded.maxLength 128 |> Result.andThen (Guarded.regexMatch "[\\w+=,.@-]+")
                |> Result.map InstanceProfileNameType

        unboxFn (InstanceProfileNameType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type alias IntegerType =
    Int


type JobIdtype
    = JobIdtype String


jobIdtype : Guarded String JobIdtype StringError
jobIdtype =
    let
        guardFn val =
            Guarded.minLength 36 val |> Result.andThen (Guarded.maxLength 36) |> Result.map JobIdtype

        unboxFn (JobIdtype val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type JobStatusType
    = JobStatusTypeInProgress
    | JobStatusTypeCompleted
    | JobStatusTypeFailed


jobStatusType : Enum JobStatusType
jobStatusType =
    Enum.make
        [ JobStatusTypeInProgress, JobStatusTypeCompleted, JobStatusTypeFailed ]
        (\val ->
            case val of
                JobStatusTypeInProgress ->
                    "IN_PROGRESS"

                JobStatusTypeCompleted ->
                    "COMPLETED"

                JobStatusTypeFailed ->
                    "FAILED"
        )


type alias ListPolicyGrantingServiceAccessResponseListType =
    List ListPoliciesGrantingServiceAccessEntry


type MarkerType
    = MarkerType String


markerType : Guarded String MarkerType StringError
markerType =
    let
        guardFn val =
            Guarded.minLength 1 val
                |> Result.andThen Guarded.maxLength 320 |> Result.andThen (Guarded.regexMatch "[\\u0020-\\u00FF]+")
                |> Result.map MarkerType

        unboxFn (MarkerType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type MaxItemsType
    = MaxItemsType Int


maxItemsType : Guarded Int MaxItemsType IntError
maxItemsType =
    let
        guardFn val =
            Guarded.gt 1 val |> Result.andThen (Guarded.lt 1000) |> Result.map MaxItemsType

        unboxFn (MaxItemsType val) =
            val
    in
    Guarded.make guardFn Json.Decode.int Json.Encode.int Guarded.intErrorToString unboxFn


type MaxPasswordAgeType
    = MaxPasswordAgeType Int


maxPasswordAgeType : Guarded Int MaxPasswordAgeType IntError
maxPasswordAgeType =
    let
        guardFn val =
            Guarded.gt 1 val |> Result.andThen (Guarded.lt 1095) |> Result.map MaxPasswordAgeType

        unboxFn (MaxPasswordAgeType val) =
            val
    in
    Guarded.make guardFn Json.Decode.int Json.Encode.int Guarded.intErrorToString unboxFn


type alias MfaDeviceListType =
    List Mfadevice


type MinimumPasswordLengthType
    = MinimumPasswordLengthType Int


minimumPasswordLengthType : Guarded Int MinimumPasswordLengthType IntError
minimumPasswordLengthType =
    let
        guardFn val =
            Guarded.gt 6 val |> Result.andThen (Guarded.lt 128) |> Result.map MinimumPasswordLengthType

        unboxFn (MinimumPasswordLengthType val) =
            val
    in
    Guarded.make guardFn Json.Decode.int Json.Encode.int Guarded.intErrorToString unboxFn


type OrganizationsEntityPathType
    = OrganizationsEntityPathType String


organizationsEntityPathType : Guarded String OrganizationsEntityPathType StringError
organizationsEntityPathType =
    let
        guardFn val =
            Guarded.minLength 19 val
                |> Result.andThen
                    Guarded.maxLength 427
                        |> Result.andThen (Guarded.regexMatch "^o-[0-9a-z]{10,32}\\/r-[0-9a-z]{4,32}[0-9a-z-\\/]*")
                |> Result.map OrganizationsEntityPathType

        unboxFn (OrganizationsEntityPathType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type OrganizationsPolicyIdType
    = OrganizationsPolicyIdType String


organizationsPolicyIdType : Guarded String OrganizationsPolicyIdType StringError
organizationsPolicyIdType =
    let
        guardFn val =
            Guarded.regexMatch "^p-[0-9a-zA-Z_]{8,128}$" val |> Result.map OrganizationsPolicyIdType

        unboxFn (OrganizationsPolicyIdType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type PasswordReusePreventionType
    = PasswordReusePreventionType Int


passwordReusePreventionType : Guarded Int PasswordReusePreventionType IntError
passwordReusePreventionType =
    let
        guardFn val =
            Guarded.gt 1 val |> Result.andThen (Guarded.lt 24) |> Result.map PasswordReusePreventionType

        unboxFn (PasswordReusePreventionType val) =
            val
    in
    Guarded.make guardFn Json.Decode.int Json.Encode.int Guarded.intErrorToString unboxFn


type PasswordType
    = PasswordType String


passwordType : Guarded String PasswordType StringError
passwordType =
    let
        guardFn val =
            Guarded.minLength 1 val
                |> Result.andThen
                    Guarded.maxLength 128
                        |> Result.andThen (Guarded.regexMatch "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+")
                |> Result.map PasswordType

        unboxFn (PasswordType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type PathPrefixType
    = PathPrefixType String


pathPrefixType : Guarded String PathPrefixType StringError
pathPrefixType =
    let
        guardFn val =
            Guarded.minLength 1 val
                |> Result.andThen
                    Guarded.maxLength 512 |> Result.andThen (Guarded.regexMatch "\\u002F[\\u0021-\\u007F]*")
                |> Result.map PathPrefixType

        unboxFn (PathPrefixType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type PathType
    = PathType String


pathType : Guarded String PathType StringError
pathType =
    let
        guardFn val =
            Guarded.minLength 1 val
                |> Result.andThen
                    Guarded.maxLength 512
                        |> Result.andThen (Guarded.regexMatch "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)")
                |> Result.map PathType

        unboxFn (PathType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type PolicyDescriptionType
    = PolicyDescriptionType String


policyDescriptionType : Guarded String PolicyDescriptionType StringError
policyDescriptionType =
    let
        guardFn val =
            Guarded.maxLength 1000 val |> Result.map PolicyDescriptionType

        unboxFn (PolicyDescriptionType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type alias PolicyDetailListType =
    List PolicyDetail


type PolicyDocumentType
    = PolicyDocumentType String


policyDocumentType : Guarded String PolicyDocumentType StringError
policyDocumentType =
    let
        guardFn val =
            Guarded.minLength 1 val
                |> Result.andThen
                    Guarded.maxLength 131072
                        |> Result.andThen (Guarded.regexMatch "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+")
                |> Result.map PolicyDocumentType

        unboxFn (PolicyDocumentType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type alias PolicyDocumentVersionListType =
    List PolicyVersion


type alias PolicyGrantingServiceAccessListType =
    List PolicyGrantingServiceAccess


type alias PolicyListType =
    List Policy


type alias PolicyNameListType =
    List PolicyNameType


type PolicyNameType
    = PolicyNameType String


policyNameType : Guarded String PolicyNameType StringError
policyNameType =
    let
        guardFn val =
            Guarded.minLength 1 val
                |> Result.andThen Guarded.maxLength 128 |> Result.andThen (Guarded.regexMatch "[\\w+=,.@-]+")
                |> Result.map PolicyNameType

        unboxFn (PolicyNameType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type PolicyOwnerEntityType
    = PolicyOwnerEntityTypeUser
    | PolicyOwnerEntityTypeRole
    | PolicyOwnerEntityTypeGroup


policyOwnerEntityType : Enum PolicyOwnerEntityType
policyOwnerEntityType =
    Enum.make
        [ PolicyOwnerEntityTypeUser, PolicyOwnerEntityTypeRole, PolicyOwnerEntityTypeGroup ]
        (\val ->
            case val of
                PolicyOwnerEntityTypeUser ->
                    "USER"

                PolicyOwnerEntityTypeRole ->
                    "ROLE"

                PolicyOwnerEntityTypeGroup ->
                    "GROUP"
        )


type PolicyPathType
    = PolicyPathType String


policyPathType : Guarded String PolicyPathType StringError
policyPathType =
    let
        guardFn val =
            Guarded.minLength 1 val
                |> Result.andThen
                    Guarded.maxLength 512 |> Result.andThen (Guarded.regexMatch "((/[A-Za-z0-9\\.,\\+@=_-]+)*)/")
                |> Result.map PolicyPathType

        unboxFn (PolicyPathType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type PolicyScopeType
    = PolicyScopeTypeAll
    | PolicyScopeTypeAws
    | PolicyScopeTypeLocal


policyScopeType : Enum PolicyScopeType
policyScopeType =
    Enum.make
        [ PolicyScopeTypeAll, PolicyScopeTypeAws, PolicyScopeTypeLocal ]
        (\val ->
            case val of
                PolicyScopeTypeAll ->
                    "All"

                PolicyScopeTypeAws ->
                    "AWS"

                PolicyScopeTypeLocal ->
                    "Local"
        )


type PolicyType
    = PolicyTypeInline
    | PolicyTypeManaged


policyType : Enum PolicyType
policyType =
    Enum.make
        [ PolicyTypeInline, PolicyTypeManaged ]
        (\val ->
            case val of
                PolicyTypeInline ->
                    "INLINE"

                PolicyTypeManaged ->
                    "MANAGED"
        )


type PolicyVersionIdType
    = PolicyVersionIdType String


policyVersionIdType : Guarded String PolicyVersionIdType StringError
policyVersionIdType =
    let
        guardFn val =
            Guarded.regexMatch "v[1-9][0-9]*(\\.[A-Za-z0-9-]*)?" val |> Result.map PolicyVersionIdType

        unboxFn (PolicyVersionIdType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type PrivateKeyType
    = PrivateKeyType String


privateKeyType : Guarded String PrivateKeyType StringError
privateKeyType =
    let
        guardFn val =
            Guarded.minLength 1 val
                |> Result.andThen
                    Guarded.maxLength 16384
                        |> Result.andThen (Guarded.regexMatch "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+")
                |> Result.map PrivateKeyType

        unboxFn (PrivateKeyType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type PublicKeyFingerprintType
    = PublicKeyFingerprintType String


publicKeyFingerprintType : Guarded String PublicKeyFingerprintType StringError
publicKeyFingerprintType =
    let
        guardFn val =
            Guarded.minLength 48 val
                |> Result.andThen Guarded.maxLength 48 |> Result.andThen (Guarded.regexMatch "[:\\w]+")
                |> Result.map PublicKeyFingerprintType

        unboxFn (PublicKeyFingerprintType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type PublicKeyIdType
    = PublicKeyIdType String


publicKeyIdType : Guarded String PublicKeyIdType StringError
publicKeyIdType =
    let
        guardFn val =
            Guarded.minLength 20 val
                |> Result.andThen Guarded.maxLength 128 |> Result.andThen (Guarded.regexMatch "[\\w]+")
                |> Result.map PublicKeyIdType

        unboxFn (PublicKeyIdType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type PublicKeyMaterialType
    = PublicKeyMaterialType String


publicKeyMaterialType : Guarded String PublicKeyMaterialType StringError
publicKeyMaterialType =
    let
        guardFn val =
            Guarded.minLength 1 val
                |> Result.andThen
                    Guarded.maxLength 16384
                        |> Result.andThen (Guarded.regexMatch "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+")
                |> Result.map PublicKeyMaterialType

        unboxFn (PublicKeyMaterialType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type alias ResponseMarkerType =
    String


type RoleDescriptionType
    = RoleDescriptionType String


roleDescriptionType : Guarded String RoleDescriptionType StringError
roleDescriptionType =
    let
        guardFn val =
            Guarded.maxLength 1000 val
                |> Result.andThen (Guarded.regexMatch "[\\p{L}\\p{M}\\p{Z}\\p{S}\\p{N}\\p{P}]*")
                |> Result.map RoleDescriptionType

        unboxFn (RoleDescriptionType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type alias RoleDetailListType =
    List RoleDetail


type alias RoleListType =
    List Role


type RoleMaxSessionDurationType
    = RoleMaxSessionDurationType Int


roleMaxSessionDurationType : Guarded Int RoleMaxSessionDurationType IntError
roleMaxSessionDurationType =
    let
        guardFn val =
            Guarded.gt 3600 val |> Result.andThen (Guarded.lt 43200) |> Result.map RoleMaxSessionDurationType

        unboxFn (RoleMaxSessionDurationType val) =
            val
    in
    Guarded.make guardFn Json.Decode.int Json.Encode.int Guarded.intErrorToString unboxFn


type RoleNameType
    = RoleNameType String


roleNameType : Guarded String RoleNameType StringError
roleNameType =
    let
        guardFn val =
            Guarded.minLength 1 val
                |> Result.andThen Guarded.maxLength 64 |> Result.andThen (Guarded.regexMatch "[\\w+=,.@-]+")
                |> Result.map RoleNameType

        unboxFn (RoleNameType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type SerialNumberType
    = SerialNumberType String


serialNumberType : Guarded String SerialNumberType StringError
serialNumberType =
    let
        guardFn val =
            Guarded.minLength 9 val
                |> Result.andThen Guarded.maxLength 256 |> Result.andThen (Guarded.regexMatch "[\\w+=/:,.@-]+")
                |> Result.map SerialNumberType

        unboxFn (SerialNumberType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type alias ServerCertificateMetadataListType =
    List ServerCertificateMetadata


type ServerCertificateNameType
    = ServerCertificateNameType String


serverCertificateNameType : Guarded String ServerCertificateNameType StringError
serverCertificateNameType =
    let
        guardFn val =
            Guarded.minLength 1 val
                |> Result.andThen Guarded.maxLength 128 |> Result.andThen (Guarded.regexMatch "[\\w+=,.@-]+")
                |> Result.map ServerCertificateNameType

        unboxFn (ServerCertificateNameType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type alias ServiceName =
    String


type alias ServiceNameType =
    String


type alias ServiceNamespaceListType =
    List ServiceNamespaceType


type ServiceNamespaceType
    = ServiceNamespaceType String


serviceNamespaceType : Guarded String ServiceNamespaceType StringError
serviceNamespaceType =
    let
        guardFn val =
            Guarded.minLength 1 val
                |> Result.andThen Guarded.maxLength 64 |> Result.andThen (Guarded.regexMatch "[\\w-]*")
                |> Result.map ServiceNamespaceType

        unboxFn (ServiceNamespaceType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type alias ServicePassword =
    String


type ServiceSpecificCredentialId
    = ServiceSpecificCredentialId String


serviceSpecificCredentialId : Guarded String ServiceSpecificCredentialId StringError
serviceSpecificCredentialId =
    let
        guardFn val =
            Guarded.minLength 20 val
                |> Result.andThen Guarded.maxLength 128 |> Result.andThen (Guarded.regexMatch "[\\w]+")
                |> Result.map ServiceSpecificCredentialId

        unboxFn (ServiceSpecificCredentialId val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type ServiceUserName
    = ServiceUserName String


serviceUserName : Guarded String ServiceUserName StringError
serviceUserName =
    let
        guardFn val =
            Guarded.minLength 17 val
                |> Result.andThen Guarded.maxLength 200 |> Result.andThen (Guarded.regexMatch "[\\w+=,.@-]+")
                |> Result.map ServiceUserName

        unboxFn (ServiceUserName val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type SortKeyType
    = SortKeyTypeServiceNamespaceAscending
    | SortKeyTypeServiceNamespaceDescending
    | SortKeyTypeLastAuthenticatedTimeAscending
    | SortKeyTypeLastAuthenticatedTimeDescending


sortKeyType : Enum SortKeyType
sortKeyType =
    Enum.make
        [ SortKeyTypeServiceNamespaceAscending
        , SortKeyTypeServiceNamespaceDescending
        , SortKeyTypeLastAuthenticatedTimeAscending
        , SortKeyTypeLastAuthenticatedTimeDescending
        ]
        (\val ->
            case val of
                SortKeyTypeServiceNamespaceAscending ->
                    "SERVICE_NAMESPACE_ASCENDING"

                SortKeyTypeServiceNamespaceDescending ->
                    "SERVICE_NAMESPACE_DESCENDING"

                SortKeyTypeLastAuthenticatedTimeAscending ->
                    "LAST_AUTHENTICATED_TIME_ASCENDING"

                SortKeyTypeLastAuthenticatedTimeDescending ->
                    "LAST_AUTHENTICATED_TIME_DESCENDING"
        )


type StatusType
    = StatusTypeActive
    | StatusTypeInactive


statusType : Enum StatusType
statusType =
    Enum.make
        [ StatusTypeActive, StatusTypeInactive ]
        (\val ->
            case val of
                StatusTypeActive ->
                    "Active"

                StatusTypeInactive ->
                    "Inactive"
        )


type alias StringType =
    String


type SummaryKeyType
    = SummaryKeyTypeUsers
    | SummaryKeyTypeUsersQuota
    | SummaryKeyTypeGroups
    | SummaryKeyTypeGroupsQuota
    | SummaryKeyTypeServerCertificates
    | SummaryKeyTypeServerCertificatesQuota
    | SummaryKeyTypeUserPolicySizeQuota
    | SummaryKeyTypeGroupPolicySizeQuota
    | SummaryKeyTypeGroupsPerUserQuota
    | SummaryKeyTypeSigningCertificatesPerUserQuota
    | SummaryKeyTypeAccessKeysPerUserQuota
    | SummaryKeyTypeMfadevices
    | SummaryKeyTypeMfadevicesInUse
    | SummaryKeyTypeAccountMfaenabled
    | SummaryKeyTypeAccountAccessKeysPresent
    | SummaryKeyTypeAccountSigningCertificatesPresent
    | SummaryKeyTypeAttachedPoliciesPerGroupQuota
    | SummaryKeyTypeAttachedPoliciesPerRoleQuota
    | SummaryKeyTypeAttachedPoliciesPerUserQuota
    | SummaryKeyTypePolicies
    | SummaryKeyTypePoliciesQuota
    | SummaryKeyTypePolicySizeQuota
    | SummaryKeyTypePolicyVersionsInUse
    | SummaryKeyTypePolicyVersionsInUseQuota
    | SummaryKeyTypeVersionsPerPolicyQuota
    | SummaryKeyTypeGlobalEndpointTokenVersion


summaryKeyType : Enum SummaryKeyType
summaryKeyType =
    Enum.make
        [ SummaryKeyTypeUsers
        , SummaryKeyTypeUsersQuota
        , SummaryKeyTypeGroups
        , SummaryKeyTypeGroupsQuota
        , SummaryKeyTypeServerCertificates
        , SummaryKeyTypeServerCertificatesQuota
        , SummaryKeyTypeUserPolicySizeQuota
        , SummaryKeyTypeGroupPolicySizeQuota
        , SummaryKeyTypeGroupsPerUserQuota
        , SummaryKeyTypeSigningCertificatesPerUserQuota
        , SummaryKeyTypeAccessKeysPerUserQuota
        , SummaryKeyTypeMfadevices
        , SummaryKeyTypeMfadevicesInUse
        , SummaryKeyTypeAccountMfaenabled
        , SummaryKeyTypeAccountAccessKeysPresent
        , SummaryKeyTypeAccountSigningCertificatesPresent
        , SummaryKeyTypeAttachedPoliciesPerGroupQuota
        , SummaryKeyTypeAttachedPoliciesPerRoleQuota
        , SummaryKeyTypeAttachedPoliciesPerUserQuota
        , SummaryKeyTypePolicies
        , SummaryKeyTypePoliciesQuota
        , SummaryKeyTypePolicySizeQuota
        , SummaryKeyTypePolicyVersionsInUse
        , SummaryKeyTypePolicyVersionsInUseQuota
        , SummaryKeyTypeVersionsPerPolicyQuota
        , SummaryKeyTypeGlobalEndpointTokenVersion
        ]
        (\val ->
            case val of
                SummaryKeyTypeUsers ->
                    "Users"

                SummaryKeyTypeUsersQuota ->
                    "UsersQuota"

                SummaryKeyTypeGroups ->
                    "Groups"

                SummaryKeyTypeGroupsQuota ->
                    "GroupsQuota"

                SummaryKeyTypeServerCertificates ->
                    "ServerCertificates"

                SummaryKeyTypeServerCertificatesQuota ->
                    "ServerCertificatesQuota"

                SummaryKeyTypeUserPolicySizeQuota ->
                    "UserPolicySizeQuota"

                SummaryKeyTypeGroupPolicySizeQuota ->
                    "GroupPolicySizeQuota"

                SummaryKeyTypeGroupsPerUserQuota ->
                    "GroupsPerUserQuota"

                SummaryKeyTypeSigningCertificatesPerUserQuota ->
                    "SigningCertificatesPerUserQuota"

                SummaryKeyTypeAccessKeysPerUserQuota ->
                    "AccessKeysPerUserQuota"

                SummaryKeyTypeMfadevices ->
                    "MFADevices"

                SummaryKeyTypeMfadevicesInUse ->
                    "MFADevicesInUse"

                SummaryKeyTypeAccountMfaenabled ->
                    "AccountMFAEnabled"

                SummaryKeyTypeAccountAccessKeysPresent ->
                    "AccountAccessKeysPresent"

                SummaryKeyTypeAccountSigningCertificatesPresent ->
                    "AccountSigningCertificatesPresent"

                SummaryKeyTypeAttachedPoliciesPerGroupQuota ->
                    "AttachedPoliciesPerGroupQuota"

                SummaryKeyTypeAttachedPoliciesPerRoleQuota ->
                    "AttachedPoliciesPerRoleQuota"

                SummaryKeyTypeAttachedPoliciesPerUserQuota ->
                    "AttachedPoliciesPerUserQuota"

                SummaryKeyTypePolicies ->
                    "Policies"

                SummaryKeyTypePoliciesQuota ->
                    "PoliciesQuota"

                SummaryKeyTypePolicySizeQuota ->
                    "PolicySizeQuota"

                SummaryKeyTypePolicyVersionsInUse ->
                    "PolicyVersionsInUse"

                SummaryKeyTypePolicyVersionsInUseQuota ->
                    "PolicyVersionsInUseQuota"

                SummaryKeyTypeVersionsPerPolicyQuota ->
                    "VersionsPerPolicyQuota"

                SummaryKeyTypeGlobalEndpointTokenVersion ->
                    "GlobalEndpointTokenVersion"
        )


type alias SummaryMapType =
    Dict SummaryKeyType Int


type alias SummaryValueType =
    Int


type alias TagKeyListType =
    List TagKeyType


type TagKeyType
    = TagKeyType String


tagKeyType : Guarded String TagKeyType StringError
tagKeyType =
    let
        guardFn val =
            Guarded.minLength 1 val
                |> Result.andThen
                    Guarded.maxLength 128 |> Result.andThen (Guarded.regexMatch "[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]+")
                |> Result.map TagKeyType

        unboxFn (TagKeyType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type alias TagListType =
    List Tag


type TagValueType
    = TagValueType String


tagValueType : Guarded String TagValueType StringError
tagValueType =
    let
        guardFn val =
            Guarded.minLength 0 val
                |> Result.andThen
                    Guarded.maxLength 256 |> Result.andThen (Guarded.regexMatch "[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*")
                |> Result.map TagValueType

        unboxFn (TagValueType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type alias ThumbprintListType =
    List ThumbprintType


type ThumbprintType
    = ThumbprintType String


thumbprintType : Guarded String ThumbprintType StringError
thumbprintType =
    let
        guardFn val =
            Guarded.minLength 40 val |> Result.andThen (Guarded.maxLength 40) |> Result.map ThumbprintType

        unboxFn (ThumbprintType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type alias UserDetailListType =
    List UserDetail


type alias UserListType =
    List User


type UserNameType
    = UserNameType String


userNameType : Guarded String UserNameType StringError
userNameType =
    let
        guardFn val =
            Guarded.minLength 1 val
                |> Result.andThen Guarded.maxLength 64 |> Result.andThen (Guarded.regexMatch "[\\w+=,.@-]+")
                |> Result.map UserNameType

        unboxFn (UserNameType val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


type alias VirtualMfadeviceListType =
    List VirtualMfadevice


type VirtualMfadeviceName
    = VirtualMfadeviceName String


virtualMfadeviceName : Guarded String VirtualMfadeviceName StringError
virtualMfadeviceName =
    let
        guardFn val =
            Guarded.minLength 1 val
                |> Result.andThen (Guarded.regexMatch "[\\w+=,.@-]+")
                |> Result.map VirtualMfadeviceName

        unboxFn (VirtualMfadeviceName val) =
            val
    in
    Guarded.make guardFn Json.Decode.string Json.Encode.string Guarded.stringErrorToString unboxFn


{-| Codec for VirtualMfadeviceName. -}
virtualMfadeviceNameCodec : Codec VirtualMfadeviceName
virtualMfadeviceNameCodec =
    Codec.build (Guarded.encoder virtualMfadeviceName) (Guarded.decoder virtualMfadeviceName)


{-| Codec for VirtualMfadeviceListType. -}
virtualMfadeviceListTypeCodec : Codec VirtualMfadeviceListType
virtualMfadeviceListTypeCodec =
    Codec.list virtualMfadeviceCodec


{-| Codec for UserNameType. -}
userNameTypeCodec : Codec UserNameType
userNameTypeCodec =
    Codec.build (Guarded.encoder userNameType) (Guarded.decoder userNameType)


{-| Codec for UserListType. -}
userListTypeCodec : Codec UserListType
userListTypeCodec =
    Codec.list userCodec


{-| Codec for UserDetailListType. -}
userDetailListTypeCodec : Codec UserDetailListType
userDetailListTypeCodec =
    Codec.list userDetailCodec


{-| Codec for ThumbprintType. -}
thumbprintTypeCodec : Codec ThumbprintType
thumbprintTypeCodec =
    Codec.build (Guarded.encoder thumbprintType) (Guarded.decoder thumbprintType)


{-| Codec for ThumbprintListType. -}
thumbprintListTypeCodec : Codec ThumbprintListType
thumbprintListTypeCodec =
    Codec.list thumbprintTypeCodec


{-| Codec for TagValueType. -}
tagValueTypeCodec : Codec TagValueType
tagValueTypeCodec =
    Codec.build (Guarded.encoder tagValueType) (Guarded.decoder tagValueType)


{-| Codec for TagListType. -}
tagListTypeCodec : Codec TagListType
tagListTypeCodec =
    Codec.list tagCodec


{-| Codec for TagKeyType. -}
tagKeyTypeCodec : Codec TagKeyType
tagKeyTypeCodec =
    Codec.build (Guarded.encoder tagKeyType) (Guarded.decoder tagKeyType)


{-| Codec for TagKeyListType. -}
tagKeyListTypeCodec : Codec TagKeyListType
tagKeyListTypeCodec =
    Codec.list tagKeyTypeCodec


{-| Codec for SummaryValueType. -}
summaryValueTypeCodec : Codec SummaryValueType
summaryValueTypeCodec =
    Codec.int


{-| Codec for SummaryMapType. -}
summaryMapTypeCodec : Codec SummaryMapType
summaryMapTypeCodec =
    Codec.dict Codec.int


{-| Codec for SummaryKeyType. -}
summaryKeyTypeCodec : Codec SummaryKeyType
summaryKeyTypeCodec =
    Codec.build (Enum.encoder summaryKeyType) (Enum.decoder summaryKeyType)


{-| Codec for StringType. -}
stringTypeCodec : Codec StringType
stringTypeCodec =
    Codec.string


{-| Codec for StatusType. -}
statusTypeCodec : Codec StatusType
statusTypeCodec =
    Codec.build (Enum.encoder statusType) (Enum.decoder statusType)


{-| Codec for SortKeyType. -}
sortKeyTypeCodec : Codec SortKeyType
sortKeyTypeCodec =
    Codec.build (Enum.encoder sortKeyType) (Enum.decoder sortKeyType)


{-| Codec for ServiceUserName. -}
serviceUserNameCodec : Codec ServiceUserName
serviceUserNameCodec =
    Codec.build (Guarded.encoder serviceUserName) (Guarded.decoder serviceUserName)


{-| Codec for ServiceSpecificCredentialId. -}
serviceSpecificCredentialIdCodec : Codec ServiceSpecificCredentialId
serviceSpecificCredentialIdCodec =
    Codec.build (Guarded.encoder serviceSpecificCredentialId) (Guarded.decoder serviceSpecificCredentialId)


{-| Codec for ServicePassword. -}
servicePasswordCodec : Codec ServicePassword
servicePasswordCodec =
    Codec.string


{-| Codec for ServiceNamespaceType. -}
serviceNamespaceTypeCodec : Codec ServiceNamespaceType
serviceNamespaceTypeCodec =
    Codec.build (Guarded.encoder serviceNamespaceType) (Guarded.decoder serviceNamespaceType)


{-| Codec for ServiceNamespaceListType. -}
serviceNamespaceListTypeCodec : Codec ServiceNamespaceListType
serviceNamespaceListTypeCodec =
    Codec.list serviceNamespaceTypeCodec


{-| Codec for ServiceNameType. -}
serviceNameTypeCodec : Codec ServiceNameType
serviceNameTypeCodec =
    Codec.string


{-| Codec for ServiceName. -}
serviceNameCodec : Codec ServiceName
serviceNameCodec =
    Codec.string


{-| Codec for ServerCertificateNameType. -}
serverCertificateNameTypeCodec : Codec ServerCertificateNameType
serverCertificateNameTypeCodec =
    Codec.build (Guarded.encoder serverCertificateNameType) (Guarded.decoder serverCertificateNameType)


{-| Codec for ServerCertificateMetadataListType. -}
serverCertificateMetadataListTypeCodec : Codec ServerCertificateMetadataListType
serverCertificateMetadataListTypeCodec =
    Codec.list serverCertificateMetadataCodec


{-| Codec for SerialNumberType. -}
serialNumberTypeCodec : Codec SerialNumberType
serialNumberTypeCodec =
    Codec.build (Guarded.encoder serialNumberType) (Guarded.decoder serialNumberType)


{-| Codec for RoleNameType. -}
roleNameTypeCodec : Codec RoleNameType
roleNameTypeCodec =
    Codec.build (Guarded.encoder roleNameType) (Guarded.decoder roleNameType)


{-| Codec for RoleMaxSessionDurationType. -}
roleMaxSessionDurationTypeCodec : Codec RoleMaxSessionDurationType
roleMaxSessionDurationTypeCodec =
    Codec.build (Guarded.encoder roleMaxSessionDurationType) (Guarded.decoder roleMaxSessionDurationType)


{-| Codec for RoleListType. -}
roleListTypeCodec : Codec RoleListType
roleListTypeCodec =
    Codec.list roleCodec


{-| Codec for RoleDetailListType. -}
roleDetailListTypeCodec : Codec RoleDetailListType
roleDetailListTypeCodec =
    Codec.list roleDetailCodec


{-| Codec for RoleDescriptionType. -}
roleDescriptionTypeCodec : Codec RoleDescriptionType
roleDescriptionTypeCodec =
    Codec.build (Guarded.encoder roleDescriptionType) (Guarded.decoder roleDescriptionType)


{-| Codec for ResponseMarkerType. -}
responseMarkerTypeCodec : Codec ResponseMarkerType
responseMarkerTypeCodec =
    Codec.string


{-| Codec for PublicKeyMaterialType. -}
publicKeyMaterialTypeCodec : Codec PublicKeyMaterialType
publicKeyMaterialTypeCodec =
    Codec.build (Guarded.encoder publicKeyMaterialType) (Guarded.decoder publicKeyMaterialType)


{-| Codec for PublicKeyIdType. -}
publicKeyIdTypeCodec : Codec PublicKeyIdType
publicKeyIdTypeCodec =
    Codec.build (Guarded.encoder publicKeyIdType) (Guarded.decoder publicKeyIdType)


{-| Codec for PublicKeyFingerprintType. -}
publicKeyFingerprintTypeCodec : Codec PublicKeyFingerprintType
publicKeyFingerprintTypeCodec =
    Codec.build (Guarded.encoder publicKeyFingerprintType) (Guarded.decoder publicKeyFingerprintType)


{-| Codec for PrivateKeyType. -}
privateKeyTypeCodec : Codec PrivateKeyType
privateKeyTypeCodec =
    Codec.build (Guarded.encoder privateKeyType) (Guarded.decoder privateKeyType)


{-| Codec for PolicyVersionIdType. -}
policyVersionIdTypeCodec : Codec PolicyVersionIdType
policyVersionIdTypeCodec =
    Codec.build (Guarded.encoder policyVersionIdType) (Guarded.decoder policyVersionIdType)


{-| Codec for PolicyType. -}
policyTypeCodec : Codec PolicyType
policyTypeCodec =
    Codec.build (Enum.encoder policyType) (Enum.decoder policyType)


{-| Codec for PolicyScopeType. -}
policyScopeTypeCodec : Codec PolicyScopeType
policyScopeTypeCodec =
    Codec.build (Enum.encoder policyScopeType) (Enum.decoder policyScopeType)


{-| Codec for PolicyPathType. -}
policyPathTypeCodec : Codec PolicyPathType
policyPathTypeCodec =
    Codec.build (Guarded.encoder policyPathType) (Guarded.decoder policyPathType)


{-| Codec for PolicyOwnerEntityType. -}
policyOwnerEntityTypeCodec : Codec PolicyOwnerEntityType
policyOwnerEntityTypeCodec =
    Codec.build (Enum.encoder policyOwnerEntityType) (Enum.decoder policyOwnerEntityType)


{-| Codec for PolicyNameType. -}
policyNameTypeCodec : Codec PolicyNameType
policyNameTypeCodec =
    Codec.build (Guarded.encoder policyNameType) (Guarded.decoder policyNameType)


{-| Codec for PolicyNameListType. -}
policyNameListTypeCodec : Codec PolicyNameListType
policyNameListTypeCodec =
    Codec.list policyNameTypeCodec


{-| Codec for PolicyListType. -}
policyListTypeCodec : Codec PolicyListType
policyListTypeCodec =
    Codec.list policyCodec


{-| Codec for PolicyGrantingServiceAccessListType. -}
policyGrantingServiceAccessListTypeCodec : Codec PolicyGrantingServiceAccessListType
policyGrantingServiceAccessListTypeCodec =
    Codec.list policyGrantingServiceAccessCodec


{-| Codec for PolicyDocumentVersionListType. -}
policyDocumentVersionListTypeCodec : Codec PolicyDocumentVersionListType
policyDocumentVersionListTypeCodec =
    Codec.list policyVersionCodec


{-| Codec for PolicyDocumentType. -}
policyDocumentTypeCodec : Codec PolicyDocumentType
policyDocumentTypeCodec =
    Codec.build (Guarded.encoder policyDocumentType) (Guarded.decoder policyDocumentType)


{-| Codec for PolicyDetailListType. -}
policyDetailListTypeCodec : Codec PolicyDetailListType
policyDetailListTypeCodec =
    Codec.list policyDetailCodec


{-| Codec for PolicyDescriptionType. -}
policyDescriptionTypeCodec : Codec PolicyDescriptionType
policyDescriptionTypeCodec =
    Codec.build (Guarded.encoder policyDescriptionType) (Guarded.decoder policyDescriptionType)


{-| Codec for PathType. -}
pathTypeCodec : Codec PathType
pathTypeCodec =
    Codec.build (Guarded.encoder pathType) (Guarded.decoder pathType)


{-| Codec for PathPrefixType. -}
pathPrefixTypeCodec : Codec PathPrefixType
pathPrefixTypeCodec =
    Codec.build (Guarded.encoder pathPrefixType) (Guarded.decoder pathPrefixType)


{-| Codec for PasswordType. -}
passwordTypeCodec : Codec PasswordType
passwordTypeCodec =
    Codec.build (Guarded.encoder passwordType) (Guarded.decoder passwordType)


{-| Codec for PasswordReusePreventionType. -}
passwordReusePreventionTypeCodec : Codec PasswordReusePreventionType
passwordReusePreventionTypeCodec =
    Codec.build (Guarded.encoder passwordReusePreventionType) (Guarded.decoder passwordReusePreventionType)


{-| Codec for OrganizationsPolicyIdType. -}
organizationsPolicyIdTypeCodec : Codec OrganizationsPolicyIdType
organizationsPolicyIdTypeCodec =
    Codec.build (Guarded.encoder organizationsPolicyIdType) (Guarded.decoder organizationsPolicyIdType)


{-| Codec for OrganizationsEntityPathType. -}
organizationsEntityPathTypeCodec : Codec OrganizationsEntityPathType
organizationsEntityPathTypeCodec =
    Codec.build (Guarded.encoder organizationsEntityPathType) (Guarded.decoder organizationsEntityPathType)


{-| Codec for MinimumPasswordLengthType. -}
minimumPasswordLengthTypeCodec : Codec MinimumPasswordLengthType
minimumPasswordLengthTypeCodec =
    Codec.build (Guarded.encoder minimumPasswordLengthType) (Guarded.decoder minimumPasswordLengthType)


{-| Codec for MfaDeviceListType. -}
mfaDeviceListTypeCodec : Codec MfaDeviceListType
mfaDeviceListTypeCodec =
    Codec.list mfadeviceCodec


{-| Codec for MaxPasswordAgeType. -}
maxPasswordAgeTypeCodec : Codec MaxPasswordAgeType
maxPasswordAgeTypeCodec =
    Codec.build (Guarded.encoder maxPasswordAgeType) (Guarded.decoder maxPasswordAgeType)


{-| Codec for MaxItemsType. -}
maxItemsTypeCodec : Codec MaxItemsType
maxItemsTypeCodec =
    Codec.build (Guarded.encoder maxItemsType) (Guarded.decoder maxItemsType)


{-| Codec for MarkerType. -}
markerTypeCodec : Codec MarkerType
markerTypeCodec =
    Codec.build (Guarded.encoder markerType) (Guarded.decoder markerType)


{-| Codec for ListPolicyGrantingServiceAccessResponseListType. -}
listPolicyGrantingServiceAccessResponseListTypeCodec : Codec ListPolicyGrantingServiceAccessResponseListType
listPolicyGrantingServiceAccessResponseListTypeCodec =
    Codec.list listPoliciesGrantingServiceAccessEntryCodec


{-| Codec for JobStatusType. -}
jobStatusTypeCodec : Codec JobStatusType
jobStatusTypeCodec =
    Codec.build (Enum.encoder jobStatusType) (Enum.decoder jobStatusType)


{-| Codec for JobIdtype. -}
jobIdtypeCodec : Codec JobIdtype
jobIdtypeCodec =
    Codec.build (Guarded.encoder jobIdtype) (Guarded.decoder jobIdtype)


{-| Codec for IntegerType. -}
integerTypeCodec : Codec IntegerType
integerTypeCodec =
    Codec.int


{-| Codec for InstanceProfileNameType. -}
instanceProfileNameTypeCodec : Codec InstanceProfileNameType
instanceProfileNameTypeCodec =
    Codec.build (Guarded.encoder instanceProfileNameType) (Guarded.decoder instanceProfileNameType)


{-| Codec for InstanceProfileListType. -}
instanceProfileListTypeCodec : Codec InstanceProfileListType
instanceProfileListTypeCodec =
    Codec.list instanceProfileCodec


{-| Codec for IdType. -}
idTypeCodec : Codec IdType
idTypeCodec =
    Codec.build (Guarded.encoder idType) (Guarded.decoder idType)


{-| Codec for GroupNameType. -}
groupNameTypeCodec : Codec GroupNameType
groupNameTypeCodec =
    Codec.build (Guarded.encoder groupNameType) (Guarded.decoder groupNameType)


{-| Codec for GroupNameListType. -}
groupNameListTypeCodec : Codec GroupNameListType
groupNameListTypeCodec =
    Codec.list groupNameTypeCodec


{-| Codec for GroupListType. -}
groupListTypeCodec : Codec GroupListType
groupListTypeCodec =
    Codec.list groupCodec


{-| Codec for GroupDetailListType. -}
groupDetailListTypeCodec : Codec GroupDetailListType
groupDetailListTypeCodec =
    Codec.list groupDetailCodec


{-| Codec for GlobalEndpointTokenVersion. -}
globalEndpointTokenVersionCodec : Codec GlobalEndpointTokenVersion
globalEndpointTokenVersionCodec =
    Codec.build (Enum.encoder globalEndpointTokenVersion) (Enum.decoder globalEndpointTokenVersion)


{-| Codec for ExistingUserNameType. -}
existingUserNameTypeCodec : Codec ExistingUserNameType
existingUserNameTypeCodec =
    Codec.build (Guarded.encoder existingUserNameType) (Guarded.decoder existingUserNameType)


{-| Codec for EntityNameType. -}
entityNameTypeCodec : Codec EntityNameType
entityNameTypeCodec =
    Codec.build (Guarded.encoder entityNameType) (Guarded.decoder entityNameType)


{-| Codec for EntityListType. -}
entityListTypeCodec : Codec EntityListType
entityListTypeCodec =
    Codec.list entityTypeCodec


{-| Codec for EntityDetailsListType. -}
entityDetailsListTypeCodec : Codec EntityDetailsListType
entityDetailsListTypeCodec =
    Codec.list entityDetailsCodec


{-| Codec for EncodingType. -}
encodingTypeCodec : Codec EncodingType
encodingTypeCodec =
    Codec.build (Enum.encoder encodingType) (Enum.decoder encodingType)


{-| Codec for DateType. -}
dateTypeCodec : Codec DateType
dateTypeCodec =
    Codec.string


{-| Codec for CustomSuffixType. -}
customSuffixTypeCodec : Codec CustomSuffixType
customSuffixTypeCodec =
    Codec.build (Guarded.encoder customSuffixType) (Guarded.decoder customSuffixType)


{-| Codec for ClientIdtype. -}
clientIdtypeCodec : Codec ClientIdtype
clientIdtypeCodec =
    Codec.build (Guarded.encoder clientIdtype) (Guarded.decoder clientIdtype)


{-| Codec for ClientIdlistType. -}
clientIdlistTypeCodec : Codec ClientIdlistType
clientIdlistTypeCodec =
    Codec.list clientIdtypeCodec


{-| Codec for CertificateListType. -}
certificateListTypeCodec : Codec CertificateListType
certificateListTypeCodec =
    Codec.list signingCertificateCodec


{-| Codec for CertificateIdType. -}
certificateIdTypeCodec : Codec CertificateIdType
certificateIdTypeCodec =
    Codec.build (Guarded.encoder certificateIdType) (Guarded.decoder certificateIdType)


{-| Codec for CertificateChainType. -}
certificateChainTypeCodec : Codec CertificateChainType
certificateChainTypeCodec =
    Codec.build (Guarded.encoder certificateChainType) (Guarded.decoder certificateChainType)


{-| Codec for CertificateBodyType. -}
certificateBodyTypeCodec : Codec CertificateBodyType
certificateBodyTypeCodec =
    Codec.build (Guarded.encoder certificateBodyType) (Guarded.decoder certificateBodyType)


{-| Codec for BooleanType. -}
booleanTypeCodec : Codec BooleanType
booleanTypeCodec =
    Codec.bool


{-| Codec for BooleanObjectType. -}
booleanObjectTypeCodec : Codec BooleanObjectType
booleanObjectTypeCodec =
    Codec.bool


{-| Codec for AuthenticationCodeType. -}
authenticationCodeTypeCodec : Codec AuthenticationCodeType
authenticationCodeTypeCodec =
    Codec.build (Guarded.encoder authenticationCodeType) (Guarded.decoder authenticationCodeType)


{-| Codec for AttachmentCountType. -}
attachmentCountTypeCodec : Codec AttachmentCountType
attachmentCountTypeCodec =
    Codec.int


{-| Codec for AttachedPoliciesListType. -}
attachedPoliciesListTypeCodec : Codec AttachedPoliciesListType
attachedPoliciesListTypeCodec =
    Codec.list attachedPolicyCodec


{-| Codec for AssignmentStatusType. -}
assignmentStatusTypeCodec : Codec AssignmentStatusType
assignmentStatusTypeCodec =
    Codec.build (Enum.encoder assignmentStatusType) (Enum.decoder assignmentStatusType)


{-| Codec for ArnType. -}
arnTypeCodec : Codec ArnType
arnTypeCodec =
    Codec.build (Guarded.encoder arnType) (Guarded.decoder arnType)


{-| Codec for AccountAliasType. -}
accountAliasTypeCodec : Codec AccountAliasType
accountAliasTypeCodec =
    Codec.build (Guarded.encoder accountAliasType) (Guarded.decoder accountAliasType)


{-| Codec for AccountAliasListType. -}
accountAliasListTypeCodec : Codec AccountAliasListType
accountAliasListTypeCodec =
    Codec.list accountAliasTypeCodec


{-| Codec for AccessKeySecretType. -}
accessKeySecretTypeCodec : Codec AccessKeySecretType
accessKeySecretTypeCodec =
    Codec.string


{-| Codec for AccessKeyMetadataListType. -}
accessKeyMetadataListTypeCodec : Codec AccessKeyMetadataListType
accessKeyMetadataListTypeCodec =
    Codec.list accessKeyMetadataCodec


{-| Codec for AccessKeyIdType. -}
accessKeyIdTypeCodec : Codec AccessKeyIdType
accessKeyIdTypeCodec =
    Codec.build (Guarded.encoder accessKeyIdType) (Guarded.decoder accessKeyIdType)


{-| Codec for VirtualMfadevice. -}
virtualMfadeviceCodec : Codec VirtualMfadevice
virtualMfadeviceCodec =
    Codec.object VirtualMfadevice
        |> Codec.field "User" .user userCodec
        |> Codec.field "SerialNumber" .serialNumber serialNumberTypeCodec
        |> Codec.field "QRCodePNG" .qrcodePng Codec.string
        |> Codec.field "EnableDate" .enableDate dateTypeCodec
        |> Codec.field "Base32StringSeed" .base32StringSeed Codec.string
        |> Codec.buildObject


{-| Codec for UserDetail. -}
userDetailCodec : Codec UserDetail
userDetailCodec =
    Codec.object UserDetail
        |> Codec.field "UserPolicyList" .userPolicyList policyDetailListTypeCodec
        |> Codec.field "UserName" .userName userNameTypeCodec
        |> Codec.field "UserId" .userId idTypeCodec
        |> Codec.field "Tags" .tags tagListTypeCodec
        |> Codec.field "PermissionsBoundary" .permissionsBoundary attachedPermissionsBoundaryCodec
        |> Codec.field "Path" .path pathTypeCodec
        |> Codec.field "GroupList" .groupList groupNameListTypeCodec
        |> Codec.field "CreateDate" .createDate dateTypeCodec
        |> Codec.field "AttachedManagedPolicies" .attachedManagedPolicies attachedPoliciesListTypeCodec
        |> Codec.field "Arn" .arn arnTypeCodec
        |> Codec.buildObject


{-| Codec for User. -}
userCodec : Codec User
userCodec =
    Codec.object User
        |> Codec.field "UserName" .userName userNameTypeCodec
        |> Codec.field "UserId" .userId idTypeCodec
        |> Codec.field "Tags" .tags tagListTypeCodec
        |> Codec.field "PermissionsBoundary" .permissionsBoundary attachedPermissionsBoundaryCodec
        |> Codec.field "Path" .path pathTypeCodec
        |> Codec.field "PasswordLastUsed" .passwordLastUsed dateTypeCodec
        |> Codec.field "CreateDate" .createDate dateTypeCodec
        |> Codec.field "Arn" .arn arnTypeCodec
        |> Codec.buildObject


{-| Codec for UploadSigningCertificateResponse. -}
uploadSigningCertificateResponseCodec : Codec UploadSigningCertificateResponse
uploadSigningCertificateResponseCodec =
    Codec.object UploadSigningCertificateResponse
        |> Codec.field "Certificate" .certificate signingCertificateCodec
        |> Codec.buildObject


{-| Codec for UploadSigningCertificateRequest. -}
uploadSigningCertificateRequestCodec : Codec UploadSigningCertificateRequest
uploadSigningCertificateRequestCodec =
    Codec.object UploadSigningCertificateRequest
        |> Codec.field "UserName" .userName existingUserNameTypeCodec
        |> Codec.field "CertificateBody" .certificateBody certificateBodyTypeCodec
        |> Codec.buildObject


{-| Codec for UploadServerCertificateResponse. -}
uploadServerCertificateResponseCodec : Codec UploadServerCertificateResponse
uploadServerCertificateResponseCodec =
    Codec.object UploadServerCertificateResponse
        |> Codec.field "ServerCertificateMetadata" .serverCertificateMetadata serverCertificateMetadataCodec
        |> Codec.buildObject


{-| Codec for UploadServerCertificateRequest. -}
uploadServerCertificateRequestCodec : Codec UploadServerCertificateRequest
uploadServerCertificateRequestCodec =
    Codec.object UploadServerCertificateRequest
        |> Codec.field "ServerCertificateName" .serverCertificateName serverCertificateNameTypeCodec
        |> Codec.field "PrivateKey" .privateKey privateKeyTypeCodec
        |> Codec.field "Path" .path pathTypeCodec
        |> Codec.field "CertificateChain" .certificateChain certificateChainTypeCodec
        |> Codec.field "CertificateBody" .certificateBody certificateBodyTypeCodec
        |> Codec.buildObject


{-| Codec for UploadSshpublicKeyResponse. -}
uploadSshpublicKeyResponseCodec : Codec UploadSshpublicKeyResponse
uploadSshpublicKeyResponseCodec =
    Codec.object UploadSshpublicKeyResponse
        |> Codec.field "SSHPublicKey" .sshpublicKey sshpublicKeyCodec
        |> Codec.buildObject


{-| Codec for UploadSshpublicKeyRequest. -}
uploadSshpublicKeyRequestCodec : Codec UploadSshpublicKeyRequest
uploadSshpublicKeyRequestCodec =
    Codec.object UploadSshpublicKeyRequest
        |> Codec.field "UserName" .userName userNameTypeCodec
        |> Codec.field "SSHPublicKeyBody" .sshpublicKeyBody publicKeyMaterialTypeCodec
        |> Codec.buildObject


{-| Codec for UpdateUserRequest. -}
updateUserRequestCodec : Codec UpdateUserRequest
updateUserRequestCodec =
    Codec.object UpdateUserRequest
        |> Codec.field "UserName" .userName existingUserNameTypeCodec
        |> Codec.field "NewUserName" .newUserName userNameTypeCodec
        |> Codec.field "NewPath" .newPath pathTypeCodec
        |> Codec.buildObject


{-| Codec for UpdateSigningCertificateRequest. -}
updateSigningCertificateRequestCodec : Codec UpdateSigningCertificateRequest
updateSigningCertificateRequestCodec =
    Codec.object UpdateSigningCertificateRequest
        |> Codec.field "UserName" .userName existingUserNameTypeCodec
        |> Codec.field "Status" .status statusTypeCodec
        |> Codec.field "CertificateId" .certificateId certificateIdTypeCodec
        |> Codec.buildObject


{-| Codec for UpdateServiceSpecificCredentialRequest. -}
updateServiceSpecificCredentialRequestCodec : Codec UpdateServiceSpecificCredentialRequest
updateServiceSpecificCredentialRequestCodec =
    Codec.object UpdateServiceSpecificCredentialRequest
        |> Codec.field "UserName" .userName userNameTypeCodec
        |> Codec.field "Status" .status statusTypeCodec
        |> Codec.field "ServiceSpecificCredentialId" .serviceSpecificCredentialId serviceSpecificCredentialIdCodec
        |> Codec.buildObject


{-| Codec for UpdateServerCertificateRequest. -}
updateServerCertificateRequestCodec : Codec UpdateServerCertificateRequest
updateServerCertificateRequestCodec =
    Codec.object UpdateServerCertificateRequest
        |> Codec.field "ServerCertificateName" .serverCertificateName serverCertificateNameTypeCodec
        |> Codec.field "NewServerCertificateName" .newServerCertificateName serverCertificateNameTypeCodec
        |> Codec.field "NewPath" .newPath pathTypeCodec
        |> Codec.buildObject


{-| Codec for UpdateSshpublicKeyRequest. -}
updateSshpublicKeyRequestCodec : Codec UpdateSshpublicKeyRequest
updateSshpublicKeyRequestCodec =
    Codec.object UpdateSshpublicKeyRequest
        |> Codec.field "UserName" .userName userNameTypeCodec
        |> Codec.field "Status" .status statusTypeCodec
        |> Codec.field "SSHPublicKeyId" .sshpublicKeyId publicKeyIdTypeCodec
        |> Codec.buildObject


{-| Codec for UpdateSamlproviderResponse. -}
updateSamlproviderResponseCodec : Codec UpdateSamlproviderResponse
updateSamlproviderResponseCodec =
    Codec.object UpdateSamlproviderResponse
        |> Codec.field "SAMLProviderArn" .samlproviderArn arnTypeCodec
        |> Codec.buildObject


{-| Codec for UpdateSamlproviderRequest. -}
updateSamlproviderRequestCodec : Codec UpdateSamlproviderRequest
updateSamlproviderRequestCodec =
    Codec.object UpdateSamlproviderRequest
        |> Codec.field "SAMLProviderArn" .samlproviderArn arnTypeCodec
        |> Codec.field "SAMLMetadataDocument" .samlmetadataDocument samlmetadataDocumentTypeCodec
        |> Codec.buildObject


{-| Codec for UpdateRoleResponse. -}
updateRoleResponseCodec : Codec UpdateRoleResponse
updateRoleResponseCodec =
    Codec.object UpdateRoleResponse |> Codec.buildObject


{-| Codec for UpdateRoleRequest. -}
updateRoleRequestCodec : Codec UpdateRoleRequest
updateRoleRequestCodec =
    Codec.object UpdateRoleRequest
        |> Codec.field "RoleName" .roleName roleNameTypeCodec
        |> Codec.field "MaxSessionDuration" .maxSessionDuration roleMaxSessionDurationTypeCodec
        |> Codec.field "Description" .description roleDescriptionTypeCodec
        |> Codec.buildObject


{-| Codec for UpdateRoleDescriptionResponse. -}
updateRoleDescriptionResponseCodec : Codec UpdateRoleDescriptionResponse
updateRoleDescriptionResponseCodec =
    Codec.object UpdateRoleDescriptionResponse |> Codec.field "Role" .role roleCodec |> Codec.buildObject


{-| Codec for UpdateRoleDescriptionRequest. -}
updateRoleDescriptionRequestCodec : Codec UpdateRoleDescriptionRequest
updateRoleDescriptionRequestCodec =
    Codec.object UpdateRoleDescriptionRequest
        |> Codec.field "RoleName" .roleName roleNameTypeCodec
        |> Codec.field "Description" .description roleDescriptionTypeCodec
        |> Codec.buildObject


{-| Codec for UpdateOpenIdconnectProviderThumbprintRequest. -}
updateOpenIdconnectProviderThumbprintRequestCodec : Codec UpdateOpenIdconnectProviderThumbprintRequest
updateOpenIdconnectProviderThumbprintRequestCodec =
    Codec.object UpdateOpenIdconnectProviderThumbprintRequest
        |> Codec.field "ThumbprintList" .thumbprintList thumbprintListTypeCodec
        |> Codec.field "OpenIDConnectProviderArn" .openIdconnectProviderArn arnTypeCodec
        |> Codec.buildObject


{-| Codec for UpdateLoginProfileRequest. -}
updateLoginProfileRequestCodec : Codec UpdateLoginProfileRequest
updateLoginProfileRequestCodec =
    Codec.object UpdateLoginProfileRequest
        |> Codec.field "UserName" .userName userNameTypeCodec
        |> Codec.field "PasswordResetRequired" .passwordResetRequired Codec.bool
        |> Codec.field "Password" .password passwordTypeCodec
        |> Codec.buildObject


{-| Codec for UpdateGroupRequest. -}
updateGroupRequestCodec : Codec UpdateGroupRequest
updateGroupRequestCodec =
    Codec.object UpdateGroupRequest
        |> Codec.field "NewPath" .newPath pathTypeCodec
        |> Codec.field "NewGroupName" .newGroupName groupNameTypeCodec
        |> Codec.field "GroupName" .groupName groupNameTypeCodec
        |> Codec.buildObject


{-| Codec for UpdateAssumeRolePolicyRequest. -}
updateAssumeRolePolicyRequestCodec : Codec UpdateAssumeRolePolicyRequest
updateAssumeRolePolicyRequestCodec =
    Codec.object UpdateAssumeRolePolicyRequest
        |> Codec.field "RoleName" .roleName roleNameTypeCodec
        |> Codec.field "PolicyDocument" .policyDocument policyDocumentTypeCodec
        |> Codec.buildObject


{-| Codec for UpdateAccountPasswordPolicyRequest. -}
updateAccountPasswordPolicyRequestCodec : Codec UpdateAccountPasswordPolicyRequest
updateAccountPasswordPolicyRequestCodec =
    Codec.object UpdateAccountPasswordPolicyRequest
        |> Codec.field "RequireUppercaseCharacters" .requireUppercaseCharacters Codec.bool
        |> Codec.field "RequireSymbols" .requireSymbols Codec.bool
        |> Codec.field "RequireNumbers" .requireNumbers Codec.bool
        |> Codec.field "RequireLowercaseCharacters" .requireLowercaseCharacters Codec.bool
        |> Codec.field "PasswordReusePrevention" .passwordReusePrevention passwordReusePreventionTypeCodec
        |> Codec.field "MinimumPasswordLength" .minimumPasswordLength minimumPasswordLengthTypeCodec
        |> Codec.field "MaxPasswordAge" .maxPasswordAge maxPasswordAgeTypeCodec
        |> Codec.field "HardExpiry" .hardExpiry Codec.bool
        |> Codec.field "AllowUsersToChangePassword" .allowUsersToChangePassword Codec.bool
        |> Codec.buildObject


{-| Codec for UpdateAccessKeyRequest. -}
updateAccessKeyRequestCodec : Codec UpdateAccessKeyRequest
updateAccessKeyRequestCodec =
    Codec.object UpdateAccessKeyRequest
        |> Codec.field "UserName" .userName existingUserNameTypeCodec
        |> Codec.field "Status" .status statusTypeCodec
        |> Codec.field "AccessKeyId" .accessKeyId accessKeyIdTypeCodec
        |> Codec.buildObject


{-| Codec for UntagUserRequest. -}
untagUserRequestCodec : Codec UntagUserRequest
untagUserRequestCodec =
    Codec.object UntagUserRequest
        |> Codec.field "UserName" .userName existingUserNameTypeCodec
        |> Codec.field "TagKeys" .tagKeys tagKeyListTypeCodec
        |> Codec.buildObject


{-| Codec for UntagRoleRequest. -}
untagRoleRequestCodec : Codec UntagRoleRequest
untagRoleRequestCodec =
    Codec.object UntagRoleRequest
        |> Codec.field "TagKeys" .tagKeys tagKeyListTypeCodec
        |> Codec.field "RoleName" .roleName roleNameTypeCodec
        |> Codec.buildObject


{-| Codec for TagUserRequest. -}
tagUserRequestCodec : Codec TagUserRequest
tagUserRequestCodec =
    Codec.object TagUserRequest
        |> Codec.field "UserName" .userName existingUserNameTypeCodec
        |> Codec.field "Tags" .tags tagListTypeCodec
        |> Codec.buildObject


{-| Codec for TagRoleRequest. -}
tagRoleRequestCodec : Codec TagRoleRequest
tagRoleRequestCodec =
    Codec.object TagRoleRequest
        |> Codec.field "Tags" .tags tagListTypeCodec
        |> Codec.field "RoleName" .roleName roleNameTypeCodec
        |> Codec.buildObject


{-| Codec for Tag. -}
tagCodec : Codec Tag
tagCodec =
    Codec.object Tag
        |> Codec.field "Value" .value tagValueTypeCodec
        |> Codec.field "Key" .key tagKeyTypeCodec
        |> Codec.buildObject


{-| Codec for StatementListType. -}
statementListTypeCodec : Codec StatementListType
statementListTypeCodec =
    Codec.list statementCodec


{-| Codec for Statement. -}
statementCodec : Codec Statement
statementCodec =
    Codec.object Statement
        |> Codec.field "StartPosition" .startPosition positionCodec
        |> Codec.field "SourcePolicyType" .sourcePolicyType policySourceTypeCodec
        |> Codec.field "SourcePolicyId" .sourcePolicyId Codec.string
        |> Codec.field "EndPosition" .endPosition positionCodec
        |> Codec.buildObject


{-| Codec for SimulationPolicyListType. -}
simulationPolicyListTypeCodec : Codec SimulationPolicyListType
simulationPolicyListTypeCodec =
    Codec.list policyDocumentTypeCodec


{-| Codec for SimulatePrincipalPolicyRequest. -}
simulatePrincipalPolicyRequestCodec : Codec SimulatePrincipalPolicyRequest
simulatePrincipalPolicyRequestCodec =
    Codec.object SimulatePrincipalPolicyRequest
        |> Codec.field "ResourcePolicy" .resourcePolicy policyDocumentTypeCodec
        |> Codec.field "ResourceOwner" .resourceOwner resourceNameTypeCodec
        |> Codec.field "ResourceHandlingOption" .resourceHandlingOption resourceHandlingOptionTypeCodec
        |> Codec.field "ResourceArns" .resourceArns resourceNameListTypeCodec
        |> Codec.field "PolicySourceArn" .policySourceArn arnTypeCodec
        |> Codec.field "PolicyInputList" .policyInputList simulationPolicyListTypeCodec
        |> Codec.field "MaxItems" .maxItems maxItemsTypeCodec
        |> Codec.field "Marker" .marker markerTypeCodec
        |> Codec.field "ContextEntries" .contextEntries contextEntryListTypeCodec
        |> Codec.field "CallerArn" .callerArn resourceNameTypeCodec
        |> Codec.field "ActionNames" .actionNames actionNameListTypeCodec
        |> Codec.buildObject


{-| Codec for SimulatePolicyResponse. -}
simulatePolicyResponseCodec : Codec SimulatePolicyResponse
simulatePolicyResponseCodec =
    Codec.object SimulatePolicyResponse
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.field "EvaluationResults" .evaluationResults evaluationResultsListTypeCodec
        |> Codec.buildObject


{-| Codec for SimulateCustomPolicyRequest. -}
simulateCustomPolicyRequestCodec : Codec SimulateCustomPolicyRequest
simulateCustomPolicyRequestCodec =
    Codec.object SimulateCustomPolicyRequest
        |> Codec.field "ResourcePolicy" .resourcePolicy policyDocumentTypeCodec
        |> Codec.field "ResourceOwner" .resourceOwner resourceNameTypeCodec
        |> Codec.field "ResourceHandlingOption" .resourceHandlingOption resourceHandlingOptionTypeCodec
        |> Codec.field "ResourceArns" .resourceArns resourceNameListTypeCodec
        |> Codec.field "PolicyInputList" .policyInputList simulationPolicyListTypeCodec
        |> Codec.field "MaxItems" .maxItems maxItemsTypeCodec
        |> Codec.field "Marker" .marker markerTypeCodec
        |> Codec.field "ContextEntries" .contextEntries contextEntryListTypeCodec
        |> Codec.field "CallerArn" .callerArn resourceNameTypeCodec
        |> Codec.field "ActionNames" .actionNames actionNameListTypeCodec
        |> Codec.buildObject


{-| Codec for SigningCertificate. -}
signingCertificateCodec : Codec SigningCertificate
signingCertificateCodec =
    Codec.object SigningCertificate
        |> Codec.field "UserName" .userName userNameTypeCodec
        |> Codec.field "UploadDate" .uploadDate dateTypeCodec
        |> Codec.field "Status" .status statusTypeCodec
        |> Codec.field "CertificateId" .certificateId certificateIdTypeCodec
        |> Codec.field "CertificateBody" .certificateBody certificateBodyTypeCodec
        |> Codec.buildObject


{-| Codec for SetSecurityTokenServicePreferencesRequest. -}
setSecurityTokenServicePreferencesRequestCodec : Codec SetSecurityTokenServicePreferencesRequest
setSecurityTokenServicePreferencesRequestCodec =
    Codec.object SetSecurityTokenServicePreferencesRequest
        |> Codec.field "GlobalEndpointTokenVersion" .globalEndpointTokenVersion globalEndpointTokenVersionCodec
        |> Codec.buildObject


{-| Codec for SetDefaultPolicyVersionRequest. -}
setDefaultPolicyVersionRequestCodec : Codec SetDefaultPolicyVersionRequest
setDefaultPolicyVersionRequestCodec =
    Codec.object SetDefaultPolicyVersionRequest
        |> Codec.field "VersionId" .versionId policyVersionIdTypeCodec
        |> Codec.field "PolicyArn" .policyArn arnTypeCodec
        |> Codec.buildObject


{-| Codec for ServicesLastAccessed. -}
servicesLastAccessedCodec : Codec ServicesLastAccessed
servicesLastAccessedCodec =
    Codec.list serviceLastAccessedCodec


{-| Codec for ServiceSpecificCredentialsListType. -}
serviceSpecificCredentialsListTypeCodec : Codec ServiceSpecificCredentialsListType
serviceSpecificCredentialsListTypeCodec =
    Codec.list serviceSpecificCredentialMetadataCodec


{-| Codec for ServiceSpecificCredentialMetadata. -}
serviceSpecificCredentialMetadataCodec : Codec ServiceSpecificCredentialMetadata
serviceSpecificCredentialMetadataCodec =
    Codec.object ServiceSpecificCredentialMetadata
        |> Codec.field "UserName" .userName userNameTypeCodec
        |> Codec.field "Status" .status statusTypeCodec
        |> Codec.field "ServiceUserName" .serviceUserName serviceUserNameCodec
        |> Codec.field "ServiceSpecificCredentialId" .serviceSpecificCredentialId serviceSpecificCredentialIdCodec
        |> Codec.field "ServiceName" .serviceName Codec.string
        |> Codec.field "CreateDate" .createDate dateTypeCodec
        |> Codec.buildObject


{-| Codec for ServiceSpecificCredential. -}
serviceSpecificCredentialCodec : Codec ServiceSpecificCredential
serviceSpecificCredentialCodec =
    Codec.object ServiceSpecificCredential
        |> Codec.field "UserName" .userName userNameTypeCodec
        |> Codec.field "Status" .status statusTypeCodec
        |> Codec.field "ServiceUserName" .serviceUserName serviceUserNameCodec
        |> Codec.field "ServiceSpecificCredentialId" .serviceSpecificCredentialId serviceSpecificCredentialIdCodec
        |> Codec.field "ServicePassword" .servicePassword Codec.string
        |> Codec.field "ServiceName" .serviceName Codec.string
        |> Codec.field "CreateDate" .createDate dateTypeCodec
        |> Codec.buildObject


{-| Codec for ServiceLastAccessed. -}
serviceLastAccessedCodec : Codec ServiceLastAccessed
serviceLastAccessedCodec =
    Codec.object ServiceLastAccessed
        |> Codec.field "TotalAuthenticatedEntities" .totalAuthenticatedEntities Codec.int
        |> Codec.field "ServiceNamespace" .serviceNamespace serviceNamespaceTypeCodec
        |> Codec.field "ServiceName" .serviceName Codec.string
        |> Codec.field "LastAuthenticatedEntity" .lastAuthenticatedEntity arnTypeCodec
        |> Codec.field "LastAuthenticated" .lastAuthenticated dateTypeCodec
        |> Codec.buildObject


{-| Codec for ServerCertificateMetadata. -}
serverCertificateMetadataCodec : Codec ServerCertificateMetadata
serverCertificateMetadataCodec =
    Codec.object ServerCertificateMetadata
        |> Codec.field "UploadDate" .uploadDate dateTypeCodec
        |> Codec.field "ServerCertificateName" .serverCertificateName serverCertificateNameTypeCodec
        |> Codec.field "ServerCertificateId" .serverCertificateId idTypeCodec
        |> Codec.field "Path" .path pathTypeCodec
        |> Codec.field "Expiration" .expiration dateTypeCodec
        |> Codec.field "Arn" .arn arnTypeCodec
        |> Codec.buildObject


{-| Codec for ServerCertificate. -}
serverCertificateCodec : Codec ServerCertificate
serverCertificateCodec =
    Codec.object ServerCertificate
        |> Codec.field "ServerCertificateMetadata" .serverCertificateMetadata serverCertificateMetadataCodec
        |> Codec.field "CertificateChain" .certificateChain certificateChainTypeCodec
        |> Codec.field "CertificateBody" .certificateBody certificateBodyTypeCodec
        |> Codec.buildObject


{-| Codec for SshpublicKeyMetadata. -}
sshpublicKeyMetadataCodec : Codec SshpublicKeyMetadata
sshpublicKeyMetadataCodec =
    Codec.object SshpublicKeyMetadata
        |> Codec.field "UserName" .userName userNameTypeCodec
        |> Codec.field "UploadDate" .uploadDate dateTypeCodec
        |> Codec.field "Status" .status statusTypeCodec
        |> Codec.field "SSHPublicKeyId" .sshpublicKeyId publicKeyIdTypeCodec
        |> Codec.buildObject


{-| Codec for SshpublicKeyListType. -}
sshpublicKeyListTypeCodec : Codec SshpublicKeyListType
sshpublicKeyListTypeCodec =
    Codec.list sshpublicKeyMetadataCodec


{-| Codec for SshpublicKey. -}
sshpublicKeyCodec : Codec SshpublicKey
sshpublicKeyCodec =
    Codec.object SshpublicKey
        |> Codec.field "UserName" .userName userNameTypeCodec
        |> Codec.field "UploadDate" .uploadDate dateTypeCodec
        |> Codec.field "Status" .status statusTypeCodec
        |> Codec.field "SSHPublicKeyId" .sshpublicKeyId publicKeyIdTypeCodec
        |> Codec.field "SSHPublicKeyBody" .sshpublicKeyBody publicKeyMaterialTypeCodec
        |> Codec.field "Fingerprint" .fingerprint publicKeyFingerprintTypeCodec
        |> Codec.buildObject


{-| Codec for SamlproviderNameType. -}
samlproviderNameTypeCodec : Codec SamlproviderNameType
samlproviderNameTypeCodec =
    Codec.build (Guarded.encoder samlproviderNameType) (Guarded.decoder samlproviderNameType)


{-| Codec for SamlproviderListType. -}
samlproviderListTypeCodec : Codec SamlproviderListType
samlproviderListTypeCodec =
    Codec.list samlproviderListEntryCodec


{-| Codec for SamlproviderListEntry. -}
samlproviderListEntryCodec : Codec SamlproviderListEntry
samlproviderListEntryCodec =
    Codec.object SamlproviderListEntry
        |> Codec.field "ValidUntil" .validUntil dateTypeCodec
        |> Codec.field "CreateDate" .createDate dateTypeCodec
        |> Codec.field "Arn" .arn arnTypeCodec
        |> Codec.buildObject


{-| Codec for SamlmetadataDocumentType. -}
samlmetadataDocumentTypeCodec : Codec SamlmetadataDocumentType
samlmetadataDocumentTypeCodec =
    Codec.build (Guarded.encoder samlmetadataDocumentType) (Guarded.decoder samlmetadataDocumentType)


{-| Codec for RoleUsageType. -}
roleUsageTypeCodec : Codec RoleUsageType
roleUsageTypeCodec =
    Codec.object RoleUsageType
        |> Codec.field "Resources" .resources arnListTypeCodec
        |> Codec.field "Region" .region regionNameTypeCodec
        |> Codec.buildObject


{-| Codec for RoleUsageListType. -}
roleUsageListTypeCodec : Codec RoleUsageListType
roleUsageListTypeCodec =
    Codec.list roleUsageTypeCodec


{-| Codec for RoleDetail. -}
roleDetailCodec : Codec RoleDetail
roleDetailCodec =
    Codec.object RoleDetail
        |> Codec.field "Tags" .tags tagListTypeCodec
        |> Codec.field "RolePolicyList" .rolePolicyList policyDetailListTypeCodec
        |> Codec.field "RoleName" .roleName roleNameTypeCodec
        |> Codec.field "RoleId" .roleId idTypeCodec
        |> Codec.field "PermissionsBoundary" .permissionsBoundary attachedPermissionsBoundaryCodec
        |> Codec.field "Path" .path pathTypeCodec
        |> Codec.field "InstanceProfileList" .instanceProfileList instanceProfileListTypeCodec
        |> Codec.field "CreateDate" .createDate dateTypeCodec
        |> Codec.field "AttachedManagedPolicies" .attachedManagedPolicies attachedPoliciesListTypeCodec
        |> Codec.field "AssumeRolePolicyDocument" .assumeRolePolicyDocument policyDocumentTypeCodec
        |> Codec.field "Arn" .arn arnTypeCodec
        |> Codec.buildObject


{-| Codec for Role. -}
roleCodec : Codec Role
roleCodec =
    Codec.object Role
        |> Codec.field "Tags" .tags tagListTypeCodec
        |> Codec.field "RoleName" .roleName roleNameTypeCodec
        |> Codec.field "RoleId" .roleId idTypeCodec
        |> Codec.field "PermissionsBoundary" .permissionsBoundary attachedPermissionsBoundaryCodec
        |> Codec.field "Path" .path pathTypeCodec
        |> Codec.field "MaxSessionDuration" .maxSessionDuration roleMaxSessionDurationTypeCodec
        |> Codec.field "Description" .description roleDescriptionTypeCodec
        |> Codec.field "CreateDate" .createDate dateTypeCodec
        |> Codec.field "AssumeRolePolicyDocument" .assumeRolePolicyDocument policyDocumentTypeCodec
        |> Codec.field "Arn" .arn arnTypeCodec
        |> Codec.buildObject


{-| Codec for ResyncMfadeviceRequest. -}
resyncMfadeviceRequestCodec : Codec ResyncMfadeviceRequest
resyncMfadeviceRequestCodec =
    Codec.object ResyncMfadeviceRequest
        |> Codec.field "UserName" .userName existingUserNameTypeCodec
        |> Codec.field "SerialNumber" .serialNumber serialNumberTypeCodec
        |> Codec.field "AuthenticationCode2" .authenticationCode2 authenticationCodeTypeCodec
        |> Codec.field "AuthenticationCode1" .authenticationCode1 authenticationCodeTypeCodec
        |> Codec.buildObject


{-| Codec for ResourceSpecificResultListType. -}
resourceSpecificResultListTypeCodec : Codec ResourceSpecificResultListType
resourceSpecificResultListTypeCodec =
    Codec.list resourceSpecificResultCodec


{-| Codec for ResourceSpecificResult. -}
resourceSpecificResultCodec : Codec ResourceSpecificResult
resourceSpecificResultCodec =
    Codec.object ResourceSpecificResult
        |> Codec.field "MissingContextValues" .missingContextValues contextKeyNamesResultListTypeCodec
        |> Codec.field "MatchedStatements" .matchedStatements statementListTypeCodec
        |> Codec.field "EvalResourceName" .evalResourceName resourceNameTypeCodec
        |> Codec.field "EvalResourceDecision" .evalResourceDecision policyEvaluationDecisionTypeCodec
        |> Codec.field "EvalDecisionDetails" .evalDecisionDetails evalDecisionDetailsTypeCodec
        |> Codec.buildObject


{-| Codec for ResourceNameType. -}
resourceNameTypeCodec : Codec ResourceNameType
resourceNameTypeCodec =
    Codec.build (Guarded.encoder resourceNameType) (Guarded.decoder resourceNameType)


{-| Codec for ResourceNameListType. -}
resourceNameListTypeCodec : Codec ResourceNameListType
resourceNameListTypeCodec =
    Codec.list resourceNameTypeCodec


{-| Codec for ResourceHandlingOptionType. -}
resourceHandlingOptionTypeCodec : Codec ResourceHandlingOptionType
resourceHandlingOptionTypeCodec =
    Codec.build (Guarded.encoder resourceHandlingOptionType) (Guarded.decoder resourceHandlingOptionType)


{-| Codec for ResetServiceSpecificCredentialResponse. -}
resetServiceSpecificCredentialResponseCodec : Codec ResetServiceSpecificCredentialResponse
resetServiceSpecificCredentialResponseCodec =
    Codec.object ResetServiceSpecificCredentialResponse
        |> Codec.field "ServiceSpecificCredential" .serviceSpecificCredential serviceSpecificCredentialCodec
        |> Codec.buildObject


{-| Codec for ResetServiceSpecificCredentialRequest. -}
resetServiceSpecificCredentialRequestCodec : Codec ResetServiceSpecificCredentialRequest
resetServiceSpecificCredentialRequestCodec =
    Codec.object ResetServiceSpecificCredentialRequest
        |> Codec.field "UserName" .userName userNameTypeCodec
        |> Codec.field "ServiceSpecificCredentialId" .serviceSpecificCredentialId serviceSpecificCredentialIdCodec
        |> Codec.buildObject


{-| Codec for ReportStateType. -}
reportStateTypeCodec : Codec ReportStateType
reportStateTypeCodec =
    Codec.build (Enum.encoder reportStateType) (Enum.decoder reportStateType)


{-| Codec for ReportStateDescriptionType. -}
reportStateDescriptionTypeCodec : Codec ReportStateDescriptionType
reportStateDescriptionTypeCodec =
    Codec.string


{-| Codec for ReportFormatType. -}
reportFormatTypeCodec : Codec ReportFormatType
reportFormatTypeCodec =
    Codec.build (Enum.encoder reportFormatType) (Enum.decoder reportFormatType)


{-| Codec for ReportContentType. -}
reportContentTypeCodec : Codec ReportContentType
reportContentTypeCodec =
    Codec.string


{-| Codec for RemoveUserFromGroupRequest. -}
removeUserFromGroupRequestCodec : Codec RemoveUserFromGroupRequest
removeUserFromGroupRequestCodec =
    Codec.object RemoveUserFromGroupRequest
        |> Codec.field "UserName" .userName existingUserNameTypeCodec
        |> Codec.field "GroupName" .groupName groupNameTypeCodec
        |> Codec.buildObject


{-| Codec for RemoveRoleFromInstanceProfileRequest. -}
removeRoleFromInstanceProfileRequestCodec : Codec RemoveRoleFromInstanceProfileRequest
removeRoleFromInstanceProfileRequestCodec =
    Codec.object RemoveRoleFromInstanceProfileRequest
        |> Codec.field "RoleName" .roleName roleNameTypeCodec
        |> Codec.field "InstanceProfileName" .instanceProfileName instanceProfileNameTypeCodec
        |> Codec.buildObject


{-| Codec for RemoveClientIdfromOpenIdconnectProviderRequest. -}
removeClientIdfromOpenIdconnectProviderRequestCodec : Codec RemoveClientIdfromOpenIdconnectProviderRequest
removeClientIdfromOpenIdconnectProviderRequestCodec =
    Codec.object RemoveClientIdfromOpenIdconnectProviderRequest
        |> Codec.field "OpenIDConnectProviderArn" .openIdconnectProviderArn arnTypeCodec
        |> Codec.field "ClientID" .clientId clientIdtypeCodec
        |> Codec.buildObject


{-| Codec for RegionNameType. -}
regionNameTypeCodec : Codec RegionNameType
regionNameTypeCodec =
    Codec.build (Guarded.encoder regionNameType) (Guarded.decoder regionNameType)


{-| Codec for ReasonType. -}
reasonTypeCodec : Codec ReasonType
reasonTypeCodec =
    Codec.build (Guarded.encoder reasonType) (Guarded.decoder reasonType)


{-| Codec for PutUserPolicyRequest. -}
putUserPolicyRequestCodec : Codec PutUserPolicyRequest
putUserPolicyRequestCodec =
    Codec.object PutUserPolicyRequest
        |> Codec.field "UserName" .userName existingUserNameTypeCodec
        |> Codec.field "PolicyName" .policyName policyNameTypeCodec
        |> Codec.field "PolicyDocument" .policyDocument policyDocumentTypeCodec
        |> Codec.buildObject


{-| Codec for PutUserPermissionsBoundaryRequest. -}
putUserPermissionsBoundaryRequestCodec : Codec PutUserPermissionsBoundaryRequest
putUserPermissionsBoundaryRequestCodec =
    Codec.object PutUserPermissionsBoundaryRequest
        |> Codec.field "UserName" .userName userNameTypeCodec
        |> Codec.field "PermissionsBoundary" .permissionsBoundary arnTypeCodec
        |> Codec.buildObject


{-| Codec for PutRolePolicyRequest. -}
putRolePolicyRequestCodec : Codec PutRolePolicyRequest
putRolePolicyRequestCodec =
    Codec.object PutRolePolicyRequest
        |> Codec.field "RoleName" .roleName roleNameTypeCodec
        |> Codec.field "PolicyName" .policyName policyNameTypeCodec
        |> Codec.field "PolicyDocument" .policyDocument policyDocumentTypeCodec
        |> Codec.buildObject


{-| Codec for PutRolePermissionsBoundaryRequest. -}
putRolePermissionsBoundaryRequestCodec : Codec PutRolePermissionsBoundaryRequest
putRolePermissionsBoundaryRequestCodec =
    Codec.object PutRolePermissionsBoundaryRequest
        |> Codec.field "RoleName" .roleName roleNameTypeCodec
        |> Codec.field "PermissionsBoundary" .permissionsBoundary arnTypeCodec
        |> Codec.buildObject


{-| Codec for PutGroupPolicyRequest. -}
putGroupPolicyRequestCodec : Codec PutGroupPolicyRequest
putGroupPolicyRequestCodec =
    Codec.object PutGroupPolicyRequest
        |> Codec.field "PolicyName" .policyName policyNameTypeCodec
        |> Codec.field "PolicyDocument" .policyDocument policyDocumentTypeCodec
        |> Codec.field "GroupName" .groupName groupNameTypeCodec
        |> Codec.buildObject


{-| Codec for Position. -}
positionCodec : Codec Position
positionCodec =
    Codec.object Position
        |> Codec.field "Line" .line Codec.int
        |> Codec.field "Column" .column Codec.int
        |> Codec.buildObject


{-| Codec for PolicyVersion. -}
policyVersionCodec : Codec PolicyVersion
policyVersionCodec =
    Codec.object PolicyVersion
        |> Codec.field "VersionId" .versionId policyVersionIdTypeCodec
        |> Codec.field "IsDefaultVersion" .isDefaultVersion Codec.bool
        |> Codec.field "Document" .document policyDocumentTypeCodec
        |> Codec.field "CreateDate" .createDate dateTypeCodec
        |> Codec.buildObject


{-| Codec for PolicyUserListType. -}
policyUserListTypeCodec : Codec PolicyUserListType
policyUserListTypeCodec =
    Codec.list policyUserCodec


{-| Codec for PolicyUser. -}
policyUserCodec : Codec PolicyUser
policyUserCodec =
    Codec.object PolicyUser
        |> Codec.field "UserName" .userName userNameTypeCodec
        |> Codec.field "UserId" .userId idTypeCodec
        |> Codec.buildObject


{-| Codec for PolicyUsageType. -}
policyUsageTypeCodec : Codec PolicyUsageType
policyUsageTypeCodec =
    Codec.build (Enum.encoder policyUsageType) (Enum.decoder policyUsageType)


{-| Codec for PolicySourceType. -}
policySourceTypeCodec : Codec PolicySourceType
policySourceTypeCodec =
    Codec.build (Enum.encoder policySourceType) (Enum.decoder policySourceType)


{-| Codec for PolicyRoleListType. -}
policyRoleListTypeCodec : Codec PolicyRoleListType
policyRoleListTypeCodec =
    Codec.list policyRoleCodec


{-| Codec for PolicyRole. -}
policyRoleCodec : Codec PolicyRole
policyRoleCodec =
    Codec.object PolicyRole
        |> Codec.field "RoleName" .roleName roleNameTypeCodec
        |> Codec.field "RoleId" .roleId idTypeCodec
        |> Codec.buildObject


{-| Codec for PolicyIdentifierType. -}
policyIdentifierTypeCodec : Codec PolicyIdentifierType
policyIdentifierTypeCodec =
    Codec.string


{-| Codec for PolicyGroupListType. -}
policyGroupListTypeCodec : Codec PolicyGroupListType
policyGroupListTypeCodec =
    Codec.list policyGroupCodec


{-| Codec for PolicyGroup. -}
policyGroupCodec : Codec PolicyGroup
policyGroupCodec =
    Codec.object PolicyGroup
        |> Codec.field "GroupName" .groupName groupNameTypeCodec
        |> Codec.field "GroupId" .groupId idTypeCodec
        |> Codec.buildObject


{-| Codec for PolicyGrantingServiceAccess. -}
policyGrantingServiceAccessCodec : Codec PolicyGrantingServiceAccess
policyGrantingServiceAccessCodec =
    Codec.object PolicyGrantingServiceAccess
        |> Codec.field "PolicyType" .policyType policyTypeCodec
        |> Codec.field "PolicyName" .policyName policyNameTypeCodec
        |> Codec.field "PolicyArn" .policyArn arnTypeCodec
        |> Codec.field "EntityType" .entityType policyOwnerEntityTypeCodec
        |> Codec.field "EntityName" .entityName entityNameTypeCodec
        |> Codec.buildObject


{-| Codec for PolicyEvaluationDecisionType. -}
policyEvaluationDecisionTypeCodec : Codec PolicyEvaluationDecisionType
policyEvaluationDecisionTypeCodec =
    Codec.build (Enum.encoder policyEvaluationDecisionType) (Enum.decoder policyEvaluationDecisionType)


{-| Codec for PolicyDetail. -}
policyDetailCodec : Codec PolicyDetail
policyDetailCodec =
    Codec.object PolicyDetail
        |> Codec.field "PolicyName" .policyName policyNameTypeCodec
        |> Codec.field "PolicyDocument" .policyDocument policyDocumentTypeCodec
        |> Codec.buildObject


{-| Codec for Policy. -}
policyCodec : Codec Policy
policyCodec =
    Codec.object Policy
        |> Codec.field "UpdateDate" .updateDate dateTypeCodec
        |> Codec.field "PolicyName" .policyName policyNameTypeCodec
        |> Codec.field "PolicyId" .policyId idTypeCodec
        |> Codec.field "PermissionsBoundaryUsageCount" .permissionsBoundaryUsageCount Codec.int
        |> Codec.field "Path" .path policyPathTypeCodec
        |> Codec.field "IsAttachable" .isAttachable Codec.bool
        |> Codec.field "Description" .description policyDescriptionTypeCodec
        |> Codec.field "DefaultVersionId" .defaultVersionId policyVersionIdTypeCodec
        |> Codec.field "CreateDate" .createDate dateTypeCodec
        |> Codec.field "AttachmentCount" .attachmentCount Codec.int
        |> Codec.field "Arn" .arn arnTypeCodec
        |> Codec.buildObject


{-| Codec for PermissionsBoundaryAttachmentType. -}
permissionsBoundaryAttachmentTypeCodec : Codec PermissionsBoundaryAttachmentType
permissionsBoundaryAttachmentTypeCodec =
    Codec.build (Enum.encoder permissionsBoundaryAttachmentType) (Enum.decoder permissionsBoundaryAttachmentType)


{-| Codec for PasswordPolicy. -}
passwordPolicyCodec : Codec PasswordPolicy
passwordPolicyCodec =
    Codec.object PasswordPolicy
        |> Codec.field "RequireUppercaseCharacters" .requireUppercaseCharacters Codec.bool
        |> Codec.field "RequireSymbols" .requireSymbols Codec.bool
        |> Codec.field "RequireNumbers" .requireNumbers Codec.bool
        |> Codec.field "RequireLowercaseCharacters" .requireLowercaseCharacters Codec.bool
        |> Codec.field "PasswordReusePrevention" .passwordReusePrevention passwordReusePreventionTypeCodec
        |> Codec.field "MinimumPasswordLength" .minimumPasswordLength minimumPasswordLengthTypeCodec
        |> Codec.field "MaxPasswordAge" .maxPasswordAge maxPasswordAgeTypeCodec
        |> Codec.field "HardExpiry" .hardExpiry Codec.bool
        |> Codec.field "ExpirePasswords" .expirePasswords Codec.bool
        |> Codec.field "AllowUsersToChangePassword" .allowUsersToChangePassword Codec.bool
        |> Codec.buildObject


{-| Codec for OrganizationsDecisionDetail. -}
organizationsDecisionDetailCodec : Codec OrganizationsDecisionDetail
organizationsDecisionDetailCodec =
    Codec.object OrganizationsDecisionDetail
        |> Codec.field "AllowedByOrganizations" .allowedByOrganizations Codec.bool
        |> Codec.buildObject


{-| Codec for OpenIdconnectProviderUrlType. -}
openIdconnectProviderUrlTypeCodec : Codec OpenIdconnectProviderUrlType
openIdconnectProviderUrlTypeCodec =
    Codec.build (Guarded.encoder openIdconnectProviderUrlType) (Guarded.decoder openIdconnectProviderUrlType)


{-| Codec for OpenIdconnectProviderListType. -}
openIdconnectProviderListTypeCodec : Codec OpenIdconnectProviderListType
openIdconnectProviderListTypeCodec =
    Codec.list openIdconnectProviderListEntryCodec


{-| Codec for OpenIdconnectProviderListEntry. -}
openIdconnectProviderListEntryCodec : Codec OpenIdconnectProviderListEntry
openIdconnectProviderListEntryCodec =
    Codec.object OpenIdconnectProviderListEntry |> Codec.field "Arn" .arn arnTypeCodec |> Codec.buildObject


{-| Codec for ManagedPolicyDetailListType. -}
managedPolicyDetailListTypeCodec : Codec ManagedPolicyDetailListType
managedPolicyDetailListTypeCodec =
    Codec.list managedPolicyDetailCodec


{-| Codec for ManagedPolicyDetail. -}
managedPolicyDetailCodec : Codec ManagedPolicyDetail
managedPolicyDetailCodec =
    Codec.object ManagedPolicyDetail
        |> Codec.field "UpdateDate" .updateDate dateTypeCodec
        |> Codec.field "PolicyVersionList" .policyVersionList policyDocumentVersionListTypeCodec
        |> Codec.field "PolicyName" .policyName policyNameTypeCodec
        |> Codec.field "PolicyId" .policyId idTypeCodec
        |> Codec.field "PermissionsBoundaryUsageCount" .permissionsBoundaryUsageCount Codec.int
        |> Codec.field "Path" .path policyPathTypeCodec
        |> Codec.field "IsAttachable" .isAttachable Codec.bool
        |> Codec.field "Description" .description policyDescriptionTypeCodec
        |> Codec.field "DefaultVersionId" .defaultVersionId policyVersionIdTypeCodec
        |> Codec.field "CreateDate" .createDate dateTypeCodec
        |> Codec.field "AttachmentCount" .attachmentCount Codec.int
        |> Codec.field "Arn" .arn arnTypeCodec
        |> Codec.buildObject


{-| Codec for Mfadevice. -}
mfadeviceCodec : Codec Mfadevice
mfadeviceCodec =
    Codec.object Mfadevice
        |> Codec.field "UserName" .userName userNameTypeCodec
        |> Codec.field "SerialNumber" .serialNumber serialNumberTypeCodec
        |> Codec.field "EnableDate" .enableDate dateTypeCodec
        |> Codec.buildObject


{-| Codec for LoginProfile. -}
loginProfileCodec : Codec LoginProfile
loginProfileCodec =
    Codec.object LoginProfile
        |> Codec.field "UserName" .userName userNameTypeCodec
        |> Codec.field "PasswordResetRequired" .passwordResetRequired Codec.bool
        |> Codec.field "CreateDate" .createDate dateTypeCodec
        |> Codec.buildObject


{-| Codec for ListVirtualMfadevicesResponse. -}
listVirtualMfadevicesResponseCodec : Codec ListVirtualMfadevicesResponse
listVirtualMfadevicesResponseCodec =
    Codec.object ListVirtualMfadevicesResponse
        |> Codec.field "VirtualMFADevices" .virtualMfadevices virtualMfadeviceListTypeCodec
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.buildObject


{-| Codec for ListVirtualMfadevicesRequest. -}
listVirtualMfadevicesRequestCodec : Codec ListVirtualMfadevicesRequest
listVirtualMfadevicesRequestCodec =
    Codec.object ListVirtualMfadevicesRequest
        |> Codec.field "MaxItems" .maxItems maxItemsTypeCodec
        |> Codec.field "Marker" .marker markerTypeCodec
        |> Codec.field "AssignmentStatus" .assignmentStatus assignmentStatusTypeCodec
        |> Codec.buildObject


{-| Codec for ListUsersResponse. -}
listUsersResponseCodec : Codec ListUsersResponse
listUsersResponseCodec =
    Codec.object ListUsersResponse
        |> Codec.field "Users" .users userListTypeCodec
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.buildObject


{-| Codec for ListUsersRequest. -}
listUsersRequestCodec : Codec ListUsersRequest
listUsersRequestCodec =
    Codec.object ListUsersRequest
        |> Codec.field "PathPrefix" .pathPrefix pathPrefixTypeCodec
        |> Codec.field "MaxItems" .maxItems maxItemsTypeCodec
        |> Codec.field "Marker" .marker markerTypeCodec
        |> Codec.buildObject


{-| Codec for ListUserTagsResponse. -}
listUserTagsResponseCodec : Codec ListUserTagsResponse
listUserTagsResponseCodec =
    Codec.object ListUserTagsResponse
        |> Codec.field "Tags" .tags tagListTypeCodec
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.buildObject


{-| Codec for ListUserTagsRequest. -}
listUserTagsRequestCodec : Codec ListUserTagsRequest
listUserTagsRequestCodec =
    Codec.object ListUserTagsRequest
        |> Codec.field "UserName" .userName existingUserNameTypeCodec
        |> Codec.field "MaxItems" .maxItems maxItemsTypeCodec
        |> Codec.field "Marker" .marker markerTypeCodec
        |> Codec.buildObject


{-| Codec for ListUserPoliciesResponse. -}
listUserPoliciesResponseCodec : Codec ListUserPoliciesResponse
listUserPoliciesResponseCodec =
    Codec.object ListUserPoliciesResponse
        |> Codec.field "PolicyNames" .policyNames policyNameListTypeCodec
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.buildObject


{-| Codec for ListUserPoliciesRequest. -}
listUserPoliciesRequestCodec : Codec ListUserPoliciesRequest
listUserPoliciesRequestCodec =
    Codec.object ListUserPoliciesRequest
        |> Codec.field "UserName" .userName existingUserNameTypeCodec
        |> Codec.field "MaxItems" .maxItems maxItemsTypeCodec
        |> Codec.field "Marker" .marker markerTypeCodec
        |> Codec.buildObject


{-| Codec for ListSigningCertificatesResponse. -}
listSigningCertificatesResponseCodec : Codec ListSigningCertificatesResponse
listSigningCertificatesResponseCodec =
    Codec.object ListSigningCertificatesResponse
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.field "Certificates" .certificates certificateListTypeCodec
        |> Codec.buildObject


{-| Codec for ListSigningCertificatesRequest. -}
listSigningCertificatesRequestCodec : Codec ListSigningCertificatesRequest
listSigningCertificatesRequestCodec =
    Codec.object ListSigningCertificatesRequest
        |> Codec.field "UserName" .userName existingUserNameTypeCodec
        |> Codec.field "MaxItems" .maxItems maxItemsTypeCodec
        |> Codec.field "Marker" .marker markerTypeCodec
        |> Codec.buildObject


{-| Codec for ListServiceSpecificCredentialsResponse. -}
listServiceSpecificCredentialsResponseCodec : Codec ListServiceSpecificCredentialsResponse
listServiceSpecificCredentialsResponseCodec =
    Codec.object ListServiceSpecificCredentialsResponse
        |> Codec.field "ServiceSpecificCredentials" .serviceSpecificCredentials serviceSpecificCredentialsListTypeCodec
        |> Codec.buildObject


{-| Codec for ListServiceSpecificCredentialsRequest. -}
listServiceSpecificCredentialsRequestCodec : Codec ListServiceSpecificCredentialsRequest
listServiceSpecificCredentialsRequestCodec =
    Codec.object ListServiceSpecificCredentialsRequest
        |> Codec.field "UserName" .userName userNameTypeCodec
        |> Codec.field "ServiceName" .serviceName Codec.string
        |> Codec.buildObject


{-| Codec for ListServerCertificatesResponse. -}
listServerCertificatesResponseCodec : Codec ListServerCertificatesResponse
listServerCertificatesResponseCodec =
    Codec.object ListServerCertificatesResponse
        |> Codec.field
            "ServerCertificateMetadataList"
            .serverCertificateMetadataList
            serverCertificateMetadataListTypeCodec
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.buildObject


{-| Codec for ListServerCertificatesRequest. -}
listServerCertificatesRequestCodec : Codec ListServerCertificatesRequest
listServerCertificatesRequestCodec =
    Codec.object ListServerCertificatesRequest
        |> Codec.field "PathPrefix" .pathPrefix pathPrefixTypeCodec
        |> Codec.field "MaxItems" .maxItems maxItemsTypeCodec
        |> Codec.field "Marker" .marker markerTypeCodec
        |> Codec.buildObject


{-| Codec for ListSshpublicKeysResponse. -}
listSshpublicKeysResponseCodec : Codec ListSshpublicKeysResponse
listSshpublicKeysResponseCodec =
    Codec.object ListSshpublicKeysResponse
        |> Codec.field "SSHPublicKeys" .sshpublicKeys sshpublicKeyListTypeCodec
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.buildObject


{-| Codec for ListSshpublicKeysRequest. -}
listSshpublicKeysRequestCodec : Codec ListSshpublicKeysRequest
listSshpublicKeysRequestCodec =
    Codec.object ListSshpublicKeysRequest
        |> Codec.field "UserName" .userName userNameTypeCodec
        |> Codec.field "MaxItems" .maxItems maxItemsTypeCodec
        |> Codec.field "Marker" .marker markerTypeCodec
        |> Codec.buildObject


{-| Codec for ListSamlprovidersResponse. -}
listSamlprovidersResponseCodec : Codec ListSamlprovidersResponse
listSamlprovidersResponseCodec =
    Codec.object ListSamlprovidersResponse
        |> Codec.field "SAMLProviderList" .samlproviderList samlproviderListTypeCodec
        |> Codec.buildObject


{-| Codec for ListSamlprovidersRequest. -}
listSamlprovidersRequestCodec : Codec ListSamlprovidersRequest
listSamlprovidersRequestCodec =
    Codec.object ListSamlprovidersRequest |> Codec.buildObject


{-| Codec for ListRolesResponse. -}
listRolesResponseCodec : Codec ListRolesResponse
listRolesResponseCodec =
    Codec.object ListRolesResponse
        |> Codec.field "Roles" .roles roleListTypeCodec
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.buildObject


{-| Codec for ListRolesRequest. -}
listRolesRequestCodec : Codec ListRolesRequest
listRolesRequestCodec =
    Codec.object ListRolesRequest
        |> Codec.field "PathPrefix" .pathPrefix pathPrefixTypeCodec
        |> Codec.field "MaxItems" .maxItems maxItemsTypeCodec
        |> Codec.field "Marker" .marker markerTypeCodec
        |> Codec.buildObject


{-| Codec for ListRoleTagsResponse. -}
listRoleTagsResponseCodec : Codec ListRoleTagsResponse
listRoleTagsResponseCodec =
    Codec.object ListRoleTagsResponse
        |> Codec.field "Tags" .tags tagListTypeCodec
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.buildObject


{-| Codec for ListRoleTagsRequest. -}
listRoleTagsRequestCodec : Codec ListRoleTagsRequest
listRoleTagsRequestCodec =
    Codec.object ListRoleTagsRequest
        |> Codec.field "RoleName" .roleName roleNameTypeCodec
        |> Codec.field "MaxItems" .maxItems maxItemsTypeCodec
        |> Codec.field "Marker" .marker markerTypeCodec
        |> Codec.buildObject


{-| Codec for ListRolePoliciesResponse. -}
listRolePoliciesResponseCodec : Codec ListRolePoliciesResponse
listRolePoliciesResponseCodec =
    Codec.object ListRolePoliciesResponse
        |> Codec.field "PolicyNames" .policyNames policyNameListTypeCodec
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.buildObject


{-| Codec for ListRolePoliciesRequest. -}
listRolePoliciesRequestCodec : Codec ListRolePoliciesRequest
listRolePoliciesRequestCodec =
    Codec.object ListRolePoliciesRequest
        |> Codec.field "RoleName" .roleName roleNameTypeCodec
        |> Codec.field "MaxItems" .maxItems maxItemsTypeCodec
        |> Codec.field "Marker" .marker markerTypeCodec
        |> Codec.buildObject


{-| Codec for ListPolicyVersionsResponse. -}
listPolicyVersionsResponseCodec : Codec ListPolicyVersionsResponse
listPolicyVersionsResponseCodec =
    Codec.object ListPolicyVersionsResponse
        |> Codec.field "Versions" .versions policyDocumentVersionListTypeCodec
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.buildObject


{-| Codec for ListPolicyVersionsRequest. -}
listPolicyVersionsRequestCodec : Codec ListPolicyVersionsRequest
listPolicyVersionsRequestCodec =
    Codec.object ListPolicyVersionsRequest
        |> Codec.field "PolicyArn" .policyArn arnTypeCodec
        |> Codec.field "MaxItems" .maxItems maxItemsTypeCodec
        |> Codec.field "Marker" .marker markerTypeCodec
        |> Codec.buildObject


{-| Codec for ListPoliciesResponse. -}
listPoliciesResponseCodec : Codec ListPoliciesResponse
listPoliciesResponseCodec =
    Codec.object ListPoliciesResponse
        |> Codec.field "Policies" .policies policyListTypeCodec
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.buildObject


{-| Codec for ListPoliciesRequest. -}
listPoliciesRequestCodec : Codec ListPoliciesRequest
listPoliciesRequestCodec =
    Codec.object ListPoliciesRequest
        |> Codec.field "Scope" .scope policyScopeTypeCodec
        |> Codec.field "PolicyUsageFilter" .policyUsageFilter policyUsageTypeCodec
        |> Codec.field "PathPrefix" .pathPrefix policyPathTypeCodec
        |> Codec.field "OnlyAttached" .onlyAttached Codec.bool
        |> Codec.field "MaxItems" .maxItems maxItemsTypeCodec
        |> Codec.field "Marker" .marker markerTypeCodec
        |> Codec.buildObject


{-| Codec for ListPoliciesGrantingServiceAccessResponse. -}
listPoliciesGrantingServiceAccessResponseCodec : Codec ListPoliciesGrantingServiceAccessResponse
listPoliciesGrantingServiceAccessResponseCodec =
    Codec.object ListPoliciesGrantingServiceAccessResponse
        |> Codec.field
            "PoliciesGrantingServiceAccess"
            .policiesGrantingServiceAccess
            listPolicyGrantingServiceAccessResponseListTypeCodec
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.buildObject


{-| Codec for ListPoliciesGrantingServiceAccessRequest. -}
listPoliciesGrantingServiceAccessRequestCodec : Codec ListPoliciesGrantingServiceAccessRequest
listPoliciesGrantingServiceAccessRequestCodec =
    Codec.object ListPoliciesGrantingServiceAccessRequest
        |> Codec.field "ServiceNamespaces" .serviceNamespaces serviceNamespaceListTypeCodec
        |> Codec.field "Marker" .marker markerTypeCodec
        |> Codec.field "Arn" .arn arnTypeCodec
        |> Codec.buildObject


{-| Codec for ListPoliciesGrantingServiceAccessEntry. -}
listPoliciesGrantingServiceAccessEntryCodec : Codec ListPoliciesGrantingServiceAccessEntry
listPoliciesGrantingServiceAccessEntryCodec =
    Codec.object ListPoliciesGrantingServiceAccessEntry
        |> Codec.field "ServiceNamespace" .serviceNamespace serviceNamespaceTypeCodec
        |> Codec.field "Policies" .policies policyGrantingServiceAccessListTypeCodec
        |> Codec.buildObject


{-| Codec for ListOpenIdconnectProvidersResponse. -}
listOpenIdconnectProvidersResponseCodec : Codec ListOpenIdconnectProvidersResponse
listOpenIdconnectProvidersResponseCodec =
    Codec.object ListOpenIdconnectProvidersResponse
        |> Codec.field "OpenIDConnectProviderList" .openIdconnectProviderList openIdconnectProviderListTypeCodec
        |> Codec.buildObject


{-| Codec for ListOpenIdconnectProvidersRequest. -}
listOpenIdconnectProvidersRequestCodec : Codec ListOpenIdconnectProvidersRequest
listOpenIdconnectProvidersRequestCodec =
    Codec.object ListOpenIdconnectProvidersRequest |> Codec.buildObject


{-| Codec for ListMfadevicesResponse. -}
listMfadevicesResponseCodec : Codec ListMfadevicesResponse
listMfadevicesResponseCodec =
    Codec.object ListMfadevicesResponse
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "MFADevices" .mfadevices mfaDeviceListTypeCodec
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.buildObject


{-| Codec for ListMfadevicesRequest. -}
listMfadevicesRequestCodec : Codec ListMfadevicesRequest
listMfadevicesRequestCodec =
    Codec.object ListMfadevicesRequest
        |> Codec.field "UserName" .userName existingUserNameTypeCodec
        |> Codec.field "MaxItems" .maxItems maxItemsTypeCodec
        |> Codec.field "Marker" .marker markerTypeCodec
        |> Codec.buildObject


{-| Codec for ListInstanceProfilesResponse. -}
listInstanceProfilesResponseCodec : Codec ListInstanceProfilesResponse
listInstanceProfilesResponseCodec =
    Codec.object ListInstanceProfilesResponse
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.field "InstanceProfiles" .instanceProfiles instanceProfileListTypeCodec
        |> Codec.buildObject


{-| Codec for ListInstanceProfilesRequest. -}
listInstanceProfilesRequestCodec : Codec ListInstanceProfilesRequest
listInstanceProfilesRequestCodec =
    Codec.object ListInstanceProfilesRequest
        |> Codec.field "PathPrefix" .pathPrefix pathPrefixTypeCodec
        |> Codec.field "MaxItems" .maxItems maxItemsTypeCodec
        |> Codec.field "Marker" .marker markerTypeCodec
        |> Codec.buildObject


{-| Codec for ListInstanceProfilesForRoleResponse. -}
listInstanceProfilesForRoleResponseCodec : Codec ListInstanceProfilesForRoleResponse
listInstanceProfilesForRoleResponseCodec =
    Codec.object ListInstanceProfilesForRoleResponse
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.field "InstanceProfiles" .instanceProfiles instanceProfileListTypeCodec
        |> Codec.buildObject


{-| Codec for ListInstanceProfilesForRoleRequest. -}
listInstanceProfilesForRoleRequestCodec : Codec ListInstanceProfilesForRoleRequest
listInstanceProfilesForRoleRequestCodec =
    Codec.object ListInstanceProfilesForRoleRequest
        |> Codec.field "RoleName" .roleName roleNameTypeCodec
        |> Codec.field "MaxItems" .maxItems maxItemsTypeCodec
        |> Codec.field "Marker" .marker markerTypeCodec
        |> Codec.buildObject


{-| Codec for ListGroupsResponse. -}
listGroupsResponseCodec : Codec ListGroupsResponse
listGroupsResponseCodec =
    Codec.object ListGroupsResponse
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.field "Groups" .groups groupListTypeCodec
        |> Codec.buildObject


{-| Codec for ListGroupsRequest. -}
listGroupsRequestCodec : Codec ListGroupsRequest
listGroupsRequestCodec =
    Codec.object ListGroupsRequest
        |> Codec.field "PathPrefix" .pathPrefix pathPrefixTypeCodec
        |> Codec.field "MaxItems" .maxItems maxItemsTypeCodec
        |> Codec.field "Marker" .marker markerTypeCodec
        |> Codec.buildObject


{-| Codec for ListGroupsForUserResponse. -}
listGroupsForUserResponseCodec : Codec ListGroupsForUserResponse
listGroupsForUserResponseCodec =
    Codec.object ListGroupsForUserResponse
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.field "Groups" .groups groupListTypeCodec
        |> Codec.buildObject


{-| Codec for ListGroupsForUserRequest. -}
listGroupsForUserRequestCodec : Codec ListGroupsForUserRequest
listGroupsForUserRequestCodec =
    Codec.object ListGroupsForUserRequest
        |> Codec.field "UserName" .userName existingUserNameTypeCodec
        |> Codec.field "MaxItems" .maxItems maxItemsTypeCodec
        |> Codec.field "Marker" .marker markerTypeCodec
        |> Codec.buildObject


{-| Codec for ListGroupPoliciesResponse. -}
listGroupPoliciesResponseCodec : Codec ListGroupPoliciesResponse
listGroupPoliciesResponseCodec =
    Codec.object ListGroupPoliciesResponse
        |> Codec.field "PolicyNames" .policyNames policyNameListTypeCodec
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.buildObject


{-| Codec for ListGroupPoliciesRequest. -}
listGroupPoliciesRequestCodec : Codec ListGroupPoliciesRequest
listGroupPoliciesRequestCodec =
    Codec.object ListGroupPoliciesRequest
        |> Codec.field "MaxItems" .maxItems maxItemsTypeCodec
        |> Codec.field "Marker" .marker markerTypeCodec
        |> Codec.field "GroupName" .groupName groupNameTypeCodec
        |> Codec.buildObject


{-| Codec for ListEntitiesForPolicyResponse. -}
listEntitiesForPolicyResponseCodec : Codec ListEntitiesForPolicyResponse
listEntitiesForPolicyResponseCodec =
    Codec.object ListEntitiesForPolicyResponse
        |> Codec.field "PolicyUsers" .policyUsers policyUserListTypeCodec
        |> Codec.field "PolicyRoles" .policyRoles policyRoleListTypeCodec
        |> Codec.field "PolicyGroups" .policyGroups policyGroupListTypeCodec
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.buildObject


{-| Codec for ListEntitiesForPolicyRequest. -}
listEntitiesForPolicyRequestCodec : Codec ListEntitiesForPolicyRequest
listEntitiesForPolicyRequestCodec =
    Codec.object ListEntitiesForPolicyRequest
        |> Codec.field "PolicyUsageFilter" .policyUsageFilter policyUsageTypeCodec
        |> Codec.field "PolicyArn" .policyArn arnTypeCodec
        |> Codec.field "PathPrefix" .pathPrefix pathTypeCodec
        |> Codec.field "MaxItems" .maxItems maxItemsTypeCodec
        |> Codec.field "Marker" .marker markerTypeCodec
        |> Codec.field "EntityFilter" .entityFilter entityTypeCodec
        |> Codec.buildObject


{-| Codec for ListAttachedUserPoliciesResponse. -}
listAttachedUserPoliciesResponseCodec : Codec ListAttachedUserPoliciesResponse
listAttachedUserPoliciesResponseCodec =
    Codec.object ListAttachedUserPoliciesResponse
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.field "AttachedPolicies" .attachedPolicies attachedPoliciesListTypeCodec
        |> Codec.buildObject


{-| Codec for ListAttachedUserPoliciesRequest. -}
listAttachedUserPoliciesRequestCodec : Codec ListAttachedUserPoliciesRequest
listAttachedUserPoliciesRequestCodec =
    Codec.object ListAttachedUserPoliciesRequest
        |> Codec.field "UserName" .userName userNameTypeCodec
        |> Codec.field "PathPrefix" .pathPrefix policyPathTypeCodec
        |> Codec.field "MaxItems" .maxItems maxItemsTypeCodec
        |> Codec.field "Marker" .marker markerTypeCodec
        |> Codec.buildObject


{-| Codec for ListAttachedRolePoliciesResponse. -}
listAttachedRolePoliciesResponseCodec : Codec ListAttachedRolePoliciesResponse
listAttachedRolePoliciesResponseCodec =
    Codec.object ListAttachedRolePoliciesResponse
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.field "AttachedPolicies" .attachedPolicies attachedPoliciesListTypeCodec
        |> Codec.buildObject


{-| Codec for ListAttachedRolePoliciesRequest. -}
listAttachedRolePoliciesRequestCodec : Codec ListAttachedRolePoliciesRequest
listAttachedRolePoliciesRequestCodec =
    Codec.object ListAttachedRolePoliciesRequest
        |> Codec.field "RoleName" .roleName roleNameTypeCodec
        |> Codec.field "PathPrefix" .pathPrefix policyPathTypeCodec
        |> Codec.field "MaxItems" .maxItems maxItemsTypeCodec
        |> Codec.field "Marker" .marker markerTypeCodec
        |> Codec.buildObject


{-| Codec for ListAttachedGroupPoliciesResponse. -}
listAttachedGroupPoliciesResponseCodec : Codec ListAttachedGroupPoliciesResponse
listAttachedGroupPoliciesResponseCodec =
    Codec.object ListAttachedGroupPoliciesResponse
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.field "AttachedPolicies" .attachedPolicies attachedPoliciesListTypeCodec
        |> Codec.buildObject


{-| Codec for ListAttachedGroupPoliciesRequest. -}
listAttachedGroupPoliciesRequestCodec : Codec ListAttachedGroupPoliciesRequest
listAttachedGroupPoliciesRequestCodec =
    Codec.object ListAttachedGroupPoliciesRequest
        |> Codec.field "PathPrefix" .pathPrefix policyPathTypeCodec
        |> Codec.field "MaxItems" .maxItems maxItemsTypeCodec
        |> Codec.field "Marker" .marker markerTypeCodec
        |> Codec.field "GroupName" .groupName groupNameTypeCodec
        |> Codec.buildObject


{-| Codec for ListAccountAliasesResponse. -}
listAccountAliasesResponseCodec : Codec ListAccountAliasesResponse
listAccountAliasesResponseCodec =
    Codec.object ListAccountAliasesResponse
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.field "AccountAliases" .accountAliases accountAliasListTypeCodec
        |> Codec.buildObject


{-| Codec for ListAccountAliasesRequest. -}
listAccountAliasesRequestCodec : Codec ListAccountAliasesRequest
listAccountAliasesRequestCodec =
    Codec.object ListAccountAliasesRequest
        |> Codec.field "MaxItems" .maxItems maxItemsTypeCodec
        |> Codec.field "Marker" .marker markerTypeCodec
        |> Codec.buildObject


{-| Codec for ListAccessKeysResponse. -}
listAccessKeysResponseCodec : Codec ListAccessKeysResponse
listAccessKeysResponseCodec =
    Codec.object ListAccessKeysResponse
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.field "AccessKeyMetadata" .accessKeyMetadata accessKeyMetadataListTypeCodec
        |> Codec.buildObject


{-| Codec for ListAccessKeysRequest. -}
listAccessKeysRequestCodec : Codec ListAccessKeysRequest
listAccessKeysRequestCodec =
    Codec.object ListAccessKeysRequest
        |> Codec.field "UserName" .userName existingUserNameTypeCodec
        |> Codec.field "MaxItems" .maxItems maxItemsTypeCodec
        |> Codec.field "Marker" .marker markerTypeCodec
        |> Codec.buildObject


{-| Codec for LineNumber. -}
lineNumberCodec : Codec LineNumber
lineNumberCodec =
    Codec.int


{-| Codec for InstanceProfile. -}
instanceProfileCodec : Codec InstanceProfile
instanceProfileCodec =
    Codec.object InstanceProfile
        |> Codec.field "Roles" .roles roleListTypeCodec
        |> Codec.field "Path" .path pathTypeCodec
        |> Codec.field "InstanceProfileName" .instanceProfileName instanceProfileNameTypeCodec
        |> Codec.field "InstanceProfileId" .instanceProfileId idTypeCodec
        |> Codec.field "CreateDate" .createDate dateTypeCodec
        |> Codec.field "Arn" .arn arnTypeCodec
        |> Codec.buildObject


{-| Codec for GroupDetail. -}
groupDetailCodec : Codec GroupDetail
groupDetailCodec =
    Codec.object GroupDetail
        |> Codec.field "Path" .path pathTypeCodec
        |> Codec.field "GroupPolicyList" .groupPolicyList policyDetailListTypeCodec
        |> Codec.field "GroupName" .groupName groupNameTypeCodec
        |> Codec.field "GroupId" .groupId idTypeCodec
        |> Codec.field "CreateDate" .createDate dateTypeCodec
        |> Codec.field "AttachedManagedPolicies" .attachedManagedPolicies attachedPoliciesListTypeCodec
        |> Codec.field "Arn" .arn arnTypeCodec
        |> Codec.buildObject


{-| Codec for Group. -}
groupCodec : Codec Group
groupCodec =
    Codec.object Group
        |> Codec.field "Path" .path pathTypeCodec
        |> Codec.field "GroupName" .groupName groupNameTypeCodec
        |> Codec.field "GroupId" .groupId idTypeCodec
        |> Codec.field "CreateDate" .createDate dateTypeCodec
        |> Codec.field "Arn" .arn arnTypeCodec
        |> Codec.buildObject


{-| Codec for GetUserResponse. -}
getUserResponseCodec : Codec GetUserResponse
getUserResponseCodec =
    Codec.object GetUserResponse |> Codec.field "User" .user userCodec |> Codec.buildObject


{-| Codec for GetUserRequest. -}
getUserRequestCodec : Codec GetUserRequest
getUserRequestCodec =
    Codec.object GetUserRequest |> Codec.field "UserName" .userName existingUserNameTypeCodec |> Codec.buildObject


{-| Codec for GetUserPolicyResponse. -}
getUserPolicyResponseCodec : Codec GetUserPolicyResponse
getUserPolicyResponseCodec =
    Codec.object GetUserPolicyResponse
        |> Codec.field "UserName" .userName existingUserNameTypeCodec
        |> Codec.field "PolicyName" .policyName policyNameTypeCodec
        |> Codec.field "PolicyDocument" .policyDocument policyDocumentTypeCodec
        |> Codec.buildObject


{-| Codec for GetUserPolicyRequest. -}
getUserPolicyRequestCodec : Codec GetUserPolicyRequest
getUserPolicyRequestCodec =
    Codec.object GetUserPolicyRequest
        |> Codec.field "UserName" .userName existingUserNameTypeCodec
        |> Codec.field "PolicyName" .policyName policyNameTypeCodec
        |> Codec.buildObject


{-| Codec for GetServiceLinkedRoleDeletionStatusResponse. -}
getServiceLinkedRoleDeletionStatusResponseCodec : Codec GetServiceLinkedRoleDeletionStatusResponse
getServiceLinkedRoleDeletionStatusResponseCodec =
    Codec.object GetServiceLinkedRoleDeletionStatusResponse
        |> Codec.field "Status" .status deletionTaskStatusTypeCodec
        |> Codec.field "Reason" .reason deletionTaskFailureReasonTypeCodec
        |> Codec.buildObject


{-| Codec for GetServiceLinkedRoleDeletionStatusRequest. -}
getServiceLinkedRoleDeletionStatusRequestCodec : Codec GetServiceLinkedRoleDeletionStatusRequest
getServiceLinkedRoleDeletionStatusRequestCodec =
    Codec.object GetServiceLinkedRoleDeletionStatusRequest
        |> Codec.field "DeletionTaskId" .deletionTaskId deletionTaskIdTypeCodec
        |> Codec.buildObject


{-| Codec for GetServiceLastAccessedDetailsWithEntitiesResponse. -}
getServiceLastAccessedDetailsWithEntitiesResponseCodec : Codec GetServiceLastAccessedDetailsWithEntitiesResponse
getServiceLastAccessedDetailsWithEntitiesResponseCodec =
    Codec.object GetServiceLastAccessedDetailsWithEntitiesResponse
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "JobStatus" .jobStatus jobStatusTypeCodec
        |> Codec.field "JobCreationDate" .jobCreationDate dateTypeCodec
        |> Codec.field "JobCompletionDate" .jobCompletionDate dateTypeCodec
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.field "Error" .error errorDetailsCodec
        |> Codec.field "EntityDetailsList" .entityDetailsList entityDetailsListTypeCodec
        |> Codec.buildObject


{-| Codec for GetServiceLastAccessedDetailsWithEntitiesRequest. -}
getServiceLastAccessedDetailsWithEntitiesRequestCodec : Codec GetServiceLastAccessedDetailsWithEntitiesRequest
getServiceLastAccessedDetailsWithEntitiesRequestCodec =
    Codec.object GetServiceLastAccessedDetailsWithEntitiesRequest
        |> Codec.field "ServiceNamespace" .serviceNamespace serviceNamespaceTypeCodec
        |> Codec.field "MaxItems" .maxItems maxItemsTypeCodec
        |> Codec.field "Marker" .marker markerTypeCodec
        |> Codec.field "JobId" .jobId jobIdtypeCodec
        |> Codec.buildObject


{-| Codec for GetServiceLastAccessedDetailsResponse. -}
getServiceLastAccessedDetailsResponseCodec : Codec GetServiceLastAccessedDetailsResponse
getServiceLastAccessedDetailsResponseCodec =
    Codec.object GetServiceLastAccessedDetailsResponse
        |> Codec.field "ServicesLastAccessed" .servicesLastAccessed servicesLastAccessedCodec
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "JobStatus" .jobStatus jobStatusTypeCodec
        |> Codec.field "JobCreationDate" .jobCreationDate dateTypeCodec
        |> Codec.field "JobCompletionDate" .jobCompletionDate dateTypeCodec
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.field "Error" .error errorDetailsCodec
        |> Codec.buildObject


{-| Codec for GetServiceLastAccessedDetailsRequest. -}
getServiceLastAccessedDetailsRequestCodec : Codec GetServiceLastAccessedDetailsRequest
getServiceLastAccessedDetailsRequestCodec =
    Codec.object GetServiceLastAccessedDetailsRequest
        |> Codec.field "MaxItems" .maxItems maxItemsTypeCodec
        |> Codec.field "Marker" .marker markerTypeCodec
        |> Codec.field "JobId" .jobId jobIdtypeCodec
        |> Codec.buildObject


{-| Codec for GetServerCertificateResponse. -}
getServerCertificateResponseCodec : Codec GetServerCertificateResponse
getServerCertificateResponseCodec =
    Codec.object GetServerCertificateResponse
        |> Codec.field "ServerCertificate" .serverCertificate serverCertificateCodec
        |> Codec.buildObject


{-| Codec for GetServerCertificateRequest. -}
getServerCertificateRequestCodec : Codec GetServerCertificateRequest
getServerCertificateRequestCodec =
    Codec.object GetServerCertificateRequest
        |> Codec.field "ServerCertificateName" .serverCertificateName serverCertificateNameTypeCodec
        |> Codec.buildObject


{-| Codec for GetSshpublicKeyResponse. -}
getSshpublicKeyResponseCodec : Codec GetSshpublicKeyResponse
getSshpublicKeyResponseCodec =
    Codec.object GetSshpublicKeyResponse
        |> Codec.field "SSHPublicKey" .sshpublicKey sshpublicKeyCodec
        |> Codec.buildObject


{-| Codec for GetSshpublicKeyRequest. -}
getSshpublicKeyRequestCodec : Codec GetSshpublicKeyRequest
getSshpublicKeyRequestCodec =
    Codec.object GetSshpublicKeyRequest
        |> Codec.field "UserName" .userName userNameTypeCodec
        |> Codec.field "SSHPublicKeyId" .sshpublicKeyId publicKeyIdTypeCodec
        |> Codec.field "Encoding" .encoding encodingTypeCodec
        |> Codec.buildObject


{-| Codec for GetSamlproviderResponse. -}
getSamlproviderResponseCodec : Codec GetSamlproviderResponse
getSamlproviderResponseCodec =
    Codec.object GetSamlproviderResponse
        |> Codec.field "ValidUntil" .validUntil dateTypeCodec
        |> Codec.field "SAMLMetadataDocument" .samlmetadataDocument samlmetadataDocumentTypeCodec
        |> Codec.field "CreateDate" .createDate dateTypeCodec
        |> Codec.buildObject


{-| Codec for GetSamlproviderRequest. -}
getSamlproviderRequestCodec : Codec GetSamlproviderRequest
getSamlproviderRequestCodec =
    Codec.object GetSamlproviderRequest
        |> Codec.field "SAMLProviderArn" .samlproviderArn arnTypeCodec
        |> Codec.buildObject


{-| Codec for GetRoleResponse. -}
getRoleResponseCodec : Codec GetRoleResponse
getRoleResponseCodec =
    Codec.object GetRoleResponse |> Codec.field "Role" .role roleCodec |> Codec.buildObject


{-| Codec for GetRoleRequest. -}
getRoleRequestCodec : Codec GetRoleRequest
getRoleRequestCodec =
    Codec.object GetRoleRequest |> Codec.field "RoleName" .roleName roleNameTypeCodec |> Codec.buildObject


{-| Codec for GetRolePolicyResponse. -}
getRolePolicyResponseCodec : Codec GetRolePolicyResponse
getRolePolicyResponseCodec =
    Codec.object GetRolePolicyResponse
        |> Codec.field "RoleName" .roleName roleNameTypeCodec
        |> Codec.field "PolicyName" .policyName policyNameTypeCodec
        |> Codec.field "PolicyDocument" .policyDocument policyDocumentTypeCodec
        |> Codec.buildObject


{-| Codec for GetRolePolicyRequest. -}
getRolePolicyRequestCodec : Codec GetRolePolicyRequest
getRolePolicyRequestCodec =
    Codec.object GetRolePolicyRequest
        |> Codec.field "RoleName" .roleName roleNameTypeCodec
        |> Codec.field "PolicyName" .policyName policyNameTypeCodec
        |> Codec.buildObject


{-| Codec for GetPolicyVersionResponse. -}
getPolicyVersionResponseCodec : Codec GetPolicyVersionResponse
getPolicyVersionResponseCodec =
    Codec.object GetPolicyVersionResponse
        |> Codec.field "PolicyVersion" .policyVersion policyVersionCodec
        |> Codec.buildObject


{-| Codec for GetPolicyVersionRequest. -}
getPolicyVersionRequestCodec : Codec GetPolicyVersionRequest
getPolicyVersionRequestCodec =
    Codec.object GetPolicyVersionRequest
        |> Codec.field "VersionId" .versionId policyVersionIdTypeCodec
        |> Codec.field "PolicyArn" .policyArn arnTypeCodec
        |> Codec.buildObject


{-| Codec for GetPolicyResponse. -}
getPolicyResponseCodec : Codec GetPolicyResponse
getPolicyResponseCodec =
    Codec.object GetPolicyResponse |> Codec.field "Policy" .policy policyCodec |> Codec.buildObject


{-| Codec for GetPolicyRequest. -}
getPolicyRequestCodec : Codec GetPolicyRequest
getPolicyRequestCodec =
    Codec.object GetPolicyRequest |> Codec.field "PolicyArn" .policyArn arnTypeCodec |> Codec.buildObject


{-| Codec for GetOrganizationsAccessReportResponse. -}
getOrganizationsAccessReportResponseCodec : Codec GetOrganizationsAccessReportResponse
getOrganizationsAccessReportResponseCodec =
    Codec.object GetOrganizationsAccessReportResponse
        |> Codec.field "NumberOfServicesNotAccessed" .numberOfServicesNotAccessed Codec.int
        |> Codec.field "NumberOfServicesAccessible" .numberOfServicesAccessible Codec.int
        |> Codec.field "Marker" .marker markerTypeCodec
        |> Codec.field "JobStatus" .jobStatus jobStatusTypeCodec
        |> Codec.field "JobCreationDate" .jobCreationDate dateTypeCodec
        |> Codec.field "JobCompletionDate" .jobCompletionDate dateTypeCodec
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.field "ErrorDetails" .errorDetails errorDetailsCodec
        |> Codec.field "AccessDetails" .accessDetails accessDetailsCodec
        |> Codec.buildObject


{-| Codec for GetOrganizationsAccessReportRequest. -}
getOrganizationsAccessReportRequestCodec : Codec GetOrganizationsAccessReportRequest
getOrganizationsAccessReportRequestCodec =
    Codec.object GetOrganizationsAccessReportRequest
        |> Codec.field "SortKey" .sortKey sortKeyTypeCodec
        |> Codec.field "MaxItems" .maxItems maxItemsTypeCodec
        |> Codec.field "Marker" .marker markerTypeCodec
        |> Codec.field "JobId" .jobId jobIdtypeCodec
        |> Codec.buildObject


{-| Codec for GetOpenIdconnectProviderResponse. -}
getOpenIdconnectProviderResponseCodec : Codec GetOpenIdconnectProviderResponse
getOpenIdconnectProviderResponseCodec =
    Codec.object GetOpenIdconnectProviderResponse
        |> Codec.field "Url" .url openIdconnectProviderUrlTypeCodec
        |> Codec.field "ThumbprintList" .thumbprintList thumbprintListTypeCodec
        |> Codec.field "CreateDate" .createDate dateTypeCodec
        |> Codec.field "ClientIDList" .clientIdlist clientIdlistTypeCodec
        |> Codec.buildObject


{-| Codec for GetOpenIdconnectProviderRequest. -}
getOpenIdconnectProviderRequestCodec : Codec GetOpenIdconnectProviderRequest
getOpenIdconnectProviderRequestCodec =
    Codec.object GetOpenIdconnectProviderRequest
        |> Codec.field "OpenIDConnectProviderArn" .openIdconnectProviderArn arnTypeCodec
        |> Codec.buildObject


{-| Codec for GetLoginProfileResponse. -}
getLoginProfileResponseCodec : Codec GetLoginProfileResponse
getLoginProfileResponseCodec =
    Codec.object GetLoginProfileResponse
        |> Codec.field "LoginProfile" .loginProfile loginProfileCodec
        |> Codec.buildObject


{-| Codec for GetLoginProfileRequest. -}
getLoginProfileRequestCodec : Codec GetLoginProfileRequest
getLoginProfileRequestCodec =
    Codec.object GetLoginProfileRequest |> Codec.field "UserName" .userName userNameTypeCodec |> Codec.buildObject


{-| Codec for GetInstanceProfileResponse. -}
getInstanceProfileResponseCodec : Codec GetInstanceProfileResponse
getInstanceProfileResponseCodec =
    Codec.object GetInstanceProfileResponse
        |> Codec.field "InstanceProfile" .instanceProfile instanceProfileCodec
        |> Codec.buildObject


{-| Codec for GetInstanceProfileRequest. -}
getInstanceProfileRequestCodec : Codec GetInstanceProfileRequest
getInstanceProfileRequestCodec =
    Codec.object GetInstanceProfileRequest
        |> Codec.field "InstanceProfileName" .instanceProfileName instanceProfileNameTypeCodec
        |> Codec.buildObject


{-| Codec for GetGroupResponse. -}
getGroupResponseCodec : Codec GetGroupResponse
getGroupResponseCodec =
    Codec.object GetGroupResponse
        |> Codec.field "Users" .users userListTypeCodec
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.field "Group" .group groupCodec
        |> Codec.buildObject


{-| Codec for GetGroupRequest. -}
getGroupRequestCodec : Codec GetGroupRequest
getGroupRequestCodec =
    Codec.object GetGroupRequest
        |> Codec.field "MaxItems" .maxItems maxItemsTypeCodec
        |> Codec.field "Marker" .marker markerTypeCodec
        |> Codec.field "GroupName" .groupName groupNameTypeCodec
        |> Codec.buildObject


{-| Codec for GetGroupPolicyResponse. -}
getGroupPolicyResponseCodec : Codec GetGroupPolicyResponse
getGroupPolicyResponseCodec =
    Codec.object GetGroupPolicyResponse
        |> Codec.field "PolicyName" .policyName policyNameTypeCodec
        |> Codec.field "PolicyDocument" .policyDocument policyDocumentTypeCodec
        |> Codec.field "GroupName" .groupName groupNameTypeCodec
        |> Codec.buildObject


{-| Codec for GetGroupPolicyRequest. -}
getGroupPolicyRequestCodec : Codec GetGroupPolicyRequest
getGroupPolicyRequestCodec =
    Codec.object GetGroupPolicyRequest
        |> Codec.field "PolicyName" .policyName policyNameTypeCodec
        |> Codec.field "GroupName" .groupName groupNameTypeCodec
        |> Codec.buildObject


{-| Codec for GetCredentialReportResponse. -}
getCredentialReportResponseCodec : Codec GetCredentialReportResponse
getCredentialReportResponseCodec =
    Codec.object GetCredentialReportResponse
        |> Codec.field "ReportFormat" .reportFormat reportFormatTypeCodec
        |> Codec.field "GeneratedTime" .generatedTime dateTypeCodec
        |> Codec.field "Content" .content Codec.string
        |> Codec.buildObject


{-| Codec for GetContextKeysForPrincipalPolicyRequest. -}
getContextKeysForPrincipalPolicyRequestCodec : Codec GetContextKeysForPrincipalPolicyRequest
getContextKeysForPrincipalPolicyRequestCodec =
    Codec.object GetContextKeysForPrincipalPolicyRequest
        |> Codec.field "PolicySourceArn" .policySourceArn arnTypeCodec
        |> Codec.field "PolicyInputList" .policyInputList simulationPolicyListTypeCodec
        |> Codec.buildObject


{-| Codec for GetContextKeysForPolicyResponse. -}
getContextKeysForPolicyResponseCodec : Codec GetContextKeysForPolicyResponse
getContextKeysForPolicyResponseCodec =
    Codec.object GetContextKeysForPolicyResponse
        |> Codec.field "ContextKeyNames" .contextKeyNames contextKeyNamesResultListTypeCodec
        |> Codec.buildObject


{-| Codec for GetContextKeysForCustomPolicyRequest. -}
getContextKeysForCustomPolicyRequestCodec : Codec GetContextKeysForCustomPolicyRequest
getContextKeysForCustomPolicyRequestCodec =
    Codec.object GetContextKeysForCustomPolicyRequest
        |> Codec.field "PolicyInputList" .policyInputList simulationPolicyListTypeCodec
        |> Codec.buildObject


{-| Codec for GetAccountSummaryResponse. -}
getAccountSummaryResponseCodec : Codec GetAccountSummaryResponse
getAccountSummaryResponseCodec =
    Codec.object GetAccountSummaryResponse
        |> Codec.field "SummaryMap" .summaryMap summaryMapTypeCodec
        |> Codec.buildObject


{-| Codec for GetAccountPasswordPolicyResponse. -}
getAccountPasswordPolicyResponseCodec : Codec GetAccountPasswordPolicyResponse
getAccountPasswordPolicyResponseCodec =
    Codec.object GetAccountPasswordPolicyResponse
        |> Codec.field "PasswordPolicy" .passwordPolicy passwordPolicyCodec
        |> Codec.buildObject


{-| Codec for GetAccountAuthorizationDetailsResponse. -}
getAccountAuthorizationDetailsResponseCodec : Codec GetAccountAuthorizationDetailsResponse
getAccountAuthorizationDetailsResponseCodec =
    Codec.object GetAccountAuthorizationDetailsResponse
        |> Codec.field "UserDetailList" .userDetailList userDetailListTypeCodec
        |> Codec.field "RoleDetailList" .roleDetailList roleDetailListTypeCodec
        |> Codec.field "Policies" .policies managedPolicyDetailListTypeCodec
        |> Codec.field "Marker" .marker Codec.string
        |> Codec.field "IsTruncated" .isTruncated Codec.bool
        |> Codec.field "GroupDetailList" .groupDetailList groupDetailListTypeCodec
        |> Codec.buildObject


{-| Codec for GetAccountAuthorizationDetailsRequest. -}
getAccountAuthorizationDetailsRequestCodec : Codec GetAccountAuthorizationDetailsRequest
getAccountAuthorizationDetailsRequestCodec =
    Codec.object GetAccountAuthorizationDetailsRequest
        |> Codec.field "MaxItems" .maxItems maxItemsTypeCodec
        |> Codec.field "Marker" .marker markerTypeCodec
        |> Codec.field "Filter" .filter entityListTypeCodec
        |> Codec.buildObject


{-| Codec for GetAccessKeyLastUsedResponse. -}
getAccessKeyLastUsedResponseCodec : Codec GetAccessKeyLastUsedResponse
getAccessKeyLastUsedResponseCodec =
    Codec.object GetAccessKeyLastUsedResponse
        |> Codec.field "UserName" .userName existingUserNameTypeCodec
        |> Codec.field "AccessKeyLastUsed" .accessKeyLastUsed accessKeyLastUsedCodec
        |> Codec.buildObject


{-| Codec for GetAccessKeyLastUsedRequest. -}
getAccessKeyLastUsedRequestCodec : Codec GetAccessKeyLastUsedRequest
getAccessKeyLastUsedRequestCodec =
    Codec.object GetAccessKeyLastUsedRequest
        |> Codec.field "AccessKeyId" .accessKeyId accessKeyIdTypeCodec
        |> Codec.buildObject


{-| Codec for GenerateServiceLastAccessedDetailsResponse. -}
generateServiceLastAccessedDetailsResponseCodec : Codec GenerateServiceLastAccessedDetailsResponse
generateServiceLastAccessedDetailsResponseCodec =
    Codec.object GenerateServiceLastAccessedDetailsResponse
        |> Codec.field "JobId" .jobId jobIdtypeCodec
        |> Codec.buildObject


{-| Codec for GenerateServiceLastAccessedDetailsRequest. -}
generateServiceLastAccessedDetailsRequestCodec : Codec GenerateServiceLastAccessedDetailsRequest
generateServiceLastAccessedDetailsRequestCodec =
    Codec.object GenerateServiceLastAccessedDetailsRequest |> Codec.field "Arn" .arn arnTypeCodec |> Codec.buildObject


{-| Codec for GenerateOrganizationsAccessReportResponse. -}
generateOrganizationsAccessReportResponseCodec : Codec GenerateOrganizationsAccessReportResponse
generateOrganizationsAccessReportResponseCodec =
    Codec.object GenerateOrganizationsAccessReportResponse
        |> Codec.field "JobId" .jobId jobIdtypeCodec
        |> Codec.buildObject


{-| Codec for GenerateOrganizationsAccessReportRequest. -}
generateOrganizationsAccessReportRequestCodec : Codec GenerateOrganizationsAccessReportRequest
generateOrganizationsAccessReportRequestCodec =
    Codec.object GenerateOrganizationsAccessReportRequest
        |> Codec.field "OrganizationsPolicyId" .organizationsPolicyId organizationsPolicyIdTypeCodec
        |> Codec.field "EntityPath" .entityPath organizationsEntityPathTypeCodec
        |> Codec.buildObject


{-| Codec for GenerateCredentialReportResponse. -}
generateCredentialReportResponseCodec : Codec GenerateCredentialReportResponse
generateCredentialReportResponseCodec =
    Codec.object GenerateCredentialReportResponse
        |> Codec.field "State" .state reportStateTypeCodec
        |> Codec.field "Description" .description Codec.string
        |> Codec.buildObject


{-| Codec for EvaluationResultsListType. -}
evaluationResultsListTypeCodec : Codec EvaluationResultsListType
evaluationResultsListTypeCodec =
    Codec.list evaluationResultCodec


{-| Codec for EvaluationResult. -}
evaluationResultCodec : Codec EvaluationResult
evaluationResultCodec =
    Codec.object EvaluationResult
        |> Codec.field "ResourceSpecificResults" .resourceSpecificResults resourceSpecificResultListTypeCodec
        |> Codec.field "OrganizationsDecisionDetail" .organizationsDecisionDetail organizationsDecisionDetailCodec
        |> Codec.field "MissingContextValues" .missingContextValues contextKeyNamesResultListTypeCodec
        |> Codec.field "MatchedStatements" .matchedStatements statementListTypeCodec
        |> Codec.field "EvalResourceName" .evalResourceName resourceNameTypeCodec
        |> Codec.field "EvalDecisionDetails" .evalDecisionDetails evalDecisionDetailsTypeCodec
        |> Codec.field "EvalDecision" .evalDecision policyEvaluationDecisionTypeCodec
        |> Codec.field "EvalActionName" .evalActionName actionNameTypeCodec
        |> Codec.buildObject


{-| Codec for EvalDecisionSourceType. -}
evalDecisionSourceTypeCodec : Codec EvalDecisionSourceType
evalDecisionSourceTypeCodec =
    Codec.build (Guarded.encoder evalDecisionSourceType) (Guarded.decoder evalDecisionSourceType)


{-| Codec for EvalDecisionDetailsType. -}
evalDecisionDetailsTypeCodec : Codec EvalDecisionDetailsType
evalDecisionDetailsTypeCodec =
    Codec.dict policyEvaluationDecisionTypeCodec


{-| Codec for ErrorDetails. -}
errorDetailsCodec : Codec ErrorDetails
errorDetailsCodec =
    Codec.object ErrorDetails
        |> Codec.field "Message" .message Codec.string
        |> Codec.field "Code" .code Codec.string
        |> Codec.buildObject


{-| Codec for EntityType. -}
entityTypeCodec : Codec EntityType
entityTypeCodec =
    Codec.build (Enum.encoder entityType) (Enum.decoder entityType)


{-| Codec for EntityInfo. -}
entityInfoCodec : Codec EntityInfo
entityInfoCodec =
    Codec.object EntityInfo
        |> Codec.field "Type" .type_ policyOwnerEntityTypeCodec
        |> Codec.field "Path" .path pathTypeCodec
        |> Codec.field "Name" .name userNameTypeCodec
        |> Codec.field "Id" .id idTypeCodec
        |> Codec.field "Arn" .arn arnTypeCodec
        |> Codec.buildObject


{-| Codec for EntityDetails. -}
entityDetailsCodec : Codec EntityDetails
entityDetailsCodec =
    Codec.object EntityDetails
        |> Codec.field "LastAuthenticated" .lastAuthenticated dateTypeCodec
        |> Codec.field "EntityInfo" .entityInfo entityInfoCodec
        |> Codec.buildObject


{-| Codec for EnableMfadeviceRequest. -}
enableMfadeviceRequestCodec : Codec EnableMfadeviceRequest
enableMfadeviceRequestCodec =
    Codec.object EnableMfadeviceRequest
        |> Codec.field "UserName" .userName existingUserNameTypeCodec
        |> Codec.field "SerialNumber" .serialNumber serialNumberTypeCodec
        |> Codec.field "AuthenticationCode2" .authenticationCode2 authenticationCodeTypeCodec
        |> Codec.field "AuthenticationCode1" .authenticationCode1 authenticationCodeTypeCodec
        |> Codec.buildObject


{-| Codec for DetachUserPolicyRequest. -}
detachUserPolicyRequestCodec : Codec DetachUserPolicyRequest
detachUserPolicyRequestCodec =
    Codec.object DetachUserPolicyRequest
        |> Codec.field "UserName" .userName userNameTypeCodec
        |> Codec.field "PolicyArn" .policyArn arnTypeCodec
        |> Codec.buildObject


{-| Codec for DetachRolePolicyRequest. -}
detachRolePolicyRequestCodec : Codec DetachRolePolicyRequest
detachRolePolicyRequestCodec =
    Codec.object DetachRolePolicyRequest
        |> Codec.field "RoleName" .roleName roleNameTypeCodec
        |> Codec.field "PolicyArn" .policyArn arnTypeCodec
        |> Codec.buildObject


{-| Codec for DetachGroupPolicyRequest. -}
detachGroupPolicyRequestCodec : Codec DetachGroupPolicyRequest
detachGroupPolicyRequestCodec =
    Codec.object DetachGroupPolicyRequest
        |> Codec.field "PolicyArn" .policyArn arnTypeCodec
        |> Codec.field "GroupName" .groupName groupNameTypeCodec
        |> Codec.buildObject


{-| Codec for DeletionTaskStatusType. -}
deletionTaskStatusTypeCodec : Codec DeletionTaskStatusType
deletionTaskStatusTypeCodec =
    Codec.build (Enum.encoder deletionTaskStatusType) (Enum.decoder deletionTaskStatusType)


{-| Codec for DeletionTaskIdType. -}
deletionTaskIdTypeCodec : Codec DeletionTaskIdType
deletionTaskIdTypeCodec =
    Codec.build (Guarded.encoder deletionTaskIdType) (Guarded.decoder deletionTaskIdType)


{-| Codec for DeletionTaskFailureReasonType. -}
deletionTaskFailureReasonTypeCodec : Codec DeletionTaskFailureReasonType
deletionTaskFailureReasonTypeCodec =
    Codec.object DeletionTaskFailureReasonType
        |> Codec.field "RoleUsageList" .roleUsageList roleUsageListTypeCodec
        |> Codec.field "Reason" .reason reasonTypeCodec
        |> Codec.buildObject


{-| Codec for DeleteVirtualMfadeviceRequest. -}
deleteVirtualMfadeviceRequestCodec : Codec DeleteVirtualMfadeviceRequest
deleteVirtualMfadeviceRequestCodec =
    Codec.object DeleteVirtualMfadeviceRequest
        |> Codec.field "SerialNumber" .serialNumber serialNumberTypeCodec
        |> Codec.buildObject


{-| Codec for DeleteUserRequest. -}
deleteUserRequestCodec : Codec DeleteUserRequest
deleteUserRequestCodec =
    Codec.object DeleteUserRequest |> Codec.field "UserName" .userName existingUserNameTypeCodec |> Codec.buildObject


{-| Codec for DeleteUserPolicyRequest. -}
deleteUserPolicyRequestCodec : Codec DeleteUserPolicyRequest
deleteUserPolicyRequestCodec =
    Codec.object DeleteUserPolicyRequest
        |> Codec.field "UserName" .userName existingUserNameTypeCodec
        |> Codec.field "PolicyName" .policyName policyNameTypeCodec
        |> Codec.buildObject


{-| Codec for DeleteUserPermissionsBoundaryRequest. -}
deleteUserPermissionsBoundaryRequestCodec : Codec DeleteUserPermissionsBoundaryRequest
deleteUserPermissionsBoundaryRequestCodec =
    Codec.object DeleteUserPermissionsBoundaryRequest
        |> Codec.field "UserName" .userName userNameTypeCodec
        |> Codec.buildObject


{-| Codec for DeleteSigningCertificateRequest. -}
deleteSigningCertificateRequestCodec : Codec DeleteSigningCertificateRequest
deleteSigningCertificateRequestCodec =
    Codec.object DeleteSigningCertificateRequest
        |> Codec.field "UserName" .userName existingUserNameTypeCodec
        |> Codec.field "CertificateId" .certificateId certificateIdTypeCodec
        |> Codec.buildObject


{-| Codec for DeleteServiceSpecificCredentialRequest. -}
deleteServiceSpecificCredentialRequestCodec : Codec DeleteServiceSpecificCredentialRequest
deleteServiceSpecificCredentialRequestCodec =
    Codec.object DeleteServiceSpecificCredentialRequest
        |> Codec.field "UserName" .userName userNameTypeCodec
        |> Codec.field "ServiceSpecificCredentialId" .serviceSpecificCredentialId serviceSpecificCredentialIdCodec
        |> Codec.buildObject


{-| Codec for DeleteServiceLinkedRoleResponse. -}
deleteServiceLinkedRoleResponseCodec : Codec DeleteServiceLinkedRoleResponse
deleteServiceLinkedRoleResponseCodec =
    Codec.object DeleteServiceLinkedRoleResponse
        |> Codec.field "DeletionTaskId" .deletionTaskId deletionTaskIdTypeCodec
        |> Codec.buildObject


{-| Codec for DeleteServiceLinkedRoleRequest. -}
deleteServiceLinkedRoleRequestCodec : Codec DeleteServiceLinkedRoleRequest
deleteServiceLinkedRoleRequestCodec =
    Codec.object DeleteServiceLinkedRoleRequest
        |> Codec.field "RoleName" .roleName roleNameTypeCodec
        |> Codec.buildObject


{-| Codec for DeleteServerCertificateRequest. -}
deleteServerCertificateRequestCodec : Codec DeleteServerCertificateRequest
deleteServerCertificateRequestCodec =
    Codec.object DeleteServerCertificateRequest
        |> Codec.field "ServerCertificateName" .serverCertificateName serverCertificateNameTypeCodec
        |> Codec.buildObject


{-| Codec for DeleteSshpublicKeyRequest. -}
deleteSshpublicKeyRequestCodec : Codec DeleteSshpublicKeyRequest
deleteSshpublicKeyRequestCodec =
    Codec.object DeleteSshpublicKeyRequest
        |> Codec.field "UserName" .userName userNameTypeCodec
        |> Codec.field "SSHPublicKeyId" .sshpublicKeyId publicKeyIdTypeCodec
        |> Codec.buildObject


{-| Codec for DeleteSamlproviderRequest. -}
deleteSamlproviderRequestCodec : Codec DeleteSamlproviderRequest
deleteSamlproviderRequestCodec =
    Codec.object DeleteSamlproviderRequest
        |> Codec.field "SAMLProviderArn" .samlproviderArn arnTypeCodec
        |> Codec.buildObject


{-| Codec for DeleteRoleRequest. -}
deleteRoleRequestCodec : Codec DeleteRoleRequest
deleteRoleRequestCodec =
    Codec.object DeleteRoleRequest |> Codec.field "RoleName" .roleName roleNameTypeCodec |> Codec.buildObject


{-| Codec for DeleteRolePolicyRequest. -}
deleteRolePolicyRequestCodec : Codec DeleteRolePolicyRequest
deleteRolePolicyRequestCodec =
    Codec.object DeleteRolePolicyRequest
        |> Codec.field "RoleName" .roleName roleNameTypeCodec
        |> Codec.field "PolicyName" .policyName policyNameTypeCodec
        |> Codec.buildObject


{-| Codec for DeleteRolePermissionsBoundaryRequest. -}
deleteRolePermissionsBoundaryRequestCodec : Codec DeleteRolePermissionsBoundaryRequest
deleteRolePermissionsBoundaryRequestCodec =
    Codec.object DeleteRolePermissionsBoundaryRequest
        |> Codec.field "RoleName" .roleName roleNameTypeCodec
        |> Codec.buildObject


{-| Codec for DeletePolicyVersionRequest. -}
deletePolicyVersionRequestCodec : Codec DeletePolicyVersionRequest
deletePolicyVersionRequestCodec =
    Codec.object DeletePolicyVersionRequest
        |> Codec.field "VersionId" .versionId policyVersionIdTypeCodec
        |> Codec.field "PolicyArn" .policyArn arnTypeCodec
        |> Codec.buildObject


{-| Codec for DeletePolicyRequest. -}
deletePolicyRequestCodec : Codec DeletePolicyRequest
deletePolicyRequestCodec =
    Codec.object DeletePolicyRequest |> Codec.field "PolicyArn" .policyArn arnTypeCodec |> Codec.buildObject


{-| Codec for DeleteOpenIdconnectProviderRequest. -}
deleteOpenIdconnectProviderRequestCodec : Codec DeleteOpenIdconnectProviderRequest
deleteOpenIdconnectProviderRequestCodec =
    Codec.object DeleteOpenIdconnectProviderRequest
        |> Codec.field "OpenIDConnectProviderArn" .openIdconnectProviderArn arnTypeCodec
        |> Codec.buildObject


{-| Codec for DeleteLoginProfileRequest. -}
deleteLoginProfileRequestCodec : Codec DeleteLoginProfileRequest
deleteLoginProfileRequestCodec =
    Codec.object DeleteLoginProfileRequest |> Codec.field "UserName" .userName userNameTypeCodec |> Codec.buildObject


{-| Codec for DeleteInstanceProfileRequest. -}
deleteInstanceProfileRequestCodec : Codec DeleteInstanceProfileRequest
deleteInstanceProfileRequestCodec =
    Codec.object DeleteInstanceProfileRequest
        |> Codec.field "InstanceProfileName" .instanceProfileName instanceProfileNameTypeCodec
        |> Codec.buildObject


{-| Codec for DeleteGroupRequest. -}
deleteGroupRequestCodec : Codec DeleteGroupRequest
deleteGroupRequestCodec =
    Codec.object DeleteGroupRequest |> Codec.field "GroupName" .groupName groupNameTypeCodec |> Codec.buildObject


{-| Codec for DeleteGroupPolicyRequest. -}
deleteGroupPolicyRequestCodec : Codec DeleteGroupPolicyRequest
deleteGroupPolicyRequestCodec =
    Codec.object DeleteGroupPolicyRequest
        |> Codec.field "PolicyName" .policyName policyNameTypeCodec
        |> Codec.field "GroupName" .groupName groupNameTypeCodec
        |> Codec.buildObject


{-| Codec for DeleteAccountAliasRequest. -}
deleteAccountAliasRequestCodec : Codec DeleteAccountAliasRequest
deleteAccountAliasRequestCodec =
    Codec.object DeleteAccountAliasRequest
        |> Codec.field "AccountAlias" .accountAlias accountAliasTypeCodec
        |> Codec.buildObject


{-| Codec for DeleteAccessKeyRequest. -}
deleteAccessKeyRequestCodec : Codec DeleteAccessKeyRequest
deleteAccessKeyRequestCodec =
    Codec.object DeleteAccessKeyRequest
        |> Codec.field "UserName" .userName existingUserNameTypeCodec
        |> Codec.field "AccessKeyId" .accessKeyId accessKeyIdTypeCodec
        |> Codec.buildObject


{-| Codec for DeactivateMfadeviceRequest. -}
deactivateMfadeviceRequestCodec : Codec DeactivateMfadeviceRequest
deactivateMfadeviceRequestCodec =
    Codec.object DeactivateMfadeviceRequest
        |> Codec.field "UserName" .userName existingUserNameTypeCodec
        |> Codec.field "SerialNumber" .serialNumber serialNumberTypeCodec
        |> Codec.buildObject


{-| Codec for CreateVirtualMfadeviceResponse. -}
createVirtualMfadeviceResponseCodec : Codec CreateVirtualMfadeviceResponse
createVirtualMfadeviceResponseCodec =
    Codec.object CreateVirtualMfadeviceResponse
        |> Codec.field "VirtualMFADevice" .virtualMfadevice virtualMfadeviceCodec
        |> Codec.buildObject


{-| Codec for CreateVirtualMfadeviceRequest. -}
createVirtualMfadeviceRequestCodec : Codec CreateVirtualMfadeviceRequest
createVirtualMfadeviceRequestCodec =
    Codec.object CreateVirtualMfadeviceRequest
        |> Codec.field "VirtualMFADeviceName" .virtualMfadeviceName virtualMfadeviceNameCodec
        |> Codec.field "Path" .path pathTypeCodec
        |> Codec.buildObject


{-| Codec for CreateUserResponse. -}
createUserResponseCodec : Codec CreateUserResponse
createUserResponseCodec =
    Codec.object CreateUserResponse |> Codec.field "User" .user userCodec |> Codec.buildObject


{-| Codec for CreateUserRequest. -}
createUserRequestCodec : Codec CreateUserRequest
createUserRequestCodec =
    Codec.object CreateUserRequest
        |> Codec.field "UserName" .userName userNameTypeCodec
        |> Codec.field "Tags" .tags tagListTypeCodec
        |> Codec.field "PermissionsBoundary" .permissionsBoundary arnTypeCodec
        |> Codec.field "Path" .path pathTypeCodec
        |> Codec.buildObject


{-| Codec for CreateServiceSpecificCredentialResponse. -}
createServiceSpecificCredentialResponseCodec : Codec CreateServiceSpecificCredentialResponse
createServiceSpecificCredentialResponseCodec =
    Codec.object CreateServiceSpecificCredentialResponse
        |> Codec.field "ServiceSpecificCredential" .serviceSpecificCredential serviceSpecificCredentialCodec
        |> Codec.buildObject


{-| Codec for CreateServiceSpecificCredentialRequest. -}
createServiceSpecificCredentialRequestCodec : Codec CreateServiceSpecificCredentialRequest
createServiceSpecificCredentialRequestCodec =
    Codec.object CreateServiceSpecificCredentialRequest
        |> Codec.field "UserName" .userName userNameTypeCodec
        |> Codec.field "ServiceName" .serviceName Codec.string
        |> Codec.buildObject


{-| Codec for CreateServiceLinkedRoleResponse. -}
createServiceLinkedRoleResponseCodec : Codec CreateServiceLinkedRoleResponse
createServiceLinkedRoleResponseCodec =
    Codec.object CreateServiceLinkedRoleResponse |> Codec.field "Role" .role roleCodec |> Codec.buildObject


{-| Codec for CreateServiceLinkedRoleRequest. -}
createServiceLinkedRoleRequestCodec : Codec CreateServiceLinkedRoleRequest
createServiceLinkedRoleRequestCodec =
    Codec.object CreateServiceLinkedRoleRequest
        |> Codec.field "Description" .description roleDescriptionTypeCodec
        |> Codec.field "CustomSuffix" .customSuffix customSuffixTypeCodec
        |> Codec.field "AWSServiceName" .awsserviceName groupNameTypeCodec
        |> Codec.buildObject


{-| Codec for CreateSamlproviderResponse. -}
createSamlproviderResponseCodec : Codec CreateSamlproviderResponse
createSamlproviderResponseCodec =
    Codec.object CreateSamlproviderResponse
        |> Codec.field "SAMLProviderArn" .samlproviderArn arnTypeCodec
        |> Codec.buildObject


{-| Codec for CreateSamlproviderRequest. -}
createSamlproviderRequestCodec : Codec CreateSamlproviderRequest
createSamlproviderRequestCodec =
    Codec.object CreateSamlproviderRequest
        |> Codec.field "SAMLMetadataDocument" .samlmetadataDocument samlmetadataDocumentTypeCodec
        |> Codec.field "Name" .name samlproviderNameTypeCodec
        |> Codec.buildObject


{-| Codec for CreateRoleResponse. -}
createRoleResponseCodec : Codec CreateRoleResponse
createRoleResponseCodec =
    Codec.object CreateRoleResponse |> Codec.field "Role" .role roleCodec |> Codec.buildObject


{-| Codec for CreateRoleRequest. -}
createRoleRequestCodec : Codec CreateRoleRequest
createRoleRequestCodec =
    Codec.object CreateRoleRequest
        |> Codec.field "Tags" .tags tagListTypeCodec
        |> Codec.field "RoleName" .roleName roleNameTypeCodec
        |> Codec.field "PermissionsBoundary" .permissionsBoundary arnTypeCodec
        |> Codec.field "Path" .path pathTypeCodec
        |> Codec.field "MaxSessionDuration" .maxSessionDuration roleMaxSessionDurationTypeCodec
        |> Codec.field "Description" .description roleDescriptionTypeCodec
        |> Codec.field "AssumeRolePolicyDocument" .assumeRolePolicyDocument policyDocumentTypeCodec
        |> Codec.buildObject


{-| Codec for CreatePolicyVersionResponse. -}
createPolicyVersionResponseCodec : Codec CreatePolicyVersionResponse
createPolicyVersionResponseCodec =
    Codec.object CreatePolicyVersionResponse
        |> Codec.field "PolicyVersion" .policyVersion policyVersionCodec
        |> Codec.buildObject


{-| Codec for CreatePolicyVersionRequest. -}
createPolicyVersionRequestCodec : Codec CreatePolicyVersionRequest
createPolicyVersionRequestCodec =
    Codec.object CreatePolicyVersionRequest
        |> Codec.field "SetAsDefault" .setAsDefault Codec.bool
        |> Codec.field "PolicyDocument" .policyDocument policyDocumentTypeCodec
        |> Codec.field "PolicyArn" .policyArn arnTypeCodec
        |> Codec.buildObject


{-| Codec for CreatePolicyResponse. -}
createPolicyResponseCodec : Codec CreatePolicyResponse
createPolicyResponseCodec =
    Codec.object CreatePolicyResponse |> Codec.field "Policy" .policy policyCodec |> Codec.buildObject


{-| Codec for CreatePolicyRequest. -}
createPolicyRequestCodec : Codec CreatePolicyRequest
createPolicyRequestCodec =
    Codec.object CreatePolicyRequest
        |> Codec.field "PolicyName" .policyName policyNameTypeCodec
        |> Codec.field "PolicyDocument" .policyDocument policyDocumentTypeCodec
        |> Codec.field "Path" .path policyPathTypeCodec
        |> Codec.field "Description" .description policyDescriptionTypeCodec
        |> Codec.buildObject


{-| Codec for CreateOpenIdconnectProviderResponse. -}
createOpenIdconnectProviderResponseCodec : Codec CreateOpenIdconnectProviderResponse
createOpenIdconnectProviderResponseCodec =
    Codec.object CreateOpenIdconnectProviderResponse
        |> Codec.field "OpenIDConnectProviderArn" .openIdconnectProviderArn arnTypeCodec
        |> Codec.buildObject


{-| Codec for CreateOpenIdconnectProviderRequest. -}
createOpenIdconnectProviderRequestCodec : Codec CreateOpenIdconnectProviderRequest
createOpenIdconnectProviderRequestCodec =
    Codec.object CreateOpenIdconnectProviderRequest
        |> Codec.field "Url" .url openIdconnectProviderUrlTypeCodec
        |> Codec.field "ThumbprintList" .thumbprintList thumbprintListTypeCodec
        |> Codec.field "ClientIDList" .clientIdlist clientIdlistTypeCodec
        |> Codec.buildObject


{-| Codec for CreateLoginProfileResponse. -}
createLoginProfileResponseCodec : Codec CreateLoginProfileResponse
createLoginProfileResponseCodec =
    Codec.object CreateLoginProfileResponse
        |> Codec.field "LoginProfile" .loginProfile loginProfileCodec
        |> Codec.buildObject


{-| Codec for CreateLoginProfileRequest. -}
createLoginProfileRequestCodec : Codec CreateLoginProfileRequest
createLoginProfileRequestCodec =
    Codec.object CreateLoginProfileRequest
        |> Codec.field "UserName" .userName userNameTypeCodec
        |> Codec.field "PasswordResetRequired" .passwordResetRequired Codec.bool
        |> Codec.field "Password" .password passwordTypeCodec
        |> Codec.buildObject


{-| Codec for CreateInstanceProfileResponse. -}
createInstanceProfileResponseCodec : Codec CreateInstanceProfileResponse
createInstanceProfileResponseCodec =
    Codec.object CreateInstanceProfileResponse
        |> Codec.field "InstanceProfile" .instanceProfile instanceProfileCodec
        |> Codec.buildObject


{-| Codec for CreateInstanceProfileRequest. -}
createInstanceProfileRequestCodec : Codec CreateInstanceProfileRequest
createInstanceProfileRequestCodec =
    Codec.object CreateInstanceProfileRequest
        |> Codec.field "Path" .path pathTypeCodec
        |> Codec.field "InstanceProfileName" .instanceProfileName instanceProfileNameTypeCodec
        |> Codec.buildObject


{-| Codec for CreateGroupResponse. -}
createGroupResponseCodec : Codec CreateGroupResponse
createGroupResponseCodec =
    Codec.object CreateGroupResponse |> Codec.field "Group" .group groupCodec |> Codec.buildObject


{-| Codec for CreateGroupRequest. -}
createGroupRequestCodec : Codec CreateGroupRequest
createGroupRequestCodec =
    Codec.object CreateGroupRequest
        |> Codec.field "Path" .path pathTypeCodec
        |> Codec.field "GroupName" .groupName groupNameTypeCodec
        |> Codec.buildObject


{-| Codec for CreateAccountAliasRequest. -}
createAccountAliasRequestCodec : Codec CreateAccountAliasRequest
createAccountAliasRequestCodec =
    Codec.object CreateAccountAliasRequest
        |> Codec.field "AccountAlias" .accountAlias accountAliasTypeCodec
        |> Codec.buildObject


{-| Codec for CreateAccessKeyResponse. -}
createAccessKeyResponseCodec : Codec CreateAccessKeyResponse
createAccessKeyResponseCodec =
    Codec.object CreateAccessKeyResponse |> Codec.field "AccessKey" .accessKey accessKeyCodec |> Codec.buildObject


{-| Codec for CreateAccessKeyRequest. -}
createAccessKeyRequestCodec : Codec CreateAccessKeyRequest
createAccessKeyRequestCodec =
    Codec.object CreateAccessKeyRequest
        |> Codec.field "UserName" .userName existingUserNameTypeCodec
        |> Codec.buildObject


{-| Codec for ContextKeyValueType. -}
contextKeyValueTypeCodec : Codec ContextKeyValueType
contextKeyValueTypeCodec =
    Codec.string


{-| Codec for ContextKeyValueListType. -}
contextKeyValueListTypeCodec : Codec ContextKeyValueListType
contextKeyValueListTypeCodec =
    Codec.list Codec.string


{-| Codec for ContextKeyTypeEnum. -}
contextKeyTypeEnumCodec : Codec ContextKeyTypeEnum
contextKeyTypeEnumCodec =
    Codec.build (Enum.encoder contextKeyTypeEnum) (Enum.decoder contextKeyTypeEnum)


{-| Codec for ContextKeyNamesResultListType. -}
contextKeyNamesResultListTypeCodec : Codec ContextKeyNamesResultListType
contextKeyNamesResultListTypeCodec =
    Codec.list contextKeyNameTypeCodec


{-| Codec for ContextKeyNameType. -}
contextKeyNameTypeCodec : Codec ContextKeyNameType
contextKeyNameTypeCodec =
    Codec.build (Guarded.encoder contextKeyNameType) (Guarded.decoder contextKeyNameType)


{-| Codec for ContextEntryListType. -}
contextEntryListTypeCodec : Codec ContextEntryListType
contextEntryListTypeCodec =
    Codec.list contextEntryCodec


{-| Codec for ContextEntry. -}
contextEntryCodec : Codec ContextEntry
contextEntryCodec =
    Codec.object ContextEntry
        |> Codec.field "ContextKeyValues" .contextKeyValues contextKeyValueListTypeCodec
        |> Codec.field "ContextKeyType" .contextKeyType contextKeyTypeEnumCodec
        |> Codec.field "ContextKeyName" .contextKeyName contextKeyNameTypeCodec
        |> Codec.buildObject


{-| Codec for ColumnNumber. -}
columnNumberCodec : Codec ColumnNumber
columnNumberCodec =
    Codec.int


{-| Codec for ChangePasswordRequest. -}
changePasswordRequestCodec : Codec ChangePasswordRequest
changePasswordRequestCodec =
    Codec.object ChangePasswordRequest
        |> Codec.field "OldPassword" .oldPassword passwordTypeCodec
        |> Codec.field "NewPassword" .newPassword passwordTypeCodec
        |> Codec.buildObject


{-| Codec for BootstrapDatum. -}
bootstrapDatumCodec : Codec BootstrapDatum
bootstrapDatumCodec =
    Codec.string


{-| Codec for AttachedPolicy. -}
attachedPolicyCodec : Codec AttachedPolicy
attachedPolicyCodec =
    Codec.object AttachedPolicy
        |> Codec.field "PolicyName" .policyName policyNameTypeCodec
        |> Codec.field "PolicyArn" .policyArn arnTypeCodec
        |> Codec.buildObject


{-| Codec for AttachedPermissionsBoundary. -}
attachedPermissionsBoundaryCodec : Codec AttachedPermissionsBoundary
attachedPermissionsBoundaryCodec =
    Codec.object AttachedPermissionsBoundary
        |> Codec.field "PermissionsBoundaryType" .permissionsBoundaryType permissionsBoundaryAttachmentTypeCodec
        |> Codec.field "PermissionsBoundaryArn" .permissionsBoundaryArn arnTypeCodec
        |> Codec.buildObject


{-| Codec for AttachUserPolicyRequest. -}
attachUserPolicyRequestCodec : Codec AttachUserPolicyRequest
attachUserPolicyRequestCodec =
    Codec.object AttachUserPolicyRequest
        |> Codec.field "UserName" .userName userNameTypeCodec
        |> Codec.field "PolicyArn" .policyArn arnTypeCodec
        |> Codec.buildObject


{-| Codec for AttachRolePolicyRequest. -}
attachRolePolicyRequestCodec : Codec AttachRolePolicyRequest
attachRolePolicyRequestCodec =
    Codec.object AttachRolePolicyRequest
        |> Codec.field "RoleName" .roleName roleNameTypeCodec
        |> Codec.field "PolicyArn" .policyArn arnTypeCodec
        |> Codec.buildObject


{-| Codec for AttachGroupPolicyRequest. -}
attachGroupPolicyRequestCodec : Codec AttachGroupPolicyRequest
attachGroupPolicyRequestCodec =
    Codec.object AttachGroupPolicyRequest
        |> Codec.field "PolicyArn" .policyArn arnTypeCodec
        |> Codec.field "GroupName" .groupName groupNameTypeCodec
        |> Codec.buildObject


{-| Codec for ArnListType. -}
arnListTypeCodec : Codec ArnListType
arnListTypeCodec =
    Codec.list arnTypeCodec


{-| Codec for AddUserToGroupRequest. -}
addUserToGroupRequestCodec : Codec AddUserToGroupRequest
addUserToGroupRequestCodec =
    Codec.object AddUserToGroupRequest
        |> Codec.field "UserName" .userName existingUserNameTypeCodec
        |> Codec.field "GroupName" .groupName groupNameTypeCodec
        |> Codec.buildObject


{-| Codec for AddRoleToInstanceProfileRequest. -}
addRoleToInstanceProfileRequestCodec : Codec AddRoleToInstanceProfileRequest
addRoleToInstanceProfileRequestCodec =
    Codec.object AddRoleToInstanceProfileRequest
        |> Codec.field "RoleName" .roleName roleNameTypeCodec
        |> Codec.field "InstanceProfileName" .instanceProfileName instanceProfileNameTypeCodec
        |> Codec.buildObject


{-| Codec for AddClientIdtoOpenIdconnectProviderRequest. -}
addClientIdtoOpenIdconnectProviderRequestCodec : Codec AddClientIdtoOpenIdconnectProviderRequest
addClientIdtoOpenIdconnectProviderRequestCodec =
    Codec.object AddClientIdtoOpenIdconnectProviderRequest
        |> Codec.field "OpenIDConnectProviderArn" .openIdconnectProviderArn arnTypeCodec
        |> Codec.field "ClientID" .clientId clientIdtypeCodec
        |> Codec.buildObject


{-| Codec for ActionNameType. -}
actionNameTypeCodec : Codec ActionNameType
actionNameTypeCodec =
    Codec.build (Guarded.encoder actionNameType) (Guarded.decoder actionNameType)


{-| Codec for ActionNameListType. -}
actionNameListTypeCodec : Codec ActionNameListType
actionNameListTypeCodec =
    Codec.list actionNameTypeCodec


{-| Codec for AccessKeyMetadata. -}
accessKeyMetadataCodec : Codec AccessKeyMetadata
accessKeyMetadataCodec =
    Codec.object AccessKeyMetadata
        |> Codec.field "UserName" .userName userNameTypeCodec
        |> Codec.field "Status" .status statusTypeCodec
        |> Codec.field "CreateDate" .createDate dateTypeCodec
        |> Codec.field "AccessKeyId" .accessKeyId accessKeyIdTypeCodec
        |> Codec.buildObject


{-| Codec for AccessKeyLastUsed. -}
accessKeyLastUsedCodec : Codec AccessKeyLastUsed
accessKeyLastUsedCodec =
    Codec.object AccessKeyLastUsed
        |> Codec.field "ServiceName" .serviceName Codec.string
        |> Codec.field "Region" .region Codec.string
        |> Codec.field "LastUsedDate" .lastUsedDate dateTypeCodec
        |> Codec.buildObject


{-| Codec for AccessKey. -}
accessKeyCodec : Codec AccessKey
accessKeyCodec =
    Codec.object AccessKey
        |> Codec.field "UserName" .userName userNameTypeCodec
        |> Codec.field "Status" .status statusTypeCodec
        |> Codec.field "SecretAccessKey" .secretAccessKey Codec.string
        |> Codec.field "CreateDate" .createDate dateTypeCodec
        |> Codec.field "AccessKeyId" .accessKeyId accessKeyIdTypeCodec
        |> Codec.buildObject


{-| Codec for AccessDetails. -}
accessDetailsCodec : Codec AccessDetails
accessDetailsCodec =
    Codec.list accessDetailCodec


{-| Codec for AccessDetail. -}
accessDetailCodec : Codec AccessDetail
accessDetailCodec =
    Codec.object AccessDetail
        |> Codec.field "TotalAuthenticatedEntities" .totalAuthenticatedEntities Codec.int
        |> Codec.field "ServiceNamespace" .serviceNamespace serviceNamespaceTypeCodec
        |> Codec.field "ServiceName" .serviceName Codec.string
        |> Codec.field "Region" .region Codec.string
        |> Codec.field "LastAuthenticatedTime" .lastAuthenticatedTime dateTypeCodec
        |> Codec.field "EntityPath" .entityPath organizationsEntityPathTypeCodec
        |> Codec.buildObject
