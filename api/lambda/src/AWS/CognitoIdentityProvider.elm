module AWS.CognitoIdentityProvider exposing (ListUserPoolsResponse, listUserPools, paginationKeyType, poolQueryLimitType, service)

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


{-| Configuration for this service.
-}
service : AWS.Core.Service.Region -> AWS.Core.Service.Service
service =
    let
        optionsFn =
            AWS.Core.Service.setJsonVersion "1.1"
                >> AWS.Core.Service.setTargetPrefix "AWSCognitoIdentityProviderService"
    in
    AWS.Core.Service.defineRegional "cognito-idp" "2016-04-18" AWS.Core.Service.JSON AWS.Core.Service.SignV4 optionsFn


{-| AWS Endpoint.
-}
listUserPools : ListUserPoolsRequest -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListUserPoolsResponse)
listUserPools req =
    let
        jsonBody =
            req |> Codec.encoder listUserPoolsRequestCodec |> AWS.Core.Http.jsonBody

        wrappedDecoder =
            AWS.Core.Decode.responseWrapperDecoder
                "ListUserPools"
                (AWS.Core.Decode.ResultDecoder "ListUserPoolsResponse" (Codec.decoder listUserPoolsResponseCodec))
    in
    AWS.Core.Http.request AWS.Core.Http.POST "/" jsonBody wrappedDecoder


type alias AwsaccountIdType =
    String


type alias AccountTakeoverActionNotifyType =
    Bool


type alias AccountTakeoverActionType =
    { notify : Bool, eventAction : AccountTakeoverEventActionType }


type alias AccountTakeoverActionsType =
    { mediumAction : AccountTakeoverActionType
    , lowAction : AccountTakeoverActionType
    , highAction : AccountTakeoverActionType
    }


type AccountTakeoverEventActionType
    = AccountTakeoverEventActionTypeBlock
    | AccountTakeoverEventActionTypeMfaIfConfigured
    | AccountTakeoverEventActionTypeMfaRequired
    | AccountTakeoverEventActionTypeNoAction


accountTakeoverEventActionType : Enum AccountTakeoverEventActionType
accountTakeoverEventActionType =
    Enum.define
        [ AccountTakeoverEventActionTypeBlock
        , AccountTakeoverEventActionTypeMfaIfConfigured
        , AccountTakeoverEventActionTypeMfaRequired
        , AccountTakeoverEventActionTypeNoAction
        ]
        (\val ->
            case val of
                AccountTakeoverEventActionTypeBlock ->
                    "BLOCK"

                AccountTakeoverEventActionTypeMfaIfConfigured ->
                    "MFA_IF_CONFIGURED"

                AccountTakeoverEventActionTypeMfaRequired ->
                    "MFA_REQUIRED"

                AccountTakeoverEventActionTypeNoAction ->
                    "NO_ACTION"
        )


type alias AccountTakeoverRiskConfigurationType =
    { notifyConfiguration : NotifyConfigurationType, actions : AccountTakeoverActionsType }


type alias AddCustomAttributesRequest =
    { userPoolId : UserPoolIdType, customAttributes : CustomAttributesListType }


type alias AddCustomAttributesResponse =
    {}


type alias AdminAddUserToGroupRequest =
    { username : UsernameType, userPoolId : UserPoolIdType, groupName : GroupNameType }


type alias AdminConfirmSignUpRequest =
    { username : UsernameType, userPoolId : UserPoolIdType }


type alias AdminConfirmSignUpResponse =
    {}


type alias AdminCreateUserConfigType =
    { unusedAccountValidityDays : AdminCreateUserUnusedAccountValidityDaysType
    , inviteMessageTemplate : MessageTemplateType
    , allowAdminCreateUserOnly : Bool
    }


type alias AdminCreateUserRequest =
    { validationData : AttributeListType
    , username : UsernameType
    , userPoolId : UserPoolIdType
    , userAttributes : AttributeListType
    , temporaryPassword : PasswordType
    , messageAction : MessageActionType
    , forceAliasCreation : Bool
    , desiredDeliveryMediums : DeliveryMediumListType
    }


type alias AdminCreateUserResponse =
    { user : UserType }


type AdminCreateUserUnusedAccountValidityDaysType
    = AdminCreateUserUnusedAccountValidityDaysType Int


adminCreateUserUnusedAccountValidityDaysType : Refined Int AdminCreateUserUnusedAccountValidityDaysType IntError
adminCreateUserUnusedAccountValidityDaysType =
    let
        guardFn val =
            Refined.gte 0 val
                |> Result.andThen (Refined.lte 365)
                |> Result.map AdminCreateUserUnusedAccountValidityDaysType

        unboxFn (AdminCreateUserUnusedAccountValidityDaysType val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type alias AdminDeleteUserAttributesRequest =
    { username : UsernameType, userPoolId : UserPoolIdType, userAttributeNames : AttributeNameListType }


type alias AdminDeleteUserAttributesResponse =
    {}


type alias AdminDeleteUserRequest =
    { username : UsernameType, userPoolId : UserPoolIdType }


type alias AdminDisableProviderForUserRequest =
    { userPoolId : String, user : ProviderUserIdentifierType }


type alias AdminDisableProviderForUserResponse =
    {}


type alias AdminDisableUserRequest =
    { username : UsernameType, userPoolId : UserPoolIdType }


type alias AdminDisableUserResponse =
    {}


type alias AdminEnableUserRequest =
    { username : UsernameType, userPoolId : UserPoolIdType }


type alias AdminEnableUserResponse =
    {}


type alias AdminForgetDeviceRequest =
    { username : UsernameType, userPoolId : UserPoolIdType, deviceKey : DeviceKeyType }


type alias AdminGetDeviceRequest =
    { username : UsernameType, userPoolId : UserPoolIdType, deviceKey : DeviceKeyType }


type alias AdminGetDeviceResponse =
    { device : DeviceType }


type alias AdminGetUserRequest =
    { username : UsernameType, userPoolId : UserPoolIdType }


type alias AdminGetUserResponse =
    { username : UsernameType
    , userStatus : UserStatusType
    , userMfasettingList : UserMfasettingListType
    , userLastModifiedDate : DateType
    , userCreateDate : DateType
    , userAttributes : AttributeListType
    , preferredMfaSetting : String
    , mfaoptions : MfaoptionListType
    , enabled : Bool
    }


type alias AdminInitiateAuthRequest =
    { userPoolId : UserPoolIdType
    , contextData : ContextDataType
    , clientMetadata : ClientMetadataType
    , clientId : ClientIdType
    , authParameters : AuthParametersType
    , authFlow : AuthFlowType
    , analyticsMetadata : AnalyticsMetadataType
    }


type alias AdminInitiateAuthResponse =
    { session : SessionType
    , challengeParameters : ChallengeParametersType
    , challengeName : ChallengeNameType
    , authenticationResult : AuthenticationResultType
    }


type alias AdminLinkProviderForUserRequest =
    { userPoolId : String, sourceUser : ProviderUserIdentifierType, destinationUser : ProviderUserIdentifierType }


type alias AdminLinkProviderForUserResponse =
    {}


type alias AdminListDevicesRequest =
    { username : UsernameType
    , userPoolId : UserPoolIdType
    , paginationToken : SearchPaginationTokenType
    , limit : QueryLimitType
    }


type alias AdminListDevicesResponse =
    { paginationToken : SearchPaginationTokenType, devices : DeviceListType }


type alias AdminListGroupsForUserRequest =
    { username : UsernameType, userPoolId : UserPoolIdType, nextToken : PaginationKey, limit : QueryLimitType }


type alias AdminListGroupsForUserResponse =
    { nextToken : PaginationKey, groups : GroupListType }


type alias AdminListUserAuthEventsRequest =
    { username : UsernameType, userPoolId : UserPoolIdType, nextToken : PaginationKey, maxResults : QueryLimitType }


type alias AdminListUserAuthEventsResponse =
    { nextToken : PaginationKey, authEvents : AuthEventsType }


type alias AdminRemoveUserFromGroupRequest =
    { username : UsernameType, userPoolId : UserPoolIdType, groupName : GroupNameType }


type alias AdminResetUserPasswordRequest =
    { username : UsernameType, userPoolId : UserPoolIdType }


type alias AdminResetUserPasswordResponse =
    {}


type alias AdminRespondToAuthChallengeRequest =
    { userPoolId : UserPoolIdType
    , session : SessionType
    , contextData : ContextDataType
    , clientId : ClientIdType
    , challengeResponses : ChallengeResponsesType
    , challengeName : ChallengeNameType
    , analyticsMetadata : AnalyticsMetadataType
    }


type alias AdminRespondToAuthChallengeResponse =
    { session : SessionType
    , challengeParameters : ChallengeParametersType
    , challengeName : ChallengeNameType
    , authenticationResult : AuthenticationResultType
    }


type alias AdminSetUserMfapreferenceRequest =
    { username : UsernameType
    , userPoolId : UserPoolIdType
    , softwareTokenMfaSettings : SoftwareTokenMfaSettingsType
    , smsmfaSettings : SmsmfaSettingsType
    }


type alias AdminSetUserMfapreferenceResponse =
    {}


type alias AdminSetUserPasswordRequest =
    { username : UsernameType, userPoolId : UserPoolIdType, permanent : Bool, password : PasswordType }


type alias AdminSetUserPasswordResponse =
    {}


type alias AdminSetUserSettingsRequest =
    { username : UsernameType, userPoolId : UserPoolIdType, mfaoptions : MfaoptionListType }


type alias AdminSetUserSettingsResponse =
    {}


type alias AdminUpdateAuthEventFeedbackRequest =
    { username : UsernameType, userPoolId : UserPoolIdType, feedbackValue : FeedbackValueType, eventId : EventIdType }


type alias AdminUpdateAuthEventFeedbackResponse =
    {}


type alias AdminUpdateDeviceStatusRequest =
    { username : UsernameType
    , userPoolId : UserPoolIdType
    , deviceRememberedStatus : DeviceRememberedStatusType
    , deviceKey : DeviceKeyType
    }


type alias AdminUpdateDeviceStatusResponse =
    {}


type alias AdminUpdateUserAttributesRequest =
    { username : UsernameType, userPoolId : UserPoolIdType, userAttributes : AttributeListType }


type alias AdminUpdateUserAttributesResponse =
    {}


type alias AdminUserGlobalSignOutRequest =
    { username : UsernameType, userPoolId : UserPoolIdType }


type alias AdminUserGlobalSignOutResponse =
    {}


type AdvancedSecurityModeType
    = AdvancedSecurityModeTypeOff
    | AdvancedSecurityModeTypeAudit
    | AdvancedSecurityModeTypeEnforced


advancedSecurityModeType : Enum AdvancedSecurityModeType
advancedSecurityModeType =
    Enum.define
        [ AdvancedSecurityModeTypeOff, AdvancedSecurityModeTypeAudit, AdvancedSecurityModeTypeEnforced ]
        (\val ->
            case val of
                AdvancedSecurityModeTypeOff ->
                    "OFF"

                AdvancedSecurityModeTypeAudit ->
                    "AUDIT"

                AdvancedSecurityModeTypeEnforced ->
                    "ENFORCED"
        )


type AliasAttributeType
    = AliasAttributeTypePhoneNumber
    | AliasAttributeTypeEmail
    | AliasAttributeTypePreferredUsername


aliasAttributeType : Enum AliasAttributeType
aliasAttributeType =
    Enum.define
        [ AliasAttributeTypePhoneNumber, AliasAttributeTypeEmail, AliasAttributeTypePreferredUsername ]
        (\val ->
            case val of
                AliasAttributeTypePhoneNumber ->
                    "phone_number"

                AliasAttributeTypeEmail ->
                    "email"

                AliasAttributeTypePreferredUsername ->
                    "preferred_username"
        )


type alias AliasAttributesListType =
    List AliasAttributeType


type alias AnalyticsConfigurationType =
    { userDataShared : Bool, roleArn : ArnType, externalId : String, applicationId : HexStringType }


type alias AnalyticsMetadataType =
    { analyticsEndpointId : String }


type ArnType
    = ArnType String


arnType : Refined String ArnType StringError
arnType =
    let
        guardFn val =
            Refined.minLength 20 val
                |> Result.andThen (Refined.maxLength 2048)
                |> Result.andThen
                    (Refined.regexMatch
                        "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"
                    )
                |> Result.map ArnType

        unboxFn (ArnType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias AssociateSoftwareTokenRequest =
    { session : SessionType, accessToken : TokenModelType }


type alias AssociateSoftwareTokenResponse =
    { session : SessionType, secretCode : SecretCodeType }


type AttributeDataType
    = AttributeDataTypeString_
    | AttributeDataTypeNumber
    | AttributeDataTypeDateTime
    | AttributeDataTypeBoolean


attributeDataType : Enum AttributeDataType
attributeDataType =
    Enum.define
        [ AttributeDataTypeString_, AttributeDataTypeNumber, AttributeDataTypeDateTime, AttributeDataTypeBoolean ]
        (\val ->
            case val of
                AttributeDataTypeString_ ->
                    "String"

                AttributeDataTypeNumber ->
                    "Number"

                AttributeDataTypeDateTime ->
                    "DateTime"

                AttributeDataTypeBoolean ->
                    "Boolean"
        )


type alias AttributeListType =
    List AttributeType


type AttributeMappingKeyType
    = AttributeMappingKeyType String


attributeMappingKeyType : Refined String AttributeMappingKeyType StringError
attributeMappingKeyType =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 32) |> Result.map AttributeMappingKeyType

        unboxFn (AttributeMappingKeyType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias AttributeMappingType =
    Dict.Refined.Dict String AttributeMappingKeyType String


type alias AttributeNameListType =
    List AttributeNameType


type AttributeNameType
    = AttributeNameType String


attributeNameType : Refined String AttributeNameType StringError
attributeNameType =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 32)
                |> Result.andThen (Refined.regexMatch "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")
                |> Result.map AttributeNameType

        unboxFn (AttributeNameType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias AttributeType =
    { value : AttributeValueType, name : AttributeNameType }


type AttributeValueType
    = AttributeValueType String


attributeValueType : Refined String AttributeValueType StringError
attributeValueType =
    let
        guardFn val =
            Refined.maxLength 2048 val |> Result.map AttributeValueType

        unboxFn (AttributeValueType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias AuthEventType =
    { eventType : EventType
    , eventRisk : EventRiskType
    , eventResponse : EventResponseType
    , eventId : String
    , eventFeedback : EventFeedbackType
    , eventContextData : EventContextDataType
    , creationDate : DateType
    , challengeResponses : ChallengeResponseListType
    }


type alias AuthEventsType =
    List AuthEventType


type AuthFlowType
    = AuthFlowTypeUserSrpAuth
    | AuthFlowTypeRefreshTokenAuth
    | AuthFlowTypeRefreshToken
    | AuthFlowTypeCustomAuth
    | AuthFlowTypeAdminNoSrpAuth
    | AuthFlowTypeUserPasswordAuth


authFlowType : Enum AuthFlowType
authFlowType =
    Enum.define
        [ AuthFlowTypeUserSrpAuth
        , AuthFlowTypeRefreshTokenAuth
        , AuthFlowTypeRefreshToken
        , AuthFlowTypeCustomAuth
        , AuthFlowTypeAdminNoSrpAuth
        , AuthFlowTypeUserPasswordAuth
        ]
        (\val ->
            case val of
                AuthFlowTypeUserSrpAuth ->
                    "USER_SRP_AUTH"

                AuthFlowTypeRefreshTokenAuth ->
                    "REFRESH_TOKEN_AUTH"

                AuthFlowTypeRefreshToken ->
                    "REFRESH_TOKEN"

                AuthFlowTypeCustomAuth ->
                    "CUSTOM_AUTH"

                AuthFlowTypeAdminNoSrpAuth ->
                    "ADMIN_NO_SRP_AUTH"

                AuthFlowTypeUserPasswordAuth ->
                    "USER_PASSWORD_AUTH"
        )


type alias AuthParametersType =
    Dict String String


type alias AuthenticationResultType =
    { tokenType : String
    , refreshToken : TokenModelType
    , newDeviceMetadata : NewDeviceMetadataType
    , idToken : TokenModelType
    , expiresIn : Int
    , accessToken : TokenModelType
    }


type alias BlockedIprangeListType =
    List String


type alias BooleanType =
    Bool


type alias Csstype =
    String


type alias CssversionType =
    String


type alias CallbackUrlsListType =
    List RedirectUrlType


type ChallengeName
    = ChallengeNamePassword
    | ChallengeNameMfa


challengeName : Enum ChallengeName
challengeName =
    Enum.define
        [ ChallengeNamePassword, ChallengeNameMfa ]
        (\val ->
            case val of
                ChallengeNamePassword ->
                    "Password"

                ChallengeNameMfa ->
                    "Mfa"
        )


type ChallengeNameType
    = ChallengeNameTypeSmsMfa
    | ChallengeNameTypeSoftwareTokenMfa
    | ChallengeNameTypeSelectMfaType
    | ChallengeNameTypeMfaSetup
    | ChallengeNameTypePasswordVerifier
    | ChallengeNameTypeCustomChallenge
    | ChallengeNameTypeDeviceSrpAuth
    | ChallengeNameTypeDevicePasswordVerifier
    | ChallengeNameTypeAdminNoSrpAuth
    | ChallengeNameTypeNewPasswordRequired


challengeNameType : Enum ChallengeNameType
challengeNameType =
    Enum.define
        [ ChallengeNameTypeSmsMfa
        , ChallengeNameTypeSoftwareTokenMfa
        , ChallengeNameTypeSelectMfaType
        , ChallengeNameTypeMfaSetup
        , ChallengeNameTypePasswordVerifier
        , ChallengeNameTypeCustomChallenge
        , ChallengeNameTypeDeviceSrpAuth
        , ChallengeNameTypeDevicePasswordVerifier
        , ChallengeNameTypeAdminNoSrpAuth
        , ChallengeNameTypeNewPasswordRequired
        ]
        (\val ->
            case val of
                ChallengeNameTypeSmsMfa ->
                    "SMS_MFA"

                ChallengeNameTypeSoftwareTokenMfa ->
                    "SOFTWARE_TOKEN_MFA"

                ChallengeNameTypeSelectMfaType ->
                    "SELECT_MFA_TYPE"

                ChallengeNameTypeMfaSetup ->
                    "MFA_SETUP"

                ChallengeNameTypePasswordVerifier ->
                    "PASSWORD_VERIFIER"

                ChallengeNameTypeCustomChallenge ->
                    "CUSTOM_CHALLENGE"

                ChallengeNameTypeDeviceSrpAuth ->
                    "DEVICE_SRP_AUTH"

                ChallengeNameTypeDevicePasswordVerifier ->
                    "DEVICE_PASSWORD_VERIFIER"

                ChallengeNameTypeAdminNoSrpAuth ->
                    "ADMIN_NO_SRP_AUTH"

                ChallengeNameTypeNewPasswordRequired ->
                    "NEW_PASSWORD_REQUIRED"
        )


type alias ChallengeParametersType =
    Dict String String


type ChallengeResponse
    = ChallengeResponseSuccess
    | ChallengeResponseFailure


challengeResponse : Enum ChallengeResponse
challengeResponse =
    Enum.define
        [ ChallengeResponseSuccess, ChallengeResponseFailure ]
        (\val ->
            case val of
                ChallengeResponseSuccess ->
                    "Success"

                ChallengeResponseFailure ->
                    "Failure"
        )


type alias ChallengeResponseListType =
    List ChallengeResponseType


type alias ChallengeResponseType =
    { challengeResponse : ChallengeResponse, challengeName : ChallengeName }


type alias ChallengeResponsesType =
    Dict String String


type alias ChangePasswordRequest =
    { proposedPassword : PasswordType, previousPassword : PasswordType, accessToken : TokenModelType }


type alias ChangePasswordResponse =
    {}


type ClientIdType
    = ClientIdType String


clientIdType : Refined String ClientIdType StringError
clientIdType =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 128)
                |> Result.andThen (Refined.regexMatch "[\\w+]+")
                |> Result.map ClientIdType

        unboxFn (ClientIdType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias ClientMetadataType =
    Dict String String


type ClientNameType
    = ClientNameType String


clientNameType : Refined String ClientNameType StringError
clientNameType =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 128)
                |> Result.andThen (Refined.regexMatch "[\\w\\s+=,.@-]+")
                |> Result.map ClientNameType

        unboxFn (ClientNameType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias ClientPermissionListType =
    List ClientPermissionType


type ClientPermissionType
    = ClientPermissionType String


clientPermissionType : Refined String ClientPermissionType StringError
clientPermissionType =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 2048) |> Result.map ClientPermissionType

        unboxFn (ClientPermissionType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type ClientSecretType
    = ClientSecretType String


clientSecretType : Refined String ClientSecretType StringError
clientSecretType =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 64)
                |> Result.andThen (Refined.regexMatch "[\\w+]+")
                |> Result.map ClientSecretType

        unboxFn (ClientSecretType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias CodeDeliveryDetailsListType =
    List CodeDeliveryDetailsType


type alias CodeDeliveryDetailsType =
    { destination : String, deliveryMedium : DeliveryMediumType, attributeName : AttributeNameType }


type CompletionMessageType
    = CompletionMessageType String


completionMessageType : Refined String CompletionMessageType StringError
completionMessageType =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 128)
                |> Result.andThen (Refined.regexMatch "[\\w]+")
                |> Result.map CompletionMessageType

        unboxFn (CompletionMessageType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias CompromisedCredentialsActionsType =
    { eventAction : CompromisedCredentialsEventActionType }


type CompromisedCredentialsEventActionType
    = CompromisedCredentialsEventActionTypeBlock
    | CompromisedCredentialsEventActionTypeNoAction


compromisedCredentialsEventActionType : Enum CompromisedCredentialsEventActionType
compromisedCredentialsEventActionType =
    Enum.define
        [ CompromisedCredentialsEventActionTypeBlock, CompromisedCredentialsEventActionTypeNoAction ]
        (\val ->
            case val of
                CompromisedCredentialsEventActionTypeBlock ->
                    "BLOCK"

                CompromisedCredentialsEventActionTypeNoAction ->
                    "NO_ACTION"
        )


type alias CompromisedCredentialsRiskConfigurationType =
    { eventFilter : EventFiltersType, actions : CompromisedCredentialsActionsType }


type alias ConfirmDeviceRequest =
    { deviceSecretVerifierConfig : DeviceSecretVerifierConfigType
    , deviceName : DeviceNameType
    , deviceKey : DeviceKeyType
    , accessToken : TokenModelType
    }


type alias ConfirmDeviceResponse =
    { userConfirmationNecessary : Bool }


type alias ConfirmForgotPasswordRequest =
    { username : UsernameType
    , userContextData : UserContextDataType
    , secretHash : SecretHashType
    , password : PasswordType
    , confirmationCode : ConfirmationCodeType
    , clientId : ClientIdType
    , analyticsMetadata : AnalyticsMetadataType
    }


type alias ConfirmForgotPasswordResponse =
    {}


type alias ConfirmSignUpRequest =
    { username : UsernameType
    , userContextData : UserContextDataType
    , secretHash : SecretHashType
    , forceAliasCreation : Bool
    , confirmationCode : ConfirmationCodeType
    , clientId : ClientIdType
    , analyticsMetadata : AnalyticsMetadataType
    }


type alias ConfirmSignUpResponse =
    {}


type ConfirmationCodeType
    = ConfirmationCodeType String


confirmationCodeType : Refined String ConfirmationCodeType StringError
confirmationCodeType =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 2048)
                |> Result.andThen (Refined.regexMatch "[\\S]+")
                |> Result.map ConfirmationCodeType

        unboxFn (ConfirmationCodeType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias ContextDataType =
    { serverPath : String, serverName : String, ipAddress : String, httpHeaders : HttpHeaderList, encodedData : String }


type alias CreateGroupRequest =
    { userPoolId : UserPoolIdType
    , roleArn : ArnType
    , precedence : PrecedenceType
    , groupName : GroupNameType
    , description : DescriptionType
    }


type alias CreateGroupResponse =
    { group : GroupType }


type alias CreateIdentityProviderRequest =
    { userPoolId : UserPoolIdType
    , providerType : IdentityProviderTypeType
    , providerName : ProviderNameTypeV1
    , providerDetails : ProviderDetailsType
    , idpIdentifiers : IdpIdentifiersListType
    , attributeMapping : AttributeMappingType
    }


type alias CreateIdentityProviderResponse =
    { identityProvider : IdentityProviderType }


type alias CreateResourceServerRequest =
    { userPoolId : UserPoolIdType
    , scopes : ResourceServerScopeListType
    , name : ResourceServerNameType
    , identifier : ResourceServerIdentifierType
    }


type alias CreateResourceServerResponse =
    { resourceServer : ResourceServerType }


type alias CreateUserImportJobRequest =
    { userPoolId : UserPoolIdType, jobName : UserImportJobNameType, cloudWatchLogsRoleArn : ArnType }


type alias CreateUserImportJobResponse =
    { userImportJob : UserImportJobType }


type alias CreateUserPoolClientRequest =
    { writeAttributes : ClientPermissionListType
    , userPoolId : UserPoolIdType
    , supportedIdentityProviders : SupportedIdentityProvidersListType
    , refreshTokenValidity : RefreshTokenValidityType
    , readAttributes : ClientPermissionListType
    , logoutUrls : LogoutUrlsListType
    , generateSecret : Bool
    , explicitAuthFlows : ExplicitAuthFlowsListType
    , defaultRedirectUri : RedirectUrlType
    , clientName : ClientNameType
    , callbackUrls : CallbackUrlsListType
    , analyticsConfiguration : AnalyticsConfigurationType
    , allowedOauthScopes : ScopeListType
    , allowedOauthFlowsUserPoolClient : Bool
    , allowedOauthFlows : OauthFlowsType
    }


type alias CreateUserPoolClientResponse =
    { userPoolClient : UserPoolClientType }


type alias CreateUserPoolDomainRequest =
    { userPoolId : UserPoolIdType, domain : DomainType, customDomainConfig : CustomDomainConfigType }


type alias CreateUserPoolDomainResponse =
    { cloudFrontDomain : DomainType }


type alias CreateUserPoolRequest =
    { verificationMessageTemplate : VerificationMessageTemplateType
    , usernameAttributes : UsernameAttributesListType
    , userPoolTags : UserPoolTagsType
    , userPoolAddOns : UserPoolAddOnsType
    , smsVerificationMessage : SmsVerificationMessageType
    , smsConfiguration : SmsConfigurationType
    , smsAuthenticationMessage : SmsVerificationMessageType
    , schema : SchemaAttributesListType
    , poolName : UserPoolNameType
    , policies : UserPoolPolicyType
    , mfaConfiguration : UserPoolMfaType
    , lambdaConfig : LambdaConfigType
    , emailVerificationSubject : EmailVerificationSubjectType
    , emailVerificationMessage : EmailVerificationMessageType
    , emailConfiguration : EmailConfigurationType
    , deviceConfiguration : DeviceConfigurationType
    , autoVerifiedAttributes : VerifiedAttributesListType
    , aliasAttributes : AliasAttributesListType
    , adminCreateUserConfig : AdminCreateUserConfigType
    }


type alias CreateUserPoolResponse =
    { userPool : UserPoolType }


type CustomAttributeNameType
    = CustomAttributeNameType String


customAttributeNameType : Refined String CustomAttributeNameType StringError
customAttributeNameType =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 20)
                |> Result.andThen (Refined.regexMatch "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")
                |> Result.map CustomAttributeNameType

        unboxFn (CustomAttributeNameType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias CustomAttributesListType =
    List SchemaAttributeType


type alias CustomDomainConfigType =
    { certificateArn : ArnType }


type alias DateType =
    String


type DefaultEmailOptionType
    = DefaultEmailOptionTypeConfirmWithLink
    | DefaultEmailOptionTypeConfirmWithCode


defaultEmailOptionType : Enum DefaultEmailOptionType
defaultEmailOptionType =
    Enum.define
        [ DefaultEmailOptionTypeConfirmWithLink, DefaultEmailOptionTypeConfirmWithCode ]
        (\val ->
            case val of
                DefaultEmailOptionTypeConfirmWithLink ->
                    "CONFIRM_WITH_LINK"

                DefaultEmailOptionTypeConfirmWithCode ->
                    "CONFIRM_WITH_CODE"
        )


type alias DeleteGroupRequest =
    { userPoolId : UserPoolIdType, groupName : GroupNameType }


type alias DeleteIdentityProviderRequest =
    { userPoolId : UserPoolIdType, providerName : ProviderNameType }


type alias DeleteResourceServerRequest =
    { userPoolId : UserPoolIdType, identifier : ResourceServerIdentifierType }


type alias DeleteUserAttributesRequest =
    { userAttributeNames : AttributeNameListType, accessToken : TokenModelType }


type alias DeleteUserAttributesResponse =
    {}


type alias DeleteUserPoolClientRequest =
    { userPoolId : UserPoolIdType, clientId : ClientIdType }


type alias DeleteUserPoolDomainRequest =
    { userPoolId : UserPoolIdType, domain : DomainType }


type alias DeleteUserPoolDomainResponse =
    {}


type alias DeleteUserPoolRequest =
    { userPoolId : UserPoolIdType }


type alias DeleteUserRequest =
    { accessToken : TokenModelType }


type alias DeliveryMediumListType =
    List DeliveryMediumType


type DeliveryMediumType
    = DeliveryMediumTypeSms
    | DeliveryMediumTypeEmail


deliveryMediumType : Enum DeliveryMediumType
deliveryMediumType =
    Enum.define
        [ DeliveryMediumTypeSms, DeliveryMediumTypeEmail ]
        (\val ->
            case val of
                DeliveryMediumTypeSms ->
                    "SMS"

                DeliveryMediumTypeEmail ->
                    "EMAIL"
        )


type alias DescribeIdentityProviderRequest =
    { userPoolId : UserPoolIdType, providerName : ProviderNameType }


type alias DescribeIdentityProviderResponse =
    { identityProvider : IdentityProviderType }


type alias DescribeResourceServerRequest =
    { userPoolId : UserPoolIdType, identifier : ResourceServerIdentifierType }


type alias DescribeResourceServerResponse =
    { resourceServer : ResourceServerType }


type alias DescribeRiskConfigurationRequest =
    { userPoolId : UserPoolIdType, clientId : ClientIdType }


type alias DescribeRiskConfigurationResponse =
    { riskConfiguration : RiskConfigurationType }


type alias DescribeUserImportJobRequest =
    { userPoolId : UserPoolIdType, jobId : UserImportJobIdType }


type alias DescribeUserImportJobResponse =
    { userImportJob : UserImportJobType }


type alias DescribeUserPoolClientRequest =
    { userPoolId : UserPoolIdType, clientId : ClientIdType }


type alias DescribeUserPoolClientResponse =
    { userPoolClient : UserPoolClientType }


type alias DescribeUserPoolDomainRequest =
    { domain : DomainType }


type alias DescribeUserPoolDomainResponse =
    { domainDescription : DomainDescriptionType }


type alias DescribeUserPoolRequest =
    { userPoolId : UserPoolIdType }


type alias DescribeUserPoolResponse =
    { userPool : UserPoolType }


type DescriptionType
    = DescriptionType String


descriptionType : Refined String DescriptionType StringError
descriptionType =
    let
        guardFn val =
            Refined.maxLength 2048 val |> Result.map DescriptionType

        unboxFn (DescriptionType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias DeviceConfigurationType =
    { deviceOnlyRememberedOnUserPrompt : Bool, challengeRequiredOnNewDevice : Bool }


type DeviceKeyType
    = DeviceKeyType String


deviceKeyType : Refined String DeviceKeyType StringError
deviceKeyType =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 55)
                |> Result.andThen (Refined.regexMatch "[\\w-]+_[0-9a-f-]+")
                |> Result.map DeviceKeyType

        unboxFn (DeviceKeyType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias DeviceListType =
    List DeviceType


type DeviceNameType
    = DeviceNameType String


deviceNameType : Refined String DeviceNameType StringError
deviceNameType =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 1024) |> Result.map DeviceNameType

        unboxFn (DeviceNameType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type DeviceRememberedStatusType
    = DeviceRememberedStatusTypeRemembered
    | DeviceRememberedStatusTypeNotRemembered


deviceRememberedStatusType : Enum DeviceRememberedStatusType
deviceRememberedStatusType =
    Enum.define
        [ DeviceRememberedStatusTypeRemembered, DeviceRememberedStatusTypeNotRemembered ]
        (\val ->
            case val of
                DeviceRememberedStatusTypeRemembered ->
                    "remembered"

                DeviceRememberedStatusTypeNotRemembered ->
                    "not_remembered"
        )


type alias DeviceSecretVerifierConfigType =
    { salt : String, passwordVerifier : String }


type alias DeviceType =
    { deviceLastModifiedDate : DateType
    , deviceLastAuthenticatedDate : DateType
    , deviceKey : DeviceKeyType
    , deviceCreateDate : DateType
    , deviceAttributes : AttributeListType
    }


type alias DomainDescriptionType =
    { version : DomainVersionType
    , userPoolId : UserPoolIdType
    , status : DomainStatusType
    , s3Bucket : S3BucketType
    , domain : DomainType
    , customDomainConfig : CustomDomainConfigType
    , cloudFrontDistribution : String
    , awsaccountId : String
    }


type DomainStatusType
    = DomainStatusTypeCreating
    | DomainStatusTypeDeleting
    | DomainStatusTypeUpdating
    | DomainStatusTypeActive
    | DomainStatusTypeFailed


domainStatusType : Enum DomainStatusType
domainStatusType =
    Enum.define
        [ DomainStatusTypeCreating
        , DomainStatusTypeDeleting
        , DomainStatusTypeUpdating
        , DomainStatusTypeActive
        , DomainStatusTypeFailed
        ]
        (\val ->
            case val of
                DomainStatusTypeCreating ->
                    "CREATING"

                DomainStatusTypeDeleting ->
                    "DELETING"

                DomainStatusTypeUpdating ->
                    "UPDATING"

                DomainStatusTypeActive ->
                    "ACTIVE"

                DomainStatusTypeFailed ->
                    "FAILED"
        )


type DomainType
    = DomainType String


domainType : Refined String DomainType StringError
domainType =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 63)
                |> Result.andThen (Refined.regexMatch "^[a-z0-9](?:[a-z0-9\\-]{0,61}[a-z0-9])?$")
                |> Result.map DomainType

        unboxFn (DomainType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type DomainVersionType
    = DomainVersionType String


domainVersionType : Refined String DomainVersionType StringError
domainVersionType =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 20) |> Result.map DomainVersionType

        unboxFn (DomainVersionType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type EmailAddressType
    = EmailAddressType String


emailAddressType : Refined String EmailAddressType StringError
emailAddressType =
    let
        guardFn val =
            Refined.regexMatch "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+@[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+" val
                |> Result.map EmailAddressType

        unboxFn (EmailAddressType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias EmailConfigurationType =
    { sourceArn : ArnType, replyToEmailAddress : EmailAddressType, emailSendingAccount : EmailSendingAccountType }


type EmailNotificationBodyType
    = EmailNotificationBodyType String


emailNotificationBodyType : Refined String EmailNotificationBodyType StringError
emailNotificationBodyType =
    let
        guardFn val =
            Refined.minLength 6 val
                |> Result.andThen (Refined.maxLength 20000)
                |> Result.andThen (Refined.regexMatch "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]+")
                |> Result.map EmailNotificationBodyType

        unboxFn (EmailNotificationBodyType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type EmailNotificationSubjectType
    = EmailNotificationSubjectType String


emailNotificationSubjectType : Refined String EmailNotificationSubjectType StringError
emailNotificationSubjectType =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 140)
                |> Result.andThen (Refined.regexMatch "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+")
                |> Result.map EmailNotificationSubjectType

        unboxFn (EmailNotificationSubjectType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type EmailSendingAccountType
    = EmailSendingAccountTypeCognitoDefault
    | EmailSendingAccountTypeDeveloper


emailSendingAccountType : Enum EmailSendingAccountType
emailSendingAccountType =
    Enum.define
        [ EmailSendingAccountTypeCognitoDefault, EmailSendingAccountTypeDeveloper ]
        (\val ->
            case val of
                EmailSendingAccountTypeCognitoDefault ->
                    "COGNITO_DEFAULT"

                EmailSendingAccountTypeDeveloper ->
                    "DEVELOPER"
        )


type EmailVerificationMessageByLinkType
    = EmailVerificationMessageByLinkType String


emailVerificationMessageByLinkType : Refined String EmailVerificationMessageByLinkType StringError
emailVerificationMessageByLinkType =
    let
        guardFn val =
            Refined.minLength 6 val
                |> Result.andThen (Refined.maxLength 20000)
                |> Result.andThen
                    (Refined.regexMatch
                        "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*\\{##[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*##\\}[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*"
                    )
                |> Result.map EmailVerificationMessageByLinkType

        unboxFn (EmailVerificationMessageByLinkType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type EmailVerificationMessageType
    = EmailVerificationMessageType String


emailVerificationMessageType : Refined String EmailVerificationMessageType StringError
emailVerificationMessageType =
    let
        guardFn val =
            Refined.minLength 6 val
                |> Result.andThen (Refined.maxLength 20000)
                |> Result.andThen
                    (Refined.regexMatch
                        "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*\\{####\\}[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s*]*"
                    )
                |> Result.map EmailVerificationMessageType

        unboxFn (EmailVerificationMessageType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type EmailVerificationSubjectByLinkType
    = EmailVerificationSubjectByLinkType String


emailVerificationSubjectByLinkType : Refined String EmailVerificationSubjectByLinkType StringError
emailVerificationSubjectByLinkType =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 140)
                |> Result.andThen (Refined.regexMatch "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+")
                |> Result.map EmailVerificationSubjectByLinkType

        unboxFn (EmailVerificationSubjectByLinkType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type EmailVerificationSubjectType
    = EmailVerificationSubjectType String


emailVerificationSubjectType : Refined String EmailVerificationSubjectType StringError
emailVerificationSubjectType =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 140)
                |> Result.andThen (Refined.regexMatch "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\s]+")
                |> Result.map EmailVerificationSubjectType

        unboxFn (EmailVerificationSubjectType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias EventContextDataType =
    { timezone : String, ipAddress : String, deviceName : String, country : String, city : String }


type alias EventFeedbackType =
    { provider : String, feedbackValue : FeedbackValueType, feedbackDate : DateType }


type EventFilterType
    = EventFilterTypeSignIn
    | EventFilterTypePasswordChange
    | EventFilterTypeSignUp


eventFilterType : Enum EventFilterType
eventFilterType =
    Enum.define
        [ EventFilterTypeSignIn, EventFilterTypePasswordChange, EventFilterTypeSignUp ]
        (\val ->
            case val of
                EventFilterTypeSignIn ->
                    "SIGN_IN"

                EventFilterTypePasswordChange ->
                    "PASSWORD_CHANGE"

                EventFilterTypeSignUp ->
                    "SIGN_UP"
        )


type alias EventFiltersType =
    List EventFilterType


type EventIdType
    = EventIdType String


eventIdType : Refined String EventIdType StringError
eventIdType =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 50)
                |> Result.andThen (Refined.regexMatch "[\\w+-]+")
                |> Result.map EventIdType

        unboxFn (EventIdType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type EventResponseType
    = EventResponseTypeSuccess
    | EventResponseTypeFailure


eventResponseType : Enum EventResponseType
eventResponseType =
    Enum.define
        [ EventResponseTypeSuccess, EventResponseTypeFailure ]
        (\val ->
            case val of
                EventResponseTypeSuccess ->
                    "Success"

                EventResponseTypeFailure ->
                    "Failure"
        )


type alias EventRiskType =
    { riskLevel : RiskLevelType, riskDecision : RiskDecisionType }


type EventType
    = EventTypeSignIn
    | EventTypeSignUp
    | EventTypeForgotPassword


eventType : Enum EventType
eventType =
    Enum.define
        [ EventTypeSignIn, EventTypeSignUp, EventTypeForgotPassword ]
        (\val ->
            case val of
                EventTypeSignIn ->
                    "SignIn"

                EventTypeSignUp ->
                    "SignUp"

                EventTypeForgotPassword ->
                    "ForgotPassword"
        )


type alias ExplicitAuthFlowsListType =
    List ExplicitAuthFlowsType


type ExplicitAuthFlowsType
    = ExplicitAuthFlowsTypeAdminNoSrpAuth
    | ExplicitAuthFlowsTypeCustomAuthFlowOnly
    | ExplicitAuthFlowsTypeUserPasswordAuth


explicitAuthFlowsType : Enum ExplicitAuthFlowsType
explicitAuthFlowsType =
    Enum.define
        [ ExplicitAuthFlowsTypeAdminNoSrpAuth
        , ExplicitAuthFlowsTypeCustomAuthFlowOnly
        , ExplicitAuthFlowsTypeUserPasswordAuth
        ]
        (\val ->
            case val of
                ExplicitAuthFlowsTypeAdminNoSrpAuth ->
                    "ADMIN_NO_SRP_AUTH"

                ExplicitAuthFlowsTypeCustomAuthFlowOnly ->
                    "CUSTOM_AUTH_FLOW_ONLY"

                ExplicitAuthFlowsTypeUserPasswordAuth ->
                    "USER_PASSWORD_AUTH"
        )


type FeedbackValueType
    = FeedbackValueTypeValid
    | FeedbackValueTypeInvalid


feedbackValueType : Enum FeedbackValueType
feedbackValueType =
    Enum.define
        [ FeedbackValueTypeValid, FeedbackValueTypeInvalid ]
        (\val ->
            case val of
                FeedbackValueTypeValid ->
                    "Valid"

                FeedbackValueTypeInvalid ->
                    "Invalid"
        )


type alias ForceAliasCreation =
    Bool


type alias ForgetDeviceRequest =
    { deviceKey : DeviceKeyType, accessToken : TokenModelType }


type alias ForgotPasswordRequest =
    { username : UsernameType
    , userContextData : UserContextDataType
    , secretHash : SecretHashType
    , clientId : ClientIdType
    , analyticsMetadata : AnalyticsMetadataType
    }


type alias ForgotPasswordResponse =
    { codeDeliveryDetails : CodeDeliveryDetailsType }


type alias GenerateSecret =
    Bool


type alias GetCsvheaderRequest =
    { userPoolId : UserPoolIdType }


type alias GetCsvheaderResponse =
    { userPoolId : UserPoolIdType, csvheader : ListOfStringTypes }


type alias GetDeviceRequest =
    { deviceKey : DeviceKeyType, accessToken : TokenModelType }


type alias GetDeviceResponse =
    { device : DeviceType }


type alias GetGroupRequest =
    { userPoolId : UserPoolIdType, groupName : GroupNameType }


type alias GetGroupResponse =
    { group : GroupType }


type alias GetIdentityProviderByIdentifierRequest =
    { userPoolId : UserPoolIdType, idpIdentifier : IdpIdentifierType }


type alias GetIdentityProviderByIdentifierResponse =
    { identityProvider : IdentityProviderType }


type alias GetSigningCertificateRequest =
    { userPoolId : UserPoolIdType }


type alias GetSigningCertificateResponse =
    { certificate : String }


type alias GetUicustomizationRequest =
    { userPoolId : UserPoolIdType, clientId : ClientIdType }


type alias GetUicustomizationResponse =
    { uicustomization : UicustomizationType }


type alias GetUserAttributeVerificationCodeRequest =
    { attributeName : AttributeNameType, accessToken : TokenModelType }


type alias GetUserAttributeVerificationCodeResponse =
    { codeDeliveryDetails : CodeDeliveryDetailsType }


type alias GetUserPoolMfaConfigRequest =
    { userPoolId : UserPoolIdType }


type alias GetUserPoolMfaConfigResponse =
    { softwareTokenMfaConfiguration : SoftwareTokenMfaConfigType
    , smsMfaConfiguration : SmsMfaConfigType
    , mfaConfiguration : UserPoolMfaType
    }


type alias GetUserRequest =
    { accessToken : TokenModelType }


type alias GetUserResponse =
    { username : UsernameType
    , userMfasettingList : UserMfasettingListType
    , userAttributes : AttributeListType
    , preferredMfaSetting : String
    , mfaoptions : MfaoptionListType
    }


type alias GlobalSignOutRequest =
    { accessToken : TokenModelType }


type alias GlobalSignOutResponse =
    {}


type alias GroupListType =
    List GroupType


type GroupNameType
    = GroupNameType String


groupNameType : Refined String GroupNameType StringError
groupNameType =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 128)
                |> Result.andThen (Refined.regexMatch "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")
                |> Result.map GroupNameType

        unboxFn (GroupNameType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias GroupType =
    { userPoolId : UserPoolIdType
    , roleArn : ArnType
    , precedence : PrecedenceType
    , lastModifiedDate : DateType
    , groupName : GroupNameType
    , description : DescriptionType
    , creationDate : DateType
    }


type HexStringType
    = HexStringType String


hexStringType : Refined String HexStringType StringError
hexStringType =
    let
        guardFn val =
            Refined.regexMatch "^[0-9a-fA-F]+$" val |> Result.map HexStringType

        unboxFn (HexStringType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias HttpHeader =
    { headerValue : String, headerName : String }


type alias HttpHeaderList =
    List HttpHeader


type alias IdentityProviderType =
    { userPoolId : UserPoolIdType
    , providerType : IdentityProviderTypeType
    , providerName : ProviderNameType
    , providerDetails : ProviderDetailsType
    , lastModifiedDate : DateType
    , idpIdentifiers : IdpIdentifiersListType
    , creationDate : DateType
    , attributeMapping : AttributeMappingType
    }


type IdentityProviderTypeType
    = IdentityProviderTypeTypeSaml
    | IdentityProviderTypeTypeFacebook
    | IdentityProviderTypeTypeGoogle
    | IdentityProviderTypeTypeLoginWithAmazon
    | IdentityProviderTypeTypeOidc


identityProviderTypeType : Enum IdentityProviderTypeType
identityProviderTypeType =
    Enum.define
        [ IdentityProviderTypeTypeSaml
        , IdentityProviderTypeTypeFacebook
        , IdentityProviderTypeTypeGoogle
        , IdentityProviderTypeTypeLoginWithAmazon
        , IdentityProviderTypeTypeOidc
        ]
        (\val ->
            case val of
                IdentityProviderTypeTypeSaml ->
                    "SAML"

                IdentityProviderTypeTypeFacebook ->
                    "Facebook"

                IdentityProviderTypeTypeGoogle ->
                    "Google"

                IdentityProviderTypeTypeLoginWithAmazon ->
                    "LoginWithAmazon"

                IdentityProviderTypeTypeOidc ->
                    "OIDC"
        )


type IdpIdentifierType
    = IdpIdentifierType String


idpIdentifierType : Refined String IdpIdentifierType StringError
idpIdentifierType =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 40)
                |> Result.andThen (Refined.regexMatch "[\\w\\s+=.@-]+")
                |> Result.map IdpIdentifierType

        unboxFn (IdpIdentifierType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias IdpIdentifiersListType =
    List IdpIdentifierType


type alias ImageFileType =
    String


type alias ImageUrlType =
    String


type alias InitiateAuthRequest =
    { userContextData : UserContextDataType
    , clientMetadata : ClientMetadataType
    , clientId : ClientIdType
    , authParameters : AuthParametersType
    , authFlow : AuthFlowType
    , analyticsMetadata : AnalyticsMetadataType
    }


type alias InitiateAuthResponse =
    { session : SessionType
    , challengeParameters : ChallengeParametersType
    , challengeName : ChallengeNameType
    , authenticationResult : AuthenticationResultType
    }


type alias IntegerType =
    Int


type alias LambdaConfigType =
    { verifyAuthChallengeResponse : ArnType
    , userMigration : ArnType
    , preTokenGeneration : ArnType
    , preSignUp : ArnType
    , preAuthentication : ArnType
    , postConfirmation : ArnType
    , postAuthentication : ArnType
    , defineAuthChallenge : ArnType
    , customMessage : ArnType
    , createAuthChallenge : ArnType
    }


type alias ListDevicesRequest =
    { paginationToken : SearchPaginationTokenType, limit : QueryLimitType, accessToken : TokenModelType }


type alias ListDevicesResponse =
    { paginationToken : SearchPaginationTokenType, devices : DeviceListType }


type alias ListGroupsRequest =
    { userPoolId : UserPoolIdType, nextToken : PaginationKey, limit : QueryLimitType }


type alias ListGroupsResponse =
    { nextToken : PaginationKey, groups : GroupListType }


type alias ListIdentityProvidersRequest =
    { userPoolId : UserPoolIdType, nextToken : PaginationKeyType, maxResults : ListProvidersLimitType }


type alias ListIdentityProvidersResponse =
    { providers : ProvidersListType, nextToken : PaginationKeyType }


type alias ListOfStringTypes =
    List String


type ListProvidersLimitType
    = ListProvidersLimitType Int


listProvidersLimitType : Refined Int ListProvidersLimitType IntError
listProvidersLimitType =
    let
        guardFn val =
            Refined.gte 0 val |> Result.andThen (Refined.lte 60) |> Result.map ListProvidersLimitType

        unboxFn (ListProvidersLimitType val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type ListResourceServersLimitType
    = ListResourceServersLimitType Int


listResourceServersLimitType : Refined Int ListResourceServersLimitType IntError
listResourceServersLimitType =
    let
        guardFn val =
            Refined.gte 1 val |> Result.andThen (Refined.lte 50) |> Result.map ListResourceServersLimitType

        unboxFn (ListResourceServersLimitType val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type alias ListResourceServersRequest =
    { userPoolId : UserPoolIdType, nextToken : PaginationKeyType, maxResults : ListResourceServersLimitType }


type alias ListResourceServersResponse =
    { resourceServers : ResourceServersListType, nextToken : PaginationKeyType }


type alias ListTagsForResourceRequest =
    { resourceArn : ArnType }


type alias ListTagsForResourceResponse =
    { tags : UserPoolTagsType }


type alias ListUserImportJobsRequest =
    { userPoolId : UserPoolIdType, paginationToken : PaginationKeyType, maxResults : PoolQueryLimitType }


type alias ListUserImportJobsResponse =
    { userImportJobs : UserImportJobsListType, paginationToken : PaginationKeyType }


type alias ListUserPoolClientsRequest =
    { userPoolId : UserPoolIdType, nextToken : PaginationKey, maxResults : QueryLimit }


type alias ListUserPoolClientsResponse =
    { userPoolClients : UserPoolClientListType, nextToken : PaginationKey }


type alias ListUserPoolsRequest =
    { nextToken : PaginationKeyType, maxResults : PoolQueryLimitType }


type alias ListUserPoolsResponse =
    { userPools : UserPoolListType, nextToken : PaginationKeyType }


type alias ListUsersInGroupRequest =
    { userPoolId : UserPoolIdType, nextToken : PaginationKey, limit : QueryLimitType, groupName : GroupNameType }


type alias ListUsersInGroupResponse =
    { users : UsersListType, nextToken : PaginationKey }


type alias ListUsersRequest =
    { userPoolId : UserPoolIdType
    , paginationToken : SearchPaginationTokenType
    , limit : QueryLimitType
    , filter : UserFilterType
    , attributesToGet : SearchedAttributeNamesListType
    }


type alias ListUsersResponse =
    { users : UsersListType, paginationToken : SearchPaginationTokenType }


type alias LogoutUrlsListType =
    List RedirectUrlType


type alias LongType =
    Int


type alias MfaoptionListType =
    List MfaoptionType


type alias MfaoptionType =
    { deliveryMedium : DeliveryMediumType, attributeName : AttributeNameType }


type MessageActionType
    = MessageActionTypeResend
    | MessageActionTypeSuppress


messageActionType : Enum MessageActionType
messageActionType =
    Enum.define
        [ MessageActionTypeResend, MessageActionTypeSuppress ]
        (\val ->
            case val of
                MessageActionTypeResend ->
                    "RESEND"

                MessageActionTypeSuppress ->
                    "SUPPRESS"
        )


type alias MessageTemplateType =
    { smsmessage : SmsVerificationMessageType
    , emailSubject : EmailVerificationSubjectType
    , emailMessage : EmailVerificationMessageType
    }


type alias NewDeviceMetadataType =
    { deviceKey : DeviceKeyType, deviceGroupKey : String }


type alias NotifyConfigurationType =
    { sourceArn : ArnType
    , replyTo : String
    , noActionEmail : NotifyEmailType
    , mfaEmail : NotifyEmailType
    , from : String
    , blockEmail : NotifyEmailType
    }


type alias NotifyEmailType =
    { textBody : EmailNotificationBodyType
    , subject : EmailNotificationSubjectType
    , htmlBody : EmailNotificationBodyType
    }


type alias NumberAttributeConstraintsType =
    { minValue : String, maxValue : String }


type OauthFlowType
    = OauthFlowTypeCode
    | OauthFlowTypeImplicit
    | OauthFlowTypeClientCredentials


oauthFlowType : Enum OauthFlowType
oauthFlowType =
    Enum.define
        [ OauthFlowTypeCode, OauthFlowTypeImplicit, OauthFlowTypeClientCredentials ]
        (\val ->
            case val of
                OauthFlowTypeCode ->
                    "code"

                OauthFlowTypeImplicit ->
                    "implicit"

                OauthFlowTypeClientCredentials ->
                    "client_credentials"
        )


type alias OauthFlowsType =
    List OauthFlowType


type PaginationKey
    = PaginationKey String


paginationKey : Refined String PaginationKey StringError
paginationKey =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.regexMatch "[\\S]+") |> Result.map PaginationKey

        unboxFn (PaginationKey val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type PaginationKeyType
    = PaginationKeyType String


paginationKeyType : Refined String PaginationKeyType StringError
paginationKeyType =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.regexMatch "[\\S]+") |> Result.map PaginationKeyType

        unboxFn (PaginationKeyType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type PasswordPolicyMinLengthType
    = PasswordPolicyMinLengthType Int


passwordPolicyMinLengthType : Refined Int PasswordPolicyMinLengthType IntError
passwordPolicyMinLengthType =
    let
        guardFn val =
            Refined.gte 6 val |> Result.andThen (Refined.lte 99) |> Result.map PasswordPolicyMinLengthType

        unboxFn (PasswordPolicyMinLengthType val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type alias PasswordPolicyType =
    { temporaryPasswordValidityDays : TemporaryPasswordValidityDaysType
    , requireUppercase : Bool
    , requireSymbols : Bool
    , requireNumbers : Bool
    , requireLowercase : Bool
    , minimumLength : PasswordPolicyMinLengthType
    }


type PasswordType
    = PasswordType String


passwordType : Refined String PasswordType StringError
passwordType =
    let
        guardFn val =
            Refined.minLength 6 val
                |> Result.andThen (Refined.maxLength 256)
                |> Result.andThen (Refined.regexMatch "[\\S]+")
                |> Result.map PasswordType

        unboxFn (PasswordType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type PoolQueryLimitType
    = PoolQueryLimitType Int


poolQueryLimitType : Refined Int PoolQueryLimitType IntError
poolQueryLimitType =
    let
        guardFn val =
            Refined.gte 1 val |> Result.andThen (Refined.lte 60) |> Result.map PoolQueryLimitType

        unboxFn (PoolQueryLimitType val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type PreSignedUrlType
    = PreSignedUrlType String


preSignedUrlType : Refined String PreSignedUrlType StringError
preSignedUrlType =
    let
        guardFn val =
            Refined.minLength 0 val |> Result.andThen (Refined.maxLength 2048) |> Result.map PreSignedUrlType

        unboxFn (PreSignedUrlType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type PrecedenceType
    = PrecedenceType Int


precedenceType : Refined Int PrecedenceType IntError
precedenceType =
    let
        guardFn val =
            Refined.gte 0 val |> Result.map PrecedenceType

        unboxFn (PrecedenceType val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type alias ProviderDescription =
    { providerType : IdentityProviderTypeType
    , providerName : ProviderNameType
    , lastModifiedDate : DateType
    , creationDate : DateType
    }


type alias ProviderDetailsType =
    Dict String String


type ProviderNameType
    = ProviderNameType String


providerNameType : Refined String ProviderNameType StringError
providerNameType =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 32)
                |> Result.andThen (Refined.regexMatch "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")
                |> Result.map ProviderNameType

        unboxFn (ProviderNameType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type ProviderNameTypeV1
    = ProviderNameTypeV1 String


providerNameTypeV1 : Refined String ProviderNameTypeV1 StringError
providerNameTypeV1 =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 32)
                |> Result.andThen (Refined.regexMatch "[^_][\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}][^_]+")
                |> Result.map ProviderNameTypeV1

        unboxFn (ProviderNameTypeV1 val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias ProviderUserIdentifierType =
    { providerName : ProviderNameType, providerAttributeValue : String, providerAttributeName : String }


type alias ProvidersListType =
    List ProviderDescription


type QueryLimit
    = QueryLimit Int


queryLimit : Refined Int QueryLimit IntError
queryLimit =
    let
        guardFn val =
            Refined.gte 1 val |> Result.andThen (Refined.lte 60) |> Result.map QueryLimit

        unboxFn (QueryLimit val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type QueryLimitType
    = QueryLimitType Int


queryLimitType : Refined Int QueryLimitType IntError
queryLimitType =
    let
        guardFn val =
            Refined.gte 0 val |> Result.andThen (Refined.lte 60) |> Result.map QueryLimitType

        unboxFn (QueryLimitType val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type RedirectUrlType
    = RedirectUrlType String


redirectUrlType : Refined String RedirectUrlType StringError
redirectUrlType =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 1024)
                |> Result.andThen (Refined.regexMatch "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")
                |> Result.map RedirectUrlType

        unboxFn (RedirectUrlType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type RefreshTokenValidityType
    = RefreshTokenValidityType Int


refreshTokenValidityType : Refined Int RefreshTokenValidityType IntError
refreshTokenValidityType =
    let
        guardFn val =
            Refined.gte 0 val |> Result.andThen (Refined.lte 3650) |> Result.map RefreshTokenValidityType

        unboxFn (RefreshTokenValidityType val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type alias ResendConfirmationCodeRequest =
    { username : UsernameType
    , userContextData : UserContextDataType
    , secretHash : SecretHashType
    , clientId : ClientIdType
    , analyticsMetadata : AnalyticsMetadataType
    }


type alias ResendConfirmationCodeResponse =
    { codeDeliveryDetails : CodeDeliveryDetailsType }


type ResourceServerIdentifierType
    = ResourceServerIdentifierType String


resourceServerIdentifierType : Refined String ResourceServerIdentifierType StringError
resourceServerIdentifierType =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 256)
                |> Result.andThen (Refined.regexMatch "[\\x21\\x23-\\x5B\\x5D-\\x7E]+")
                |> Result.map ResourceServerIdentifierType

        unboxFn (ResourceServerIdentifierType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type ResourceServerNameType
    = ResourceServerNameType String


resourceServerNameType : Refined String ResourceServerNameType StringError
resourceServerNameType =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 256)
                |> Result.andThen (Refined.regexMatch "[\\w\\s+=,.@-]+")
                |> Result.map ResourceServerNameType

        unboxFn (ResourceServerNameType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type ResourceServerScopeDescriptionType
    = ResourceServerScopeDescriptionType String


resourceServerScopeDescriptionType : Refined String ResourceServerScopeDescriptionType StringError
resourceServerScopeDescriptionType =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 256)
                |> Result.map ResourceServerScopeDescriptionType

        unboxFn (ResourceServerScopeDescriptionType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias ResourceServerScopeListType =
    List ResourceServerScopeType


type ResourceServerScopeNameType
    = ResourceServerScopeNameType String


resourceServerScopeNameType : Refined String ResourceServerScopeNameType StringError
resourceServerScopeNameType =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 256)
                |> Result.andThen (Refined.regexMatch "[\\x21\\x23-\\x2E\\x30-\\x5B\\x5D-\\x7E]+")
                |> Result.map ResourceServerScopeNameType

        unboxFn (ResourceServerScopeNameType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias ResourceServerScopeType =
    { scopeName : ResourceServerScopeNameType, scopeDescription : ResourceServerScopeDescriptionType }


type alias ResourceServerType =
    { userPoolId : UserPoolIdType
    , scopes : ResourceServerScopeListType
    , name : ResourceServerNameType
    , identifier : ResourceServerIdentifierType
    }


type alias ResourceServersListType =
    List ResourceServerType


type alias RespondToAuthChallengeRequest =
    { userContextData : UserContextDataType
    , session : SessionType
    , clientId : ClientIdType
    , challengeResponses : ChallengeResponsesType
    , challengeName : ChallengeNameType
    , analyticsMetadata : AnalyticsMetadataType
    }


type alias RespondToAuthChallengeResponse =
    { session : SessionType
    , challengeParameters : ChallengeParametersType
    , challengeName : ChallengeNameType
    , authenticationResult : AuthenticationResultType
    }


type alias RiskConfigurationType =
    { userPoolId : UserPoolIdType
    , riskExceptionConfiguration : RiskExceptionConfigurationType
    , lastModifiedDate : DateType
    , compromisedCredentialsRiskConfiguration : CompromisedCredentialsRiskConfigurationType
    , clientId : ClientIdType
    , accountTakeoverRiskConfiguration : AccountTakeoverRiskConfigurationType
    }


type RiskDecisionType
    = RiskDecisionTypeNoRisk
    | RiskDecisionTypeAccountTakeover
    | RiskDecisionTypeBlock


riskDecisionType : Enum RiskDecisionType
riskDecisionType =
    Enum.define
        [ RiskDecisionTypeNoRisk, RiskDecisionTypeAccountTakeover, RiskDecisionTypeBlock ]
        (\val ->
            case val of
                RiskDecisionTypeNoRisk ->
                    "NoRisk"

                RiskDecisionTypeAccountTakeover ->
                    "AccountTakeover"

                RiskDecisionTypeBlock ->
                    "Block"
        )


type alias RiskExceptionConfigurationType =
    { skippedIprangeList : SkippedIprangeListType, blockedIprangeList : BlockedIprangeListType }


type RiskLevelType
    = RiskLevelTypeLow
    | RiskLevelTypeMedium
    | RiskLevelTypeHigh


riskLevelType : Enum RiskLevelType
riskLevelType =
    Enum.define
        [ RiskLevelTypeLow, RiskLevelTypeMedium, RiskLevelTypeHigh ]
        (\val ->
            case val of
                RiskLevelTypeLow ->
                    "Low"

                RiskLevelTypeMedium ->
                    "Medium"

                RiskLevelTypeHigh ->
                    "High"
        )


type S3BucketType
    = S3BucketType String


s3BucketType : Refined String S3BucketType StringError
s3BucketType =
    let
        guardFn val =
            Refined.minLength 3 val
                |> Result.andThen (Refined.maxLength 1024)
                |> Result.andThen (Refined.regexMatch "^[0-9A-Za-z\\.\\-_]*(?<!\\.)$")
                |> Result.map S3BucketType

        unboxFn (S3BucketType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias SmsmfaSettingsType =
    { preferredMfa : Bool, enabled : Bool }


type alias SchemaAttributeType =
    { stringAttributeConstraints : StringAttributeConstraintsType
    , required : Bool
    , numberAttributeConstraints : NumberAttributeConstraintsType
    , name : CustomAttributeNameType
    , mutable : Bool
    , developerOnlyAttribute : Bool
    , attributeDataType : AttributeDataType
    }


type alias SchemaAttributesListType =
    List SchemaAttributeType


type alias ScopeListType =
    List ScopeType


type ScopeType
    = ScopeType String


scopeType : Refined String ScopeType StringError
scopeType =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 256)
                |> Result.andThen (Refined.regexMatch "[\\x21\\x23-\\x5B\\x5D-\\x7E]+")
                |> Result.map ScopeType

        unboxFn (ScopeType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type SearchPaginationTokenType
    = SearchPaginationTokenType String


searchPaginationTokenType : Refined String SearchPaginationTokenType StringError
searchPaginationTokenType =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.regexMatch "[\\S]+")
                |> Result.map SearchPaginationTokenType

        unboxFn (SearchPaginationTokenType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias SearchedAttributeNamesListType =
    List AttributeNameType


type SecretCodeType
    = SecretCodeType String


secretCodeType : Refined String SecretCodeType StringError
secretCodeType =
    let
        guardFn val =
            Refined.minLength 16 val |> Result.andThen (Refined.regexMatch "[A-Za-z0-9]+") |> Result.map SecretCodeType

        unboxFn (SecretCodeType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type SecretHashType
    = SecretHashType String


secretHashType : Refined String SecretHashType StringError
secretHashType =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 128)
                |> Result.andThen (Refined.regexMatch "[\\w+=/]+")
                |> Result.map SecretHashType

        unboxFn (SecretHashType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type SessionType
    = SessionType String


sessionType : Refined String SessionType StringError
sessionType =
    let
        guardFn val =
            Refined.minLength 20 val |> Result.andThen (Refined.maxLength 2048) |> Result.map SessionType

        unboxFn (SessionType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias SetRiskConfigurationRequest =
    { userPoolId : UserPoolIdType
    , riskExceptionConfiguration : RiskExceptionConfigurationType
    , compromisedCredentialsRiskConfiguration : CompromisedCredentialsRiskConfigurationType
    , clientId : ClientIdType
    , accountTakeoverRiskConfiguration : AccountTakeoverRiskConfigurationType
    }


type alias SetRiskConfigurationResponse =
    { riskConfiguration : RiskConfigurationType }


type alias SetUicustomizationRequest =
    { userPoolId : UserPoolIdType, imageFile : String, clientId : ClientIdType, css : String }


type alias SetUicustomizationResponse =
    { uicustomization : UicustomizationType }


type alias SetUserMfapreferenceRequest =
    { softwareTokenMfaSettings : SoftwareTokenMfaSettingsType
    , smsmfaSettings : SmsmfaSettingsType
    , accessToken : TokenModelType
    }


type alias SetUserMfapreferenceResponse =
    {}


type alias SetUserPoolMfaConfigRequest =
    { userPoolId : UserPoolIdType
    , softwareTokenMfaConfiguration : SoftwareTokenMfaConfigType
    , smsMfaConfiguration : SmsMfaConfigType
    , mfaConfiguration : UserPoolMfaType
    }


type alias SetUserPoolMfaConfigResponse =
    { softwareTokenMfaConfiguration : SoftwareTokenMfaConfigType
    , smsMfaConfiguration : SmsMfaConfigType
    , mfaConfiguration : UserPoolMfaType
    }


type alias SetUserSettingsRequest =
    { mfaoptions : MfaoptionListType, accessToken : TokenModelType }


type alias SetUserSettingsResponse =
    {}


type alias SignUpRequest =
    { validationData : AttributeListType
    , username : UsernameType
    , userContextData : UserContextDataType
    , userAttributes : AttributeListType
    , secretHash : SecretHashType
    , password : PasswordType
    , clientId : ClientIdType
    , analyticsMetadata : AnalyticsMetadataType
    }


type alias SignUpResponse =
    { userSub : String, userConfirmed : Bool, codeDeliveryDetails : CodeDeliveryDetailsType }


type alias SkippedIprangeListType =
    List String


type alias SmsConfigurationType =
    { snsCallerArn : ArnType, externalId : String }


type alias SmsMfaConfigType =
    { smsConfiguration : SmsConfigurationType, smsAuthenticationMessage : SmsVerificationMessageType }


type SmsVerificationMessageType
    = SmsVerificationMessageType String


smsVerificationMessageType : Refined String SmsVerificationMessageType StringError
smsVerificationMessageType =
    let
        guardFn val =
            Refined.minLength 6 val
                |> Result.andThen (Refined.maxLength 140)
                |> Result.andThen (Refined.regexMatch ".*\\{####\\}.*")
                |> Result.map SmsVerificationMessageType

        unboxFn (SmsVerificationMessageType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type SoftwareTokenMfauserCodeType
    = SoftwareTokenMfauserCodeType String


softwareTokenMfauserCodeType : Refined String SoftwareTokenMfauserCodeType StringError
softwareTokenMfauserCodeType =
    let
        guardFn val =
            Refined.minLength 6 val
                |> Result.andThen (Refined.maxLength 6)
                |> Result.andThen (Refined.regexMatch "[0-9]+")
                |> Result.map SoftwareTokenMfauserCodeType

        unboxFn (SoftwareTokenMfauserCodeType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias SoftwareTokenMfaConfigType =
    { enabled : Bool }


type alias SoftwareTokenMfaSettingsType =
    { preferredMfa : Bool, enabled : Bool }


type alias StartUserImportJobRequest =
    { userPoolId : UserPoolIdType, jobId : UserImportJobIdType }


type alias StartUserImportJobResponse =
    { userImportJob : UserImportJobType }


type StatusType
    = StatusTypeEnabled
    | StatusTypeDisabled


statusType : Enum StatusType
statusType =
    Enum.define
        [ StatusTypeEnabled, StatusTypeDisabled ]
        (\val ->
            case val of
                StatusTypeEnabled ->
                    "Enabled"

                StatusTypeDisabled ->
                    "Disabled"
        )


type alias StopUserImportJobRequest =
    { userPoolId : UserPoolIdType, jobId : UserImportJobIdType }


type alias StopUserImportJobResponse =
    { userImportJob : UserImportJobType }


type alias StringAttributeConstraintsType =
    { minLength : String, maxLength : String }


type alias StringType =
    String


type alias SupportedIdentityProvidersListType =
    List ProviderNameType


type TagKeysType
    = TagKeysType String


tagKeysType : Refined String TagKeysType StringError
tagKeysType =
    let
        guardFn val =
            Refined.minLength 1 val |> Result.andThen (Refined.maxLength 128) |> Result.map TagKeysType

        unboxFn (TagKeysType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias TagResourceRequest =
    { tags : UserPoolTagsType, resourceArn : ArnType }


type alias TagResourceResponse =
    {}


type TagValueType
    = TagValueType String


tagValueType : Refined String TagValueType StringError
tagValueType =
    let
        guardFn val =
            Refined.minLength 0 val |> Result.andThen (Refined.maxLength 256) |> Result.map TagValueType

        unboxFn (TagValueType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type TemporaryPasswordValidityDaysType
    = TemporaryPasswordValidityDaysType Int


temporaryPasswordValidityDaysType : Refined Int TemporaryPasswordValidityDaysType IntError
temporaryPasswordValidityDaysType =
    let
        guardFn val =
            Refined.gte 0 val |> Result.andThen (Refined.lte 365) |> Result.map TemporaryPasswordValidityDaysType

        unboxFn (TemporaryPasswordValidityDaysType val) =
            val
    in
    Refined.define guardFn Json.Decode.int Json.Encode.int Refined.intErrorToString unboxFn


type TokenModelType
    = TokenModelType String


tokenModelType : Refined String TokenModelType StringError
tokenModelType =
    let
        guardFn val =
            Refined.regexMatch "[A-Za-z0-9-_=.]+" val |> Result.map TokenModelType

        unboxFn (TokenModelType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias UicustomizationType =
    { userPoolId : UserPoolIdType
    , lastModifiedDate : DateType
    , imageUrl : String
    , creationDate : DateType
    , clientId : ClientIdType
    , cssversion : String
    , css : String
    }


type alias UntagResourceRequest =
    { tagKeys : UserPoolTagsListType, resourceArn : ArnType }


type alias UntagResourceResponse =
    {}


type alias UpdateAuthEventFeedbackRequest =
    { username : UsernameType
    , userPoolId : UserPoolIdType
    , feedbackValue : FeedbackValueType
    , feedbackToken : TokenModelType
    , eventId : EventIdType
    }


type alias UpdateAuthEventFeedbackResponse =
    {}


type alias UpdateDeviceStatusRequest =
    { deviceRememberedStatus : DeviceRememberedStatusType, deviceKey : DeviceKeyType, accessToken : TokenModelType }


type alias UpdateDeviceStatusResponse =
    {}


type alias UpdateGroupRequest =
    { userPoolId : UserPoolIdType
    , roleArn : ArnType
    , precedence : PrecedenceType
    , groupName : GroupNameType
    , description : DescriptionType
    }


type alias UpdateGroupResponse =
    { group : GroupType }


type alias UpdateIdentityProviderRequest =
    { userPoolId : UserPoolIdType
    , providerName : ProviderNameType
    , providerDetails : ProviderDetailsType
    , idpIdentifiers : IdpIdentifiersListType
    , attributeMapping : AttributeMappingType
    }


type alias UpdateIdentityProviderResponse =
    { identityProvider : IdentityProviderType }


type alias UpdateResourceServerRequest =
    { userPoolId : UserPoolIdType
    , scopes : ResourceServerScopeListType
    , name : ResourceServerNameType
    , identifier : ResourceServerIdentifierType
    }


type alias UpdateResourceServerResponse =
    { resourceServer : ResourceServerType }


type alias UpdateUserAttributesRequest =
    { userAttributes : AttributeListType, accessToken : TokenModelType }


type alias UpdateUserAttributesResponse =
    { codeDeliveryDetailsList : CodeDeliveryDetailsListType }


type alias UpdateUserPoolClientRequest =
    { writeAttributes : ClientPermissionListType
    , userPoolId : UserPoolIdType
    , supportedIdentityProviders : SupportedIdentityProvidersListType
    , refreshTokenValidity : RefreshTokenValidityType
    , readAttributes : ClientPermissionListType
    , logoutUrls : LogoutUrlsListType
    , explicitAuthFlows : ExplicitAuthFlowsListType
    , defaultRedirectUri : RedirectUrlType
    , clientName : ClientNameType
    , clientId : ClientIdType
    , callbackUrls : CallbackUrlsListType
    , analyticsConfiguration : AnalyticsConfigurationType
    , allowedOauthScopes : ScopeListType
    , allowedOauthFlowsUserPoolClient : Bool
    , allowedOauthFlows : OauthFlowsType
    }


type alias UpdateUserPoolClientResponse =
    { userPoolClient : UserPoolClientType }


type alias UpdateUserPoolDomainRequest =
    { userPoolId : UserPoolIdType, domain : DomainType, customDomainConfig : CustomDomainConfigType }


type alias UpdateUserPoolDomainResponse =
    { cloudFrontDomain : DomainType }


type alias UpdateUserPoolRequest =
    { verificationMessageTemplate : VerificationMessageTemplateType
    , userPoolTags : UserPoolTagsType
    , userPoolId : UserPoolIdType
    , userPoolAddOns : UserPoolAddOnsType
    , smsVerificationMessage : SmsVerificationMessageType
    , smsConfiguration : SmsConfigurationType
    , smsAuthenticationMessage : SmsVerificationMessageType
    , policies : UserPoolPolicyType
    , mfaConfiguration : UserPoolMfaType
    , lambdaConfig : LambdaConfigType
    , emailVerificationSubject : EmailVerificationSubjectType
    , emailVerificationMessage : EmailVerificationMessageType
    , emailConfiguration : EmailConfigurationType
    , deviceConfiguration : DeviceConfigurationType
    , autoVerifiedAttributes : VerifiedAttributesListType
    , adminCreateUserConfig : AdminCreateUserConfigType
    }


type alias UpdateUserPoolResponse =
    {}


type alias UserContextDataType =
    { encodedData : String }


type UserFilterType
    = UserFilterType String


userFilterType : Refined String UserFilterType StringError
userFilterType =
    let
        guardFn val =
            Refined.maxLength 256 val |> Result.map UserFilterType

        unboxFn (UserFilterType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type UserImportJobIdType
    = UserImportJobIdType String


userImportJobIdType : Refined String UserImportJobIdType StringError
userImportJobIdType =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 55)
                |> Result.andThen (Refined.regexMatch "import-[0-9a-zA-Z-]+")
                |> Result.map UserImportJobIdType

        unboxFn (UserImportJobIdType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type UserImportJobNameType
    = UserImportJobNameType String


userImportJobNameType : Refined String UserImportJobNameType StringError
userImportJobNameType =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 128)
                |> Result.andThen (Refined.regexMatch "[\\w\\s+=,.@-]+")
                |> Result.map UserImportJobNameType

        unboxFn (UserImportJobNameType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type UserImportJobStatusType
    = UserImportJobStatusTypeCreated
    | UserImportJobStatusTypePending
    | UserImportJobStatusTypeInProgress
    | UserImportJobStatusTypeStopping
    | UserImportJobStatusTypeExpired
    | UserImportJobStatusTypeStopped
    | UserImportJobStatusTypeFailed
    | UserImportJobStatusTypeSucceeded


userImportJobStatusType : Enum UserImportJobStatusType
userImportJobStatusType =
    Enum.define
        [ UserImportJobStatusTypeCreated
        , UserImportJobStatusTypePending
        , UserImportJobStatusTypeInProgress
        , UserImportJobStatusTypeStopping
        , UserImportJobStatusTypeExpired
        , UserImportJobStatusTypeStopped
        , UserImportJobStatusTypeFailed
        , UserImportJobStatusTypeSucceeded
        ]
        (\val ->
            case val of
                UserImportJobStatusTypeCreated ->
                    "Created"

                UserImportJobStatusTypePending ->
                    "Pending"

                UserImportJobStatusTypeInProgress ->
                    "InProgress"

                UserImportJobStatusTypeStopping ->
                    "Stopping"

                UserImportJobStatusTypeExpired ->
                    "Expired"

                UserImportJobStatusTypeStopped ->
                    "Stopped"

                UserImportJobStatusTypeFailed ->
                    "Failed"

                UserImportJobStatusTypeSucceeded ->
                    "Succeeded"
        )


type alias UserImportJobType =
    { userPoolId : UserPoolIdType
    , status : UserImportJobStatusType
    , startDate : DateType
    , skippedUsers : Int
    , preSignedUrl : PreSignedUrlType
    , jobName : UserImportJobNameType
    , jobId : UserImportJobIdType
    , importedUsers : Int
    , failedUsers : Int
    , creationDate : DateType
    , completionMessage : CompletionMessageType
    , completionDate : DateType
    , cloudWatchLogsRoleArn : ArnType
    }


type alias UserImportJobsListType =
    List UserImportJobType


type alias UserMfasettingListType =
    List String


type alias UserPoolAddOnsType =
    { advancedSecurityMode : AdvancedSecurityModeType }


type alias UserPoolClientDescription =
    { userPoolId : UserPoolIdType, clientName : ClientNameType, clientId : ClientIdType }


type alias UserPoolClientListType =
    List UserPoolClientDescription


type alias UserPoolClientType =
    { writeAttributes : ClientPermissionListType
    , userPoolId : UserPoolIdType
    , supportedIdentityProviders : SupportedIdentityProvidersListType
    , refreshTokenValidity : RefreshTokenValidityType
    , readAttributes : ClientPermissionListType
    , logoutUrls : LogoutUrlsListType
    , lastModifiedDate : DateType
    , explicitAuthFlows : ExplicitAuthFlowsListType
    , defaultRedirectUri : RedirectUrlType
    , creationDate : DateType
    , clientSecret : ClientSecretType
    , clientName : ClientNameType
    , clientId : ClientIdType
    , callbackUrls : CallbackUrlsListType
    , analyticsConfiguration : AnalyticsConfigurationType
    , allowedOauthScopes : ScopeListType
    , allowedOauthFlowsUserPoolClient : Bool
    , allowedOauthFlows : OauthFlowsType
    }


type alias UserPoolDescriptionType =
    { status : StatusType
    , name : UserPoolNameType
    , lastModifiedDate : DateType
    , lambdaConfig : LambdaConfigType
    , id : UserPoolIdType
    , creationDate : DateType
    }


type UserPoolIdType
    = UserPoolIdType String


userPoolIdType : Refined String UserPoolIdType StringError
userPoolIdType =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 55)
                |> Result.andThen (Refined.regexMatch "[\\w-]+_[0-9a-zA-Z]+")
                |> Result.map UserPoolIdType

        unboxFn (UserPoolIdType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias UserPoolListType =
    List UserPoolDescriptionType


type UserPoolMfaType
    = UserPoolMfaTypeOff
    | UserPoolMfaTypeOn
    | UserPoolMfaTypeOptional


userPoolMfaType : Enum UserPoolMfaType
userPoolMfaType =
    Enum.define
        [ UserPoolMfaTypeOff, UserPoolMfaTypeOn, UserPoolMfaTypeOptional ]
        (\val ->
            case val of
                UserPoolMfaTypeOff ->
                    "OFF"

                UserPoolMfaTypeOn ->
                    "ON"

                UserPoolMfaTypeOptional ->
                    "OPTIONAL"
        )


type UserPoolNameType
    = UserPoolNameType String


userPoolNameType : Refined String UserPoolNameType StringError
userPoolNameType =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 128)
                |> Result.andThen (Refined.regexMatch "[\\w\\s+=,.@-]+")
                |> Result.map UserPoolNameType

        unboxFn (UserPoolNameType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias UserPoolPolicyType =
    { passwordPolicy : PasswordPolicyType }


type alias UserPoolTagsListType =
    List TagKeysType


type alias UserPoolTagsType =
    Dict.Refined.Dict String TagKeysType TagValueType


type alias UserPoolType =
    { verificationMessageTemplate : VerificationMessageTemplateType
    , usernameAttributes : UsernameAttributesListType
    , userPoolTags : UserPoolTagsType
    , userPoolAddOns : UserPoolAddOnsType
    , status : StatusType
    , smsVerificationMessage : SmsVerificationMessageType
    , smsConfigurationFailure : String
    , smsConfiguration : SmsConfigurationType
    , smsAuthenticationMessage : SmsVerificationMessageType
    , schemaAttributes : SchemaAttributesListType
    , policies : UserPoolPolicyType
    , name : UserPoolNameType
    , mfaConfiguration : UserPoolMfaType
    , lastModifiedDate : DateType
    , lambdaConfig : LambdaConfigType
    , id : UserPoolIdType
    , estimatedNumberOfUsers : Int
    , emailVerificationSubject : EmailVerificationSubjectType
    , emailVerificationMessage : EmailVerificationMessageType
    , emailConfigurationFailure : String
    , emailConfiguration : EmailConfigurationType
    , domain : DomainType
    , deviceConfiguration : DeviceConfigurationType
    , customDomain : DomainType
    , creationDate : DateType
    , autoVerifiedAttributes : VerifiedAttributesListType
    , arn : ArnType
    , aliasAttributes : AliasAttributesListType
    , adminCreateUserConfig : AdminCreateUserConfigType
    }


type UserStatusType
    = UserStatusTypeUnconfirmed
    | UserStatusTypeConfirmed
    | UserStatusTypeArchived
    | UserStatusTypeCompromised
    | UserStatusTypeUnknown
    | UserStatusTypeResetRequired
    | UserStatusTypeForceChangePassword


userStatusType : Enum UserStatusType
userStatusType =
    Enum.define
        [ UserStatusTypeUnconfirmed
        , UserStatusTypeConfirmed
        , UserStatusTypeArchived
        , UserStatusTypeCompromised
        , UserStatusTypeUnknown
        , UserStatusTypeResetRequired
        , UserStatusTypeForceChangePassword
        ]
        (\val ->
            case val of
                UserStatusTypeUnconfirmed ->
                    "UNCONFIRMED"

                UserStatusTypeConfirmed ->
                    "CONFIRMED"

                UserStatusTypeArchived ->
                    "ARCHIVED"

                UserStatusTypeCompromised ->
                    "COMPROMISED"

                UserStatusTypeUnknown ->
                    "UNKNOWN"

                UserStatusTypeResetRequired ->
                    "RESET_REQUIRED"

                UserStatusTypeForceChangePassword ->
                    "FORCE_CHANGE_PASSWORD"
        )


type alias UserType =
    { username : UsernameType
    , userStatus : UserStatusType
    , userLastModifiedDate : DateType
    , userCreateDate : DateType
    , mfaoptions : MfaoptionListType
    , enabled : Bool
    , attributes : AttributeListType
    }


type UsernameAttributeType
    = UsernameAttributeTypePhoneNumber
    | UsernameAttributeTypeEmail


usernameAttributeType : Enum UsernameAttributeType
usernameAttributeType =
    Enum.define
        [ UsernameAttributeTypePhoneNumber, UsernameAttributeTypeEmail ]
        (\val ->
            case val of
                UsernameAttributeTypePhoneNumber ->
                    "phone_number"

                UsernameAttributeTypeEmail ->
                    "email"
        )


type alias UsernameAttributesListType =
    List UsernameAttributeType


type UsernameType
    = UsernameType String


usernameType : Refined String UsernameType StringError
usernameType =
    let
        guardFn val =
            Refined.minLength 1 val
                |> Result.andThen (Refined.maxLength 128)
                |> Result.andThen (Refined.regexMatch "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+")
                |> Result.map UsernameType

        unboxFn (UsernameType val) =
            val
    in
    Refined.define guardFn Json.Decode.string Json.Encode.string Refined.stringErrorToString unboxFn


type alias UsersListType =
    List UserType


type alias VerificationMessageTemplateType =
    { smsMessage : SmsVerificationMessageType
    , emailSubjectByLink : EmailVerificationSubjectByLinkType
    , emailSubject : EmailVerificationSubjectType
    , emailMessageByLink : EmailVerificationMessageByLinkType
    , emailMessage : EmailVerificationMessageType
    , defaultEmailOption : DefaultEmailOptionType
    }


type VerifiedAttributeType
    = VerifiedAttributeTypePhoneNumber
    | VerifiedAttributeTypeEmail


verifiedAttributeType : Enum VerifiedAttributeType
verifiedAttributeType =
    Enum.define
        [ VerifiedAttributeTypePhoneNumber, VerifiedAttributeTypeEmail ]
        (\val ->
            case val of
                VerifiedAttributeTypePhoneNumber ->
                    "phone_number"

                VerifiedAttributeTypeEmail ->
                    "email"
        )


type alias VerifiedAttributesListType =
    List VerifiedAttributeType


type alias VerifySoftwareTokenRequest =
    { userCode : SoftwareTokenMfauserCodeType
    , session : SessionType
    , friendlyDeviceName : String
    , accessToken : TokenModelType
    }


type alias VerifySoftwareTokenResponse =
    { status : VerifySoftwareTokenResponseType, session : SessionType }


type VerifySoftwareTokenResponseType
    = VerifySoftwareTokenResponseTypeSuccess
    | VerifySoftwareTokenResponseTypeError


verifySoftwareTokenResponseType : Enum VerifySoftwareTokenResponseType
verifySoftwareTokenResponseType =
    Enum.define
        [ VerifySoftwareTokenResponseTypeSuccess, VerifySoftwareTokenResponseTypeError ]
        (\val ->
            case val of
                VerifySoftwareTokenResponseTypeSuccess ->
                    "SUCCESS"

                VerifySoftwareTokenResponseTypeError ->
                    "ERROR"
        )


type alias VerifyUserAttributeRequest =
    { code : ConfirmationCodeType, attributeName : AttributeNameType, accessToken : TokenModelType }


type alias VerifyUserAttributeResponse =
    {}


{-| Codec for VerifyUserAttributeResponse.
-}
verifyUserAttributeResponseCodec : Codec VerifyUserAttributeResponse
verifyUserAttributeResponseCodec =
    Codec.object VerifyUserAttributeResponse |> Codec.buildObject


{-| Codec for VerifyUserAttributeRequest.
-}
verifyUserAttributeRequestCodec : Codec VerifyUserAttributeRequest
verifyUserAttributeRequestCodec =
    Codec.object VerifyUserAttributeRequest
        |> Codec.field "Code" .code confirmationCodeTypeCodec
        |> Codec.field "AttributeName" .attributeName attributeNameTypeCodec
        |> Codec.field "AccessToken" .accessToken tokenModelTypeCodec
        |> Codec.buildObject


{-| Codec for VerifySoftwareTokenResponseType.
-}
verifySoftwareTokenResponseTypeCodec : Codec VerifySoftwareTokenResponseType
verifySoftwareTokenResponseTypeCodec =
    Codec.build (Enum.encoder verifySoftwareTokenResponseType) (Enum.decoder verifySoftwareTokenResponseType)


{-| Codec for VerifySoftwareTokenResponse.
-}
verifySoftwareTokenResponseCodec : Codec VerifySoftwareTokenResponse
verifySoftwareTokenResponseCodec =
    Codec.object VerifySoftwareTokenResponse
        |> Codec.field "Status" .status verifySoftwareTokenResponseTypeCodec
        |> Codec.field "Session" .session sessionTypeCodec
        |> Codec.buildObject


{-| Codec for VerifySoftwareTokenRequest.
-}
verifySoftwareTokenRequestCodec : Codec VerifySoftwareTokenRequest
verifySoftwareTokenRequestCodec =
    Codec.object VerifySoftwareTokenRequest
        |> Codec.field "UserCode" .userCode softwareTokenMfauserCodeTypeCodec
        |> Codec.field "Session" .session sessionTypeCodec
        |> Codec.field "FriendlyDeviceName" .friendlyDeviceName Codec.string
        |> Codec.field "AccessToken" .accessToken tokenModelTypeCodec
        |> Codec.buildObject


{-| Codec for VerifiedAttributesListType.
-}
verifiedAttributesListTypeCodec : Codec VerifiedAttributesListType
verifiedAttributesListTypeCodec =
    Codec.list verifiedAttributeTypeCodec


{-| Codec for VerifiedAttributeType.
-}
verifiedAttributeTypeCodec : Codec VerifiedAttributeType
verifiedAttributeTypeCodec =
    Codec.build (Enum.encoder verifiedAttributeType) (Enum.decoder verifiedAttributeType)


{-| Codec for VerificationMessageTemplateType.
-}
verificationMessageTemplateTypeCodec : Codec VerificationMessageTemplateType
verificationMessageTemplateTypeCodec =
    Codec.object VerificationMessageTemplateType
        |> Codec.field "SmsMessage" .smsMessage smsVerificationMessageTypeCodec
        |> Codec.field "EmailSubjectByLink" .emailSubjectByLink emailVerificationSubjectByLinkTypeCodec
        |> Codec.field "EmailSubject" .emailSubject emailVerificationSubjectTypeCodec
        |> Codec.field "EmailMessageByLink" .emailMessageByLink emailVerificationMessageByLinkTypeCodec
        |> Codec.field "EmailMessage" .emailMessage emailVerificationMessageTypeCodec
        |> Codec.field "DefaultEmailOption" .defaultEmailOption defaultEmailOptionTypeCodec
        |> Codec.buildObject


{-| Codec for UsersListType.
-}
usersListTypeCodec : Codec UsersListType
usersListTypeCodec =
    Codec.list userTypeCodec


{-| Codec for UsernameType.
-}
usernameTypeCodec : Codec UsernameType
usernameTypeCodec =
    Codec.build (Refined.encoder usernameType) (Refined.decoder usernameType)


{-| Codec for UsernameAttributesListType.
-}
usernameAttributesListTypeCodec : Codec UsernameAttributesListType
usernameAttributesListTypeCodec =
    Codec.list usernameAttributeTypeCodec


{-| Codec for UsernameAttributeType.
-}
usernameAttributeTypeCodec : Codec UsernameAttributeType
usernameAttributeTypeCodec =
    Codec.build (Enum.encoder usernameAttributeType) (Enum.decoder usernameAttributeType)


{-| Codec for UserType.
-}
userTypeCodec : Codec UserType
userTypeCodec =
    Codec.object UserType
        |> Codec.field "Username" .username usernameTypeCodec
        |> Codec.field "UserStatus" .userStatus userStatusTypeCodec
        |> Codec.field "UserLastModifiedDate" .userLastModifiedDate dateTypeCodec
        |> Codec.field "UserCreateDate" .userCreateDate dateTypeCodec
        |> Codec.field "MFAOptions" .mfaoptions mfaoptionListTypeCodec
        |> Codec.field "Enabled" .enabled Codec.bool
        |> Codec.field "Attributes" .attributes attributeListTypeCodec
        |> Codec.buildObject


{-| Codec for UserStatusType.
-}
userStatusTypeCodec : Codec UserStatusType
userStatusTypeCodec =
    Codec.build (Enum.encoder userStatusType) (Enum.decoder userStatusType)


{-| Codec for UserPoolType.
-}
userPoolTypeCodec : Codec UserPoolType
userPoolTypeCodec =
    Codec.object UserPoolType
        |> Codec.field "VerificationMessageTemplate" .verificationMessageTemplate verificationMessageTemplateTypeCodec
        |> Codec.field "UsernameAttributes" .usernameAttributes usernameAttributesListTypeCodec
        |> Codec.field "UserPoolTags" .userPoolTags userPoolTagsTypeCodec
        |> Codec.field "UserPoolAddOns" .userPoolAddOns userPoolAddOnsTypeCodec
        |> Codec.field "Status" .status statusTypeCodec
        |> Codec.field "SmsVerificationMessage" .smsVerificationMessage smsVerificationMessageTypeCodec
        |> Codec.field "SmsConfigurationFailure" .smsConfigurationFailure Codec.string
        |> Codec.field "SmsConfiguration" .smsConfiguration smsConfigurationTypeCodec
        |> Codec.field "SmsAuthenticationMessage" .smsAuthenticationMessage smsVerificationMessageTypeCodec
        |> Codec.field "SchemaAttributes" .schemaAttributes schemaAttributesListTypeCodec
        |> Codec.field "Policies" .policies userPoolPolicyTypeCodec
        |> Codec.field "Name" .name userPoolNameTypeCodec
        |> Codec.field "MfaConfiguration" .mfaConfiguration userPoolMfaTypeCodec
        |> Codec.field "LastModifiedDate" .lastModifiedDate dateTypeCodec
        |> Codec.field "LambdaConfig" .lambdaConfig lambdaConfigTypeCodec
        |> Codec.field "Id" .id userPoolIdTypeCodec
        |> Codec.field "EstimatedNumberOfUsers" .estimatedNumberOfUsers Codec.int
        |> Codec.field "EmailVerificationSubject" .emailVerificationSubject emailVerificationSubjectTypeCodec
        |> Codec.field "EmailVerificationMessage" .emailVerificationMessage emailVerificationMessageTypeCodec
        |> Codec.field "EmailConfigurationFailure" .emailConfigurationFailure Codec.string
        |> Codec.field "EmailConfiguration" .emailConfiguration emailConfigurationTypeCodec
        |> Codec.field "Domain" .domain domainTypeCodec
        |> Codec.field "DeviceConfiguration" .deviceConfiguration deviceConfigurationTypeCodec
        |> Codec.field "CustomDomain" .customDomain domainTypeCodec
        |> Codec.field "CreationDate" .creationDate dateTypeCodec
        |> Codec.field "AutoVerifiedAttributes" .autoVerifiedAttributes verifiedAttributesListTypeCodec
        |> Codec.field "Arn" .arn arnTypeCodec
        |> Codec.field "AliasAttributes" .aliasAttributes aliasAttributesListTypeCodec
        |> Codec.field "AdminCreateUserConfig" .adminCreateUserConfig adminCreateUserConfigTypeCodec
        |> Codec.buildObject


{-| Codec for UserPoolTagsType.
-}
userPoolTagsTypeCodec : Codec UserPoolTagsType
userPoolTagsTypeCodec =
    Codec.build
        (Refined.dictEncoder tagKeysType (Codec.encoder tagValueTypeCodec))
        (Refined.dictDecoder tagKeysType (Codec.decoder tagValueTypeCodec))


{-| Codec for UserPoolTagsListType.
-}
userPoolTagsListTypeCodec : Codec UserPoolTagsListType
userPoolTagsListTypeCodec =
    Codec.list tagKeysTypeCodec


{-| Codec for UserPoolPolicyType.
-}
userPoolPolicyTypeCodec : Codec UserPoolPolicyType
userPoolPolicyTypeCodec =
    Codec.object UserPoolPolicyType
        |> Codec.field "PasswordPolicy" .passwordPolicy passwordPolicyTypeCodec
        |> Codec.buildObject


{-| Codec for UserPoolNameType.
-}
userPoolNameTypeCodec : Codec UserPoolNameType
userPoolNameTypeCodec =
    Codec.build (Refined.encoder userPoolNameType) (Refined.decoder userPoolNameType)


{-| Codec for UserPoolMfaType.
-}
userPoolMfaTypeCodec : Codec UserPoolMfaType
userPoolMfaTypeCodec =
    Codec.build (Enum.encoder userPoolMfaType) (Enum.decoder userPoolMfaType)


{-| Codec for UserPoolListType.
-}
userPoolListTypeCodec : Codec UserPoolListType
userPoolListTypeCodec =
    Codec.list userPoolDescriptionTypeCodec


{-| Codec for UserPoolIdType.
-}
userPoolIdTypeCodec : Codec UserPoolIdType
userPoolIdTypeCodec =
    Codec.build (Refined.encoder userPoolIdType) (Refined.decoder userPoolIdType)


{-| Codec for UserPoolDescriptionType.
-}
userPoolDescriptionTypeCodec : Codec UserPoolDescriptionType
userPoolDescriptionTypeCodec =
    Codec.object UserPoolDescriptionType
        |> Codec.field "Status" .status statusTypeCodec
        |> Codec.field "Name" .name userPoolNameTypeCodec
        |> Codec.field "LastModifiedDate" .lastModifiedDate dateTypeCodec
        |> Codec.field "LambdaConfig" .lambdaConfig lambdaConfigTypeCodec
        |> Codec.field "Id" .id userPoolIdTypeCodec
        |> Codec.field "CreationDate" .creationDate dateTypeCodec
        |> Codec.buildObject


{-| Codec for UserPoolClientType.
-}
userPoolClientTypeCodec : Codec UserPoolClientType
userPoolClientTypeCodec =
    Codec.object UserPoolClientType
        |> Codec.field "WriteAttributes" .writeAttributes clientPermissionListTypeCodec
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "SupportedIdentityProviders" .supportedIdentityProviders supportedIdentityProvidersListTypeCodec
        |> Codec.field "RefreshTokenValidity" .refreshTokenValidity refreshTokenValidityTypeCodec
        |> Codec.field "ReadAttributes" .readAttributes clientPermissionListTypeCodec
        |> Codec.field "LogoutURLs" .logoutUrls logoutUrlsListTypeCodec
        |> Codec.field "LastModifiedDate" .lastModifiedDate dateTypeCodec
        |> Codec.field "ExplicitAuthFlows" .explicitAuthFlows explicitAuthFlowsListTypeCodec
        |> Codec.field "DefaultRedirectURI" .defaultRedirectUri redirectUrlTypeCodec
        |> Codec.field "CreationDate" .creationDate dateTypeCodec
        |> Codec.field "ClientSecret" .clientSecret clientSecretTypeCodec
        |> Codec.field "ClientName" .clientName clientNameTypeCodec
        |> Codec.field "ClientId" .clientId clientIdTypeCodec
        |> Codec.field "CallbackURLs" .callbackUrls callbackUrlsListTypeCodec
        |> Codec.field "AnalyticsConfiguration" .analyticsConfiguration analyticsConfigurationTypeCodec
        |> Codec.field "AllowedOAuthScopes" .allowedOauthScopes scopeListTypeCodec
        |> Codec.field "AllowedOAuthFlowsUserPoolClient" .allowedOauthFlowsUserPoolClient Codec.bool
        |> Codec.field "AllowedOAuthFlows" .allowedOauthFlows oauthFlowsTypeCodec
        |> Codec.buildObject


{-| Codec for UserPoolClientListType.
-}
userPoolClientListTypeCodec : Codec UserPoolClientListType
userPoolClientListTypeCodec =
    Codec.list userPoolClientDescriptionCodec


{-| Codec for UserPoolClientDescription.
-}
userPoolClientDescriptionCodec : Codec UserPoolClientDescription
userPoolClientDescriptionCodec =
    Codec.object UserPoolClientDescription
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "ClientName" .clientName clientNameTypeCodec
        |> Codec.field "ClientId" .clientId clientIdTypeCodec
        |> Codec.buildObject


{-| Codec for UserPoolAddOnsType.
-}
userPoolAddOnsTypeCodec : Codec UserPoolAddOnsType
userPoolAddOnsTypeCodec =
    Codec.object UserPoolAddOnsType
        |> Codec.field "AdvancedSecurityMode" .advancedSecurityMode advancedSecurityModeTypeCodec
        |> Codec.buildObject


{-| Codec for UserMfasettingListType.
-}
userMfasettingListTypeCodec : Codec UserMfasettingListType
userMfasettingListTypeCodec =
    Codec.list Codec.string


{-| Codec for UserImportJobsListType.
-}
userImportJobsListTypeCodec : Codec UserImportJobsListType
userImportJobsListTypeCodec =
    Codec.list userImportJobTypeCodec


{-| Codec for UserImportJobType.
-}
userImportJobTypeCodec : Codec UserImportJobType
userImportJobTypeCodec =
    Codec.object UserImportJobType
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "Status" .status userImportJobStatusTypeCodec
        |> Codec.field "StartDate" .startDate dateTypeCodec
        |> Codec.field "SkippedUsers" .skippedUsers Codec.int
        |> Codec.field "PreSignedUrl" .preSignedUrl preSignedUrlTypeCodec
        |> Codec.field "JobName" .jobName userImportJobNameTypeCodec
        |> Codec.field "JobId" .jobId userImportJobIdTypeCodec
        |> Codec.field "ImportedUsers" .importedUsers Codec.int
        |> Codec.field "FailedUsers" .failedUsers Codec.int
        |> Codec.field "CreationDate" .creationDate dateTypeCodec
        |> Codec.field "CompletionMessage" .completionMessage completionMessageTypeCodec
        |> Codec.field "CompletionDate" .completionDate dateTypeCodec
        |> Codec.field "CloudWatchLogsRoleArn" .cloudWatchLogsRoleArn arnTypeCodec
        |> Codec.buildObject


{-| Codec for UserImportJobStatusType.
-}
userImportJobStatusTypeCodec : Codec UserImportJobStatusType
userImportJobStatusTypeCodec =
    Codec.build (Enum.encoder userImportJobStatusType) (Enum.decoder userImportJobStatusType)


{-| Codec for UserImportJobNameType.
-}
userImportJobNameTypeCodec : Codec UserImportJobNameType
userImportJobNameTypeCodec =
    Codec.build (Refined.encoder userImportJobNameType) (Refined.decoder userImportJobNameType)


{-| Codec for UserImportJobIdType.
-}
userImportJobIdTypeCodec : Codec UserImportJobIdType
userImportJobIdTypeCodec =
    Codec.build (Refined.encoder userImportJobIdType) (Refined.decoder userImportJobIdType)


{-| Codec for UserFilterType.
-}
userFilterTypeCodec : Codec UserFilterType
userFilterTypeCodec =
    Codec.build (Refined.encoder userFilterType) (Refined.decoder userFilterType)


{-| Codec for UserContextDataType.
-}
userContextDataTypeCodec : Codec UserContextDataType
userContextDataTypeCodec =
    Codec.object UserContextDataType |> Codec.field "EncodedData" .encodedData Codec.string |> Codec.buildObject


{-| Codec for UpdateUserPoolResponse.
-}
updateUserPoolResponseCodec : Codec UpdateUserPoolResponse
updateUserPoolResponseCodec =
    Codec.object UpdateUserPoolResponse |> Codec.buildObject


{-| Codec for UpdateUserPoolRequest.
-}
updateUserPoolRequestCodec : Codec UpdateUserPoolRequest
updateUserPoolRequestCodec =
    Codec.object UpdateUserPoolRequest
        |> Codec.field "VerificationMessageTemplate" .verificationMessageTemplate verificationMessageTemplateTypeCodec
        |> Codec.field "UserPoolTags" .userPoolTags userPoolTagsTypeCodec
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "UserPoolAddOns" .userPoolAddOns userPoolAddOnsTypeCodec
        |> Codec.field "SmsVerificationMessage" .smsVerificationMessage smsVerificationMessageTypeCodec
        |> Codec.field "SmsConfiguration" .smsConfiguration smsConfigurationTypeCodec
        |> Codec.field "SmsAuthenticationMessage" .smsAuthenticationMessage smsVerificationMessageTypeCodec
        |> Codec.field "Policies" .policies userPoolPolicyTypeCodec
        |> Codec.field "MfaConfiguration" .mfaConfiguration userPoolMfaTypeCodec
        |> Codec.field "LambdaConfig" .lambdaConfig lambdaConfigTypeCodec
        |> Codec.field "EmailVerificationSubject" .emailVerificationSubject emailVerificationSubjectTypeCodec
        |> Codec.field "EmailVerificationMessage" .emailVerificationMessage emailVerificationMessageTypeCodec
        |> Codec.field "EmailConfiguration" .emailConfiguration emailConfigurationTypeCodec
        |> Codec.field "DeviceConfiguration" .deviceConfiguration deviceConfigurationTypeCodec
        |> Codec.field "AutoVerifiedAttributes" .autoVerifiedAttributes verifiedAttributesListTypeCodec
        |> Codec.field "AdminCreateUserConfig" .adminCreateUserConfig adminCreateUserConfigTypeCodec
        |> Codec.buildObject


{-| Codec for UpdateUserPoolDomainResponse.
-}
updateUserPoolDomainResponseCodec : Codec UpdateUserPoolDomainResponse
updateUserPoolDomainResponseCodec =
    Codec.object UpdateUserPoolDomainResponse
        |> Codec.field "CloudFrontDomain" .cloudFrontDomain domainTypeCodec
        |> Codec.buildObject


{-| Codec for UpdateUserPoolDomainRequest.
-}
updateUserPoolDomainRequestCodec : Codec UpdateUserPoolDomainRequest
updateUserPoolDomainRequestCodec =
    Codec.object UpdateUserPoolDomainRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "Domain" .domain domainTypeCodec
        |> Codec.field "CustomDomainConfig" .customDomainConfig customDomainConfigTypeCodec
        |> Codec.buildObject


{-| Codec for UpdateUserPoolClientResponse.
-}
updateUserPoolClientResponseCodec : Codec UpdateUserPoolClientResponse
updateUserPoolClientResponseCodec =
    Codec.object UpdateUserPoolClientResponse
        |> Codec.field "UserPoolClient" .userPoolClient userPoolClientTypeCodec
        |> Codec.buildObject


{-| Codec for UpdateUserPoolClientRequest.
-}
updateUserPoolClientRequestCodec : Codec UpdateUserPoolClientRequest
updateUserPoolClientRequestCodec =
    Codec.object UpdateUserPoolClientRequest
        |> Codec.field "WriteAttributes" .writeAttributes clientPermissionListTypeCodec
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "SupportedIdentityProviders" .supportedIdentityProviders supportedIdentityProvidersListTypeCodec
        |> Codec.field "RefreshTokenValidity" .refreshTokenValidity refreshTokenValidityTypeCodec
        |> Codec.field "ReadAttributes" .readAttributes clientPermissionListTypeCodec
        |> Codec.field "LogoutURLs" .logoutUrls logoutUrlsListTypeCodec
        |> Codec.field "ExplicitAuthFlows" .explicitAuthFlows explicitAuthFlowsListTypeCodec
        |> Codec.field "DefaultRedirectURI" .defaultRedirectUri redirectUrlTypeCodec
        |> Codec.field "ClientName" .clientName clientNameTypeCodec
        |> Codec.field "ClientId" .clientId clientIdTypeCodec
        |> Codec.field "CallbackURLs" .callbackUrls callbackUrlsListTypeCodec
        |> Codec.field "AnalyticsConfiguration" .analyticsConfiguration analyticsConfigurationTypeCodec
        |> Codec.field "AllowedOAuthScopes" .allowedOauthScopes scopeListTypeCodec
        |> Codec.field "AllowedOAuthFlowsUserPoolClient" .allowedOauthFlowsUserPoolClient Codec.bool
        |> Codec.field "AllowedOAuthFlows" .allowedOauthFlows oauthFlowsTypeCodec
        |> Codec.buildObject


{-| Codec for UpdateUserAttributesResponse.
-}
updateUserAttributesResponseCodec : Codec UpdateUserAttributesResponse
updateUserAttributesResponseCodec =
    Codec.object UpdateUserAttributesResponse
        |> Codec.field "CodeDeliveryDetailsList" .codeDeliveryDetailsList codeDeliveryDetailsListTypeCodec
        |> Codec.buildObject


{-| Codec for UpdateUserAttributesRequest.
-}
updateUserAttributesRequestCodec : Codec UpdateUserAttributesRequest
updateUserAttributesRequestCodec =
    Codec.object UpdateUserAttributesRequest
        |> Codec.field "UserAttributes" .userAttributes attributeListTypeCodec
        |> Codec.field "AccessToken" .accessToken tokenModelTypeCodec
        |> Codec.buildObject


{-| Codec for UpdateResourceServerResponse.
-}
updateResourceServerResponseCodec : Codec UpdateResourceServerResponse
updateResourceServerResponseCodec =
    Codec.object UpdateResourceServerResponse
        |> Codec.field "ResourceServer" .resourceServer resourceServerTypeCodec
        |> Codec.buildObject


{-| Codec for UpdateResourceServerRequest.
-}
updateResourceServerRequestCodec : Codec UpdateResourceServerRequest
updateResourceServerRequestCodec =
    Codec.object UpdateResourceServerRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "Scopes" .scopes resourceServerScopeListTypeCodec
        |> Codec.field "Name" .name resourceServerNameTypeCodec
        |> Codec.field "Identifier" .identifier resourceServerIdentifierTypeCodec
        |> Codec.buildObject


{-| Codec for UpdateIdentityProviderResponse.
-}
updateIdentityProviderResponseCodec : Codec UpdateIdentityProviderResponse
updateIdentityProviderResponseCodec =
    Codec.object UpdateIdentityProviderResponse
        |> Codec.field "IdentityProvider" .identityProvider identityProviderTypeCodec
        |> Codec.buildObject


{-| Codec for UpdateIdentityProviderRequest.
-}
updateIdentityProviderRequestCodec : Codec UpdateIdentityProviderRequest
updateIdentityProviderRequestCodec =
    Codec.object UpdateIdentityProviderRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "ProviderName" .providerName providerNameTypeCodec
        |> Codec.field "ProviderDetails" .providerDetails providerDetailsTypeCodec
        |> Codec.field "IdpIdentifiers" .idpIdentifiers idpIdentifiersListTypeCodec
        |> Codec.field "AttributeMapping" .attributeMapping attributeMappingTypeCodec
        |> Codec.buildObject


{-| Codec for UpdateGroupResponse.
-}
updateGroupResponseCodec : Codec UpdateGroupResponse
updateGroupResponseCodec =
    Codec.object UpdateGroupResponse |> Codec.field "Group" .group groupTypeCodec |> Codec.buildObject


{-| Codec for UpdateGroupRequest.
-}
updateGroupRequestCodec : Codec UpdateGroupRequest
updateGroupRequestCodec =
    Codec.object UpdateGroupRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "RoleArn" .roleArn arnTypeCodec
        |> Codec.field "Precedence" .precedence precedenceTypeCodec
        |> Codec.field "GroupName" .groupName groupNameTypeCodec
        |> Codec.field "Description" .description descriptionTypeCodec
        |> Codec.buildObject


{-| Codec for UpdateDeviceStatusResponse.
-}
updateDeviceStatusResponseCodec : Codec UpdateDeviceStatusResponse
updateDeviceStatusResponseCodec =
    Codec.object UpdateDeviceStatusResponse |> Codec.buildObject


{-| Codec for UpdateDeviceStatusRequest.
-}
updateDeviceStatusRequestCodec : Codec UpdateDeviceStatusRequest
updateDeviceStatusRequestCodec =
    Codec.object UpdateDeviceStatusRequest
        |> Codec.field "DeviceRememberedStatus" .deviceRememberedStatus deviceRememberedStatusTypeCodec
        |> Codec.field "DeviceKey" .deviceKey deviceKeyTypeCodec
        |> Codec.field "AccessToken" .accessToken tokenModelTypeCodec
        |> Codec.buildObject


{-| Codec for UpdateAuthEventFeedbackResponse.
-}
updateAuthEventFeedbackResponseCodec : Codec UpdateAuthEventFeedbackResponse
updateAuthEventFeedbackResponseCodec =
    Codec.object UpdateAuthEventFeedbackResponse |> Codec.buildObject


{-| Codec for UpdateAuthEventFeedbackRequest.
-}
updateAuthEventFeedbackRequestCodec : Codec UpdateAuthEventFeedbackRequest
updateAuthEventFeedbackRequestCodec =
    Codec.object UpdateAuthEventFeedbackRequest
        |> Codec.field "Username" .username usernameTypeCodec
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "FeedbackValue" .feedbackValue feedbackValueTypeCodec
        |> Codec.field "FeedbackToken" .feedbackToken tokenModelTypeCodec
        |> Codec.field "EventId" .eventId eventIdTypeCodec
        |> Codec.buildObject


{-| Codec for UntagResourceResponse.
-}
untagResourceResponseCodec : Codec UntagResourceResponse
untagResourceResponseCodec =
    Codec.object UntagResourceResponse |> Codec.buildObject


{-| Codec for UntagResourceRequest.
-}
untagResourceRequestCodec : Codec UntagResourceRequest
untagResourceRequestCodec =
    Codec.object UntagResourceRequest
        |> Codec.field "TagKeys" .tagKeys userPoolTagsListTypeCodec
        |> Codec.field "ResourceArn" .resourceArn arnTypeCodec
        |> Codec.buildObject


{-| Codec for UicustomizationType.
-}
uicustomizationTypeCodec : Codec UicustomizationType
uicustomizationTypeCodec =
    Codec.object UicustomizationType
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "LastModifiedDate" .lastModifiedDate dateTypeCodec
        |> Codec.field "ImageUrl" .imageUrl Codec.string
        |> Codec.field "CreationDate" .creationDate dateTypeCodec
        |> Codec.field "ClientId" .clientId clientIdTypeCodec
        |> Codec.field "CSSVersion" .cssversion Codec.string
        |> Codec.field "CSS" .css Codec.string
        |> Codec.buildObject


{-| Codec for TokenModelType.
-}
tokenModelTypeCodec : Codec TokenModelType
tokenModelTypeCodec =
    Codec.build (Refined.encoder tokenModelType) (Refined.decoder tokenModelType)


{-| Codec for TemporaryPasswordValidityDaysType.
-}
temporaryPasswordValidityDaysTypeCodec : Codec TemporaryPasswordValidityDaysType
temporaryPasswordValidityDaysTypeCodec =
    Codec.build (Refined.encoder temporaryPasswordValidityDaysType) (Refined.decoder temporaryPasswordValidityDaysType)


{-| Codec for TagValueType.
-}
tagValueTypeCodec : Codec TagValueType
tagValueTypeCodec =
    Codec.build (Refined.encoder tagValueType) (Refined.decoder tagValueType)


{-| Codec for TagResourceResponse.
-}
tagResourceResponseCodec : Codec TagResourceResponse
tagResourceResponseCodec =
    Codec.object TagResourceResponse |> Codec.buildObject


{-| Codec for TagResourceRequest.
-}
tagResourceRequestCodec : Codec TagResourceRequest
tagResourceRequestCodec =
    Codec.object TagResourceRequest
        |> Codec.field "Tags" .tags userPoolTagsTypeCodec
        |> Codec.field "ResourceArn" .resourceArn arnTypeCodec
        |> Codec.buildObject


{-| Codec for TagKeysType.
-}
tagKeysTypeCodec : Codec TagKeysType
tagKeysTypeCodec =
    Codec.build (Refined.encoder tagKeysType) (Refined.decoder tagKeysType)


{-| Codec for SupportedIdentityProvidersListType.
-}
supportedIdentityProvidersListTypeCodec : Codec SupportedIdentityProvidersListType
supportedIdentityProvidersListTypeCodec =
    Codec.list providerNameTypeCodec


{-| Codec for StringType.
-}
stringTypeCodec : Codec StringType
stringTypeCodec =
    Codec.string


{-| Codec for StringAttributeConstraintsType.
-}
stringAttributeConstraintsTypeCodec : Codec StringAttributeConstraintsType
stringAttributeConstraintsTypeCodec =
    Codec.object StringAttributeConstraintsType
        |> Codec.field "MinLength" .minLength Codec.string
        |> Codec.field "MaxLength" .maxLength Codec.string
        |> Codec.buildObject


{-| Codec for StopUserImportJobResponse.
-}
stopUserImportJobResponseCodec : Codec StopUserImportJobResponse
stopUserImportJobResponseCodec =
    Codec.object StopUserImportJobResponse
        |> Codec.field "UserImportJob" .userImportJob userImportJobTypeCodec
        |> Codec.buildObject


{-| Codec for StopUserImportJobRequest.
-}
stopUserImportJobRequestCodec : Codec StopUserImportJobRequest
stopUserImportJobRequestCodec =
    Codec.object StopUserImportJobRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "JobId" .jobId userImportJobIdTypeCodec
        |> Codec.buildObject


{-| Codec for StatusType.
-}
statusTypeCodec : Codec StatusType
statusTypeCodec =
    Codec.build (Enum.encoder statusType) (Enum.decoder statusType)


{-| Codec for StartUserImportJobResponse.
-}
startUserImportJobResponseCodec : Codec StartUserImportJobResponse
startUserImportJobResponseCodec =
    Codec.object StartUserImportJobResponse
        |> Codec.field "UserImportJob" .userImportJob userImportJobTypeCodec
        |> Codec.buildObject


{-| Codec for StartUserImportJobRequest.
-}
startUserImportJobRequestCodec : Codec StartUserImportJobRequest
startUserImportJobRequestCodec =
    Codec.object StartUserImportJobRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "JobId" .jobId userImportJobIdTypeCodec
        |> Codec.buildObject


{-| Codec for SoftwareTokenMfaSettingsType.
-}
softwareTokenMfaSettingsTypeCodec : Codec SoftwareTokenMfaSettingsType
softwareTokenMfaSettingsTypeCodec =
    Codec.object SoftwareTokenMfaSettingsType
        |> Codec.field "PreferredMfa" .preferredMfa Codec.bool
        |> Codec.field "Enabled" .enabled Codec.bool
        |> Codec.buildObject


{-| Codec for SoftwareTokenMfaConfigType.
-}
softwareTokenMfaConfigTypeCodec : Codec SoftwareTokenMfaConfigType
softwareTokenMfaConfigTypeCodec =
    Codec.object SoftwareTokenMfaConfigType |> Codec.field "Enabled" .enabled Codec.bool |> Codec.buildObject


{-| Codec for SoftwareTokenMfauserCodeType.
-}
softwareTokenMfauserCodeTypeCodec : Codec SoftwareTokenMfauserCodeType
softwareTokenMfauserCodeTypeCodec =
    Codec.build (Refined.encoder softwareTokenMfauserCodeType) (Refined.decoder softwareTokenMfauserCodeType)


{-| Codec for SmsVerificationMessageType.
-}
smsVerificationMessageTypeCodec : Codec SmsVerificationMessageType
smsVerificationMessageTypeCodec =
    Codec.build (Refined.encoder smsVerificationMessageType) (Refined.decoder smsVerificationMessageType)


{-| Codec for SmsMfaConfigType.
-}
smsMfaConfigTypeCodec : Codec SmsMfaConfigType
smsMfaConfigTypeCodec =
    Codec.object SmsMfaConfigType
        |> Codec.field "SmsConfiguration" .smsConfiguration smsConfigurationTypeCodec
        |> Codec.field "SmsAuthenticationMessage" .smsAuthenticationMessage smsVerificationMessageTypeCodec
        |> Codec.buildObject


{-| Codec for SmsConfigurationType.
-}
smsConfigurationTypeCodec : Codec SmsConfigurationType
smsConfigurationTypeCodec =
    Codec.object SmsConfigurationType
        |> Codec.field "SnsCallerArn" .snsCallerArn arnTypeCodec
        |> Codec.field "ExternalId" .externalId Codec.string
        |> Codec.buildObject


{-| Codec for SkippedIprangeListType.
-}
skippedIprangeListTypeCodec : Codec SkippedIprangeListType
skippedIprangeListTypeCodec =
    Codec.list Codec.string


{-| Codec for SignUpResponse.
-}
signUpResponseCodec : Codec SignUpResponse
signUpResponseCodec =
    Codec.object SignUpResponse
        |> Codec.field "UserSub" .userSub Codec.string
        |> Codec.field "UserConfirmed" .userConfirmed Codec.bool
        |> Codec.field "CodeDeliveryDetails" .codeDeliveryDetails codeDeliveryDetailsTypeCodec
        |> Codec.buildObject


{-| Codec for SignUpRequest.
-}
signUpRequestCodec : Codec SignUpRequest
signUpRequestCodec =
    Codec.object SignUpRequest
        |> Codec.field "ValidationData" .validationData attributeListTypeCodec
        |> Codec.field "Username" .username usernameTypeCodec
        |> Codec.field "UserContextData" .userContextData userContextDataTypeCodec
        |> Codec.field "UserAttributes" .userAttributes attributeListTypeCodec
        |> Codec.field "SecretHash" .secretHash secretHashTypeCodec
        |> Codec.field "Password" .password passwordTypeCodec
        |> Codec.field "ClientId" .clientId clientIdTypeCodec
        |> Codec.field "AnalyticsMetadata" .analyticsMetadata analyticsMetadataTypeCodec
        |> Codec.buildObject


{-| Codec for SetUserSettingsResponse.
-}
setUserSettingsResponseCodec : Codec SetUserSettingsResponse
setUserSettingsResponseCodec =
    Codec.object SetUserSettingsResponse |> Codec.buildObject


{-| Codec for SetUserSettingsRequest.
-}
setUserSettingsRequestCodec : Codec SetUserSettingsRequest
setUserSettingsRequestCodec =
    Codec.object SetUserSettingsRequest
        |> Codec.field "MFAOptions" .mfaoptions mfaoptionListTypeCodec
        |> Codec.field "AccessToken" .accessToken tokenModelTypeCodec
        |> Codec.buildObject


{-| Codec for SetUserPoolMfaConfigResponse.
-}
setUserPoolMfaConfigResponseCodec : Codec SetUserPoolMfaConfigResponse
setUserPoolMfaConfigResponseCodec =
    Codec.object SetUserPoolMfaConfigResponse
        |> Codec.field "SoftwareTokenMfaConfiguration" .softwareTokenMfaConfiguration softwareTokenMfaConfigTypeCodec
        |> Codec.field "SmsMfaConfiguration" .smsMfaConfiguration smsMfaConfigTypeCodec
        |> Codec.field "MfaConfiguration" .mfaConfiguration userPoolMfaTypeCodec
        |> Codec.buildObject


{-| Codec for SetUserPoolMfaConfigRequest.
-}
setUserPoolMfaConfigRequestCodec : Codec SetUserPoolMfaConfigRequest
setUserPoolMfaConfigRequestCodec =
    Codec.object SetUserPoolMfaConfigRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "SoftwareTokenMfaConfiguration" .softwareTokenMfaConfiguration softwareTokenMfaConfigTypeCodec
        |> Codec.field "SmsMfaConfiguration" .smsMfaConfiguration smsMfaConfigTypeCodec
        |> Codec.field "MfaConfiguration" .mfaConfiguration userPoolMfaTypeCodec
        |> Codec.buildObject


{-| Codec for SetUserMfapreferenceResponse.
-}
setUserMfapreferenceResponseCodec : Codec SetUserMfapreferenceResponse
setUserMfapreferenceResponseCodec =
    Codec.object SetUserMfapreferenceResponse |> Codec.buildObject


{-| Codec for SetUserMfapreferenceRequest.
-}
setUserMfapreferenceRequestCodec : Codec SetUserMfapreferenceRequest
setUserMfapreferenceRequestCodec =
    Codec.object SetUserMfapreferenceRequest
        |> Codec.field "SoftwareTokenMfaSettings" .softwareTokenMfaSettings softwareTokenMfaSettingsTypeCodec
        |> Codec.field "SMSMfaSettings" .smsmfaSettings smsmfaSettingsTypeCodec
        |> Codec.field "AccessToken" .accessToken tokenModelTypeCodec
        |> Codec.buildObject


{-| Codec for SetUicustomizationResponse.
-}
setUicustomizationResponseCodec : Codec SetUicustomizationResponse
setUicustomizationResponseCodec =
    Codec.object SetUicustomizationResponse
        |> Codec.field "UICustomization" .uicustomization uicustomizationTypeCodec
        |> Codec.buildObject


{-| Codec for SetUicustomizationRequest.
-}
setUicustomizationRequestCodec : Codec SetUicustomizationRequest
setUicustomizationRequestCodec =
    Codec.object SetUicustomizationRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "ImageFile" .imageFile Codec.string
        |> Codec.field "ClientId" .clientId clientIdTypeCodec
        |> Codec.field "CSS" .css Codec.string
        |> Codec.buildObject


{-| Codec for SetRiskConfigurationResponse.
-}
setRiskConfigurationResponseCodec : Codec SetRiskConfigurationResponse
setRiskConfigurationResponseCodec =
    Codec.object SetRiskConfigurationResponse
        |> Codec.field "RiskConfiguration" .riskConfiguration riskConfigurationTypeCodec
        |> Codec.buildObject


{-| Codec for SetRiskConfigurationRequest.
-}
setRiskConfigurationRequestCodec : Codec SetRiskConfigurationRequest
setRiskConfigurationRequestCodec =
    Codec.object SetRiskConfigurationRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "RiskExceptionConfiguration" .riskExceptionConfiguration riskExceptionConfigurationTypeCodec
        |> Codec.field
            "CompromisedCredentialsRiskConfiguration"
            .compromisedCredentialsRiskConfiguration
            compromisedCredentialsRiskConfigurationTypeCodec
        |> Codec.field "ClientId" .clientId clientIdTypeCodec
        |> Codec.field
            "AccountTakeoverRiskConfiguration"
            .accountTakeoverRiskConfiguration
            accountTakeoverRiskConfigurationTypeCodec
        |> Codec.buildObject


{-| Codec for SessionType.
-}
sessionTypeCodec : Codec SessionType
sessionTypeCodec =
    Codec.build (Refined.encoder sessionType) (Refined.decoder sessionType)


{-| Codec for SecretHashType.
-}
secretHashTypeCodec : Codec SecretHashType
secretHashTypeCodec =
    Codec.build (Refined.encoder secretHashType) (Refined.decoder secretHashType)


{-| Codec for SecretCodeType.
-}
secretCodeTypeCodec : Codec SecretCodeType
secretCodeTypeCodec =
    Codec.build (Refined.encoder secretCodeType) (Refined.decoder secretCodeType)


{-| Codec for SearchedAttributeNamesListType.
-}
searchedAttributeNamesListTypeCodec : Codec SearchedAttributeNamesListType
searchedAttributeNamesListTypeCodec =
    Codec.list attributeNameTypeCodec


{-| Codec for SearchPaginationTokenType.
-}
searchPaginationTokenTypeCodec : Codec SearchPaginationTokenType
searchPaginationTokenTypeCodec =
    Codec.build (Refined.encoder searchPaginationTokenType) (Refined.decoder searchPaginationTokenType)


{-| Codec for ScopeType.
-}
scopeTypeCodec : Codec ScopeType
scopeTypeCodec =
    Codec.build (Refined.encoder scopeType) (Refined.decoder scopeType)


{-| Codec for ScopeListType.
-}
scopeListTypeCodec : Codec ScopeListType
scopeListTypeCodec =
    Codec.list scopeTypeCodec


{-| Codec for SchemaAttributesListType.
-}
schemaAttributesListTypeCodec : Codec SchemaAttributesListType
schemaAttributesListTypeCodec =
    Codec.list schemaAttributeTypeCodec


{-| Codec for SchemaAttributeType.
-}
schemaAttributeTypeCodec : Codec SchemaAttributeType
schemaAttributeTypeCodec =
    Codec.object SchemaAttributeType
        |> Codec.field "StringAttributeConstraints" .stringAttributeConstraints stringAttributeConstraintsTypeCodec
        |> Codec.field "Required" .required Codec.bool
        |> Codec.field "NumberAttributeConstraints" .numberAttributeConstraints numberAttributeConstraintsTypeCodec
        |> Codec.field "Name" .name customAttributeNameTypeCodec
        |> Codec.field "Mutable" .mutable Codec.bool
        |> Codec.field "DeveloperOnlyAttribute" .developerOnlyAttribute Codec.bool
        |> Codec.field "AttributeDataType" .attributeDataType attributeDataTypeCodec
        |> Codec.buildObject


{-| Codec for SmsmfaSettingsType.
-}
smsmfaSettingsTypeCodec : Codec SmsmfaSettingsType
smsmfaSettingsTypeCodec =
    Codec.object SmsmfaSettingsType
        |> Codec.field "PreferredMfa" .preferredMfa Codec.bool
        |> Codec.field "Enabled" .enabled Codec.bool
        |> Codec.buildObject


{-| Codec for S3BucketType.
-}
s3BucketTypeCodec : Codec S3BucketType
s3BucketTypeCodec =
    Codec.build (Refined.encoder s3BucketType) (Refined.decoder s3BucketType)


{-| Codec for RiskLevelType.
-}
riskLevelTypeCodec : Codec RiskLevelType
riskLevelTypeCodec =
    Codec.build (Enum.encoder riskLevelType) (Enum.decoder riskLevelType)


{-| Codec for RiskExceptionConfigurationType.
-}
riskExceptionConfigurationTypeCodec : Codec RiskExceptionConfigurationType
riskExceptionConfigurationTypeCodec =
    Codec.object RiskExceptionConfigurationType
        |> Codec.field "SkippedIPRangeList" .skippedIprangeList skippedIprangeListTypeCodec
        |> Codec.field "BlockedIPRangeList" .blockedIprangeList blockedIprangeListTypeCodec
        |> Codec.buildObject


{-| Codec for RiskDecisionType.
-}
riskDecisionTypeCodec : Codec RiskDecisionType
riskDecisionTypeCodec =
    Codec.build (Enum.encoder riskDecisionType) (Enum.decoder riskDecisionType)


{-| Codec for RiskConfigurationType.
-}
riskConfigurationTypeCodec : Codec RiskConfigurationType
riskConfigurationTypeCodec =
    Codec.object RiskConfigurationType
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "RiskExceptionConfiguration" .riskExceptionConfiguration riskExceptionConfigurationTypeCodec
        |> Codec.field "LastModifiedDate" .lastModifiedDate dateTypeCodec
        |> Codec.field
            "CompromisedCredentialsRiskConfiguration"
            .compromisedCredentialsRiskConfiguration
            compromisedCredentialsRiskConfigurationTypeCodec
        |> Codec.field "ClientId" .clientId clientIdTypeCodec
        |> Codec.field
            "AccountTakeoverRiskConfiguration"
            .accountTakeoverRiskConfiguration
            accountTakeoverRiskConfigurationTypeCodec
        |> Codec.buildObject


{-| Codec for RespondToAuthChallengeResponse.
-}
respondToAuthChallengeResponseCodec : Codec RespondToAuthChallengeResponse
respondToAuthChallengeResponseCodec =
    Codec.object RespondToAuthChallengeResponse
        |> Codec.field "Session" .session sessionTypeCodec
        |> Codec.field "ChallengeParameters" .challengeParameters challengeParametersTypeCodec
        |> Codec.field "ChallengeName" .challengeName challengeNameTypeCodec
        |> Codec.field "AuthenticationResult" .authenticationResult authenticationResultTypeCodec
        |> Codec.buildObject


{-| Codec for RespondToAuthChallengeRequest.
-}
respondToAuthChallengeRequestCodec : Codec RespondToAuthChallengeRequest
respondToAuthChallengeRequestCodec =
    Codec.object RespondToAuthChallengeRequest
        |> Codec.field "UserContextData" .userContextData userContextDataTypeCodec
        |> Codec.field "Session" .session sessionTypeCodec
        |> Codec.field "ClientId" .clientId clientIdTypeCodec
        |> Codec.field "ChallengeResponses" .challengeResponses challengeResponsesTypeCodec
        |> Codec.field "ChallengeName" .challengeName challengeNameTypeCodec
        |> Codec.field "AnalyticsMetadata" .analyticsMetadata analyticsMetadataTypeCodec
        |> Codec.buildObject


{-| Codec for ResourceServersListType.
-}
resourceServersListTypeCodec : Codec ResourceServersListType
resourceServersListTypeCodec =
    Codec.list resourceServerTypeCodec


{-| Codec for ResourceServerType.
-}
resourceServerTypeCodec : Codec ResourceServerType
resourceServerTypeCodec =
    Codec.object ResourceServerType
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "Scopes" .scopes resourceServerScopeListTypeCodec
        |> Codec.field "Name" .name resourceServerNameTypeCodec
        |> Codec.field "Identifier" .identifier resourceServerIdentifierTypeCodec
        |> Codec.buildObject


{-| Codec for ResourceServerScopeType.
-}
resourceServerScopeTypeCodec : Codec ResourceServerScopeType
resourceServerScopeTypeCodec =
    Codec.object ResourceServerScopeType
        |> Codec.field "ScopeName" .scopeName resourceServerScopeNameTypeCodec
        |> Codec.field "ScopeDescription" .scopeDescription resourceServerScopeDescriptionTypeCodec
        |> Codec.buildObject


{-| Codec for ResourceServerScopeNameType.
-}
resourceServerScopeNameTypeCodec : Codec ResourceServerScopeNameType
resourceServerScopeNameTypeCodec =
    Codec.build (Refined.encoder resourceServerScopeNameType) (Refined.decoder resourceServerScopeNameType)


{-| Codec for ResourceServerScopeListType.
-}
resourceServerScopeListTypeCodec : Codec ResourceServerScopeListType
resourceServerScopeListTypeCodec =
    Codec.list resourceServerScopeTypeCodec


{-| Codec for ResourceServerScopeDescriptionType.
-}
resourceServerScopeDescriptionTypeCodec : Codec ResourceServerScopeDescriptionType
resourceServerScopeDescriptionTypeCodec =
    Codec.build
        (Refined.encoder resourceServerScopeDescriptionType)
        (Refined.decoder resourceServerScopeDescriptionType)


{-| Codec for ResourceServerNameType.
-}
resourceServerNameTypeCodec : Codec ResourceServerNameType
resourceServerNameTypeCodec =
    Codec.build (Refined.encoder resourceServerNameType) (Refined.decoder resourceServerNameType)


{-| Codec for ResourceServerIdentifierType.
-}
resourceServerIdentifierTypeCodec : Codec ResourceServerIdentifierType
resourceServerIdentifierTypeCodec =
    Codec.build (Refined.encoder resourceServerIdentifierType) (Refined.decoder resourceServerIdentifierType)


{-| Codec for ResendConfirmationCodeResponse.
-}
resendConfirmationCodeResponseCodec : Codec ResendConfirmationCodeResponse
resendConfirmationCodeResponseCodec =
    Codec.object ResendConfirmationCodeResponse
        |> Codec.field "CodeDeliveryDetails" .codeDeliveryDetails codeDeliveryDetailsTypeCodec
        |> Codec.buildObject


{-| Codec for ResendConfirmationCodeRequest.
-}
resendConfirmationCodeRequestCodec : Codec ResendConfirmationCodeRequest
resendConfirmationCodeRequestCodec =
    Codec.object ResendConfirmationCodeRequest
        |> Codec.field "Username" .username usernameTypeCodec
        |> Codec.field "UserContextData" .userContextData userContextDataTypeCodec
        |> Codec.field "SecretHash" .secretHash secretHashTypeCodec
        |> Codec.field "ClientId" .clientId clientIdTypeCodec
        |> Codec.field "AnalyticsMetadata" .analyticsMetadata analyticsMetadataTypeCodec
        |> Codec.buildObject


{-| Codec for RefreshTokenValidityType.
-}
refreshTokenValidityTypeCodec : Codec RefreshTokenValidityType
refreshTokenValidityTypeCodec =
    Codec.build (Refined.encoder refreshTokenValidityType) (Refined.decoder refreshTokenValidityType)


{-| Codec for RedirectUrlType.
-}
redirectUrlTypeCodec : Codec RedirectUrlType
redirectUrlTypeCodec =
    Codec.build (Refined.encoder redirectUrlType) (Refined.decoder redirectUrlType)


{-| Codec for QueryLimitType.
-}
queryLimitTypeCodec : Codec QueryLimitType
queryLimitTypeCodec =
    Codec.build (Refined.encoder queryLimitType) (Refined.decoder queryLimitType)


{-| Codec for QueryLimit.
-}
queryLimitCodec : Codec QueryLimit
queryLimitCodec =
    Codec.build (Refined.encoder queryLimit) (Refined.decoder queryLimit)


{-| Codec for ProvidersListType.
-}
providersListTypeCodec : Codec ProvidersListType
providersListTypeCodec =
    Codec.list providerDescriptionCodec


{-| Codec for ProviderUserIdentifierType.
-}
providerUserIdentifierTypeCodec : Codec ProviderUserIdentifierType
providerUserIdentifierTypeCodec =
    Codec.object ProviderUserIdentifierType
        |> Codec.field "ProviderName" .providerName providerNameTypeCodec
        |> Codec.field "ProviderAttributeValue" .providerAttributeValue Codec.string
        |> Codec.field "ProviderAttributeName" .providerAttributeName Codec.string
        |> Codec.buildObject


{-| Codec for ProviderNameTypeV1.
-}
providerNameTypeV1Codec : Codec ProviderNameTypeV1
providerNameTypeV1Codec =
    Codec.build (Refined.encoder providerNameTypeV1) (Refined.decoder providerNameTypeV1)


{-| Codec for ProviderNameType.
-}
providerNameTypeCodec : Codec ProviderNameType
providerNameTypeCodec =
    Codec.build (Refined.encoder providerNameType) (Refined.decoder providerNameType)


{-| Codec for ProviderDetailsType.
-}
providerDetailsTypeCodec : Codec ProviderDetailsType
providerDetailsTypeCodec =
    Codec.dict Codec.string


{-| Codec for ProviderDescription.
-}
providerDescriptionCodec : Codec ProviderDescription
providerDescriptionCodec =
    Codec.object ProviderDescription
        |> Codec.field "ProviderType" .providerType identityProviderTypeTypeCodec
        |> Codec.field "ProviderName" .providerName providerNameTypeCodec
        |> Codec.field "LastModifiedDate" .lastModifiedDate dateTypeCodec
        |> Codec.field "CreationDate" .creationDate dateTypeCodec
        |> Codec.buildObject


{-| Codec for PrecedenceType.
-}
precedenceTypeCodec : Codec PrecedenceType
precedenceTypeCodec =
    Codec.build (Refined.encoder precedenceType) (Refined.decoder precedenceType)


{-| Codec for PreSignedUrlType.
-}
preSignedUrlTypeCodec : Codec PreSignedUrlType
preSignedUrlTypeCodec =
    Codec.build (Refined.encoder preSignedUrlType) (Refined.decoder preSignedUrlType)


{-| Codec for PoolQueryLimitType.
-}
poolQueryLimitTypeCodec : Codec PoolQueryLimitType
poolQueryLimitTypeCodec =
    Codec.build (Refined.encoder poolQueryLimitType) (Refined.decoder poolQueryLimitType)


{-| Codec for PasswordType.
-}
passwordTypeCodec : Codec PasswordType
passwordTypeCodec =
    Codec.build (Refined.encoder passwordType) (Refined.decoder passwordType)


{-| Codec for PasswordPolicyType.
-}
passwordPolicyTypeCodec : Codec PasswordPolicyType
passwordPolicyTypeCodec =
    Codec.object PasswordPolicyType
        |> Codec.field
            "TemporaryPasswordValidityDays"
            .temporaryPasswordValidityDays
            temporaryPasswordValidityDaysTypeCodec
        |> Codec.field "RequireUppercase" .requireUppercase Codec.bool
        |> Codec.field "RequireSymbols" .requireSymbols Codec.bool
        |> Codec.field "RequireNumbers" .requireNumbers Codec.bool
        |> Codec.field "RequireLowercase" .requireLowercase Codec.bool
        |> Codec.field "MinimumLength" .minimumLength passwordPolicyMinLengthTypeCodec
        |> Codec.buildObject


{-| Codec for PasswordPolicyMinLengthType.
-}
passwordPolicyMinLengthTypeCodec : Codec PasswordPolicyMinLengthType
passwordPolicyMinLengthTypeCodec =
    Codec.build (Refined.encoder passwordPolicyMinLengthType) (Refined.decoder passwordPolicyMinLengthType)


{-| Codec for PaginationKeyType.
-}
paginationKeyTypeCodec : Codec PaginationKeyType
paginationKeyTypeCodec =
    Codec.build (Refined.encoder paginationKeyType) (Refined.decoder paginationKeyType)


{-| Codec for PaginationKey.
-}
paginationKeyCodec : Codec PaginationKey
paginationKeyCodec =
    Codec.build (Refined.encoder paginationKey) (Refined.decoder paginationKey)


{-| Codec for OauthFlowsType.
-}
oauthFlowsTypeCodec : Codec OauthFlowsType
oauthFlowsTypeCodec =
    Codec.list oauthFlowTypeCodec


{-| Codec for OauthFlowType.
-}
oauthFlowTypeCodec : Codec OauthFlowType
oauthFlowTypeCodec =
    Codec.build (Enum.encoder oauthFlowType) (Enum.decoder oauthFlowType)


{-| Codec for NumberAttributeConstraintsType.
-}
numberAttributeConstraintsTypeCodec : Codec NumberAttributeConstraintsType
numberAttributeConstraintsTypeCodec =
    Codec.object NumberAttributeConstraintsType
        |> Codec.field "MinValue" .minValue Codec.string
        |> Codec.field "MaxValue" .maxValue Codec.string
        |> Codec.buildObject


{-| Codec for NotifyEmailType.
-}
notifyEmailTypeCodec : Codec NotifyEmailType
notifyEmailTypeCodec =
    Codec.object NotifyEmailType
        |> Codec.field "TextBody" .textBody emailNotificationBodyTypeCodec
        |> Codec.field "Subject" .subject emailNotificationSubjectTypeCodec
        |> Codec.field "HtmlBody" .htmlBody emailNotificationBodyTypeCodec
        |> Codec.buildObject


{-| Codec for NotifyConfigurationType.
-}
notifyConfigurationTypeCodec : Codec NotifyConfigurationType
notifyConfigurationTypeCodec =
    Codec.object NotifyConfigurationType
        |> Codec.field "SourceArn" .sourceArn arnTypeCodec
        |> Codec.field "ReplyTo" .replyTo Codec.string
        |> Codec.field "NoActionEmail" .noActionEmail notifyEmailTypeCodec
        |> Codec.field "MfaEmail" .mfaEmail notifyEmailTypeCodec
        |> Codec.field "From" .from Codec.string
        |> Codec.field "BlockEmail" .blockEmail notifyEmailTypeCodec
        |> Codec.buildObject


{-| Codec for NewDeviceMetadataType.
-}
newDeviceMetadataTypeCodec : Codec NewDeviceMetadataType
newDeviceMetadataTypeCodec =
    Codec.object NewDeviceMetadataType
        |> Codec.field "DeviceKey" .deviceKey deviceKeyTypeCodec
        |> Codec.field "DeviceGroupKey" .deviceGroupKey Codec.string
        |> Codec.buildObject


{-| Codec for MessageTemplateType.
-}
messageTemplateTypeCodec : Codec MessageTemplateType
messageTemplateTypeCodec =
    Codec.object MessageTemplateType
        |> Codec.field "SMSMessage" .smsmessage smsVerificationMessageTypeCodec
        |> Codec.field "EmailSubject" .emailSubject emailVerificationSubjectTypeCodec
        |> Codec.field "EmailMessage" .emailMessage emailVerificationMessageTypeCodec
        |> Codec.buildObject


{-| Codec for MessageActionType.
-}
messageActionTypeCodec : Codec MessageActionType
messageActionTypeCodec =
    Codec.build (Enum.encoder messageActionType) (Enum.decoder messageActionType)


{-| Codec for MfaoptionType.
-}
mfaoptionTypeCodec : Codec MfaoptionType
mfaoptionTypeCodec =
    Codec.object MfaoptionType
        |> Codec.field "DeliveryMedium" .deliveryMedium deliveryMediumTypeCodec
        |> Codec.field "AttributeName" .attributeName attributeNameTypeCodec
        |> Codec.buildObject


{-| Codec for MfaoptionListType.
-}
mfaoptionListTypeCodec : Codec MfaoptionListType
mfaoptionListTypeCodec =
    Codec.list mfaoptionTypeCodec


{-| Codec for LongType.
-}
longTypeCodec : Codec LongType
longTypeCodec =
    Codec.int


{-| Codec for LogoutUrlsListType.
-}
logoutUrlsListTypeCodec : Codec LogoutUrlsListType
logoutUrlsListTypeCodec =
    Codec.list redirectUrlTypeCodec


{-| Codec for ListUsersResponse.
-}
listUsersResponseCodec : Codec ListUsersResponse
listUsersResponseCodec =
    Codec.object ListUsersResponse
        |> Codec.field "Users" .users usersListTypeCodec
        |> Codec.field "PaginationToken" .paginationToken searchPaginationTokenTypeCodec
        |> Codec.buildObject


{-| Codec for ListUsersRequest.
-}
listUsersRequestCodec : Codec ListUsersRequest
listUsersRequestCodec =
    Codec.object ListUsersRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "PaginationToken" .paginationToken searchPaginationTokenTypeCodec
        |> Codec.field "Limit" .limit queryLimitTypeCodec
        |> Codec.field "Filter" .filter userFilterTypeCodec
        |> Codec.field "AttributesToGet" .attributesToGet searchedAttributeNamesListTypeCodec
        |> Codec.buildObject


{-| Codec for ListUsersInGroupResponse.
-}
listUsersInGroupResponseCodec : Codec ListUsersInGroupResponse
listUsersInGroupResponseCodec =
    Codec.object ListUsersInGroupResponse
        |> Codec.field "Users" .users usersListTypeCodec
        |> Codec.field "NextToken" .nextToken paginationKeyCodec
        |> Codec.buildObject


{-| Codec for ListUsersInGroupRequest.
-}
listUsersInGroupRequestCodec : Codec ListUsersInGroupRequest
listUsersInGroupRequestCodec =
    Codec.object ListUsersInGroupRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "NextToken" .nextToken paginationKeyCodec
        |> Codec.field "Limit" .limit queryLimitTypeCodec
        |> Codec.field "GroupName" .groupName groupNameTypeCodec
        |> Codec.buildObject


{-| Codec for ListUserPoolsResponse.
-}
listUserPoolsResponseCodec : Codec ListUserPoolsResponse
listUserPoolsResponseCodec =
    Codec.object ListUserPoolsResponse
        |> Codec.field "UserPools" .userPools userPoolListTypeCodec
        |> Codec.field "NextToken" .nextToken paginationKeyTypeCodec
        |> Codec.buildObject


{-| Codec for ListUserPoolsRequest.
-}
listUserPoolsRequestCodec : Codec ListUserPoolsRequest
listUserPoolsRequestCodec =
    Codec.object ListUserPoolsRequest
        |> Codec.field "NextToken" .nextToken paginationKeyTypeCodec
        |> Codec.field "MaxResults" .maxResults poolQueryLimitTypeCodec
        |> Codec.buildObject


{-| Codec for ListUserPoolClientsResponse.
-}
listUserPoolClientsResponseCodec : Codec ListUserPoolClientsResponse
listUserPoolClientsResponseCodec =
    Codec.object ListUserPoolClientsResponse
        |> Codec.field "UserPoolClients" .userPoolClients userPoolClientListTypeCodec
        |> Codec.field "NextToken" .nextToken paginationKeyCodec
        |> Codec.buildObject


{-| Codec for ListUserPoolClientsRequest.
-}
listUserPoolClientsRequestCodec : Codec ListUserPoolClientsRequest
listUserPoolClientsRequestCodec =
    Codec.object ListUserPoolClientsRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "NextToken" .nextToken paginationKeyCodec
        |> Codec.field "MaxResults" .maxResults queryLimitCodec
        |> Codec.buildObject


{-| Codec for ListUserImportJobsResponse.
-}
listUserImportJobsResponseCodec : Codec ListUserImportJobsResponse
listUserImportJobsResponseCodec =
    Codec.object ListUserImportJobsResponse
        |> Codec.field "UserImportJobs" .userImportJobs userImportJobsListTypeCodec
        |> Codec.field "PaginationToken" .paginationToken paginationKeyTypeCodec
        |> Codec.buildObject


{-| Codec for ListUserImportJobsRequest.
-}
listUserImportJobsRequestCodec : Codec ListUserImportJobsRequest
listUserImportJobsRequestCodec =
    Codec.object ListUserImportJobsRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "PaginationToken" .paginationToken paginationKeyTypeCodec
        |> Codec.field "MaxResults" .maxResults poolQueryLimitTypeCodec
        |> Codec.buildObject


{-| Codec for ListTagsForResourceResponse.
-}
listTagsForResourceResponseCodec : Codec ListTagsForResourceResponse
listTagsForResourceResponseCodec =
    Codec.object ListTagsForResourceResponse |> Codec.field "Tags" .tags userPoolTagsTypeCodec |> Codec.buildObject


{-| Codec for ListTagsForResourceRequest.
-}
listTagsForResourceRequestCodec : Codec ListTagsForResourceRequest
listTagsForResourceRequestCodec =
    Codec.object ListTagsForResourceRequest |> Codec.field "ResourceArn" .resourceArn arnTypeCodec |> Codec.buildObject


{-| Codec for ListResourceServersResponse.
-}
listResourceServersResponseCodec : Codec ListResourceServersResponse
listResourceServersResponseCodec =
    Codec.object ListResourceServersResponse
        |> Codec.field "ResourceServers" .resourceServers resourceServersListTypeCodec
        |> Codec.field "NextToken" .nextToken paginationKeyTypeCodec
        |> Codec.buildObject


{-| Codec for ListResourceServersRequest.
-}
listResourceServersRequestCodec : Codec ListResourceServersRequest
listResourceServersRequestCodec =
    Codec.object ListResourceServersRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "NextToken" .nextToken paginationKeyTypeCodec
        |> Codec.field "MaxResults" .maxResults listResourceServersLimitTypeCodec
        |> Codec.buildObject


{-| Codec for ListResourceServersLimitType.
-}
listResourceServersLimitTypeCodec : Codec ListResourceServersLimitType
listResourceServersLimitTypeCodec =
    Codec.build (Refined.encoder listResourceServersLimitType) (Refined.decoder listResourceServersLimitType)


{-| Codec for ListProvidersLimitType.
-}
listProvidersLimitTypeCodec : Codec ListProvidersLimitType
listProvidersLimitTypeCodec =
    Codec.build (Refined.encoder listProvidersLimitType) (Refined.decoder listProvidersLimitType)


{-| Codec for ListOfStringTypes.
-}
listOfStringTypesCodec : Codec ListOfStringTypes
listOfStringTypesCodec =
    Codec.list Codec.string


{-| Codec for ListIdentityProvidersResponse.
-}
listIdentityProvidersResponseCodec : Codec ListIdentityProvidersResponse
listIdentityProvidersResponseCodec =
    Codec.object ListIdentityProvidersResponse
        |> Codec.field "Providers" .providers providersListTypeCodec
        |> Codec.field "NextToken" .nextToken paginationKeyTypeCodec
        |> Codec.buildObject


{-| Codec for ListIdentityProvidersRequest.
-}
listIdentityProvidersRequestCodec : Codec ListIdentityProvidersRequest
listIdentityProvidersRequestCodec =
    Codec.object ListIdentityProvidersRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "NextToken" .nextToken paginationKeyTypeCodec
        |> Codec.field "MaxResults" .maxResults listProvidersLimitTypeCodec
        |> Codec.buildObject


{-| Codec for ListGroupsResponse.
-}
listGroupsResponseCodec : Codec ListGroupsResponse
listGroupsResponseCodec =
    Codec.object ListGroupsResponse
        |> Codec.field "NextToken" .nextToken paginationKeyCodec
        |> Codec.field "Groups" .groups groupListTypeCodec
        |> Codec.buildObject


{-| Codec for ListGroupsRequest.
-}
listGroupsRequestCodec : Codec ListGroupsRequest
listGroupsRequestCodec =
    Codec.object ListGroupsRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "NextToken" .nextToken paginationKeyCodec
        |> Codec.field "Limit" .limit queryLimitTypeCodec
        |> Codec.buildObject


{-| Codec for ListDevicesResponse.
-}
listDevicesResponseCodec : Codec ListDevicesResponse
listDevicesResponseCodec =
    Codec.object ListDevicesResponse
        |> Codec.field "PaginationToken" .paginationToken searchPaginationTokenTypeCodec
        |> Codec.field "Devices" .devices deviceListTypeCodec
        |> Codec.buildObject


{-| Codec for ListDevicesRequest.
-}
listDevicesRequestCodec : Codec ListDevicesRequest
listDevicesRequestCodec =
    Codec.object ListDevicesRequest
        |> Codec.field "PaginationToken" .paginationToken searchPaginationTokenTypeCodec
        |> Codec.field "Limit" .limit queryLimitTypeCodec
        |> Codec.field "AccessToken" .accessToken tokenModelTypeCodec
        |> Codec.buildObject


{-| Codec for LambdaConfigType.
-}
lambdaConfigTypeCodec : Codec LambdaConfigType
lambdaConfigTypeCodec =
    Codec.object LambdaConfigType
        |> Codec.field "VerifyAuthChallengeResponse" .verifyAuthChallengeResponse arnTypeCodec
        |> Codec.field "UserMigration" .userMigration arnTypeCodec
        |> Codec.field "PreTokenGeneration" .preTokenGeneration arnTypeCodec
        |> Codec.field "PreSignUp" .preSignUp arnTypeCodec
        |> Codec.field "PreAuthentication" .preAuthentication arnTypeCodec
        |> Codec.field "PostConfirmation" .postConfirmation arnTypeCodec
        |> Codec.field "PostAuthentication" .postAuthentication arnTypeCodec
        |> Codec.field "DefineAuthChallenge" .defineAuthChallenge arnTypeCodec
        |> Codec.field "CustomMessage" .customMessage arnTypeCodec
        |> Codec.field "CreateAuthChallenge" .createAuthChallenge arnTypeCodec
        |> Codec.buildObject


{-| Codec for IntegerType.
-}
integerTypeCodec : Codec IntegerType
integerTypeCodec =
    Codec.int


{-| Codec for InitiateAuthResponse.
-}
initiateAuthResponseCodec : Codec InitiateAuthResponse
initiateAuthResponseCodec =
    Codec.object InitiateAuthResponse
        |> Codec.field "Session" .session sessionTypeCodec
        |> Codec.field "ChallengeParameters" .challengeParameters challengeParametersTypeCodec
        |> Codec.field "ChallengeName" .challengeName challengeNameTypeCodec
        |> Codec.field "AuthenticationResult" .authenticationResult authenticationResultTypeCodec
        |> Codec.buildObject


{-| Codec for InitiateAuthRequest.
-}
initiateAuthRequestCodec : Codec InitiateAuthRequest
initiateAuthRequestCodec =
    Codec.object InitiateAuthRequest
        |> Codec.field "UserContextData" .userContextData userContextDataTypeCodec
        |> Codec.field "ClientMetadata" .clientMetadata clientMetadataTypeCodec
        |> Codec.field "ClientId" .clientId clientIdTypeCodec
        |> Codec.field "AuthParameters" .authParameters authParametersTypeCodec
        |> Codec.field "AuthFlow" .authFlow authFlowTypeCodec
        |> Codec.field "AnalyticsMetadata" .analyticsMetadata analyticsMetadataTypeCodec
        |> Codec.buildObject


{-| Codec for ImageUrlType.
-}
imageUrlTypeCodec : Codec ImageUrlType
imageUrlTypeCodec =
    Codec.string


{-| Codec for ImageFileType.
-}
imageFileTypeCodec : Codec ImageFileType
imageFileTypeCodec =
    Codec.string


{-| Codec for IdpIdentifiersListType.
-}
idpIdentifiersListTypeCodec : Codec IdpIdentifiersListType
idpIdentifiersListTypeCodec =
    Codec.list idpIdentifierTypeCodec


{-| Codec for IdpIdentifierType.
-}
idpIdentifierTypeCodec : Codec IdpIdentifierType
idpIdentifierTypeCodec =
    Codec.build (Refined.encoder idpIdentifierType) (Refined.decoder idpIdentifierType)


{-| Codec for IdentityProviderTypeType.
-}
identityProviderTypeTypeCodec : Codec IdentityProviderTypeType
identityProviderTypeTypeCodec =
    Codec.build (Enum.encoder identityProviderTypeType) (Enum.decoder identityProviderTypeType)


{-| Codec for IdentityProviderType.
-}
identityProviderTypeCodec : Codec IdentityProviderType
identityProviderTypeCodec =
    Codec.object IdentityProviderType
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "ProviderType" .providerType identityProviderTypeTypeCodec
        |> Codec.field "ProviderName" .providerName providerNameTypeCodec
        |> Codec.field "ProviderDetails" .providerDetails providerDetailsTypeCodec
        |> Codec.field "LastModifiedDate" .lastModifiedDate dateTypeCodec
        |> Codec.field "IdpIdentifiers" .idpIdentifiers idpIdentifiersListTypeCodec
        |> Codec.field "CreationDate" .creationDate dateTypeCodec
        |> Codec.field "AttributeMapping" .attributeMapping attributeMappingTypeCodec
        |> Codec.buildObject


{-| Codec for HttpHeaderList.
-}
httpHeaderListCodec : Codec HttpHeaderList
httpHeaderListCodec =
    Codec.list httpHeaderCodec


{-| Codec for HttpHeader.
-}
httpHeaderCodec : Codec HttpHeader
httpHeaderCodec =
    Codec.object HttpHeader
        |> Codec.field "headerValue" .headerValue Codec.string
        |> Codec.field "headerName" .headerName Codec.string
        |> Codec.buildObject


{-| Codec for HexStringType.
-}
hexStringTypeCodec : Codec HexStringType
hexStringTypeCodec =
    Codec.build (Refined.encoder hexStringType) (Refined.decoder hexStringType)


{-| Codec for GroupType.
-}
groupTypeCodec : Codec GroupType
groupTypeCodec =
    Codec.object GroupType
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "RoleArn" .roleArn arnTypeCodec
        |> Codec.field "Precedence" .precedence precedenceTypeCodec
        |> Codec.field "LastModifiedDate" .lastModifiedDate dateTypeCodec
        |> Codec.field "GroupName" .groupName groupNameTypeCodec
        |> Codec.field "Description" .description descriptionTypeCodec
        |> Codec.field "CreationDate" .creationDate dateTypeCodec
        |> Codec.buildObject


{-| Codec for GroupNameType.
-}
groupNameTypeCodec : Codec GroupNameType
groupNameTypeCodec =
    Codec.build (Refined.encoder groupNameType) (Refined.decoder groupNameType)


{-| Codec for GroupListType.
-}
groupListTypeCodec : Codec GroupListType
groupListTypeCodec =
    Codec.list groupTypeCodec


{-| Codec for GlobalSignOutResponse.
-}
globalSignOutResponseCodec : Codec GlobalSignOutResponse
globalSignOutResponseCodec =
    Codec.object GlobalSignOutResponse |> Codec.buildObject


{-| Codec for GlobalSignOutRequest.
-}
globalSignOutRequestCodec : Codec GlobalSignOutRequest
globalSignOutRequestCodec =
    Codec.object GlobalSignOutRequest |> Codec.field "AccessToken" .accessToken tokenModelTypeCodec |> Codec.buildObject


{-| Codec for GetUserResponse.
-}
getUserResponseCodec : Codec GetUserResponse
getUserResponseCodec =
    Codec.object GetUserResponse
        |> Codec.field "Username" .username usernameTypeCodec
        |> Codec.field "UserMFASettingList" .userMfasettingList userMfasettingListTypeCodec
        |> Codec.field "UserAttributes" .userAttributes attributeListTypeCodec
        |> Codec.field "PreferredMfaSetting" .preferredMfaSetting Codec.string
        |> Codec.field "MFAOptions" .mfaoptions mfaoptionListTypeCodec
        |> Codec.buildObject


{-| Codec for GetUserRequest.
-}
getUserRequestCodec : Codec GetUserRequest
getUserRequestCodec =
    Codec.object GetUserRequest |> Codec.field "AccessToken" .accessToken tokenModelTypeCodec |> Codec.buildObject


{-| Codec for GetUserPoolMfaConfigResponse.
-}
getUserPoolMfaConfigResponseCodec : Codec GetUserPoolMfaConfigResponse
getUserPoolMfaConfigResponseCodec =
    Codec.object GetUserPoolMfaConfigResponse
        |> Codec.field "SoftwareTokenMfaConfiguration" .softwareTokenMfaConfiguration softwareTokenMfaConfigTypeCodec
        |> Codec.field "SmsMfaConfiguration" .smsMfaConfiguration smsMfaConfigTypeCodec
        |> Codec.field "MfaConfiguration" .mfaConfiguration userPoolMfaTypeCodec
        |> Codec.buildObject


{-| Codec for GetUserPoolMfaConfigRequest.
-}
getUserPoolMfaConfigRequestCodec : Codec GetUserPoolMfaConfigRequest
getUserPoolMfaConfigRequestCodec =
    Codec.object GetUserPoolMfaConfigRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.buildObject


{-| Codec for GetUserAttributeVerificationCodeResponse.
-}
getUserAttributeVerificationCodeResponseCodec : Codec GetUserAttributeVerificationCodeResponse
getUserAttributeVerificationCodeResponseCodec =
    Codec.object GetUserAttributeVerificationCodeResponse
        |> Codec.field "CodeDeliveryDetails" .codeDeliveryDetails codeDeliveryDetailsTypeCodec
        |> Codec.buildObject


{-| Codec for GetUserAttributeVerificationCodeRequest.
-}
getUserAttributeVerificationCodeRequestCodec : Codec GetUserAttributeVerificationCodeRequest
getUserAttributeVerificationCodeRequestCodec =
    Codec.object GetUserAttributeVerificationCodeRequest
        |> Codec.field "AttributeName" .attributeName attributeNameTypeCodec
        |> Codec.field "AccessToken" .accessToken tokenModelTypeCodec
        |> Codec.buildObject


{-| Codec for GetUicustomizationResponse.
-}
getUicustomizationResponseCodec : Codec GetUicustomizationResponse
getUicustomizationResponseCodec =
    Codec.object GetUicustomizationResponse
        |> Codec.field "UICustomization" .uicustomization uicustomizationTypeCodec
        |> Codec.buildObject


{-| Codec for GetUicustomizationRequest.
-}
getUicustomizationRequestCodec : Codec GetUicustomizationRequest
getUicustomizationRequestCodec =
    Codec.object GetUicustomizationRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "ClientId" .clientId clientIdTypeCodec
        |> Codec.buildObject


{-| Codec for GetSigningCertificateResponse.
-}
getSigningCertificateResponseCodec : Codec GetSigningCertificateResponse
getSigningCertificateResponseCodec =
    Codec.object GetSigningCertificateResponse
        |> Codec.field "Certificate" .certificate Codec.string
        |> Codec.buildObject


{-| Codec for GetSigningCertificateRequest.
-}
getSigningCertificateRequestCodec : Codec GetSigningCertificateRequest
getSigningCertificateRequestCodec =
    Codec.object GetSigningCertificateRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.buildObject


{-| Codec for GetIdentityProviderByIdentifierResponse.
-}
getIdentityProviderByIdentifierResponseCodec : Codec GetIdentityProviderByIdentifierResponse
getIdentityProviderByIdentifierResponseCodec =
    Codec.object GetIdentityProviderByIdentifierResponse
        |> Codec.field "IdentityProvider" .identityProvider identityProviderTypeCodec
        |> Codec.buildObject


{-| Codec for GetIdentityProviderByIdentifierRequest.
-}
getIdentityProviderByIdentifierRequestCodec : Codec GetIdentityProviderByIdentifierRequest
getIdentityProviderByIdentifierRequestCodec =
    Codec.object GetIdentityProviderByIdentifierRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "IdpIdentifier" .idpIdentifier idpIdentifierTypeCodec
        |> Codec.buildObject


{-| Codec for GetGroupResponse.
-}
getGroupResponseCodec : Codec GetGroupResponse
getGroupResponseCodec =
    Codec.object GetGroupResponse |> Codec.field "Group" .group groupTypeCodec |> Codec.buildObject


{-| Codec for GetGroupRequest.
-}
getGroupRequestCodec : Codec GetGroupRequest
getGroupRequestCodec =
    Codec.object GetGroupRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "GroupName" .groupName groupNameTypeCodec
        |> Codec.buildObject


{-| Codec for GetDeviceResponse.
-}
getDeviceResponseCodec : Codec GetDeviceResponse
getDeviceResponseCodec =
    Codec.object GetDeviceResponse |> Codec.field "Device" .device deviceTypeCodec |> Codec.buildObject


{-| Codec for GetDeviceRequest.
-}
getDeviceRequestCodec : Codec GetDeviceRequest
getDeviceRequestCodec =
    Codec.object GetDeviceRequest
        |> Codec.field "DeviceKey" .deviceKey deviceKeyTypeCodec
        |> Codec.field "AccessToken" .accessToken tokenModelTypeCodec
        |> Codec.buildObject


{-| Codec for GetCsvheaderResponse.
-}
getCsvheaderResponseCodec : Codec GetCsvheaderResponse
getCsvheaderResponseCodec =
    Codec.object GetCsvheaderResponse
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "CSVHeader" .csvheader listOfStringTypesCodec
        |> Codec.buildObject


{-| Codec for GetCsvheaderRequest.
-}
getCsvheaderRequestCodec : Codec GetCsvheaderRequest
getCsvheaderRequestCodec =
    Codec.object GetCsvheaderRequest |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec |> Codec.buildObject


{-| Codec for GenerateSecret.
-}
generateSecretCodec : Codec GenerateSecret
generateSecretCodec =
    Codec.bool


{-| Codec for ForgotPasswordResponse.
-}
forgotPasswordResponseCodec : Codec ForgotPasswordResponse
forgotPasswordResponseCodec =
    Codec.object ForgotPasswordResponse
        |> Codec.field "CodeDeliveryDetails" .codeDeliveryDetails codeDeliveryDetailsTypeCodec
        |> Codec.buildObject


{-| Codec for ForgotPasswordRequest.
-}
forgotPasswordRequestCodec : Codec ForgotPasswordRequest
forgotPasswordRequestCodec =
    Codec.object ForgotPasswordRequest
        |> Codec.field "Username" .username usernameTypeCodec
        |> Codec.field "UserContextData" .userContextData userContextDataTypeCodec
        |> Codec.field "SecretHash" .secretHash secretHashTypeCodec
        |> Codec.field "ClientId" .clientId clientIdTypeCodec
        |> Codec.field "AnalyticsMetadata" .analyticsMetadata analyticsMetadataTypeCodec
        |> Codec.buildObject


{-| Codec for ForgetDeviceRequest.
-}
forgetDeviceRequestCodec : Codec ForgetDeviceRequest
forgetDeviceRequestCodec =
    Codec.object ForgetDeviceRequest
        |> Codec.field "DeviceKey" .deviceKey deviceKeyTypeCodec
        |> Codec.field "AccessToken" .accessToken tokenModelTypeCodec
        |> Codec.buildObject


{-| Codec for ForceAliasCreation.
-}
forceAliasCreationCodec : Codec ForceAliasCreation
forceAliasCreationCodec =
    Codec.bool


{-| Codec for FeedbackValueType.
-}
feedbackValueTypeCodec : Codec FeedbackValueType
feedbackValueTypeCodec =
    Codec.build (Enum.encoder feedbackValueType) (Enum.decoder feedbackValueType)


{-| Codec for ExplicitAuthFlowsType.
-}
explicitAuthFlowsTypeCodec : Codec ExplicitAuthFlowsType
explicitAuthFlowsTypeCodec =
    Codec.build (Enum.encoder explicitAuthFlowsType) (Enum.decoder explicitAuthFlowsType)


{-| Codec for ExplicitAuthFlowsListType.
-}
explicitAuthFlowsListTypeCodec : Codec ExplicitAuthFlowsListType
explicitAuthFlowsListTypeCodec =
    Codec.list explicitAuthFlowsTypeCodec


{-| Codec for EventType.
-}
eventTypeCodec : Codec EventType
eventTypeCodec =
    Codec.build (Enum.encoder eventType) (Enum.decoder eventType)


{-| Codec for EventRiskType.
-}
eventRiskTypeCodec : Codec EventRiskType
eventRiskTypeCodec =
    Codec.object EventRiskType
        |> Codec.field "RiskLevel" .riskLevel riskLevelTypeCodec
        |> Codec.field "RiskDecision" .riskDecision riskDecisionTypeCodec
        |> Codec.buildObject


{-| Codec for EventResponseType.
-}
eventResponseTypeCodec : Codec EventResponseType
eventResponseTypeCodec =
    Codec.build (Enum.encoder eventResponseType) (Enum.decoder eventResponseType)


{-| Codec for EventIdType.
-}
eventIdTypeCodec : Codec EventIdType
eventIdTypeCodec =
    Codec.build (Refined.encoder eventIdType) (Refined.decoder eventIdType)


{-| Codec for EventFiltersType.
-}
eventFiltersTypeCodec : Codec EventFiltersType
eventFiltersTypeCodec =
    Codec.list eventFilterTypeCodec


{-| Codec for EventFilterType.
-}
eventFilterTypeCodec : Codec EventFilterType
eventFilterTypeCodec =
    Codec.build (Enum.encoder eventFilterType) (Enum.decoder eventFilterType)


{-| Codec for EventFeedbackType.
-}
eventFeedbackTypeCodec : Codec EventFeedbackType
eventFeedbackTypeCodec =
    Codec.object EventFeedbackType
        |> Codec.field "Provider" .provider Codec.string
        |> Codec.field "FeedbackValue" .feedbackValue feedbackValueTypeCodec
        |> Codec.field "FeedbackDate" .feedbackDate dateTypeCodec
        |> Codec.buildObject


{-| Codec for EventContextDataType.
-}
eventContextDataTypeCodec : Codec EventContextDataType
eventContextDataTypeCodec =
    Codec.object EventContextDataType
        |> Codec.field "Timezone" .timezone Codec.string
        |> Codec.field "IpAddress" .ipAddress Codec.string
        |> Codec.field "DeviceName" .deviceName Codec.string
        |> Codec.field "Country" .country Codec.string
        |> Codec.field "City" .city Codec.string
        |> Codec.buildObject


{-| Codec for EmailVerificationSubjectType.
-}
emailVerificationSubjectTypeCodec : Codec EmailVerificationSubjectType
emailVerificationSubjectTypeCodec =
    Codec.build (Refined.encoder emailVerificationSubjectType) (Refined.decoder emailVerificationSubjectType)


{-| Codec for EmailVerificationSubjectByLinkType.
-}
emailVerificationSubjectByLinkTypeCodec : Codec EmailVerificationSubjectByLinkType
emailVerificationSubjectByLinkTypeCodec =
    Codec.build
        (Refined.encoder emailVerificationSubjectByLinkType)
        (Refined.decoder emailVerificationSubjectByLinkType)


{-| Codec for EmailVerificationMessageType.
-}
emailVerificationMessageTypeCodec : Codec EmailVerificationMessageType
emailVerificationMessageTypeCodec =
    Codec.build (Refined.encoder emailVerificationMessageType) (Refined.decoder emailVerificationMessageType)


{-| Codec for EmailVerificationMessageByLinkType.
-}
emailVerificationMessageByLinkTypeCodec : Codec EmailVerificationMessageByLinkType
emailVerificationMessageByLinkTypeCodec =
    Codec.build
        (Refined.encoder emailVerificationMessageByLinkType)
        (Refined.decoder emailVerificationMessageByLinkType)


{-| Codec for EmailSendingAccountType.
-}
emailSendingAccountTypeCodec : Codec EmailSendingAccountType
emailSendingAccountTypeCodec =
    Codec.build (Enum.encoder emailSendingAccountType) (Enum.decoder emailSendingAccountType)


{-| Codec for EmailNotificationSubjectType.
-}
emailNotificationSubjectTypeCodec : Codec EmailNotificationSubjectType
emailNotificationSubjectTypeCodec =
    Codec.build (Refined.encoder emailNotificationSubjectType) (Refined.decoder emailNotificationSubjectType)


{-| Codec for EmailNotificationBodyType.
-}
emailNotificationBodyTypeCodec : Codec EmailNotificationBodyType
emailNotificationBodyTypeCodec =
    Codec.build (Refined.encoder emailNotificationBodyType) (Refined.decoder emailNotificationBodyType)


{-| Codec for EmailConfigurationType.
-}
emailConfigurationTypeCodec : Codec EmailConfigurationType
emailConfigurationTypeCodec =
    Codec.object EmailConfigurationType
        |> Codec.field "SourceArn" .sourceArn arnTypeCodec
        |> Codec.field "ReplyToEmailAddress" .replyToEmailAddress emailAddressTypeCodec
        |> Codec.field "EmailSendingAccount" .emailSendingAccount emailSendingAccountTypeCodec
        |> Codec.buildObject


{-| Codec for EmailAddressType.
-}
emailAddressTypeCodec : Codec EmailAddressType
emailAddressTypeCodec =
    Codec.build (Refined.encoder emailAddressType) (Refined.decoder emailAddressType)


{-| Codec for DomainVersionType.
-}
domainVersionTypeCodec : Codec DomainVersionType
domainVersionTypeCodec =
    Codec.build (Refined.encoder domainVersionType) (Refined.decoder domainVersionType)


{-| Codec for DomainType.
-}
domainTypeCodec : Codec DomainType
domainTypeCodec =
    Codec.build (Refined.encoder domainType) (Refined.decoder domainType)


{-| Codec for DomainStatusType.
-}
domainStatusTypeCodec : Codec DomainStatusType
domainStatusTypeCodec =
    Codec.build (Enum.encoder domainStatusType) (Enum.decoder domainStatusType)


{-| Codec for DomainDescriptionType.
-}
domainDescriptionTypeCodec : Codec DomainDescriptionType
domainDescriptionTypeCodec =
    Codec.object DomainDescriptionType
        |> Codec.field "Version" .version domainVersionTypeCodec
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "Status" .status domainStatusTypeCodec
        |> Codec.field "S3Bucket" .s3Bucket s3BucketTypeCodec
        |> Codec.field "Domain" .domain domainTypeCodec
        |> Codec.field "CustomDomainConfig" .customDomainConfig customDomainConfigTypeCodec
        |> Codec.field "CloudFrontDistribution" .cloudFrontDistribution Codec.string
        |> Codec.field "AWSAccountId" .awsaccountId Codec.string
        |> Codec.buildObject


{-| Codec for DeviceType.
-}
deviceTypeCodec : Codec DeviceType
deviceTypeCodec =
    Codec.object DeviceType
        |> Codec.field "DeviceLastModifiedDate" .deviceLastModifiedDate dateTypeCodec
        |> Codec.field "DeviceLastAuthenticatedDate" .deviceLastAuthenticatedDate dateTypeCodec
        |> Codec.field "DeviceKey" .deviceKey deviceKeyTypeCodec
        |> Codec.field "DeviceCreateDate" .deviceCreateDate dateTypeCodec
        |> Codec.field "DeviceAttributes" .deviceAttributes attributeListTypeCodec
        |> Codec.buildObject


{-| Codec for DeviceSecretVerifierConfigType.
-}
deviceSecretVerifierConfigTypeCodec : Codec DeviceSecretVerifierConfigType
deviceSecretVerifierConfigTypeCodec =
    Codec.object DeviceSecretVerifierConfigType
        |> Codec.field "Salt" .salt Codec.string
        |> Codec.field "PasswordVerifier" .passwordVerifier Codec.string
        |> Codec.buildObject


{-| Codec for DeviceRememberedStatusType.
-}
deviceRememberedStatusTypeCodec : Codec DeviceRememberedStatusType
deviceRememberedStatusTypeCodec =
    Codec.build (Enum.encoder deviceRememberedStatusType) (Enum.decoder deviceRememberedStatusType)


{-| Codec for DeviceNameType.
-}
deviceNameTypeCodec : Codec DeviceNameType
deviceNameTypeCodec =
    Codec.build (Refined.encoder deviceNameType) (Refined.decoder deviceNameType)


{-| Codec for DeviceListType.
-}
deviceListTypeCodec : Codec DeviceListType
deviceListTypeCodec =
    Codec.list deviceTypeCodec


{-| Codec for DeviceKeyType.
-}
deviceKeyTypeCodec : Codec DeviceKeyType
deviceKeyTypeCodec =
    Codec.build (Refined.encoder deviceKeyType) (Refined.decoder deviceKeyType)


{-| Codec for DeviceConfigurationType.
-}
deviceConfigurationTypeCodec : Codec DeviceConfigurationType
deviceConfigurationTypeCodec =
    Codec.object DeviceConfigurationType
        |> Codec.field "DeviceOnlyRememberedOnUserPrompt" .deviceOnlyRememberedOnUserPrompt Codec.bool
        |> Codec.field "ChallengeRequiredOnNewDevice" .challengeRequiredOnNewDevice Codec.bool
        |> Codec.buildObject


{-| Codec for DescriptionType.
-}
descriptionTypeCodec : Codec DescriptionType
descriptionTypeCodec =
    Codec.build (Refined.encoder descriptionType) (Refined.decoder descriptionType)


{-| Codec for DescribeUserPoolResponse.
-}
describeUserPoolResponseCodec : Codec DescribeUserPoolResponse
describeUserPoolResponseCodec =
    Codec.object DescribeUserPoolResponse |> Codec.field "UserPool" .userPool userPoolTypeCodec |> Codec.buildObject


{-| Codec for DescribeUserPoolRequest.
-}
describeUserPoolRequestCodec : Codec DescribeUserPoolRequest
describeUserPoolRequestCodec =
    Codec.object DescribeUserPoolRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.buildObject


{-| Codec for DescribeUserPoolDomainResponse.
-}
describeUserPoolDomainResponseCodec : Codec DescribeUserPoolDomainResponse
describeUserPoolDomainResponseCodec =
    Codec.object DescribeUserPoolDomainResponse
        |> Codec.field "DomainDescription" .domainDescription domainDescriptionTypeCodec
        |> Codec.buildObject


{-| Codec for DescribeUserPoolDomainRequest.
-}
describeUserPoolDomainRequestCodec : Codec DescribeUserPoolDomainRequest
describeUserPoolDomainRequestCodec =
    Codec.object DescribeUserPoolDomainRequest |> Codec.field "Domain" .domain domainTypeCodec |> Codec.buildObject


{-| Codec for DescribeUserPoolClientResponse.
-}
describeUserPoolClientResponseCodec : Codec DescribeUserPoolClientResponse
describeUserPoolClientResponseCodec =
    Codec.object DescribeUserPoolClientResponse
        |> Codec.field "UserPoolClient" .userPoolClient userPoolClientTypeCodec
        |> Codec.buildObject


{-| Codec for DescribeUserPoolClientRequest.
-}
describeUserPoolClientRequestCodec : Codec DescribeUserPoolClientRequest
describeUserPoolClientRequestCodec =
    Codec.object DescribeUserPoolClientRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "ClientId" .clientId clientIdTypeCodec
        |> Codec.buildObject


{-| Codec for DescribeUserImportJobResponse.
-}
describeUserImportJobResponseCodec : Codec DescribeUserImportJobResponse
describeUserImportJobResponseCodec =
    Codec.object DescribeUserImportJobResponse
        |> Codec.field "UserImportJob" .userImportJob userImportJobTypeCodec
        |> Codec.buildObject


{-| Codec for DescribeUserImportJobRequest.
-}
describeUserImportJobRequestCodec : Codec DescribeUserImportJobRequest
describeUserImportJobRequestCodec =
    Codec.object DescribeUserImportJobRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "JobId" .jobId userImportJobIdTypeCodec
        |> Codec.buildObject


{-| Codec for DescribeRiskConfigurationResponse.
-}
describeRiskConfigurationResponseCodec : Codec DescribeRiskConfigurationResponse
describeRiskConfigurationResponseCodec =
    Codec.object DescribeRiskConfigurationResponse
        |> Codec.field "RiskConfiguration" .riskConfiguration riskConfigurationTypeCodec
        |> Codec.buildObject


{-| Codec for DescribeRiskConfigurationRequest.
-}
describeRiskConfigurationRequestCodec : Codec DescribeRiskConfigurationRequest
describeRiskConfigurationRequestCodec =
    Codec.object DescribeRiskConfigurationRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "ClientId" .clientId clientIdTypeCodec
        |> Codec.buildObject


{-| Codec for DescribeResourceServerResponse.
-}
describeResourceServerResponseCodec : Codec DescribeResourceServerResponse
describeResourceServerResponseCodec =
    Codec.object DescribeResourceServerResponse
        |> Codec.field "ResourceServer" .resourceServer resourceServerTypeCodec
        |> Codec.buildObject


{-| Codec for DescribeResourceServerRequest.
-}
describeResourceServerRequestCodec : Codec DescribeResourceServerRequest
describeResourceServerRequestCodec =
    Codec.object DescribeResourceServerRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "Identifier" .identifier resourceServerIdentifierTypeCodec
        |> Codec.buildObject


{-| Codec for DescribeIdentityProviderResponse.
-}
describeIdentityProviderResponseCodec : Codec DescribeIdentityProviderResponse
describeIdentityProviderResponseCodec =
    Codec.object DescribeIdentityProviderResponse
        |> Codec.field "IdentityProvider" .identityProvider identityProviderTypeCodec
        |> Codec.buildObject


{-| Codec for DescribeIdentityProviderRequest.
-}
describeIdentityProviderRequestCodec : Codec DescribeIdentityProviderRequest
describeIdentityProviderRequestCodec =
    Codec.object DescribeIdentityProviderRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "ProviderName" .providerName providerNameTypeCodec
        |> Codec.buildObject


{-| Codec for DeliveryMediumType.
-}
deliveryMediumTypeCodec : Codec DeliveryMediumType
deliveryMediumTypeCodec =
    Codec.build (Enum.encoder deliveryMediumType) (Enum.decoder deliveryMediumType)


{-| Codec for DeliveryMediumListType.
-}
deliveryMediumListTypeCodec : Codec DeliveryMediumListType
deliveryMediumListTypeCodec =
    Codec.list deliveryMediumTypeCodec


{-| Codec for DeleteUserRequest.
-}
deleteUserRequestCodec : Codec DeleteUserRequest
deleteUserRequestCodec =
    Codec.object DeleteUserRequest |> Codec.field "AccessToken" .accessToken tokenModelTypeCodec |> Codec.buildObject


{-| Codec for DeleteUserPoolRequest.
-}
deleteUserPoolRequestCodec : Codec DeleteUserPoolRequest
deleteUserPoolRequestCodec =
    Codec.object DeleteUserPoolRequest |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec |> Codec.buildObject


{-| Codec for DeleteUserPoolDomainResponse.
-}
deleteUserPoolDomainResponseCodec : Codec DeleteUserPoolDomainResponse
deleteUserPoolDomainResponseCodec =
    Codec.object DeleteUserPoolDomainResponse |> Codec.buildObject


{-| Codec for DeleteUserPoolDomainRequest.
-}
deleteUserPoolDomainRequestCodec : Codec DeleteUserPoolDomainRequest
deleteUserPoolDomainRequestCodec =
    Codec.object DeleteUserPoolDomainRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "Domain" .domain domainTypeCodec
        |> Codec.buildObject


{-| Codec for DeleteUserPoolClientRequest.
-}
deleteUserPoolClientRequestCodec : Codec DeleteUserPoolClientRequest
deleteUserPoolClientRequestCodec =
    Codec.object DeleteUserPoolClientRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "ClientId" .clientId clientIdTypeCodec
        |> Codec.buildObject


{-| Codec for DeleteUserAttributesResponse.
-}
deleteUserAttributesResponseCodec : Codec DeleteUserAttributesResponse
deleteUserAttributesResponseCodec =
    Codec.object DeleteUserAttributesResponse |> Codec.buildObject


{-| Codec for DeleteUserAttributesRequest.
-}
deleteUserAttributesRequestCodec : Codec DeleteUserAttributesRequest
deleteUserAttributesRequestCodec =
    Codec.object DeleteUserAttributesRequest
        |> Codec.field "UserAttributeNames" .userAttributeNames attributeNameListTypeCodec
        |> Codec.field "AccessToken" .accessToken tokenModelTypeCodec
        |> Codec.buildObject


{-| Codec for DeleteResourceServerRequest.
-}
deleteResourceServerRequestCodec : Codec DeleteResourceServerRequest
deleteResourceServerRequestCodec =
    Codec.object DeleteResourceServerRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "Identifier" .identifier resourceServerIdentifierTypeCodec
        |> Codec.buildObject


{-| Codec for DeleteIdentityProviderRequest.
-}
deleteIdentityProviderRequestCodec : Codec DeleteIdentityProviderRequest
deleteIdentityProviderRequestCodec =
    Codec.object DeleteIdentityProviderRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "ProviderName" .providerName providerNameTypeCodec
        |> Codec.buildObject


{-| Codec for DeleteGroupRequest.
-}
deleteGroupRequestCodec : Codec DeleteGroupRequest
deleteGroupRequestCodec =
    Codec.object DeleteGroupRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "GroupName" .groupName groupNameTypeCodec
        |> Codec.buildObject


{-| Codec for DefaultEmailOptionType.
-}
defaultEmailOptionTypeCodec : Codec DefaultEmailOptionType
defaultEmailOptionTypeCodec =
    Codec.build (Enum.encoder defaultEmailOptionType) (Enum.decoder defaultEmailOptionType)


{-| Codec for DateType.
-}
dateTypeCodec : Codec DateType
dateTypeCodec =
    Codec.string


{-| Codec for CustomDomainConfigType.
-}
customDomainConfigTypeCodec : Codec CustomDomainConfigType
customDomainConfigTypeCodec =
    Codec.object CustomDomainConfigType
        |> Codec.field "CertificateArn" .certificateArn arnTypeCodec
        |> Codec.buildObject


{-| Codec for CustomAttributesListType.
-}
customAttributesListTypeCodec : Codec CustomAttributesListType
customAttributesListTypeCodec =
    Codec.list schemaAttributeTypeCodec


{-| Codec for CustomAttributeNameType.
-}
customAttributeNameTypeCodec : Codec CustomAttributeNameType
customAttributeNameTypeCodec =
    Codec.build (Refined.encoder customAttributeNameType) (Refined.decoder customAttributeNameType)


{-| Codec for CreateUserPoolResponse.
-}
createUserPoolResponseCodec : Codec CreateUserPoolResponse
createUserPoolResponseCodec =
    Codec.object CreateUserPoolResponse |> Codec.field "UserPool" .userPool userPoolTypeCodec |> Codec.buildObject


{-| Codec for CreateUserPoolRequest.
-}
createUserPoolRequestCodec : Codec CreateUserPoolRequest
createUserPoolRequestCodec =
    Codec.object CreateUserPoolRequest
        |> Codec.field "VerificationMessageTemplate" .verificationMessageTemplate verificationMessageTemplateTypeCodec
        |> Codec.field "UsernameAttributes" .usernameAttributes usernameAttributesListTypeCodec
        |> Codec.field "UserPoolTags" .userPoolTags userPoolTagsTypeCodec
        |> Codec.field "UserPoolAddOns" .userPoolAddOns userPoolAddOnsTypeCodec
        |> Codec.field "SmsVerificationMessage" .smsVerificationMessage smsVerificationMessageTypeCodec
        |> Codec.field "SmsConfiguration" .smsConfiguration smsConfigurationTypeCodec
        |> Codec.field "SmsAuthenticationMessage" .smsAuthenticationMessage smsVerificationMessageTypeCodec
        |> Codec.field "Schema" .schema schemaAttributesListTypeCodec
        |> Codec.field "PoolName" .poolName userPoolNameTypeCodec
        |> Codec.field "Policies" .policies userPoolPolicyTypeCodec
        |> Codec.field "MfaConfiguration" .mfaConfiguration userPoolMfaTypeCodec
        |> Codec.field "LambdaConfig" .lambdaConfig lambdaConfigTypeCodec
        |> Codec.field "EmailVerificationSubject" .emailVerificationSubject emailVerificationSubjectTypeCodec
        |> Codec.field "EmailVerificationMessage" .emailVerificationMessage emailVerificationMessageTypeCodec
        |> Codec.field "EmailConfiguration" .emailConfiguration emailConfigurationTypeCodec
        |> Codec.field "DeviceConfiguration" .deviceConfiguration deviceConfigurationTypeCodec
        |> Codec.field "AutoVerifiedAttributes" .autoVerifiedAttributes verifiedAttributesListTypeCodec
        |> Codec.field "AliasAttributes" .aliasAttributes aliasAttributesListTypeCodec
        |> Codec.field "AdminCreateUserConfig" .adminCreateUserConfig adminCreateUserConfigTypeCodec
        |> Codec.buildObject


{-| Codec for CreateUserPoolDomainResponse.
-}
createUserPoolDomainResponseCodec : Codec CreateUserPoolDomainResponse
createUserPoolDomainResponseCodec =
    Codec.object CreateUserPoolDomainResponse
        |> Codec.field "CloudFrontDomain" .cloudFrontDomain domainTypeCodec
        |> Codec.buildObject


{-| Codec for CreateUserPoolDomainRequest.
-}
createUserPoolDomainRequestCodec : Codec CreateUserPoolDomainRequest
createUserPoolDomainRequestCodec =
    Codec.object CreateUserPoolDomainRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "Domain" .domain domainTypeCodec
        |> Codec.field "CustomDomainConfig" .customDomainConfig customDomainConfigTypeCodec
        |> Codec.buildObject


{-| Codec for CreateUserPoolClientResponse.
-}
createUserPoolClientResponseCodec : Codec CreateUserPoolClientResponse
createUserPoolClientResponseCodec =
    Codec.object CreateUserPoolClientResponse
        |> Codec.field "UserPoolClient" .userPoolClient userPoolClientTypeCodec
        |> Codec.buildObject


{-| Codec for CreateUserPoolClientRequest.
-}
createUserPoolClientRequestCodec : Codec CreateUserPoolClientRequest
createUserPoolClientRequestCodec =
    Codec.object CreateUserPoolClientRequest
        |> Codec.field "WriteAttributes" .writeAttributes clientPermissionListTypeCodec
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "SupportedIdentityProviders" .supportedIdentityProviders supportedIdentityProvidersListTypeCodec
        |> Codec.field "RefreshTokenValidity" .refreshTokenValidity refreshTokenValidityTypeCodec
        |> Codec.field "ReadAttributes" .readAttributes clientPermissionListTypeCodec
        |> Codec.field "LogoutURLs" .logoutUrls logoutUrlsListTypeCodec
        |> Codec.field "GenerateSecret" .generateSecret Codec.bool
        |> Codec.field "ExplicitAuthFlows" .explicitAuthFlows explicitAuthFlowsListTypeCodec
        |> Codec.field "DefaultRedirectURI" .defaultRedirectUri redirectUrlTypeCodec
        |> Codec.field "ClientName" .clientName clientNameTypeCodec
        |> Codec.field "CallbackURLs" .callbackUrls callbackUrlsListTypeCodec
        |> Codec.field "AnalyticsConfiguration" .analyticsConfiguration analyticsConfigurationTypeCodec
        |> Codec.field "AllowedOAuthScopes" .allowedOauthScopes scopeListTypeCodec
        |> Codec.field "AllowedOAuthFlowsUserPoolClient" .allowedOauthFlowsUserPoolClient Codec.bool
        |> Codec.field "AllowedOAuthFlows" .allowedOauthFlows oauthFlowsTypeCodec
        |> Codec.buildObject


{-| Codec for CreateUserImportJobResponse.
-}
createUserImportJobResponseCodec : Codec CreateUserImportJobResponse
createUserImportJobResponseCodec =
    Codec.object CreateUserImportJobResponse
        |> Codec.field "UserImportJob" .userImportJob userImportJobTypeCodec
        |> Codec.buildObject


{-| Codec for CreateUserImportJobRequest.
-}
createUserImportJobRequestCodec : Codec CreateUserImportJobRequest
createUserImportJobRequestCodec =
    Codec.object CreateUserImportJobRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "JobName" .jobName userImportJobNameTypeCodec
        |> Codec.field "CloudWatchLogsRoleArn" .cloudWatchLogsRoleArn arnTypeCodec
        |> Codec.buildObject


{-| Codec for CreateResourceServerResponse.
-}
createResourceServerResponseCodec : Codec CreateResourceServerResponse
createResourceServerResponseCodec =
    Codec.object CreateResourceServerResponse
        |> Codec.field "ResourceServer" .resourceServer resourceServerTypeCodec
        |> Codec.buildObject


{-| Codec for CreateResourceServerRequest.
-}
createResourceServerRequestCodec : Codec CreateResourceServerRequest
createResourceServerRequestCodec =
    Codec.object CreateResourceServerRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "Scopes" .scopes resourceServerScopeListTypeCodec
        |> Codec.field "Name" .name resourceServerNameTypeCodec
        |> Codec.field "Identifier" .identifier resourceServerIdentifierTypeCodec
        |> Codec.buildObject


{-| Codec for CreateIdentityProviderResponse.
-}
createIdentityProviderResponseCodec : Codec CreateIdentityProviderResponse
createIdentityProviderResponseCodec =
    Codec.object CreateIdentityProviderResponse
        |> Codec.field "IdentityProvider" .identityProvider identityProviderTypeCodec
        |> Codec.buildObject


{-| Codec for CreateIdentityProviderRequest.
-}
createIdentityProviderRequestCodec : Codec CreateIdentityProviderRequest
createIdentityProviderRequestCodec =
    Codec.object CreateIdentityProviderRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "ProviderType" .providerType identityProviderTypeTypeCodec
        |> Codec.field "ProviderName" .providerName providerNameTypeV1Codec
        |> Codec.field "ProviderDetails" .providerDetails providerDetailsTypeCodec
        |> Codec.field "IdpIdentifiers" .idpIdentifiers idpIdentifiersListTypeCodec
        |> Codec.field "AttributeMapping" .attributeMapping attributeMappingTypeCodec
        |> Codec.buildObject


{-| Codec for CreateGroupResponse.
-}
createGroupResponseCodec : Codec CreateGroupResponse
createGroupResponseCodec =
    Codec.object CreateGroupResponse |> Codec.field "Group" .group groupTypeCodec |> Codec.buildObject


{-| Codec for CreateGroupRequest.
-}
createGroupRequestCodec : Codec CreateGroupRequest
createGroupRequestCodec =
    Codec.object CreateGroupRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "RoleArn" .roleArn arnTypeCodec
        |> Codec.field "Precedence" .precedence precedenceTypeCodec
        |> Codec.field "GroupName" .groupName groupNameTypeCodec
        |> Codec.field "Description" .description descriptionTypeCodec
        |> Codec.buildObject


{-| Codec for ContextDataType.
-}
contextDataTypeCodec : Codec ContextDataType
contextDataTypeCodec =
    Codec.object ContextDataType
        |> Codec.field "ServerPath" .serverPath Codec.string
        |> Codec.field "ServerName" .serverName Codec.string
        |> Codec.field "IpAddress" .ipAddress Codec.string
        |> Codec.field "HttpHeaders" .httpHeaders httpHeaderListCodec
        |> Codec.field "EncodedData" .encodedData Codec.string
        |> Codec.buildObject


{-| Codec for ConfirmationCodeType.
-}
confirmationCodeTypeCodec : Codec ConfirmationCodeType
confirmationCodeTypeCodec =
    Codec.build (Refined.encoder confirmationCodeType) (Refined.decoder confirmationCodeType)


{-| Codec for ConfirmSignUpResponse.
-}
confirmSignUpResponseCodec : Codec ConfirmSignUpResponse
confirmSignUpResponseCodec =
    Codec.object ConfirmSignUpResponse |> Codec.buildObject


{-| Codec for ConfirmSignUpRequest.
-}
confirmSignUpRequestCodec : Codec ConfirmSignUpRequest
confirmSignUpRequestCodec =
    Codec.object ConfirmSignUpRequest
        |> Codec.field "Username" .username usernameTypeCodec
        |> Codec.field "UserContextData" .userContextData userContextDataTypeCodec
        |> Codec.field "SecretHash" .secretHash secretHashTypeCodec
        |> Codec.field "ForceAliasCreation" .forceAliasCreation Codec.bool
        |> Codec.field "ConfirmationCode" .confirmationCode confirmationCodeTypeCodec
        |> Codec.field "ClientId" .clientId clientIdTypeCodec
        |> Codec.field "AnalyticsMetadata" .analyticsMetadata analyticsMetadataTypeCodec
        |> Codec.buildObject


{-| Codec for ConfirmForgotPasswordResponse.
-}
confirmForgotPasswordResponseCodec : Codec ConfirmForgotPasswordResponse
confirmForgotPasswordResponseCodec =
    Codec.object ConfirmForgotPasswordResponse |> Codec.buildObject


{-| Codec for ConfirmForgotPasswordRequest.
-}
confirmForgotPasswordRequestCodec : Codec ConfirmForgotPasswordRequest
confirmForgotPasswordRequestCodec =
    Codec.object ConfirmForgotPasswordRequest
        |> Codec.field "Username" .username usernameTypeCodec
        |> Codec.field "UserContextData" .userContextData userContextDataTypeCodec
        |> Codec.field "SecretHash" .secretHash secretHashTypeCodec
        |> Codec.field "Password" .password passwordTypeCodec
        |> Codec.field "ConfirmationCode" .confirmationCode confirmationCodeTypeCodec
        |> Codec.field "ClientId" .clientId clientIdTypeCodec
        |> Codec.field "AnalyticsMetadata" .analyticsMetadata analyticsMetadataTypeCodec
        |> Codec.buildObject


{-| Codec for ConfirmDeviceResponse.
-}
confirmDeviceResponseCodec : Codec ConfirmDeviceResponse
confirmDeviceResponseCodec =
    Codec.object ConfirmDeviceResponse
        |> Codec.field "UserConfirmationNecessary" .userConfirmationNecessary Codec.bool
        |> Codec.buildObject


{-| Codec for ConfirmDeviceRequest.
-}
confirmDeviceRequestCodec : Codec ConfirmDeviceRequest
confirmDeviceRequestCodec =
    Codec.object ConfirmDeviceRequest
        |> Codec.field "DeviceSecretVerifierConfig" .deviceSecretVerifierConfig deviceSecretVerifierConfigTypeCodec
        |> Codec.field "DeviceName" .deviceName deviceNameTypeCodec
        |> Codec.field "DeviceKey" .deviceKey deviceKeyTypeCodec
        |> Codec.field "AccessToken" .accessToken tokenModelTypeCodec
        |> Codec.buildObject


{-| Codec for CompromisedCredentialsRiskConfigurationType.
-}
compromisedCredentialsRiskConfigurationTypeCodec : Codec CompromisedCredentialsRiskConfigurationType
compromisedCredentialsRiskConfigurationTypeCodec =
    Codec.object CompromisedCredentialsRiskConfigurationType
        |> Codec.field "EventFilter" .eventFilter eventFiltersTypeCodec
        |> Codec.field "Actions" .actions compromisedCredentialsActionsTypeCodec
        |> Codec.buildObject


{-| Codec for CompromisedCredentialsEventActionType.
-}
compromisedCredentialsEventActionTypeCodec : Codec CompromisedCredentialsEventActionType
compromisedCredentialsEventActionTypeCodec =
    Codec.build
        (Enum.encoder compromisedCredentialsEventActionType)
        (Enum.decoder compromisedCredentialsEventActionType)


{-| Codec for CompromisedCredentialsActionsType.
-}
compromisedCredentialsActionsTypeCodec : Codec CompromisedCredentialsActionsType
compromisedCredentialsActionsTypeCodec =
    Codec.object CompromisedCredentialsActionsType
        |> Codec.field "EventAction" .eventAction compromisedCredentialsEventActionTypeCodec
        |> Codec.buildObject


{-| Codec for CompletionMessageType.
-}
completionMessageTypeCodec : Codec CompletionMessageType
completionMessageTypeCodec =
    Codec.build (Refined.encoder completionMessageType) (Refined.decoder completionMessageType)


{-| Codec for CodeDeliveryDetailsType.
-}
codeDeliveryDetailsTypeCodec : Codec CodeDeliveryDetailsType
codeDeliveryDetailsTypeCodec =
    Codec.object CodeDeliveryDetailsType
        |> Codec.field "Destination" .destination Codec.string
        |> Codec.field "DeliveryMedium" .deliveryMedium deliveryMediumTypeCodec
        |> Codec.field "AttributeName" .attributeName attributeNameTypeCodec
        |> Codec.buildObject


{-| Codec for CodeDeliveryDetailsListType.
-}
codeDeliveryDetailsListTypeCodec : Codec CodeDeliveryDetailsListType
codeDeliveryDetailsListTypeCodec =
    Codec.list codeDeliveryDetailsTypeCodec


{-| Codec for ClientSecretType.
-}
clientSecretTypeCodec : Codec ClientSecretType
clientSecretTypeCodec =
    Codec.build (Refined.encoder clientSecretType) (Refined.decoder clientSecretType)


{-| Codec for ClientPermissionType.
-}
clientPermissionTypeCodec : Codec ClientPermissionType
clientPermissionTypeCodec =
    Codec.build (Refined.encoder clientPermissionType) (Refined.decoder clientPermissionType)


{-| Codec for ClientPermissionListType.
-}
clientPermissionListTypeCodec : Codec ClientPermissionListType
clientPermissionListTypeCodec =
    Codec.list clientPermissionTypeCodec


{-| Codec for ClientNameType.
-}
clientNameTypeCodec : Codec ClientNameType
clientNameTypeCodec =
    Codec.build (Refined.encoder clientNameType) (Refined.decoder clientNameType)


{-| Codec for ClientMetadataType.
-}
clientMetadataTypeCodec : Codec ClientMetadataType
clientMetadataTypeCodec =
    Codec.dict Codec.string


{-| Codec for ClientIdType.
-}
clientIdTypeCodec : Codec ClientIdType
clientIdTypeCodec =
    Codec.build (Refined.encoder clientIdType) (Refined.decoder clientIdType)


{-| Codec for ChangePasswordResponse.
-}
changePasswordResponseCodec : Codec ChangePasswordResponse
changePasswordResponseCodec =
    Codec.object ChangePasswordResponse |> Codec.buildObject


{-| Codec for ChangePasswordRequest.
-}
changePasswordRequestCodec : Codec ChangePasswordRequest
changePasswordRequestCodec =
    Codec.object ChangePasswordRequest
        |> Codec.field "ProposedPassword" .proposedPassword passwordTypeCodec
        |> Codec.field "PreviousPassword" .previousPassword passwordTypeCodec
        |> Codec.field "AccessToken" .accessToken tokenModelTypeCodec
        |> Codec.buildObject


{-| Codec for ChallengeResponsesType.
-}
challengeResponsesTypeCodec : Codec ChallengeResponsesType
challengeResponsesTypeCodec =
    Codec.dict Codec.string


{-| Codec for ChallengeResponseType.
-}
challengeResponseTypeCodec : Codec ChallengeResponseType
challengeResponseTypeCodec =
    Codec.object ChallengeResponseType
        |> Codec.field "ChallengeResponse" .challengeResponse challengeResponseCodec
        |> Codec.field "ChallengeName" .challengeName challengeNameCodec
        |> Codec.buildObject


{-| Codec for ChallengeResponseListType.
-}
challengeResponseListTypeCodec : Codec ChallengeResponseListType
challengeResponseListTypeCodec =
    Codec.list challengeResponseTypeCodec


{-| Codec for ChallengeResponse.
-}
challengeResponseCodec : Codec ChallengeResponse
challengeResponseCodec =
    Codec.build (Enum.encoder challengeResponse) (Enum.decoder challengeResponse)


{-| Codec for ChallengeParametersType.
-}
challengeParametersTypeCodec : Codec ChallengeParametersType
challengeParametersTypeCodec =
    Codec.dict Codec.string


{-| Codec for ChallengeNameType.
-}
challengeNameTypeCodec : Codec ChallengeNameType
challengeNameTypeCodec =
    Codec.build (Enum.encoder challengeNameType) (Enum.decoder challengeNameType)


{-| Codec for ChallengeName.
-}
challengeNameCodec : Codec ChallengeName
challengeNameCodec =
    Codec.build (Enum.encoder challengeName) (Enum.decoder challengeName)


{-| Codec for CallbackUrlsListType.
-}
callbackUrlsListTypeCodec : Codec CallbackUrlsListType
callbackUrlsListTypeCodec =
    Codec.list redirectUrlTypeCodec


{-| Codec for CssversionType.
-}
cssversionTypeCodec : Codec CssversionType
cssversionTypeCodec =
    Codec.string


{-| Codec for Csstype.
-}
csstypeCodec : Codec Csstype
csstypeCodec =
    Codec.string


{-| Codec for BooleanType.
-}
booleanTypeCodec : Codec BooleanType
booleanTypeCodec =
    Codec.bool


{-| Codec for BlockedIprangeListType.
-}
blockedIprangeListTypeCodec : Codec BlockedIprangeListType
blockedIprangeListTypeCodec =
    Codec.list Codec.string


{-| Codec for AuthenticationResultType.
-}
authenticationResultTypeCodec : Codec AuthenticationResultType
authenticationResultTypeCodec =
    Codec.object AuthenticationResultType
        |> Codec.field "TokenType" .tokenType Codec.string
        |> Codec.field "RefreshToken" .refreshToken tokenModelTypeCodec
        |> Codec.field "NewDeviceMetadata" .newDeviceMetadata newDeviceMetadataTypeCodec
        |> Codec.field "IdToken" .idToken tokenModelTypeCodec
        |> Codec.field "ExpiresIn" .expiresIn Codec.int
        |> Codec.field "AccessToken" .accessToken tokenModelTypeCodec
        |> Codec.buildObject


{-| Codec for AuthParametersType.
-}
authParametersTypeCodec : Codec AuthParametersType
authParametersTypeCodec =
    Codec.dict Codec.string


{-| Codec for AuthFlowType.
-}
authFlowTypeCodec : Codec AuthFlowType
authFlowTypeCodec =
    Codec.build (Enum.encoder authFlowType) (Enum.decoder authFlowType)


{-| Codec for AuthEventsType.
-}
authEventsTypeCodec : Codec AuthEventsType
authEventsTypeCodec =
    Codec.list authEventTypeCodec


{-| Codec for AuthEventType.
-}
authEventTypeCodec : Codec AuthEventType
authEventTypeCodec =
    Codec.object AuthEventType
        |> Codec.field "EventType" .eventType eventTypeCodec
        |> Codec.field "EventRisk" .eventRisk eventRiskTypeCodec
        |> Codec.field "EventResponse" .eventResponse eventResponseTypeCodec
        |> Codec.field "EventId" .eventId Codec.string
        |> Codec.field "EventFeedback" .eventFeedback eventFeedbackTypeCodec
        |> Codec.field "EventContextData" .eventContextData eventContextDataTypeCodec
        |> Codec.field "CreationDate" .creationDate dateTypeCodec
        |> Codec.field "ChallengeResponses" .challengeResponses challengeResponseListTypeCodec
        |> Codec.buildObject


{-| Codec for AttributeValueType.
-}
attributeValueTypeCodec : Codec AttributeValueType
attributeValueTypeCodec =
    Codec.build (Refined.encoder attributeValueType) (Refined.decoder attributeValueType)


{-| Codec for AttributeType.
-}
attributeTypeCodec : Codec AttributeType
attributeTypeCodec =
    Codec.object AttributeType
        |> Codec.field "Value" .value attributeValueTypeCodec
        |> Codec.field "Name" .name attributeNameTypeCodec
        |> Codec.buildObject


{-| Codec for AttributeNameType.
-}
attributeNameTypeCodec : Codec AttributeNameType
attributeNameTypeCodec =
    Codec.build (Refined.encoder attributeNameType) (Refined.decoder attributeNameType)


{-| Codec for AttributeNameListType.
-}
attributeNameListTypeCodec : Codec AttributeNameListType
attributeNameListTypeCodec =
    Codec.list attributeNameTypeCodec


{-| Codec for AttributeMappingType.
-}
attributeMappingTypeCodec : Codec AttributeMappingType
attributeMappingTypeCodec =
    Codec.build
        (Refined.dictEncoder attributeMappingKeyType (Codec.encoder Codec.string))
        (Refined.dictDecoder attributeMappingKeyType (Codec.decoder Codec.string))


{-| Codec for AttributeMappingKeyType.
-}
attributeMappingKeyTypeCodec : Codec AttributeMappingKeyType
attributeMappingKeyTypeCodec =
    Codec.build (Refined.encoder attributeMappingKeyType) (Refined.decoder attributeMappingKeyType)


{-| Codec for AttributeListType.
-}
attributeListTypeCodec : Codec AttributeListType
attributeListTypeCodec =
    Codec.list attributeTypeCodec


{-| Codec for AttributeDataType.
-}
attributeDataTypeCodec : Codec AttributeDataType
attributeDataTypeCodec =
    Codec.build (Enum.encoder attributeDataType) (Enum.decoder attributeDataType)


{-| Codec for AssociateSoftwareTokenResponse.
-}
associateSoftwareTokenResponseCodec : Codec AssociateSoftwareTokenResponse
associateSoftwareTokenResponseCodec =
    Codec.object AssociateSoftwareTokenResponse
        |> Codec.field "Session" .session sessionTypeCodec
        |> Codec.field "SecretCode" .secretCode secretCodeTypeCodec
        |> Codec.buildObject


{-| Codec for AssociateSoftwareTokenRequest.
-}
associateSoftwareTokenRequestCodec : Codec AssociateSoftwareTokenRequest
associateSoftwareTokenRequestCodec =
    Codec.object AssociateSoftwareTokenRequest
        |> Codec.field "Session" .session sessionTypeCodec
        |> Codec.field "AccessToken" .accessToken tokenModelTypeCodec
        |> Codec.buildObject


{-| Codec for ArnType.
-}
arnTypeCodec : Codec ArnType
arnTypeCodec =
    Codec.build (Refined.encoder arnType) (Refined.decoder arnType)


{-| Codec for AnalyticsMetadataType.
-}
analyticsMetadataTypeCodec : Codec AnalyticsMetadataType
analyticsMetadataTypeCodec =
    Codec.object AnalyticsMetadataType
        |> Codec.field "AnalyticsEndpointId" .analyticsEndpointId Codec.string
        |> Codec.buildObject


{-| Codec for AnalyticsConfigurationType.
-}
analyticsConfigurationTypeCodec : Codec AnalyticsConfigurationType
analyticsConfigurationTypeCodec =
    Codec.object AnalyticsConfigurationType
        |> Codec.field "UserDataShared" .userDataShared Codec.bool
        |> Codec.field "RoleArn" .roleArn arnTypeCodec
        |> Codec.field "ExternalId" .externalId Codec.string
        |> Codec.field "ApplicationId" .applicationId hexStringTypeCodec
        |> Codec.buildObject


{-| Codec for AliasAttributesListType.
-}
aliasAttributesListTypeCodec : Codec AliasAttributesListType
aliasAttributesListTypeCodec =
    Codec.list aliasAttributeTypeCodec


{-| Codec for AliasAttributeType.
-}
aliasAttributeTypeCodec : Codec AliasAttributeType
aliasAttributeTypeCodec =
    Codec.build (Enum.encoder aliasAttributeType) (Enum.decoder aliasAttributeType)


{-| Codec for AdvancedSecurityModeType.
-}
advancedSecurityModeTypeCodec : Codec AdvancedSecurityModeType
advancedSecurityModeTypeCodec =
    Codec.build (Enum.encoder advancedSecurityModeType) (Enum.decoder advancedSecurityModeType)


{-| Codec for AdminUserGlobalSignOutResponse.
-}
adminUserGlobalSignOutResponseCodec : Codec AdminUserGlobalSignOutResponse
adminUserGlobalSignOutResponseCodec =
    Codec.object AdminUserGlobalSignOutResponse |> Codec.buildObject


{-| Codec for AdminUserGlobalSignOutRequest.
-}
adminUserGlobalSignOutRequestCodec : Codec AdminUserGlobalSignOutRequest
adminUserGlobalSignOutRequestCodec =
    Codec.object AdminUserGlobalSignOutRequest
        |> Codec.field "Username" .username usernameTypeCodec
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.buildObject


{-| Codec for AdminUpdateUserAttributesResponse.
-}
adminUpdateUserAttributesResponseCodec : Codec AdminUpdateUserAttributesResponse
adminUpdateUserAttributesResponseCodec =
    Codec.object AdminUpdateUserAttributesResponse |> Codec.buildObject


{-| Codec for AdminUpdateUserAttributesRequest.
-}
adminUpdateUserAttributesRequestCodec : Codec AdminUpdateUserAttributesRequest
adminUpdateUserAttributesRequestCodec =
    Codec.object AdminUpdateUserAttributesRequest
        |> Codec.field "Username" .username usernameTypeCodec
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "UserAttributes" .userAttributes attributeListTypeCodec
        |> Codec.buildObject


{-| Codec for AdminUpdateDeviceStatusResponse.
-}
adminUpdateDeviceStatusResponseCodec : Codec AdminUpdateDeviceStatusResponse
adminUpdateDeviceStatusResponseCodec =
    Codec.object AdminUpdateDeviceStatusResponse |> Codec.buildObject


{-| Codec for AdminUpdateDeviceStatusRequest.
-}
adminUpdateDeviceStatusRequestCodec : Codec AdminUpdateDeviceStatusRequest
adminUpdateDeviceStatusRequestCodec =
    Codec.object AdminUpdateDeviceStatusRequest
        |> Codec.field "Username" .username usernameTypeCodec
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "DeviceRememberedStatus" .deviceRememberedStatus deviceRememberedStatusTypeCodec
        |> Codec.field "DeviceKey" .deviceKey deviceKeyTypeCodec
        |> Codec.buildObject


{-| Codec for AdminUpdateAuthEventFeedbackResponse.
-}
adminUpdateAuthEventFeedbackResponseCodec : Codec AdminUpdateAuthEventFeedbackResponse
adminUpdateAuthEventFeedbackResponseCodec =
    Codec.object AdminUpdateAuthEventFeedbackResponse |> Codec.buildObject


{-| Codec for AdminUpdateAuthEventFeedbackRequest.
-}
adminUpdateAuthEventFeedbackRequestCodec : Codec AdminUpdateAuthEventFeedbackRequest
adminUpdateAuthEventFeedbackRequestCodec =
    Codec.object AdminUpdateAuthEventFeedbackRequest
        |> Codec.field "Username" .username usernameTypeCodec
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "FeedbackValue" .feedbackValue feedbackValueTypeCodec
        |> Codec.field "EventId" .eventId eventIdTypeCodec
        |> Codec.buildObject


{-| Codec for AdminSetUserSettingsResponse.
-}
adminSetUserSettingsResponseCodec : Codec AdminSetUserSettingsResponse
adminSetUserSettingsResponseCodec =
    Codec.object AdminSetUserSettingsResponse |> Codec.buildObject


{-| Codec for AdminSetUserSettingsRequest.
-}
adminSetUserSettingsRequestCodec : Codec AdminSetUserSettingsRequest
adminSetUserSettingsRequestCodec =
    Codec.object AdminSetUserSettingsRequest
        |> Codec.field "Username" .username usernameTypeCodec
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "MFAOptions" .mfaoptions mfaoptionListTypeCodec
        |> Codec.buildObject


{-| Codec for AdminSetUserPasswordResponse.
-}
adminSetUserPasswordResponseCodec : Codec AdminSetUserPasswordResponse
adminSetUserPasswordResponseCodec =
    Codec.object AdminSetUserPasswordResponse |> Codec.buildObject


{-| Codec for AdminSetUserPasswordRequest.
-}
adminSetUserPasswordRequestCodec : Codec AdminSetUserPasswordRequest
adminSetUserPasswordRequestCodec =
    Codec.object AdminSetUserPasswordRequest
        |> Codec.field "Username" .username usernameTypeCodec
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "Permanent" .permanent Codec.bool
        |> Codec.field "Password" .password passwordTypeCodec
        |> Codec.buildObject


{-| Codec for AdminSetUserMfapreferenceResponse.
-}
adminSetUserMfapreferenceResponseCodec : Codec AdminSetUserMfapreferenceResponse
adminSetUserMfapreferenceResponseCodec =
    Codec.object AdminSetUserMfapreferenceResponse |> Codec.buildObject


{-| Codec for AdminSetUserMfapreferenceRequest.
-}
adminSetUserMfapreferenceRequestCodec : Codec AdminSetUserMfapreferenceRequest
adminSetUserMfapreferenceRequestCodec =
    Codec.object AdminSetUserMfapreferenceRequest
        |> Codec.field "Username" .username usernameTypeCodec
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "SoftwareTokenMfaSettings" .softwareTokenMfaSettings softwareTokenMfaSettingsTypeCodec
        |> Codec.field "SMSMfaSettings" .smsmfaSettings smsmfaSettingsTypeCodec
        |> Codec.buildObject


{-| Codec for AdminRespondToAuthChallengeResponse.
-}
adminRespondToAuthChallengeResponseCodec : Codec AdminRespondToAuthChallengeResponse
adminRespondToAuthChallengeResponseCodec =
    Codec.object AdminRespondToAuthChallengeResponse
        |> Codec.field "Session" .session sessionTypeCodec
        |> Codec.field "ChallengeParameters" .challengeParameters challengeParametersTypeCodec
        |> Codec.field "ChallengeName" .challengeName challengeNameTypeCodec
        |> Codec.field "AuthenticationResult" .authenticationResult authenticationResultTypeCodec
        |> Codec.buildObject


{-| Codec for AdminRespondToAuthChallengeRequest.
-}
adminRespondToAuthChallengeRequestCodec : Codec AdminRespondToAuthChallengeRequest
adminRespondToAuthChallengeRequestCodec =
    Codec.object AdminRespondToAuthChallengeRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "Session" .session sessionTypeCodec
        |> Codec.field "ContextData" .contextData contextDataTypeCodec
        |> Codec.field "ClientId" .clientId clientIdTypeCodec
        |> Codec.field "ChallengeResponses" .challengeResponses challengeResponsesTypeCodec
        |> Codec.field "ChallengeName" .challengeName challengeNameTypeCodec
        |> Codec.field "AnalyticsMetadata" .analyticsMetadata analyticsMetadataTypeCodec
        |> Codec.buildObject


{-| Codec for AdminResetUserPasswordResponse.
-}
adminResetUserPasswordResponseCodec : Codec AdminResetUserPasswordResponse
adminResetUserPasswordResponseCodec =
    Codec.object AdminResetUserPasswordResponse |> Codec.buildObject


{-| Codec for AdminResetUserPasswordRequest.
-}
adminResetUserPasswordRequestCodec : Codec AdminResetUserPasswordRequest
adminResetUserPasswordRequestCodec =
    Codec.object AdminResetUserPasswordRequest
        |> Codec.field "Username" .username usernameTypeCodec
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.buildObject


{-| Codec for AdminRemoveUserFromGroupRequest.
-}
adminRemoveUserFromGroupRequestCodec : Codec AdminRemoveUserFromGroupRequest
adminRemoveUserFromGroupRequestCodec =
    Codec.object AdminRemoveUserFromGroupRequest
        |> Codec.field "Username" .username usernameTypeCodec
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "GroupName" .groupName groupNameTypeCodec
        |> Codec.buildObject


{-| Codec for AdminListUserAuthEventsResponse.
-}
adminListUserAuthEventsResponseCodec : Codec AdminListUserAuthEventsResponse
adminListUserAuthEventsResponseCodec =
    Codec.object AdminListUserAuthEventsResponse
        |> Codec.field "NextToken" .nextToken paginationKeyCodec
        |> Codec.field "AuthEvents" .authEvents authEventsTypeCodec
        |> Codec.buildObject


{-| Codec for AdminListUserAuthEventsRequest.
-}
adminListUserAuthEventsRequestCodec : Codec AdminListUserAuthEventsRequest
adminListUserAuthEventsRequestCodec =
    Codec.object AdminListUserAuthEventsRequest
        |> Codec.field "Username" .username usernameTypeCodec
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "NextToken" .nextToken paginationKeyCodec
        |> Codec.field "MaxResults" .maxResults queryLimitTypeCodec
        |> Codec.buildObject


{-| Codec for AdminListGroupsForUserResponse.
-}
adminListGroupsForUserResponseCodec : Codec AdminListGroupsForUserResponse
adminListGroupsForUserResponseCodec =
    Codec.object AdminListGroupsForUserResponse
        |> Codec.field "NextToken" .nextToken paginationKeyCodec
        |> Codec.field "Groups" .groups groupListTypeCodec
        |> Codec.buildObject


{-| Codec for AdminListGroupsForUserRequest.
-}
adminListGroupsForUserRequestCodec : Codec AdminListGroupsForUserRequest
adminListGroupsForUserRequestCodec =
    Codec.object AdminListGroupsForUserRequest
        |> Codec.field "Username" .username usernameTypeCodec
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "NextToken" .nextToken paginationKeyCodec
        |> Codec.field "Limit" .limit queryLimitTypeCodec
        |> Codec.buildObject


{-| Codec for AdminListDevicesResponse.
-}
adminListDevicesResponseCodec : Codec AdminListDevicesResponse
adminListDevicesResponseCodec =
    Codec.object AdminListDevicesResponse
        |> Codec.field "PaginationToken" .paginationToken searchPaginationTokenTypeCodec
        |> Codec.field "Devices" .devices deviceListTypeCodec
        |> Codec.buildObject


{-| Codec for AdminListDevicesRequest.
-}
adminListDevicesRequestCodec : Codec AdminListDevicesRequest
adminListDevicesRequestCodec =
    Codec.object AdminListDevicesRequest
        |> Codec.field "Username" .username usernameTypeCodec
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "PaginationToken" .paginationToken searchPaginationTokenTypeCodec
        |> Codec.field "Limit" .limit queryLimitTypeCodec
        |> Codec.buildObject


{-| Codec for AdminLinkProviderForUserResponse.
-}
adminLinkProviderForUserResponseCodec : Codec AdminLinkProviderForUserResponse
adminLinkProviderForUserResponseCodec =
    Codec.object AdminLinkProviderForUserResponse |> Codec.buildObject


{-| Codec for AdminLinkProviderForUserRequest.
-}
adminLinkProviderForUserRequestCodec : Codec AdminLinkProviderForUserRequest
adminLinkProviderForUserRequestCodec =
    Codec.object AdminLinkProviderForUserRequest
        |> Codec.field "UserPoolId" .userPoolId Codec.string
        |> Codec.field "SourceUser" .sourceUser providerUserIdentifierTypeCodec
        |> Codec.field "DestinationUser" .destinationUser providerUserIdentifierTypeCodec
        |> Codec.buildObject


{-| Codec for AdminInitiateAuthResponse.
-}
adminInitiateAuthResponseCodec : Codec AdminInitiateAuthResponse
adminInitiateAuthResponseCodec =
    Codec.object AdminInitiateAuthResponse
        |> Codec.field "Session" .session sessionTypeCodec
        |> Codec.field "ChallengeParameters" .challengeParameters challengeParametersTypeCodec
        |> Codec.field "ChallengeName" .challengeName challengeNameTypeCodec
        |> Codec.field "AuthenticationResult" .authenticationResult authenticationResultTypeCodec
        |> Codec.buildObject


{-| Codec for AdminInitiateAuthRequest.
-}
adminInitiateAuthRequestCodec : Codec AdminInitiateAuthRequest
adminInitiateAuthRequestCodec =
    Codec.object AdminInitiateAuthRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "ContextData" .contextData contextDataTypeCodec
        |> Codec.field "ClientMetadata" .clientMetadata clientMetadataTypeCodec
        |> Codec.field "ClientId" .clientId clientIdTypeCodec
        |> Codec.field "AuthParameters" .authParameters authParametersTypeCodec
        |> Codec.field "AuthFlow" .authFlow authFlowTypeCodec
        |> Codec.field "AnalyticsMetadata" .analyticsMetadata analyticsMetadataTypeCodec
        |> Codec.buildObject


{-| Codec for AdminGetUserResponse.
-}
adminGetUserResponseCodec : Codec AdminGetUserResponse
adminGetUserResponseCodec =
    Codec.object AdminGetUserResponse
        |> Codec.field "Username" .username usernameTypeCodec
        |> Codec.field "UserStatus" .userStatus userStatusTypeCodec
        |> Codec.field "UserMFASettingList" .userMfasettingList userMfasettingListTypeCodec
        |> Codec.field "UserLastModifiedDate" .userLastModifiedDate dateTypeCodec
        |> Codec.field "UserCreateDate" .userCreateDate dateTypeCodec
        |> Codec.field "UserAttributes" .userAttributes attributeListTypeCodec
        |> Codec.field "PreferredMfaSetting" .preferredMfaSetting Codec.string
        |> Codec.field "MFAOptions" .mfaoptions mfaoptionListTypeCodec
        |> Codec.field "Enabled" .enabled Codec.bool
        |> Codec.buildObject


{-| Codec for AdminGetUserRequest.
-}
adminGetUserRequestCodec : Codec AdminGetUserRequest
adminGetUserRequestCodec =
    Codec.object AdminGetUserRequest
        |> Codec.field "Username" .username usernameTypeCodec
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.buildObject


{-| Codec for AdminGetDeviceResponse.
-}
adminGetDeviceResponseCodec : Codec AdminGetDeviceResponse
adminGetDeviceResponseCodec =
    Codec.object AdminGetDeviceResponse |> Codec.field "Device" .device deviceTypeCodec |> Codec.buildObject


{-| Codec for AdminGetDeviceRequest.
-}
adminGetDeviceRequestCodec : Codec AdminGetDeviceRequest
adminGetDeviceRequestCodec =
    Codec.object AdminGetDeviceRequest
        |> Codec.field "Username" .username usernameTypeCodec
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "DeviceKey" .deviceKey deviceKeyTypeCodec
        |> Codec.buildObject


{-| Codec for AdminForgetDeviceRequest.
-}
adminForgetDeviceRequestCodec : Codec AdminForgetDeviceRequest
adminForgetDeviceRequestCodec =
    Codec.object AdminForgetDeviceRequest
        |> Codec.field "Username" .username usernameTypeCodec
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "DeviceKey" .deviceKey deviceKeyTypeCodec
        |> Codec.buildObject


{-| Codec for AdminEnableUserResponse.
-}
adminEnableUserResponseCodec : Codec AdminEnableUserResponse
adminEnableUserResponseCodec =
    Codec.object AdminEnableUserResponse |> Codec.buildObject


{-| Codec for AdminEnableUserRequest.
-}
adminEnableUserRequestCodec : Codec AdminEnableUserRequest
adminEnableUserRequestCodec =
    Codec.object AdminEnableUserRequest
        |> Codec.field "Username" .username usernameTypeCodec
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.buildObject


{-| Codec for AdminDisableUserResponse.
-}
adminDisableUserResponseCodec : Codec AdminDisableUserResponse
adminDisableUserResponseCodec =
    Codec.object AdminDisableUserResponse |> Codec.buildObject


{-| Codec for AdminDisableUserRequest.
-}
adminDisableUserRequestCodec : Codec AdminDisableUserRequest
adminDisableUserRequestCodec =
    Codec.object AdminDisableUserRequest
        |> Codec.field "Username" .username usernameTypeCodec
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.buildObject


{-| Codec for AdminDisableProviderForUserResponse.
-}
adminDisableProviderForUserResponseCodec : Codec AdminDisableProviderForUserResponse
adminDisableProviderForUserResponseCodec =
    Codec.object AdminDisableProviderForUserResponse |> Codec.buildObject


{-| Codec for AdminDisableProviderForUserRequest.
-}
adminDisableProviderForUserRequestCodec : Codec AdminDisableProviderForUserRequest
adminDisableProviderForUserRequestCodec =
    Codec.object AdminDisableProviderForUserRequest
        |> Codec.field "UserPoolId" .userPoolId Codec.string
        |> Codec.field "User" .user providerUserIdentifierTypeCodec
        |> Codec.buildObject


{-| Codec for AdminDeleteUserRequest.
-}
adminDeleteUserRequestCodec : Codec AdminDeleteUserRequest
adminDeleteUserRequestCodec =
    Codec.object AdminDeleteUserRequest
        |> Codec.field "Username" .username usernameTypeCodec
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.buildObject


{-| Codec for AdminDeleteUserAttributesResponse.
-}
adminDeleteUserAttributesResponseCodec : Codec AdminDeleteUserAttributesResponse
adminDeleteUserAttributesResponseCodec =
    Codec.object AdminDeleteUserAttributesResponse |> Codec.buildObject


{-| Codec for AdminDeleteUserAttributesRequest.
-}
adminDeleteUserAttributesRequestCodec : Codec AdminDeleteUserAttributesRequest
adminDeleteUserAttributesRequestCodec =
    Codec.object AdminDeleteUserAttributesRequest
        |> Codec.field "Username" .username usernameTypeCodec
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "UserAttributeNames" .userAttributeNames attributeNameListTypeCodec
        |> Codec.buildObject


{-| Codec for AdminCreateUserUnusedAccountValidityDaysType.
-}
adminCreateUserUnusedAccountValidityDaysTypeCodec : Codec AdminCreateUserUnusedAccountValidityDaysType
adminCreateUserUnusedAccountValidityDaysTypeCodec =
    Codec.build
        (Refined.encoder adminCreateUserUnusedAccountValidityDaysType)
        (Refined.decoder adminCreateUserUnusedAccountValidityDaysType)


{-| Codec for AdminCreateUserResponse.
-}
adminCreateUserResponseCodec : Codec AdminCreateUserResponse
adminCreateUserResponseCodec =
    Codec.object AdminCreateUserResponse |> Codec.field "User" .user userTypeCodec |> Codec.buildObject


{-| Codec for AdminCreateUserRequest.
-}
adminCreateUserRequestCodec : Codec AdminCreateUserRequest
adminCreateUserRequestCodec =
    Codec.object AdminCreateUserRequest
        |> Codec.field "ValidationData" .validationData attributeListTypeCodec
        |> Codec.field "Username" .username usernameTypeCodec
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "UserAttributes" .userAttributes attributeListTypeCodec
        |> Codec.field "TemporaryPassword" .temporaryPassword passwordTypeCodec
        |> Codec.field "MessageAction" .messageAction messageActionTypeCodec
        |> Codec.field "ForceAliasCreation" .forceAliasCreation Codec.bool
        |> Codec.field "DesiredDeliveryMediums" .desiredDeliveryMediums deliveryMediumListTypeCodec
        |> Codec.buildObject


{-| Codec for AdminCreateUserConfigType.
-}
adminCreateUserConfigTypeCodec : Codec AdminCreateUserConfigType
adminCreateUserConfigTypeCodec =
    Codec.object AdminCreateUserConfigType
        |> Codec.field
            "UnusedAccountValidityDays"
            .unusedAccountValidityDays
            adminCreateUserUnusedAccountValidityDaysTypeCodec
        |> Codec.field "InviteMessageTemplate" .inviteMessageTemplate messageTemplateTypeCodec
        |> Codec.field "AllowAdminCreateUserOnly" .allowAdminCreateUserOnly Codec.bool
        |> Codec.buildObject


{-| Codec for AdminConfirmSignUpResponse.
-}
adminConfirmSignUpResponseCodec : Codec AdminConfirmSignUpResponse
adminConfirmSignUpResponseCodec =
    Codec.object AdminConfirmSignUpResponse |> Codec.buildObject


{-| Codec for AdminConfirmSignUpRequest.
-}
adminConfirmSignUpRequestCodec : Codec AdminConfirmSignUpRequest
adminConfirmSignUpRequestCodec =
    Codec.object AdminConfirmSignUpRequest
        |> Codec.field "Username" .username usernameTypeCodec
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.buildObject


{-| Codec for AdminAddUserToGroupRequest.
-}
adminAddUserToGroupRequestCodec : Codec AdminAddUserToGroupRequest
adminAddUserToGroupRequestCodec =
    Codec.object AdminAddUserToGroupRequest
        |> Codec.field "Username" .username usernameTypeCodec
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "GroupName" .groupName groupNameTypeCodec
        |> Codec.buildObject


{-| Codec for AddCustomAttributesResponse.
-}
addCustomAttributesResponseCodec : Codec AddCustomAttributesResponse
addCustomAttributesResponseCodec =
    Codec.object AddCustomAttributesResponse |> Codec.buildObject


{-| Codec for AddCustomAttributesRequest.
-}
addCustomAttributesRequestCodec : Codec AddCustomAttributesRequest
addCustomAttributesRequestCodec =
    Codec.object AddCustomAttributesRequest
        |> Codec.field "UserPoolId" .userPoolId userPoolIdTypeCodec
        |> Codec.field "CustomAttributes" .customAttributes customAttributesListTypeCodec
        |> Codec.buildObject


{-| Codec for AccountTakeoverRiskConfigurationType.
-}
accountTakeoverRiskConfigurationTypeCodec : Codec AccountTakeoverRiskConfigurationType
accountTakeoverRiskConfigurationTypeCodec =
    Codec.object AccountTakeoverRiskConfigurationType
        |> Codec.field "NotifyConfiguration" .notifyConfiguration notifyConfigurationTypeCodec
        |> Codec.field "Actions" .actions accountTakeoverActionsTypeCodec
        |> Codec.buildObject


{-| Codec for AccountTakeoverEventActionType.
-}
accountTakeoverEventActionTypeCodec : Codec AccountTakeoverEventActionType
accountTakeoverEventActionTypeCodec =
    Codec.build (Enum.encoder accountTakeoverEventActionType) (Enum.decoder accountTakeoverEventActionType)


{-| Codec for AccountTakeoverActionsType.
-}
accountTakeoverActionsTypeCodec : Codec AccountTakeoverActionsType
accountTakeoverActionsTypeCodec =
    Codec.object AccountTakeoverActionsType
        |> Codec.field "MediumAction" .mediumAction accountTakeoverActionTypeCodec
        |> Codec.field "LowAction" .lowAction accountTakeoverActionTypeCodec
        |> Codec.field "HighAction" .highAction accountTakeoverActionTypeCodec
        |> Codec.buildObject


{-| Codec for AccountTakeoverActionType.
-}
accountTakeoverActionTypeCodec : Codec AccountTakeoverActionType
accountTakeoverActionTypeCodec =
    Codec.object AccountTakeoverActionType
        |> Codec.field "Notify" .notify Codec.bool
        |> Codec.field "EventAction" .eventAction accountTakeoverEventActionTypeCodec
        |> Codec.buildObject


{-| Codec for AccountTakeoverActionNotifyType.
-}
accountTakeoverActionNotifyTypeCodec : Codec AccountTakeoverActionNotifyType
accountTakeoverActionNotifyTypeCodec =
    Codec.bool


{-| Codec for AwsaccountIdType.
-}
awsaccountIdTypeCodec : Codec AwsaccountIdType
awsaccountIdTypeCodec =
    Codec.string
