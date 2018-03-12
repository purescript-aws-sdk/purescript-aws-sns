

-- | <fullname>Amazon Simple Notification Service</fullname> <p>Amazon Simple Notification Service (Amazon SNS) is a web service that enables you to build distributed web-enabled applications. Applications can use Amazon SNS to easily push real-time notification messages to interested subscribers over multiple delivery protocols. For more information about this product see <a href="http://aws.amazon.com/sns/">http://aws.amazon.com/sns</a>. For detailed information about Amazon SNS features and their associated API calls, see the <a href="http://docs.aws.amazon.com/sns/latest/dg/">Amazon SNS Developer Guide</a>. </p> <p>We also provide SDKs that enable you to access Amazon SNS from your preferred programming language. The SDKs contain functionality that automatically takes care of tasks such as: cryptographically signing your service requests, retrying requests, and handling error responses. For a list of available SDKs, go to <a href="http://aws.amazon.com/tools/">Tools for Amazon Web Services</a>. </p>
module AWS.SNS where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)
import Data.Foreign as Foreign
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.NullOrUndefined as NullOrUndefined
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap as StrMap

import AWS.Request as Request
import AWS.Request.Types as Types


-- | <p>Adds a statement to a topic's access control policy, granting access for the specified AWS accounts to the specified actions.</p>
addPermission :: forall eff. AddPermissionInput -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
addPermission = Request.request service method  where
    service = Request.ServiceName "SNS"
    method = Request.MethodName "addPermission"


-- | <p>Accepts a phone number and indicates whether the phone holder has opted out of receiving SMS messages from your account. You cannot send SMS messages to a number that is opted out.</p> <p>To resume sending messages, you can opt in the number by using the <code>OptInPhoneNumber</code> action.</p>
checkIfPhoneNumberIsOptedOut :: forall eff. CheckIfPhoneNumberIsOptedOutInput -> Aff (exception :: EXCEPTION | eff) CheckIfPhoneNumberIsOptedOutResponse
checkIfPhoneNumberIsOptedOut = Request.request service method  where
    service = Request.ServiceName "SNS"
    method = Request.MethodName "checkIfPhoneNumberIsOptedOut"


-- | <p>Verifies an endpoint owner's intent to receive messages by validating the token sent to the endpoint by an earlier <code>Subscribe</code> action. If the token is valid, the action creates a new subscription and returns its Amazon Resource Name (ARN). This call requires an AWS signature only when the <code>AuthenticateOnUnsubscribe</code> flag is set to "true".</p>
confirmSubscription :: forall eff. ConfirmSubscriptionInput -> Aff (exception :: EXCEPTION | eff) ConfirmSubscriptionResponse
confirmSubscription = Request.request service method  where
    service = Request.ServiceName "SNS"
    method = Request.MethodName "confirmSubscription"


-- | <p>Creates a platform application object for one of the supported push notification services, such as APNS and GCM, to which devices and mobile apps may register. You must specify PlatformPrincipal and PlatformCredential attributes when using the <code>CreatePlatformApplication</code> action. The PlatformPrincipal is received from the notification service. For APNS/APNS_SANDBOX, PlatformPrincipal is "SSL certificate". For GCM, PlatformPrincipal is not applicable. For ADM, PlatformPrincipal is "client id". The PlatformCredential is also received from the notification service. For WNS, PlatformPrincipal is "Package Security Identifier". For MPNS, PlatformPrincipal is "TLS certificate". For Baidu, PlatformPrincipal is "API key".</p> <p>For APNS/APNS_SANDBOX, PlatformCredential is "private key". For GCM, PlatformCredential is "API key". For ADM, PlatformCredential is "client secret". For WNS, PlatformCredential is "secret key". For MPNS, PlatformCredential is "private key". For Baidu, PlatformCredential is "secret key". The PlatformApplicationArn that is returned when using <code>CreatePlatformApplication</code> is then used as an attribute for the <code>CreatePlatformEndpoint</code> action. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. For more information about obtaining the PlatformPrincipal and PlatformCredential for each of the supported push notification services, see <a href="http://docs.aws.amazon.com/sns/latest/dg/mobile-push-apns.html">Getting Started with Apple Push Notification Service</a>, <a href="http://docs.aws.amazon.com/sns/latest/dg/mobile-push-adm.html">Getting Started with Amazon Device Messaging</a>, <a href="http://docs.aws.amazon.com/sns/latest/dg/mobile-push-baidu.html">Getting Started with Baidu Cloud Push</a>, <a href="http://docs.aws.amazon.com/sns/latest/dg/mobile-push-gcm.html">Getting Started with Google Cloud Messaging for Android</a>, <a href="http://docs.aws.amazon.com/sns/latest/dg/mobile-push-mpns.html">Getting Started with MPNS</a>, or <a href="http://docs.aws.amazon.com/sns/latest/dg/mobile-push-wns.html">Getting Started with WNS</a>. </p>
createPlatformApplication :: forall eff. CreatePlatformApplicationInput -> Aff (exception :: EXCEPTION | eff) CreatePlatformApplicationResponse
createPlatformApplication = Request.request service method  where
    service = Request.ServiceName "SNS"
    method = Request.MethodName "createPlatformApplication"


-- | <p>Creates an endpoint for a device and mobile app on one of the supported push notification services, such as GCM and APNS. <code>CreatePlatformEndpoint</code> requires the PlatformApplicationArn that is returned from <code>CreatePlatformApplication</code>. The EndpointArn that is returned when using <code>CreatePlatformEndpoint</code> can then be used by the <code>Publish</code> action to send a message to a mobile app or by the <code>Subscribe</code> action for subscription to a topic. The <code>CreatePlatformEndpoint</code> action is idempotent, so if the requester already owns an endpoint with the same device token and attributes, that endpoint's ARN is returned without creating a new endpoint. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p> <p>When using <code>CreatePlatformEndpoint</code> with Baidu, two attributes must be provided: ChannelId and UserId. The token field must also contain the ChannelId. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePushBaiduEndpoint.html">Creating an Amazon SNS Endpoint for Baidu</a>. </p>
createPlatformEndpoint :: forall eff. CreatePlatformEndpointInput -> Aff (exception :: EXCEPTION | eff) CreateEndpointResponse
createPlatformEndpoint = Request.request service method  where
    service = Request.ServiceName "SNS"
    method = Request.MethodName "createPlatformEndpoint"


-- | <p>Creates a topic to which notifications can be published. Users can create at most 100,000 topics. For more information, see <a href="http://aws.amazon.com/sns/">http://aws.amazon.com/sns</a>. This action is idempotent, so if the requester already owns a topic with the specified name, that topic's ARN is returned without creating a new topic.</p>
createTopic :: forall eff. CreateTopicInput -> Aff (exception :: EXCEPTION | eff) CreateTopicResponse
createTopic = Request.request service method  where
    service = Request.ServiceName "SNS"
    method = Request.MethodName "createTopic"


-- | <p>Deletes the endpoint for a device and mobile app from Amazon SNS. This action is idempotent. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p> <p>When you delete an endpoint that is also subscribed to a topic, then you must also unsubscribe the endpoint from the topic.</p>
deleteEndpoint :: forall eff. DeleteEndpointInput -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteEndpoint = Request.request service method  where
    service = Request.ServiceName "SNS"
    method = Request.MethodName "deleteEndpoint"


-- | <p>Deletes a platform application object for one of the supported push notification services, such as APNS and GCM. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>
deletePlatformApplication :: forall eff. DeletePlatformApplicationInput -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deletePlatformApplication = Request.request service method  where
    service = Request.ServiceName "SNS"
    method = Request.MethodName "deletePlatformApplication"


-- | <p>Deletes a topic and all its subscriptions. Deleting a topic might prevent some messages previously sent to the topic from being delivered to subscribers. This action is idempotent, so deleting a topic that does not exist does not result in an error.</p>
deleteTopic :: forall eff. DeleteTopicInput -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteTopic = Request.request service method  where
    service = Request.ServiceName "SNS"
    method = Request.MethodName "deleteTopic"


-- | <p>Retrieves the endpoint attributes for a device on one of the supported push notification services, such as GCM and APNS. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>
getEndpointAttributes :: forall eff. GetEndpointAttributesInput -> Aff (exception :: EXCEPTION | eff) GetEndpointAttributesResponse
getEndpointAttributes = Request.request service method  where
    service = Request.ServiceName "SNS"
    method = Request.MethodName "getEndpointAttributes"


-- | <p>Retrieves the attributes of the platform application object for the supported push notification services, such as APNS and GCM. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>
getPlatformApplicationAttributes :: forall eff. GetPlatformApplicationAttributesInput -> Aff (exception :: EXCEPTION | eff) GetPlatformApplicationAttributesResponse
getPlatformApplicationAttributes = Request.request service method  where
    service = Request.ServiceName "SNS"
    method = Request.MethodName "getPlatformApplicationAttributes"


-- | <p>Returns the settings for sending SMS messages from your account.</p> <p>These settings are set with the <code>SetSMSAttributes</code> action.</p>
getSMSAttributes :: forall eff. GetSMSAttributesInput -> Aff (exception :: EXCEPTION | eff) GetSMSAttributesResponse
getSMSAttributes = Request.request service method  where
    service = Request.ServiceName "SNS"
    method = Request.MethodName "getSMSAttributes"


-- | <p>Returns all of the properties of a subscription.</p>
getSubscriptionAttributes :: forall eff. GetSubscriptionAttributesInput -> Aff (exception :: EXCEPTION | eff) GetSubscriptionAttributesResponse
getSubscriptionAttributes = Request.request service method  where
    service = Request.ServiceName "SNS"
    method = Request.MethodName "getSubscriptionAttributes"


-- | <p>Returns all of the properties of a topic. Topic properties returned might differ based on the authorization of the user.</p>
getTopicAttributes :: forall eff. GetTopicAttributesInput -> Aff (exception :: EXCEPTION | eff) GetTopicAttributesResponse
getTopicAttributes = Request.request service method  where
    service = Request.ServiceName "SNS"
    method = Request.MethodName "getTopicAttributes"


-- | <p>Lists the endpoints and endpoint attributes for devices in a supported push notification service, such as GCM and APNS. The results for <code>ListEndpointsByPlatformApplication</code> are paginated and return a limited list of endpoints, up to 100. If additional records are available after the first page results, then a NextToken string will be returned. To receive the next page, you call <code>ListEndpointsByPlatformApplication</code> again using the NextToken string received from the previous call. When there are no more records to return, NextToken will be null. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>
listEndpointsByPlatformApplication :: forall eff. ListEndpointsByPlatformApplicationInput -> Aff (exception :: EXCEPTION | eff) ListEndpointsByPlatformApplicationResponse
listEndpointsByPlatformApplication = Request.request service method  where
    service = Request.ServiceName "SNS"
    method = Request.MethodName "listEndpointsByPlatformApplication"


-- | <p>Returns a list of phone numbers that are opted out, meaning you cannot send SMS messages to them.</p> <p>The results for <code>ListPhoneNumbersOptedOut</code> are paginated, and each page returns up to 100 phone numbers. If additional phone numbers are available after the first page of results, then a <code>NextToken</code> string will be returned. To receive the next page, you call <code>ListPhoneNumbersOptedOut</code> again using the <code>NextToken</code> string received from the previous call. When there are no more records to return, <code>NextToken</code> will be null.</p>
listPhoneNumbersOptedOut :: forall eff. ListPhoneNumbersOptedOutInput -> Aff (exception :: EXCEPTION | eff) ListPhoneNumbersOptedOutResponse
listPhoneNumbersOptedOut = Request.request service method  where
    service = Request.ServiceName "SNS"
    method = Request.MethodName "listPhoneNumbersOptedOut"


-- | <p>Lists the platform application objects for the supported push notification services, such as APNS and GCM. The results for <code>ListPlatformApplications</code> are paginated and return a limited list of applications, up to 100. If additional records are available after the first page results, then a NextToken string will be returned. To receive the next page, you call <code>ListPlatformApplications</code> using the NextToken string received from the previous call. When there are no more records to return, NextToken will be null. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>
listPlatformApplications :: forall eff. ListPlatformApplicationsInput -> Aff (exception :: EXCEPTION | eff) ListPlatformApplicationsResponse
listPlatformApplications = Request.request service method  where
    service = Request.ServiceName "SNS"
    method = Request.MethodName "listPlatformApplications"


-- | <p>Returns a list of the requester's subscriptions. Each call returns a limited list of subscriptions, up to 100. If there are more subscriptions, a <code>NextToken</code> is also returned. Use the <code>NextToken</code> parameter in a new <code>ListSubscriptions</code> call to get further results.</p>
listSubscriptions :: forall eff. ListSubscriptionsInput -> Aff (exception :: EXCEPTION | eff) ListSubscriptionsResponse
listSubscriptions = Request.request service method  where
    service = Request.ServiceName "SNS"
    method = Request.MethodName "listSubscriptions"


-- | <p>Returns a list of the subscriptions to a specific topic. Each call returns a limited list of subscriptions, up to 100. If there are more subscriptions, a <code>NextToken</code> is also returned. Use the <code>NextToken</code> parameter in a new <code>ListSubscriptionsByTopic</code> call to get further results.</p>
listSubscriptionsByTopic :: forall eff. ListSubscriptionsByTopicInput -> Aff (exception :: EXCEPTION | eff) ListSubscriptionsByTopicResponse
listSubscriptionsByTopic = Request.request service method  where
    service = Request.ServiceName "SNS"
    method = Request.MethodName "listSubscriptionsByTopic"


-- | <p>Returns a list of the requester's topics. Each call returns a limited list of topics, up to 100. If there are more topics, a <code>NextToken</code> is also returned. Use the <code>NextToken</code> parameter in a new <code>ListTopics</code> call to get further results.</p>
listTopics :: forall eff. ListTopicsInput -> Aff (exception :: EXCEPTION | eff) ListTopicsResponse
listTopics = Request.request service method  where
    service = Request.ServiceName "SNS"
    method = Request.MethodName "listTopics"


-- | <p>Use this request to opt in a phone number that is opted out, which enables you to resume sending SMS messages to the number.</p> <p>You can opt in a phone number only once every 30 days.</p>
optInPhoneNumber :: forall eff. OptInPhoneNumberInput -> Aff (exception :: EXCEPTION | eff) OptInPhoneNumberResponse
optInPhoneNumber = Request.request service method  where
    service = Request.ServiceName "SNS"
    method = Request.MethodName "optInPhoneNumber"


-- | <p>Sends a message to all of a topic's subscribed endpoints. When a <code>messageId</code> is returned, the message has been saved and Amazon SNS will attempt to deliver it to the topic's subscribers shortly. The format of the outgoing message to each subscribed endpoint depends on the notification protocol.</p> <p>To use the <code>Publish</code> action for sending a message to a mobile endpoint, such as an app on a Kindle device or mobile phone, you must specify the EndpointArn for the TargetArn parameter. The EndpointArn is returned when making a call with the <code>CreatePlatformEndpoint</code> action. </p> <p>For more information about formatting messages, see <a href="http://docs.aws.amazon.com/sns/latest/dg/mobile-push-send-custommessage.html">Send Custom Platform-Specific Payloads in Messages to Mobile Devices</a>. </p>
publish :: forall eff. PublishInput -> Aff (exception :: EXCEPTION | eff) PublishResponse
publish = Request.request service method  where
    service = Request.ServiceName "SNS"
    method = Request.MethodName "publish"


-- | <p>Removes a statement from a topic's access control policy.</p>
removePermission :: forall eff. RemovePermissionInput -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
removePermission = Request.request service method  where
    service = Request.ServiceName "SNS"
    method = Request.MethodName "removePermission"


-- | <p>Sets the attributes for an endpoint for a device on one of the supported push notification services, such as GCM and APNS. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>
setEndpointAttributes :: forall eff. SetEndpointAttributesInput -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
setEndpointAttributes = Request.request service method  where
    service = Request.ServiceName "SNS"
    method = Request.MethodName "setEndpointAttributes"


-- | <p>Sets the attributes of the platform application object for the supported push notification services, such as APNS and GCM. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. For information on configuring attributes for message delivery status, see <a href="http://docs.aws.amazon.com/sns/latest/dg/sns-msg-status.html">Using Amazon SNS Application Attributes for Message Delivery Status</a>. </p>
setPlatformApplicationAttributes :: forall eff. SetPlatformApplicationAttributesInput -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
setPlatformApplicationAttributes = Request.request service method  where
    service = Request.ServiceName "SNS"
    method = Request.MethodName "setPlatformApplicationAttributes"


-- | <p>Use this request to set the default settings for sending SMS messages and receiving daily SMS usage reports.</p> <p>You can override some of these settings for a single message when you use the <code>Publish</code> action with the <code>MessageAttributes.entry.N</code> parameter. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/sms_publish-to-phone.html">Sending an SMS Message</a> in the <i>Amazon SNS Developer Guide</i>.</p>
setSMSAttributes :: forall eff. SetSMSAttributesInput -> Aff (exception :: EXCEPTION | eff) SetSMSAttributesResponse
setSMSAttributes = Request.request service method  where
    service = Request.ServiceName "SNS"
    method = Request.MethodName "setSMSAttributes"


-- | <p>Allows a subscription owner to set an attribute of the topic to a new value.</p>
setSubscriptionAttributes :: forall eff. SetSubscriptionAttributesInput -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
setSubscriptionAttributes = Request.request service method  where
    service = Request.ServiceName "SNS"
    method = Request.MethodName "setSubscriptionAttributes"


-- | <p>Allows a topic owner to set an attribute of the topic to a new value.</p>
setTopicAttributes :: forall eff. SetTopicAttributesInput -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
setTopicAttributes = Request.request service method  where
    service = Request.ServiceName "SNS"
    method = Request.MethodName "setTopicAttributes"


-- | <p>Prepares to subscribe an endpoint by sending the endpoint a confirmation message. To actually create a subscription, the endpoint owner must call the <code>ConfirmSubscription</code> action with the token from the confirmation message. Confirmation tokens are valid for three days.</p>
subscribe :: forall eff. SubscribeInput -> Aff (exception :: EXCEPTION | eff) SubscribeResponse
subscribe = Request.request service method  where
    service = Request.ServiceName "SNS"
    method = Request.MethodName "subscribe"


-- | <p>Deletes a subscription. If the subscription requires authentication for deletion, only the owner of the subscription or the topic's owner can unsubscribe, and an AWS signature is required. If the <code>Unsubscribe</code> call does not require authentication and the requester is not the subscription owner, a final cancellation message is delivered to the endpoint, so that the endpoint owner can easily resubscribe to the topic if the <code>Unsubscribe</code> request was unintended.</p>
unsubscribe :: forall eff. UnsubscribeInput -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
unsubscribe = Request.request service method  where
    service = Request.ServiceName "SNS"
    method = Request.MethodName "unsubscribe"


newtype ActionsList = ActionsList (Array Action')
derive instance newtypeActionsList :: Newtype ActionsList _
derive instance repGenericActionsList :: Generic ActionsList _
instance showActionsList :: Show ActionsList where
  show = genericShow
instance decodeActionsList :: Decode ActionsList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeActionsList :: Encode ActionsList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype AddPermissionInput = AddPermissionInput 
  { "TopicArn" :: (TopicARN')
  , "Label" :: (Label')
  , "AWSAccountId" :: (DelegatesList)
  , "ActionName" :: (ActionsList)
  }
derive instance newtypeAddPermissionInput :: Newtype AddPermissionInput _
derive instance repGenericAddPermissionInput :: Generic AddPermissionInput _
instance showAddPermissionInput :: Show AddPermissionInput where
  show = genericShow
instance decodeAddPermissionInput :: Decode AddPermissionInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAddPermissionInput :: Encode AddPermissionInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AddPermissionInput from required parameters
newAddPermissionInput :: DelegatesList -> ActionsList -> Label' -> TopicARN' -> AddPermissionInput
newAddPermissionInput _AWSAccountId _ActionName _Label _TopicArn = AddPermissionInput { "AWSAccountId": _AWSAccountId, "ActionName": _ActionName, "Label": _Label, "TopicArn": _TopicArn }

-- | Constructs AddPermissionInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddPermissionInput' :: DelegatesList -> ActionsList -> Label' -> TopicARN' -> ( { "TopicArn" :: (TopicARN') , "Label" :: (Label') , "AWSAccountId" :: (DelegatesList) , "ActionName" :: (ActionsList) } -> {"TopicArn" :: (TopicARN') , "Label" :: (Label') , "AWSAccountId" :: (DelegatesList) , "ActionName" :: (ActionsList) } ) -> AddPermissionInput
newAddPermissionInput' _AWSAccountId _ActionName _Label _TopicArn customize = (AddPermissionInput <<< customize) { "AWSAccountId": _AWSAccountId, "ActionName": _ActionName, "Label": _Label, "TopicArn": _TopicArn }



-- | <p>Indicates that the user has been denied access to the requested resource.</p>
newtype AuthorizationErrorException = AuthorizationErrorException 
  { "message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeAuthorizationErrorException :: Newtype AuthorizationErrorException _
derive instance repGenericAuthorizationErrorException :: Generic AuthorizationErrorException _
instance showAuthorizationErrorException :: Show AuthorizationErrorException where
  show = genericShow
instance decodeAuthorizationErrorException :: Decode AuthorizationErrorException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAuthorizationErrorException :: Encode AuthorizationErrorException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AuthorizationErrorException from required parameters
newAuthorizationErrorException :: AuthorizationErrorException
newAuthorizationErrorException  = AuthorizationErrorException { "message": (NullOrUndefined Nothing) }

-- | Constructs AuthorizationErrorException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAuthorizationErrorException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (String) } -> {"message" :: NullOrUndefined.NullOrUndefined (String) } ) -> AuthorizationErrorException
newAuthorizationErrorException'  customize = (AuthorizationErrorException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype Binary = Binary String
derive instance newtypeBinary :: Newtype Binary _
derive instance repGenericBinary :: Generic Binary _
instance showBinary :: Show Binary where
  show = genericShow
instance decodeBinary :: Decode Binary where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBinary :: Encode Binary where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The input for the <code>CheckIfPhoneNumberIsOptedOut</code> action.</p>
newtype CheckIfPhoneNumberIsOptedOutInput = CheckIfPhoneNumberIsOptedOutInput 
  { "phoneNumber" :: (PhoneNumber)
  }
derive instance newtypeCheckIfPhoneNumberIsOptedOutInput :: Newtype CheckIfPhoneNumberIsOptedOutInput _
derive instance repGenericCheckIfPhoneNumberIsOptedOutInput :: Generic CheckIfPhoneNumberIsOptedOutInput _
instance showCheckIfPhoneNumberIsOptedOutInput :: Show CheckIfPhoneNumberIsOptedOutInput where
  show = genericShow
instance decodeCheckIfPhoneNumberIsOptedOutInput :: Decode CheckIfPhoneNumberIsOptedOutInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCheckIfPhoneNumberIsOptedOutInput :: Encode CheckIfPhoneNumberIsOptedOutInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CheckIfPhoneNumberIsOptedOutInput from required parameters
newCheckIfPhoneNumberIsOptedOutInput :: PhoneNumber -> CheckIfPhoneNumberIsOptedOutInput
newCheckIfPhoneNumberIsOptedOutInput _phoneNumber = CheckIfPhoneNumberIsOptedOutInput { "phoneNumber": _phoneNumber }

-- | Constructs CheckIfPhoneNumberIsOptedOutInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCheckIfPhoneNumberIsOptedOutInput' :: PhoneNumber -> ( { "phoneNumber" :: (PhoneNumber) } -> {"phoneNumber" :: (PhoneNumber) } ) -> CheckIfPhoneNumberIsOptedOutInput
newCheckIfPhoneNumberIsOptedOutInput' _phoneNumber customize = (CheckIfPhoneNumberIsOptedOutInput <<< customize) { "phoneNumber": _phoneNumber }



-- | <p>The response from the <code>CheckIfPhoneNumberIsOptedOut</code> action.</p>
newtype CheckIfPhoneNumberIsOptedOutResponse = CheckIfPhoneNumberIsOptedOutResponse 
  { "isOptedOut" :: NullOrUndefined.NullOrUndefined (Boolean)
  }
derive instance newtypeCheckIfPhoneNumberIsOptedOutResponse :: Newtype CheckIfPhoneNumberIsOptedOutResponse _
derive instance repGenericCheckIfPhoneNumberIsOptedOutResponse :: Generic CheckIfPhoneNumberIsOptedOutResponse _
instance showCheckIfPhoneNumberIsOptedOutResponse :: Show CheckIfPhoneNumberIsOptedOutResponse where
  show = genericShow
instance decodeCheckIfPhoneNumberIsOptedOutResponse :: Decode CheckIfPhoneNumberIsOptedOutResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCheckIfPhoneNumberIsOptedOutResponse :: Encode CheckIfPhoneNumberIsOptedOutResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CheckIfPhoneNumberIsOptedOutResponse from required parameters
newCheckIfPhoneNumberIsOptedOutResponse :: CheckIfPhoneNumberIsOptedOutResponse
newCheckIfPhoneNumberIsOptedOutResponse  = CheckIfPhoneNumberIsOptedOutResponse { "isOptedOut": (NullOrUndefined Nothing) }

-- | Constructs CheckIfPhoneNumberIsOptedOutResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCheckIfPhoneNumberIsOptedOutResponse' :: ( { "isOptedOut" :: NullOrUndefined.NullOrUndefined (Boolean) } -> {"isOptedOut" :: NullOrUndefined.NullOrUndefined (Boolean) } ) -> CheckIfPhoneNumberIsOptedOutResponse
newCheckIfPhoneNumberIsOptedOutResponse'  customize = (CheckIfPhoneNumberIsOptedOutResponse <<< customize) { "isOptedOut": (NullOrUndefined Nothing) }



-- | <p>Input for ConfirmSubscription action.</p>
newtype ConfirmSubscriptionInput = ConfirmSubscriptionInput 
  { "TopicArn" :: (TopicARN')
  , "Token" :: (Token')
  , "AuthenticateOnUnsubscribe" :: NullOrUndefined.NullOrUndefined (AuthenticateOnUnsubscribe')
  }
derive instance newtypeConfirmSubscriptionInput :: Newtype ConfirmSubscriptionInput _
derive instance repGenericConfirmSubscriptionInput :: Generic ConfirmSubscriptionInput _
instance showConfirmSubscriptionInput :: Show ConfirmSubscriptionInput where
  show = genericShow
instance decodeConfirmSubscriptionInput :: Decode ConfirmSubscriptionInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeConfirmSubscriptionInput :: Encode ConfirmSubscriptionInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ConfirmSubscriptionInput from required parameters
newConfirmSubscriptionInput :: Token' -> TopicARN' -> ConfirmSubscriptionInput
newConfirmSubscriptionInput _Token _TopicArn = ConfirmSubscriptionInput { "Token": _Token, "TopicArn": _TopicArn, "AuthenticateOnUnsubscribe": (NullOrUndefined Nothing) }

-- | Constructs ConfirmSubscriptionInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConfirmSubscriptionInput' :: Token' -> TopicARN' -> ( { "TopicArn" :: (TopicARN') , "Token" :: (Token') , "AuthenticateOnUnsubscribe" :: NullOrUndefined.NullOrUndefined (AuthenticateOnUnsubscribe') } -> {"TopicArn" :: (TopicARN') , "Token" :: (Token') , "AuthenticateOnUnsubscribe" :: NullOrUndefined.NullOrUndefined (AuthenticateOnUnsubscribe') } ) -> ConfirmSubscriptionInput
newConfirmSubscriptionInput' _Token _TopicArn customize = (ConfirmSubscriptionInput <<< customize) { "Token": _Token, "TopicArn": _TopicArn, "AuthenticateOnUnsubscribe": (NullOrUndefined Nothing) }



-- | <p>Response for ConfirmSubscriptions action.</p>
newtype ConfirmSubscriptionResponse = ConfirmSubscriptionResponse 
  { "SubscriptionArn" :: NullOrUndefined.NullOrUndefined (SubscriptionARN')
  }
derive instance newtypeConfirmSubscriptionResponse :: Newtype ConfirmSubscriptionResponse _
derive instance repGenericConfirmSubscriptionResponse :: Generic ConfirmSubscriptionResponse _
instance showConfirmSubscriptionResponse :: Show ConfirmSubscriptionResponse where
  show = genericShow
instance decodeConfirmSubscriptionResponse :: Decode ConfirmSubscriptionResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeConfirmSubscriptionResponse :: Encode ConfirmSubscriptionResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ConfirmSubscriptionResponse from required parameters
newConfirmSubscriptionResponse :: ConfirmSubscriptionResponse
newConfirmSubscriptionResponse  = ConfirmSubscriptionResponse { "SubscriptionArn": (NullOrUndefined Nothing) }

-- | Constructs ConfirmSubscriptionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConfirmSubscriptionResponse' :: ( { "SubscriptionArn" :: NullOrUndefined.NullOrUndefined (SubscriptionARN') } -> {"SubscriptionArn" :: NullOrUndefined.NullOrUndefined (SubscriptionARN') } ) -> ConfirmSubscriptionResponse
newConfirmSubscriptionResponse'  customize = (ConfirmSubscriptionResponse <<< customize) { "SubscriptionArn": (NullOrUndefined Nothing) }



-- | <p>Response from CreateEndpoint action.</p>
newtype CreateEndpointResponse = CreateEndpointResponse 
  { "EndpointArn" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeCreateEndpointResponse :: Newtype CreateEndpointResponse _
derive instance repGenericCreateEndpointResponse :: Generic CreateEndpointResponse _
instance showCreateEndpointResponse :: Show CreateEndpointResponse where
  show = genericShow
instance decodeCreateEndpointResponse :: Decode CreateEndpointResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateEndpointResponse :: Encode CreateEndpointResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateEndpointResponse from required parameters
newCreateEndpointResponse :: CreateEndpointResponse
newCreateEndpointResponse  = CreateEndpointResponse { "EndpointArn": (NullOrUndefined Nothing) }

-- | Constructs CreateEndpointResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateEndpointResponse' :: ( { "EndpointArn" :: NullOrUndefined.NullOrUndefined (String) } -> {"EndpointArn" :: NullOrUndefined.NullOrUndefined (String) } ) -> CreateEndpointResponse
newCreateEndpointResponse'  customize = (CreateEndpointResponse <<< customize) { "EndpointArn": (NullOrUndefined Nothing) }



-- | <p>Input for CreatePlatformApplication action.</p>
newtype CreatePlatformApplicationInput = CreatePlatformApplicationInput 
  { "Name" :: (String)
  , "Platform" :: (String)
  , "Attributes" :: (MapStringToString)
  }
derive instance newtypeCreatePlatformApplicationInput :: Newtype CreatePlatformApplicationInput _
derive instance repGenericCreatePlatformApplicationInput :: Generic CreatePlatformApplicationInput _
instance showCreatePlatformApplicationInput :: Show CreatePlatformApplicationInput where
  show = genericShow
instance decodeCreatePlatformApplicationInput :: Decode CreatePlatformApplicationInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreatePlatformApplicationInput :: Encode CreatePlatformApplicationInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreatePlatformApplicationInput from required parameters
newCreatePlatformApplicationInput :: MapStringToString -> String -> String -> CreatePlatformApplicationInput
newCreatePlatformApplicationInput _Attributes _Name _Platform = CreatePlatformApplicationInput { "Attributes": _Attributes, "Name": _Name, "Platform": _Platform }

-- | Constructs CreatePlatformApplicationInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatePlatformApplicationInput' :: MapStringToString -> String -> String -> ( { "Name" :: (String) , "Platform" :: (String) , "Attributes" :: (MapStringToString) } -> {"Name" :: (String) , "Platform" :: (String) , "Attributes" :: (MapStringToString) } ) -> CreatePlatformApplicationInput
newCreatePlatformApplicationInput' _Attributes _Name _Platform customize = (CreatePlatformApplicationInput <<< customize) { "Attributes": _Attributes, "Name": _Name, "Platform": _Platform }



-- | <p>Response from CreatePlatformApplication action.</p>
newtype CreatePlatformApplicationResponse = CreatePlatformApplicationResponse 
  { "PlatformApplicationArn" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeCreatePlatformApplicationResponse :: Newtype CreatePlatformApplicationResponse _
derive instance repGenericCreatePlatformApplicationResponse :: Generic CreatePlatformApplicationResponse _
instance showCreatePlatformApplicationResponse :: Show CreatePlatformApplicationResponse where
  show = genericShow
instance decodeCreatePlatformApplicationResponse :: Decode CreatePlatformApplicationResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreatePlatformApplicationResponse :: Encode CreatePlatformApplicationResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreatePlatformApplicationResponse from required parameters
newCreatePlatformApplicationResponse :: CreatePlatformApplicationResponse
newCreatePlatformApplicationResponse  = CreatePlatformApplicationResponse { "PlatformApplicationArn": (NullOrUndefined Nothing) }

-- | Constructs CreatePlatformApplicationResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatePlatformApplicationResponse' :: ( { "PlatformApplicationArn" :: NullOrUndefined.NullOrUndefined (String) } -> {"PlatformApplicationArn" :: NullOrUndefined.NullOrUndefined (String) } ) -> CreatePlatformApplicationResponse
newCreatePlatformApplicationResponse'  customize = (CreatePlatformApplicationResponse <<< customize) { "PlatformApplicationArn": (NullOrUndefined Nothing) }



-- | <p>Input for CreatePlatformEndpoint action.</p>
newtype CreatePlatformEndpointInput = CreatePlatformEndpointInput 
  { "PlatformApplicationArn" :: (String)
  , "Token" :: (String)
  , "CustomUserData" :: NullOrUndefined.NullOrUndefined (String)
  , "Attributes" :: NullOrUndefined.NullOrUndefined (MapStringToString)
  }
derive instance newtypeCreatePlatformEndpointInput :: Newtype CreatePlatformEndpointInput _
derive instance repGenericCreatePlatformEndpointInput :: Generic CreatePlatformEndpointInput _
instance showCreatePlatformEndpointInput :: Show CreatePlatformEndpointInput where
  show = genericShow
instance decodeCreatePlatformEndpointInput :: Decode CreatePlatformEndpointInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreatePlatformEndpointInput :: Encode CreatePlatformEndpointInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreatePlatformEndpointInput from required parameters
newCreatePlatformEndpointInput :: String -> String -> CreatePlatformEndpointInput
newCreatePlatformEndpointInput _PlatformApplicationArn _Token = CreatePlatformEndpointInput { "PlatformApplicationArn": _PlatformApplicationArn, "Token": _Token, "Attributes": (NullOrUndefined Nothing), "CustomUserData": (NullOrUndefined Nothing) }

-- | Constructs CreatePlatformEndpointInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatePlatformEndpointInput' :: String -> String -> ( { "PlatformApplicationArn" :: (String) , "Token" :: (String) , "CustomUserData" :: NullOrUndefined.NullOrUndefined (String) , "Attributes" :: NullOrUndefined.NullOrUndefined (MapStringToString) } -> {"PlatformApplicationArn" :: (String) , "Token" :: (String) , "CustomUserData" :: NullOrUndefined.NullOrUndefined (String) , "Attributes" :: NullOrUndefined.NullOrUndefined (MapStringToString) } ) -> CreatePlatformEndpointInput
newCreatePlatformEndpointInput' _PlatformApplicationArn _Token customize = (CreatePlatformEndpointInput <<< customize) { "PlatformApplicationArn": _PlatformApplicationArn, "Token": _Token, "Attributes": (NullOrUndefined Nothing), "CustomUserData": (NullOrUndefined Nothing) }



-- | <p>Input for CreateTopic action.</p>
newtype CreateTopicInput = CreateTopicInput 
  { "Name" :: (TopicName')
  }
derive instance newtypeCreateTopicInput :: Newtype CreateTopicInput _
derive instance repGenericCreateTopicInput :: Generic CreateTopicInput _
instance showCreateTopicInput :: Show CreateTopicInput where
  show = genericShow
instance decodeCreateTopicInput :: Decode CreateTopicInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateTopicInput :: Encode CreateTopicInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateTopicInput from required parameters
newCreateTopicInput :: TopicName' -> CreateTopicInput
newCreateTopicInput _Name = CreateTopicInput { "Name": _Name }

-- | Constructs CreateTopicInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateTopicInput' :: TopicName' -> ( { "Name" :: (TopicName') } -> {"Name" :: (TopicName') } ) -> CreateTopicInput
newCreateTopicInput' _Name customize = (CreateTopicInput <<< customize) { "Name": _Name }



-- | <p>Response from CreateTopic action.</p>
newtype CreateTopicResponse = CreateTopicResponse 
  { "TopicArn" :: NullOrUndefined.NullOrUndefined (TopicARN')
  }
derive instance newtypeCreateTopicResponse :: Newtype CreateTopicResponse _
derive instance repGenericCreateTopicResponse :: Generic CreateTopicResponse _
instance showCreateTopicResponse :: Show CreateTopicResponse where
  show = genericShow
instance decodeCreateTopicResponse :: Decode CreateTopicResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateTopicResponse :: Encode CreateTopicResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateTopicResponse from required parameters
newCreateTopicResponse :: CreateTopicResponse
newCreateTopicResponse  = CreateTopicResponse { "TopicArn": (NullOrUndefined Nothing) }

-- | Constructs CreateTopicResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateTopicResponse' :: ( { "TopicArn" :: NullOrUndefined.NullOrUndefined (TopicARN') } -> {"TopicArn" :: NullOrUndefined.NullOrUndefined (TopicARN') } ) -> CreateTopicResponse
newCreateTopicResponse'  customize = (CreateTopicResponse <<< customize) { "TopicArn": (NullOrUndefined Nothing) }



newtype DelegatesList = DelegatesList (Array Delegate')
derive instance newtypeDelegatesList :: Newtype DelegatesList _
derive instance repGenericDelegatesList :: Generic DelegatesList _
instance showDelegatesList :: Show DelegatesList where
  show = genericShow
instance decodeDelegatesList :: Decode DelegatesList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDelegatesList :: Encode DelegatesList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Input for DeleteEndpoint action.</p>
newtype DeleteEndpointInput = DeleteEndpointInput 
  { "EndpointArn" :: (String)
  }
derive instance newtypeDeleteEndpointInput :: Newtype DeleteEndpointInput _
derive instance repGenericDeleteEndpointInput :: Generic DeleteEndpointInput _
instance showDeleteEndpointInput :: Show DeleteEndpointInput where
  show = genericShow
instance decodeDeleteEndpointInput :: Decode DeleteEndpointInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteEndpointInput :: Encode DeleteEndpointInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteEndpointInput from required parameters
newDeleteEndpointInput :: String -> DeleteEndpointInput
newDeleteEndpointInput _EndpointArn = DeleteEndpointInput { "EndpointArn": _EndpointArn }

-- | Constructs DeleteEndpointInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteEndpointInput' :: String -> ( { "EndpointArn" :: (String) } -> {"EndpointArn" :: (String) } ) -> DeleteEndpointInput
newDeleteEndpointInput' _EndpointArn customize = (DeleteEndpointInput <<< customize) { "EndpointArn": _EndpointArn }



-- | <p>Input for DeletePlatformApplication action.</p>
newtype DeletePlatformApplicationInput = DeletePlatformApplicationInput 
  { "PlatformApplicationArn" :: (String)
  }
derive instance newtypeDeletePlatformApplicationInput :: Newtype DeletePlatformApplicationInput _
derive instance repGenericDeletePlatformApplicationInput :: Generic DeletePlatformApplicationInput _
instance showDeletePlatformApplicationInput :: Show DeletePlatformApplicationInput where
  show = genericShow
instance decodeDeletePlatformApplicationInput :: Decode DeletePlatformApplicationInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeletePlatformApplicationInput :: Encode DeletePlatformApplicationInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeletePlatformApplicationInput from required parameters
newDeletePlatformApplicationInput :: String -> DeletePlatformApplicationInput
newDeletePlatformApplicationInput _PlatformApplicationArn = DeletePlatformApplicationInput { "PlatformApplicationArn": _PlatformApplicationArn }

-- | Constructs DeletePlatformApplicationInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeletePlatformApplicationInput' :: String -> ( { "PlatformApplicationArn" :: (String) } -> {"PlatformApplicationArn" :: (String) } ) -> DeletePlatformApplicationInput
newDeletePlatformApplicationInput' _PlatformApplicationArn customize = (DeletePlatformApplicationInput <<< customize) { "PlatformApplicationArn": _PlatformApplicationArn }



newtype DeleteTopicInput = DeleteTopicInput 
  { "TopicArn" :: (TopicARN')
  }
derive instance newtypeDeleteTopicInput :: Newtype DeleteTopicInput _
derive instance repGenericDeleteTopicInput :: Generic DeleteTopicInput _
instance showDeleteTopicInput :: Show DeleteTopicInput where
  show = genericShow
instance decodeDeleteTopicInput :: Decode DeleteTopicInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteTopicInput :: Encode DeleteTopicInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteTopicInput from required parameters
newDeleteTopicInput :: TopicARN' -> DeleteTopicInput
newDeleteTopicInput _TopicArn = DeleteTopicInput { "TopicArn": _TopicArn }

-- | Constructs DeleteTopicInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteTopicInput' :: TopicARN' -> ( { "TopicArn" :: (TopicARN') } -> {"TopicArn" :: (TopicARN') } ) -> DeleteTopicInput
newDeleteTopicInput' _TopicArn customize = (DeleteTopicInput <<< customize) { "TopicArn": _TopicArn }



-- | <p>Endpoint for mobile app and device.</p>
newtype Endpoint = Endpoint 
  { "EndpointArn" :: NullOrUndefined.NullOrUndefined (String)
  , "Attributes" :: NullOrUndefined.NullOrUndefined (MapStringToString)
  }
derive instance newtypeEndpoint :: Newtype Endpoint _
derive instance repGenericEndpoint :: Generic Endpoint _
instance showEndpoint :: Show Endpoint where
  show = genericShow
instance decodeEndpoint :: Decode Endpoint where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEndpoint :: Encode Endpoint where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Endpoint from required parameters
newEndpoint :: Endpoint
newEndpoint  = Endpoint { "Attributes": (NullOrUndefined Nothing), "EndpointArn": (NullOrUndefined Nothing) }

-- | Constructs Endpoint's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEndpoint' :: ( { "EndpointArn" :: NullOrUndefined.NullOrUndefined (String) , "Attributes" :: NullOrUndefined.NullOrUndefined (MapStringToString) } -> {"EndpointArn" :: NullOrUndefined.NullOrUndefined (String) , "Attributes" :: NullOrUndefined.NullOrUndefined (MapStringToString) } ) -> Endpoint
newEndpoint'  customize = (Endpoint <<< customize) { "Attributes": (NullOrUndefined Nothing), "EndpointArn": (NullOrUndefined Nothing) }



-- | <p>Exception error indicating endpoint disabled.</p>
newtype EndpointDisabledException = EndpointDisabledException 
  { "message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeEndpointDisabledException :: Newtype EndpointDisabledException _
derive instance repGenericEndpointDisabledException :: Generic EndpointDisabledException _
instance showEndpointDisabledException :: Show EndpointDisabledException where
  show = genericShow
instance decodeEndpointDisabledException :: Decode EndpointDisabledException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEndpointDisabledException :: Encode EndpointDisabledException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs EndpointDisabledException from required parameters
newEndpointDisabledException :: EndpointDisabledException
newEndpointDisabledException  = EndpointDisabledException { "message": (NullOrUndefined Nothing) }

-- | Constructs EndpointDisabledException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEndpointDisabledException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (String) } -> {"message" :: NullOrUndefined.NullOrUndefined (String) } ) -> EndpointDisabledException
newEndpointDisabledException'  customize = (EndpointDisabledException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>Input for GetEndpointAttributes action.</p>
newtype GetEndpointAttributesInput = GetEndpointAttributesInput 
  { "EndpointArn" :: (String)
  }
derive instance newtypeGetEndpointAttributesInput :: Newtype GetEndpointAttributesInput _
derive instance repGenericGetEndpointAttributesInput :: Generic GetEndpointAttributesInput _
instance showGetEndpointAttributesInput :: Show GetEndpointAttributesInput where
  show = genericShow
instance decodeGetEndpointAttributesInput :: Decode GetEndpointAttributesInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetEndpointAttributesInput :: Encode GetEndpointAttributesInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetEndpointAttributesInput from required parameters
newGetEndpointAttributesInput :: String -> GetEndpointAttributesInput
newGetEndpointAttributesInput _EndpointArn = GetEndpointAttributesInput { "EndpointArn": _EndpointArn }

-- | Constructs GetEndpointAttributesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetEndpointAttributesInput' :: String -> ( { "EndpointArn" :: (String) } -> {"EndpointArn" :: (String) } ) -> GetEndpointAttributesInput
newGetEndpointAttributesInput' _EndpointArn customize = (GetEndpointAttributesInput <<< customize) { "EndpointArn": _EndpointArn }



-- | <p>Response from GetEndpointAttributes of the EndpointArn.</p>
newtype GetEndpointAttributesResponse = GetEndpointAttributesResponse 
  { "Attributes" :: NullOrUndefined.NullOrUndefined (MapStringToString)
  }
derive instance newtypeGetEndpointAttributesResponse :: Newtype GetEndpointAttributesResponse _
derive instance repGenericGetEndpointAttributesResponse :: Generic GetEndpointAttributesResponse _
instance showGetEndpointAttributesResponse :: Show GetEndpointAttributesResponse where
  show = genericShow
instance decodeGetEndpointAttributesResponse :: Decode GetEndpointAttributesResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetEndpointAttributesResponse :: Encode GetEndpointAttributesResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetEndpointAttributesResponse from required parameters
newGetEndpointAttributesResponse :: GetEndpointAttributesResponse
newGetEndpointAttributesResponse  = GetEndpointAttributesResponse { "Attributes": (NullOrUndefined Nothing) }

-- | Constructs GetEndpointAttributesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetEndpointAttributesResponse' :: ( { "Attributes" :: NullOrUndefined.NullOrUndefined (MapStringToString) } -> {"Attributes" :: NullOrUndefined.NullOrUndefined (MapStringToString) } ) -> GetEndpointAttributesResponse
newGetEndpointAttributesResponse'  customize = (GetEndpointAttributesResponse <<< customize) { "Attributes": (NullOrUndefined Nothing) }



-- | <p>Input for GetPlatformApplicationAttributes action.</p>
newtype GetPlatformApplicationAttributesInput = GetPlatformApplicationAttributesInput 
  { "PlatformApplicationArn" :: (String)
  }
derive instance newtypeGetPlatformApplicationAttributesInput :: Newtype GetPlatformApplicationAttributesInput _
derive instance repGenericGetPlatformApplicationAttributesInput :: Generic GetPlatformApplicationAttributesInput _
instance showGetPlatformApplicationAttributesInput :: Show GetPlatformApplicationAttributesInput where
  show = genericShow
instance decodeGetPlatformApplicationAttributesInput :: Decode GetPlatformApplicationAttributesInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetPlatformApplicationAttributesInput :: Encode GetPlatformApplicationAttributesInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetPlatformApplicationAttributesInput from required parameters
newGetPlatformApplicationAttributesInput :: String -> GetPlatformApplicationAttributesInput
newGetPlatformApplicationAttributesInput _PlatformApplicationArn = GetPlatformApplicationAttributesInput { "PlatformApplicationArn": _PlatformApplicationArn }

-- | Constructs GetPlatformApplicationAttributesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetPlatformApplicationAttributesInput' :: String -> ( { "PlatformApplicationArn" :: (String) } -> {"PlatformApplicationArn" :: (String) } ) -> GetPlatformApplicationAttributesInput
newGetPlatformApplicationAttributesInput' _PlatformApplicationArn customize = (GetPlatformApplicationAttributesInput <<< customize) { "PlatformApplicationArn": _PlatformApplicationArn }



-- | <p>Response for GetPlatformApplicationAttributes action.</p>
newtype GetPlatformApplicationAttributesResponse = GetPlatformApplicationAttributesResponse 
  { "Attributes" :: NullOrUndefined.NullOrUndefined (MapStringToString)
  }
derive instance newtypeGetPlatformApplicationAttributesResponse :: Newtype GetPlatformApplicationAttributesResponse _
derive instance repGenericGetPlatformApplicationAttributesResponse :: Generic GetPlatformApplicationAttributesResponse _
instance showGetPlatformApplicationAttributesResponse :: Show GetPlatformApplicationAttributesResponse where
  show = genericShow
instance decodeGetPlatformApplicationAttributesResponse :: Decode GetPlatformApplicationAttributesResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetPlatformApplicationAttributesResponse :: Encode GetPlatformApplicationAttributesResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetPlatformApplicationAttributesResponse from required parameters
newGetPlatformApplicationAttributesResponse :: GetPlatformApplicationAttributesResponse
newGetPlatformApplicationAttributesResponse  = GetPlatformApplicationAttributesResponse { "Attributes": (NullOrUndefined Nothing) }

-- | Constructs GetPlatformApplicationAttributesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetPlatformApplicationAttributesResponse' :: ( { "Attributes" :: NullOrUndefined.NullOrUndefined (MapStringToString) } -> {"Attributes" :: NullOrUndefined.NullOrUndefined (MapStringToString) } ) -> GetPlatformApplicationAttributesResponse
newGetPlatformApplicationAttributesResponse'  customize = (GetPlatformApplicationAttributesResponse <<< customize) { "Attributes": (NullOrUndefined Nothing) }



-- | <p>The input for the <code>GetSMSAttributes</code> request.</p>
newtype GetSMSAttributesInput = GetSMSAttributesInput 
  { "attributes" :: NullOrUndefined.NullOrUndefined (ListString)
  }
derive instance newtypeGetSMSAttributesInput :: Newtype GetSMSAttributesInput _
derive instance repGenericGetSMSAttributesInput :: Generic GetSMSAttributesInput _
instance showGetSMSAttributesInput :: Show GetSMSAttributesInput where
  show = genericShow
instance decodeGetSMSAttributesInput :: Decode GetSMSAttributesInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetSMSAttributesInput :: Encode GetSMSAttributesInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetSMSAttributesInput from required parameters
newGetSMSAttributesInput :: GetSMSAttributesInput
newGetSMSAttributesInput  = GetSMSAttributesInput { "attributes": (NullOrUndefined Nothing) }

-- | Constructs GetSMSAttributesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetSMSAttributesInput' :: ( { "attributes" :: NullOrUndefined.NullOrUndefined (ListString) } -> {"attributes" :: NullOrUndefined.NullOrUndefined (ListString) } ) -> GetSMSAttributesInput
newGetSMSAttributesInput'  customize = (GetSMSAttributesInput <<< customize) { "attributes": (NullOrUndefined Nothing) }



-- | <p>The response from the <code>GetSMSAttributes</code> request.</p>
newtype GetSMSAttributesResponse = GetSMSAttributesResponse 
  { "attributes" :: NullOrUndefined.NullOrUndefined (MapStringToString)
  }
derive instance newtypeGetSMSAttributesResponse :: Newtype GetSMSAttributesResponse _
derive instance repGenericGetSMSAttributesResponse :: Generic GetSMSAttributesResponse _
instance showGetSMSAttributesResponse :: Show GetSMSAttributesResponse where
  show = genericShow
instance decodeGetSMSAttributesResponse :: Decode GetSMSAttributesResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetSMSAttributesResponse :: Encode GetSMSAttributesResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetSMSAttributesResponse from required parameters
newGetSMSAttributesResponse :: GetSMSAttributesResponse
newGetSMSAttributesResponse  = GetSMSAttributesResponse { "attributes": (NullOrUndefined Nothing) }

-- | Constructs GetSMSAttributesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetSMSAttributesResponse' :: ( { "attributes" :: NullOrUndefined.NullOrUndefined (MapStringToString) } -> {"attributes" :: NullOrUndefined.NullOrUndefined (MapStringToString) } ) -> GetSMSAttributesResponse
newGetSMSAttributesResponse'  customize = (GetSMSAttributesResponse <<< customize) { "attributes": (NullOrUndefined Nothing) }



-- | <p>Input for GetSubscriptionAttributes.</p>
newtype GetSubscriptionAttributesInput = GetSubscriptionAttributesInput 
  { "SubscriptionArn" :: (SubscriptionARN')
  }
derive instance newtypeGetSubscriptionAttributesInput :: Newtype GetSubscriptionAttributesInput _
derive instance repGenericGetSubscriptionAttributesInput :: Generic GetSubscriptionAttributesInput _
instance showGetSubscriptionAttributesInput :: Show GetSubscriptionAttributesInput where
  show = genericShow
instance decodeGetSubscriptionAttributesInput :: Decode GetSubscriptionAttributesInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetSubscriptionAttributesInput :: Encode GetSubscriptionAttributesInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetSubscriptionAttributesInput from required parameters
newGetSubscriptionAttributesInput :: SubscriptionARN' -> GetSubscriptionAttributesInput
newGetSubscriptionAttributesInput _SubscriptionArn = GetSubscriptionAttributesInput { "SubscriptionArn": _SubscriptionArn }

-- | Constructs GetSubscriptionAttributesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetSubscriptionAttributesInput' :: SubscriptionARN' -> ( { "SubscriptionArn" :: (SubscriptionARN') } -> {"SubscriptionArn" :: (SubscriptionARN') } ) -> GetSubscriptionAttributesInput
newGetSubscriptionAttributesInput' _SubscriptionArn customize = (GetSubscriptionAttributesInput <<< customize) { "SubscriptionArn": _SubscriptionArn }



-- | <p>Response for GetSubscriptionAttributes action.</p>
newtype GetSubscriptionAttributesResponse = GetSubscriptionAttributesResponse 
  { "Attributes" :: NullOrUndefined.NullOrUndefined (SubscriptionAttributesMap)
  }
derive instance newtypeGetSubscriptionAttributesResponse :: Newtype GetSubscriptionAttributesResponse _
derive instance repGenericGetSubscriptionAttributesResponse :: Generic GetSubscriptionAttributesResponse _
instance showGetSubscriptionAttributesResponse :: Show GetSubscriptionAttributesResponse where
  show = genericShow
instance decodeGetSubscriptionAttributesResponse :: Decode GetSubscriptionAttributesResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetSubscriptionAttributesResponse :: Encode GetSubscriptionAttributesResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetSubscriptionAttributesResponse from required parameters
newGetSubscriptionAttributesResponse :: GetSubscriptionAttributesResponse
newGetSubscriptionAttributesResponse  = GetSubscriptionAttributesResponse { "Attributes": (NullOrUndefined Nothing) }

-- | Constructs GetSubscriptionAttributesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetSubscriptionAttributesResponse' :: ( { "Attributes" :: NullOrUndefined.NullOrUndefined (SubscriptionAttributesMap) } -> {"Attributes" :: NullOrUndefined.NullOrUndefined (SubscriptionAttributesMap) } ) -> GetSubscriptionAttributesResponse
newGetSubscriptionAttributesResponse'  customize = (GetSubscriptionAttributesResponse <<< customize) { "Attributes": (NullOrUndefined Nothing) }



-- | <p>Input for GetTopicAttributes action.</p>
newtype GetTopicAttributesInput = GetTopicAttributesInput 
  { "TopicArn" :: (TopicARN')
  }
derive instance newtypeGetTopicAttributesInput :: Newtype GetTopicAttributesInput _
derive instance repGenericGetTopicAttributesInput :: Generic GetTopicAttributesInput _
instance showGetTopicAttributesInput :: Show GetTopicAttributesInput where
  show = genericShow
instance decodeGetTopicAttributesInput :: Decode GetTopicAttributesInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetTopicAttributesInput :: Encode GetTopicAttributesInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetTopicAttributesInput from required parameters
newGetTopicAttributesInput :: TopicARN' -> GetTopicAttributesInput
newGetTopicAttributesInput _TopicArn = GetTopicAttributesInput { "TopicArn": _TopicArn }

-- | Constructs GetTopicAttributesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetTopicAttributesInput' :: TopicARN' -> ( { "TopicArn" :: (TopicARN') } -> {"TopicArn" :: (TopicARN') } ) -> GetTopicAttributesInput
newGetTopicAttributesInput' _TopicArn customize = (GetTopicAttributesInput <<< customize) { "TopicArn": _TopicArn }



-- | <p>Response for GetTopicAttributes action.</p>
newtype GetTopicAttributesResponse = GetTopicAttributesResponse 
  { "Attributes" :: NullOrUndefined.NullOrUndefined (TopicAttributesMap)
  }
derive instance newtypeGetTopicAttributesResponse :: Newtype GetTopicAttributesResponse _
derive instance repGenericGetTopicAttributesResponse :: Generic GetTopicAttributesResponse _
instance showGetTopicAttributesResponse :: Show GetTopicAttributesResponse where
  show = genericShow
instance decodeGetTopicAttributesResponse :: Decode GetTopicAttributesResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetTopicAttributesResponse :: Encode GetTopicAttributesResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetTopicAttributesResponse from required parameters
newGetTopicAttributesResponse :: GetTopicAttributesResponse
newGetTopicAttributesResponse  = GetTopicAttributesResponse { "Attributes": (NullOrUndefined Nothing) }

-- | Constructs GetTopicAttributesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetTopicAttributesResponse' :: ( { "Attributes" :: NullOrUndefined.NullOrUndefined (TopicAttributesMap) } -> {"Attributes" :: NullOrUndefined.NullOrUndefined (TopicAttributesMap) } ) -> GetTopicAttributesResponse
newGetTopicAttributesResponse'  customize = (GetTopicAttributesResponse <<< customize) { "Attributes": (NullOrUndefined Nothing) }



-- | <p>Indicates an internal service error.</p>
newtype InternalErrorException = InternalErrorException 
  { "message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeInternalErrorException :: Newtype InternalErrorException _
derive instance repGenericInternalErrorException :: Generic InternalErrorException _
instance showInternalErrorException :: Show InternalErrorException where
  show = genericShow
instance decodeInternalErrorException :: Decode InternalErrorException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInternalErrorException :: Encode InternalErrorException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InternalErrorException from required parameters
newInternalErrorException :: InternalErrorException
newInternalErrorException  = InternalErrorException { "message": (NullOrUndefined Nothing) }

-- | Constructs InternalErrorException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalErrorException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (String) } -> {"message" :: NullOrUndefined.NullOrUndefined (String) } ) -> InternalErrorException
newInternalErrorException'  customize = (InternalErrorException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>Indicates that a request parameter does not comply with the associated constraints.</p>
newtype InvalidParameterException = InvalidParameterException 
  { "message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeInvalidParameterException :: Newtype InvalidParameterException _
derive instance repGenericInvalidParameterException :: Generic InvalidParameterException _
instance showInvalidParameterException :: Show InvalidParameterException where
  show = genericShow
instance decodeInvalidParameterException :: Decode InvalidParameterException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidParameterException :: Encode InvalidParameterException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidParameterException from required parameters
newInvalidParameterException :: InvalidParameterException
newInvalidParameterException  = InvalidParameterException { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidParameterException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidParameterException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (String) } -> {"message" :: NullOrUndefined.NullOrUndefined (String) } ) -> InvalidParameterException
newInvalidParameterException'  customize = (InvalidParameterException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>Indicates that a request parameter does not comply with the associated constraints.</p>
newtype InvalidParameterValueException = InvalidParameterValueException 
  { "message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeInvalidParameterValueException :: Newtype InvalidParameterValueException _
derive instance repGenericInvalidParameterValueException :: Generic InvalidParameterValueException _
instance showInvalidParameterValueException :: Show InvalidParameterValueException where
  show = genericShow
instance decodeInvalidParameterValueException :: Decode InvalidParameterValueException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidParameterValueException :: Encode InvalidParameterValueException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidParameterValueException from required parameters
newInvalidParameterValueException :: InvalidParameterValueException
newInvalidParameterValueException  = InvalidParameterValueException { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidParameterValueException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidParameterValueException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (String) } -> {"message" :: NullOrUndefined.NullOrUndefined (String) } ) -> InvalidParameterValueException
newInvalidParameterValueException'  customize = (InvalidParameterValueException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>Input for ListEndpointsByPlatformApplication action.</p>
newtype ListEndpointsByPlatformApplicationInput = ListEndpointsByPlatformApplicationInput 
  { "PlatformApplicationArn" :: (String)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeListEndpointsByPlatformApplicationInput :: Newtype ListEndpointsByPlatformApplicationInput _
derive instance repGenericListEndpointsByPlatformApplicationInput :: Generic ListEndpointsByPlatformApplicationInput _
instance showListEndpointsByPlatformApplicationInput :: Show ListEndpointsByPlatformApplicationInput where
  show = genericShow
instance decodeListEndpointsByPlatformApplicationInput :: Decode ListEndpointsByPlatformApplicationInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListEndpointsByPlatformApplicationInput :: Encode ListEndpointsByPlatformApplicationInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListEndpointsByPlatformApplicationInput from required parameters
newListEndpointsByPlatformApplicationInput :: String -> ListEndpointsByPlatformApplicationInput
newListEndpointsByPlatformApplicationInput _PlatformApplicationArn = ListEndpointsByPlatformApplicationInput { "PlatformApplicationArn": _PlatformApplicationArn, "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListEndpointsByPlatformApplicationInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListEndpointsByPlatformApplicationInput' :: String -> ( { "PlatformApplicationArn" :: (String) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } -> {"PlatformApplicationArn" :: (String) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } ) -> ListEndpointsByPlatformApplicationInput
newListEndpointsByPlatformApplicationInput' _PlatformApplicationArn customize = (ListEndpointsByPlatformApplicationInput <<< customize) { "PlatformApplicationArn": _PlatformApplicationArn, "NextToken": (NullOrUndefined Nothing) }



-- | <p>Response for ListEndpointsByPlatformApplication action.</p>
newtype ListEndpointsByPlatformApplicationResponse = ListEndpointsByPlatformApplicationResponse 
  { "Endpoints" :: NullOrUndefined.NullOrUndefined (ListOfEndpoints)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeListEndpointsByPlatformApplicationResponse :: Newtype ListEndpointsByPlatformApplicationResponse _
derive instance repGenericListEndpointsByPlatformApplicationResponse :: Generic ListEndpointsByPlatformApplicationResponse _
instance showListEndpointsByPlatformApplicationResponse :: Show ListEndpointsByPlatformApplicationResponse where
  show = genericShow
instance decodeListEndpointsByPlatformApplicationResponse :: Decode ListEndpointsByPlatformApplicationResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListEndpointsByPlatformApplicationResponse :: Encode ListEndpointsByPlatformApplicationResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListEndpointsByPlatformApplicationResponse from required parameters
newListEndpointsByPlatformApplicationResponse :: ListEndpointsByPlatformApplicationResponse
newListEndpointsByPlatformApplicationResponse  = ListEndpointsByPlatformApplicationResponse { "Endpoints": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListEndpointsByPlatformApplicationResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListEndpointsByPlatformApplicationResponse' :: ( { "Endpoints" :: NullOrUndefined.NullOrUndefined (ListOfEndpoints) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } -> {"Endpoints" :: NullOrUndefined.NullOrUndefined (ListOfEndpoints) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } ) -> ListEndpointsByPlatformApplicationResponse
newListEndpointsByPlatformApplicationResponse'  customize = (ListEndpointsByPlatformApplicationResponse <<< customize) { "Endpoints": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListOfEndpoints = ListOfEndpoints (Array Endpoint)
derive instance newtypeListOfEndpoints :: Newtype ListOfEndpoints _
derive instance repGenericListOfEndpoints :: Generic ListOfEndpoints _
instance showListOfEndpoints :: Show ListOfEndpoints where
  show = genericShow
instance decodeListOfEndpoints :: Decode ListOfEndpoints where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListOfEndpoints :: Encode ListOfEndpoints where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ListOfPlatformApplications = ListOfPlatformApplications (Array PlatformApplication)
derive instance newtypeListOfPlatformApplications :: Newtype ListOfPlatformApplications _
derive instance repGenericListOfPlatformApplications :: Generic ListOfPlatformApplications _
instance showListOfPlatformApplications :: Show ListOfPlatformApplications where
  show = genericShow
instance decodeListOfPlatformApplications :: Decode ListOfPlatformApplications where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListOfPlatformApplications :: Encode ListOfPlatformApplications where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The input for the <code>ListPhoneNumbersOptedOut</code> action.</p>
newtype ListPhoneNumbersOptedOutInput = ListPhoneNumbersOptedOutInput 
  { "nextToken" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeListPhoneNumbersOptedOutInput :: Newtype ListPhoneNumbersOptedOutInput _
derive instance repGenericListPhoneNumbersOptedOutInput :: Generic ListPhoneNumbersOptedOutInput _
instance showListPhoneNumbersOptedOutInput :: Show ListPhoneNumbersOptedOutInput where
  show = genericShow
instance decodeListPhoneNumbersOptedOutInput :: Decode ListPhoneNumbersOptedOutInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListPhoneNumbersOptedOutInput :: Encode ListPhoneNumbersOptedOutInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListPhoneNumbersOptedOutInput from required parameters
newListPhoneNumbersOptedOutInput :: ListPhoneNumbersOptedOutInput
newListPhoneNumbersOptedOutInput  = ListPhoneNumbersOptedOutInput { "nextToken": (NullOrUndefined Nothing) }

-- | Constructs ListPhoneNumbersOptedOutInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPhoneNumbersOptedOutInput' :: ( { "nextToken" :: NullOrUndefined.NullOrUndefined (String) } -> {"nextToken" :: NullOrUndefined.NullOrUndefined (String) } ) -> ListPhoneNumbersOptedOutInput
newListPhoneNumbersOptedOutInput'  customize = (ListPhoneNumbersOptedOutInput <<< customize) { "nextToken": (NullOrUndefined Nothing) }



-- | <p>The response from the <code>ListPhoneNumbersOptedOut</code> action.</p>
newtype ListPhoneNumbersOptedOutResponse = ListPhoneNumbersOptedOutResponse 
  { "phoneNumbers" :: NullOrUndefined.NullOrUndefined (PhoneNumberList)
  , "nextToken" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeListPhoneNumbersOptedOutResponse :: Newtype ListPhoneNumbersOptedOutResponse _
derive instance repGenericListPhoneNumbersOptedOutResponse :: Generic ListPhoneNumbersOptedOutResponse _
instance showListPhoneNumbersOptedOutResponse :: Show ListPhoneNumbersOptedOutResponse where
  show = genericShow
instance decodeListPhoneNumbersOptedOutResponse :: Decode ListPhoneNumbersOptedOutResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListPhoneNumbersOptedOutResponse :: Encode ListPhoneNumbersOptedOutResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListPhoneNumbersOptedOutResponse from required parameters
newListPhoneNumbersOptedOutResponse :: ListPhoneNumbersOptedOutResponse
newListPhoneNumbersOptedOutResponse  = ListPhoneNumbersOptedOutResponse { "nextToken": (NullOrUndefined Nothing), "phoneNumbers": (NullOrUndefined Nothing) }

-- | Constructs ListPhoneNumbersOptedOutResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPhoneNumbersOptedOutResponse' :: ( { "phoneNumbers" :: NullOrUndefined.NullOrUndefined (PhoneNumberList) , "nextToken" :: NullOrUndefined.NullOrUndefined (String) } -> {"phoneNumbers" :: NullOrUndefined.NullOrUndefined (PhoneNumberList) , "nextToken" :: NullOrUndefined.NullOrUndefined (String) } ) -> ListPhoneNumbersOptedOutResponse
newListPhoneNumbersOptedOutResponse'  customize = (ListPhoneNumbersOptedOutResponse <<< customize) { "nextToken": (NullOrUndefined Nothing), "phoneNumbers": (NullOrUndefined Nothing) }



-- | <p>Input for ListPlatformApplications action.</p>
newtype ListPlatformApplicationsInput = ListPlatformApplicationsInput 
  { "NextToken" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeListPlatformApplicationsInput :: Newtype ListPlatformApplicationsInput _
derive instance repGenericListPlatformApplicationsInput :: Generic ListPlatformApplicationsInput _
instance showListPlatformApplicationsInput :: Show ListPlatformApplicationsInput where
  show = genericShow
instance decodeListPlatformApplicationsInput :: Decode ListPlatformApplicationsInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListPlatformApplicationsInput :: Encode ListPlatformApplicationsInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListPlatformApplicationsInput from required parameters
newListPlatformApplicationsInput :: ListPlatformApplicationsInput
newListPlatformApplicationsInput  = ListPlatformApplicationsInput { "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListPlatformApplicationsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPlatformApplicationsInput' :: ( { "NextToken" :: NullOrUndefined.NullOrUndefined (String) } -> {"NextToken" :: NullOrUndefined.NullOrUndefined (String) } ) -> ListPlatformApplicationsInput
newListPlatformApplicationsInput'  customize = (ListPlatformApplicationsInput <<< customize) { "NextToken": (NullOrUndefined Nothing) }



-- | <p>Response for ListPlatformApplications action.</p>
newtype ListPlatformApplicationsResponse = ListPlatformApplicationsResponse 
  { "PlatformApplications" :: NullOrUndefined.NullOrUndefined (ListOfPlatformApplications)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeListPlatformApplicationsResponse :: Newtype ListPlatformApplicationsResponse _
derive instance repGenericListPlatformApplicationsResponse :: Generic ListPlatformApplicationsResponse _
instance showListPlatformApplicationsResponse :: Show ListPlatformApplicationsResponse where
  show = genericShow
instance decodeListPlatformApplicationsResponse :: Decode ListPlatformApplicationsResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListPlatformApplicationsResponse :: Encode ListPlatformApplicationsResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListPlatformApplicationsResponse from required parameters
newListPlatformApplicationsResponse :: ListPlatformApplicationsResponse
newListPlatformApplicationsResponse  = ListPlatformApplicationsResponse { "NextToken": (NullOrUndefined Nothing), "PlatformApplications": (NullOrUndefined Nothing) }

-- | Constructs ListPlatformApplicationsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPlatformApplicationsResponse' :: ( { "PlatformApplications" :: NullOrUndefined.NullOrUndefined (ListOfPlatformApplications) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } -> {"PlatformApplications" :: NullOrUndefined.NullOrUndefined (ListOfPlatformApplications) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } ) -> ListPlatformApplicationsResponse
newListPlatformApplicationsResponse'  customize = (ListPlatformApplicationsResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "PlatformApplications": (NullOrUndefined Nothing) }



newtype ListString = ListString (Array String)
derive instance newtypeListString :: Newtype ListString _
derive instance repGenericListString :: Generic ListString _
instance showListString :: Show ListString where
  show = genericShow
instance decodeListString :: Decode ListString where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListString :: Encode ListString where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Input for ListSubscriptionsByTopic action.</p>
newtype ListSubscriptionsByTopicInput = ListSubscriptionsByTopicInput 
  { "TopicArn" :: (TopicARN')
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken')
  }
derive instance newtypeListSubscriptionsByTopicInput :: Newtype ListSubscriptionsByTopicInput _
derive instance repGenericListSubscriptionsByTopicInput :: Generic ListSubscriptionsByTopicInput _
instance showListSubscriptionsByTopicInput :: Show ListSubscriptionsByTopicInput where
  show = genericShow
instance decodeListSubscriptionsByTopicInput :: Decode ListSubscriptionsByTopicInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListSubscriptionsByTopicInput :: Encode ListSubscriptionsByTopicInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListSubscriptionsByTopicInput from required parameters
newListSubscriptionsByTopicInput :: TopicARN' -> ListSubscriptionsByTopicInput
newListSubscriptionsByTopicInput _TopicArn = ListSubscriptionsByTopicInput { "TopicArn": _TopicArn, "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListSubscriptionsByTopicInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListSubscriptionsByTopicInput' :: TopicARN' -> ( { "TopicArn" :: (TopicARN') , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken') } -> {"TopicArn" :: (TopicARN') , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken') } ) -> ListSubscriptionsByTopicInput
newListSubscriptionsByTopicInput' _TopicArn customize = (ListSubscriptionsByTopicInput <<< customize) { "TopicArn": _TopicArn, "NextToken": (NullOrUndefined Nothing) }



-- | <p>Response for ListSubscriptionsByTopic action.</p>
newtype ListSubscriptionsByTopicResponse = ListSubscriptionsByTopicResponse 
  { "Subscriptions" :: NullOrUndefined.NullOrUndefined (SubscriptionsList)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken')
  }
derive instance newtypeListSubscriptionsByTopicResponse :: Newtype ListSubscriptionsByTopicResponse _
derive instance repGenericListSubscriptionsByTopicResponse :: Generic ListSubscriptionsByTopicResponse _
instance showListSubscriptionsByTopicResponse :: Show ListSubscriptionsByTopicResponse where
  show = genericShow
instance decodeListSubscriptionsByTopicResponse :: Decode ListSubscriptionsByTopicResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListSubscriptionsByTopicResponse :: Encode ListSubscriptionsByTopicResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListSubscriptionsByTopicResponse from required parameters
newListSubscriptionsByTopicResponse :: ListSubscriptionsByTopicResponse
newListSubscriptionsByTopicResponse  = ListSubscriptionsByTopicResponse { "NextToken": (NullOrUndefined Nothing), "Subscriptions": (NullOrUndefined Nothing) }

-- | Constructs ListSubscriptionsByTopicResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListSubscriptionsByTopicResponse' :: ( { "Subscriptions" :: NullOrUndefined.NullOrUndefined (SubscriptionsList) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken') } -> {"Subscriptions" :: NullOrUndefined.NullOrUndefined (SubscriptionsList) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken') } ) -> ListSubscriptionsByTopicResponse
newListSubscriptionsByTopicResponse'  customize = (ListSubscriptionsByTopicResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "Subscriptions": (NullOrUndefined Nothing) }



-- | <p>Input for ListSubscriptions action.</p>
newtype ListSubscriptionsInput = ListSubscriptionsInput 
  { "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken')
  }
derive instance newtypeListSubscriptionsInput :: Newtype ListSubscriptionsInput _
derive instance repGenericListSubscriptionsInput :: Generic ListSubscriptionsInput _
instance showListSubscriptionsInput :: Show ListSubscriptionsInput where
  show = genericShow
instance decodeListSubscriptionsInput :: Decode ListSubscriptionsInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListSubscriptionsInput :: Encode ListSubscriptionsInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListSubscriptionsInput from required parameters
newListSubscriptionsInput :: ListSubscriptionsInput
newListSubscriptionsInput  = ListSubscriptionsInput { "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListSubscriptionsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListSubscriptionsInput' :: ( { "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken') } -> {"NextToken" :: NullOrUndefined.NullOrUndefined (NextToken') } ) -> ListSubscriptionsInput
newListSubscriptionsInput'  customize = (ListSubscriptionsInput <<< customize) { "NextToken": (NullOrUndefined Nothing) }



-- | <p>Response for ListSubscriptions action</p>
newtype ListSubscriptionsResponse = ListSubscriptionsResponse 
  { "Subscriptions" :: NullOrUndefined.NullOrUndefined (SubscriptionsList)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken')
  }
derive instance newtypeListSubscriptionsResponse :: Newtype ListSubscriptionsResponse _
derive instance repGenericListSubscriptionsResponse :: Generic ListSubscriptionsResponse _
instance showListSubscriptionsResponse :: Show ListSubscriptionsResponse where
  show = genericShow
instance decodeListSubscriptionsResponse :: Decode ListSubscriptionsResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListSubscriptionsResponse :: Encode ListSubscriptionsResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListSubscriptionsResponse from required parameters
newListSubscriptionsResponse :: ListSubscriptionsResponse
newListSubscriptionsResponse  = ListSubscriptionsResponse { "NextToken": (NullOrUndefined Nothing), "Subscriptions": (NullOrUndefined Nothing) }

-- | Constructs ListSubscriptionsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListSubscriptionsResponse' :: ( { "Subscriptions" :: NullOrUndefined.NullOrUndefined (SubscriptionsList) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken') } -> {"Subscriptions" :: NullOrUndefined.NullOrUndefined (SubscriptionsList) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken') } ) -> ListSubscriptionsResponse
newListSubscriptionsResponse'  customize = (ListSubscriptionsResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "Subscriptions": (NullOrUndefined Nothing) }



newtype ListTopicsInput = ListTopicsInput 
  { "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken')
  }
derive instance newtypeListTopicsInput :: Newtype ListTopicsInput _
derive instance repGenericListTopicsInput :: Generic ListTopicsInput _
instance showListTopicsInput :: Show ListTopicsInput where
  show = genericShow
instance decodeListTopicsInput :: Decode ListTopicsInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListTopicsInput :: Encode ListTopicsInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListTopicsInput from required parameters
newListTopicsInput :: ListTopicsInput
newListTopicsInput  = ListTopicsInput { "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListTopicsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTopicsInput' :: ( { "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken') } -> {"NextToken" :: NullOrUndefined.NullOrUndefined (NextToken') } ) -> ListTopicsInput
newListTopicsInput'  customize = (ListTopicsInput <<< customize) { "NextToken": (NullOrUndefined Nothing) }



-- | <p>Response for ListTopics action.</p>
newtype ListTopicsResponse = ListTopicsResponse 
  { "Topics" :: NullOrUndefined.NullOrUndefined (TopicsList)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken')
  }
derive instance newtypeListTopicsResponse :: Newtype ListTopicsResponse _
derive instance repGenericListTopicsResponse :: Generic ListTopicsResponse _
instance showListTopicsResponse :: Show ListTopicsResponse where
  show = genericShow
instance decodeListTopicsResponse :: Decode ListTopicsResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListTopicsResponse :: Encode ListTopicsResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListTopicsResponse from required parameters
newListTopicsResponse :: ListTopicsResponse
newListTopicsResponse  = ListTopicsResponse { "NextToken": (NullOrUndefined Nothing), "Topics": (NullOrUndefined Nothing) }

-- | Constructs ListTopicsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTopicsResponse' :: ( { "Topics" :: NullOrUndefined.NullOrUndefined (TopicsList) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken') } -> {"Topics" :: NullOrUndefined.NullOrUndefined (TopicsList) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken') } ) -> ListTopicsResponse
newListTopicsResponse'  customize = (ListTopicsResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "Topics": (NullOrUndefined Nothing) }



newtype MapStringToString = MapStringToString (StrMap.StrMap String)
derive instance newtypeMapStringToString :: Newtype MapStringToString _
derive instance repGenericMapStringToString :: Generic MapStringToString _
instance showMapStringToString :: Show MapStringToString where
  show = genericShow
instance decodeMapStringToString :: Decode MapStringToString where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMapStringToString :: Encode MapStringToString where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype MessageAttributeMap = MessageAttributeMap (StrMap.StrMap MessageAttributeValue)
derive instance newtypeMessageAttributeMap :: Newtype MessageAttributeMap _
derive instance repGenericMessageAttributeMap :: Generic MessageAttributeMap _
instance showMessageAttributeMap :: Show MessageAttributeMap where
  show = genericShow
instance decodeMessageAttributeMap :: Decode MessageAttributeMap where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMessageAttributeMap :: Encode MessageAttributeMap where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The user-specified message attribute value. For string data types, the value attribute has the same restrictions on the content as the message body. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/api/API_Publish.html">Publish</a>.</p> <p>Name, type, and value must not be empty or null. In addition, the message body should not be empty or null. All parts of the message attribute, including name, type, and value, are included in the message size restriction, which is currently 256 KB (262,144 bytes). For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMessageAttributes.html">Using Amazon SNS Message Attributes</a>.</p>
newtype MessageAttributeValue = MessageAttributeValue 
  { "DataType" :: (String)
  , "StringValue" :: NullOrUndefined.NullOrUndefined (String)
  , "BinaryValue" :: NullOrUndefined.NullOrUndefined (Binary)
  }
derive instance newtypeMessageAttributeValue :: Newtype MessageAttributeValue _
derive instance repGenericMessageAttributeValue :: Generic MessageAttributeValue _
instance showMessageAttributeValue :: Show MessageAttributeValue where
  show = genericShow
instance decodeMessageAttributeValue :: Decode MessageAttributeValue where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMessageAttributeValue :: Encode MessageAttributeValue where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs MessageAttributeValue from required parameters
newMessageAttributeValue :: String -> MessageAttributeValue
newMessageAttributeValue _DataType = MessageAttributeValue { "DataType": _DataType, "BinaryValue": (NullOrUndefined Nothing), "StringValue": (NullOrUndefined Nothing) }

-- | Constructs MessageAttributeValue's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMessageAttributeValue' :: String -> ( { "DataType" :: (String) , "StringValue" :: NullOrUndefined.NullOrUndefined (String) , "BinaryValue" :: NullOrUndefined.NullOrUndefined (Binary) } -> {"DataType" :: (String) , "StringValue" :: NullOrUndefined.NullOrUndefined (String) , "BinaryValue" :: NullOrUndefined.NullOrUndefined (Binary) } ) -> MessageAttributeValue
newMessageAttributeValue' _DataType customize = (MessageAttributeValue <<< customize) { "DataType": _DataType, "BinaryValue": (NullOrUndefined Nothing), "StringValue": (NullOrUndefined Nothing) }



-- | <p>Indicates that the requested resource does not exist.</p>
newtype NotFoundException = NotFoundException 
  { "message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeNotFoundException :: Newtype NotFoundException _
derive instance repGenericNotFoundException :: Generic NotFoundException _
instance showNotFoundException :: Show NotFoundException where
  show = genericShow
instance decodeNotFoundException :: Decode NotFoundException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNotFoundException :: Encode NotFoundException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs NotFoundException from required parameters
newNotFoundException :: NotFoundException
newNotFoundException  = NotFoundException { "message": (NullOrUndefined Nothing) }

-- | Constructs NotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotFoundException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (String) } -> {"message" :: NullOrUndefined.NullOrUndefined (String) } ) -> NotFoundException
newNotFoundException'  customize = (NotFoundException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>Input for the OptInPhoneNumber action.</p>
newtype OptInPhoneNumberInput = OptInPhoneNumberInput 
  { "phoneNumber" :: (PhoneNumber)
  }
derive instance newtypeOptInPhoneNumberInput :: Newtype OptInPhoneNumberInput _
derive instance repGenericOptInPhoneNumberInput :: Generic OptInPhoneNumberInput _
instance showOptInPhoneNumberInput :: Show OptInPhoneNumberInput where
  show = genericShow
instance decodeOptInPhoneNumberInput :: Decode OptInPhoneNumberInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOptInPhoneNumberInput :: Encode OptInPhoneNumberInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs OptInPhoneNumberInput from required parameters
newOptInPhoneNumberInput :: PhoneNumber -> OptInPhoneNumberInput
newOptInPhoneNumberInput _phoneNumber = OptInPhoneNumberInput { "phoneNumber": _phoneNumber }

-- | Constructs OptInPhoneNumberInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOptInPhoneNumberInput' :: PhoneNumber -> ( { "phoneNumber" :: (PhoneNumber) } -> {"phoneNumber" :: (PhoneNumber) } ) -> OptInPhoneNumberInput
newOptInPhoneNumberInput' _phoneNumber customize = (OptInPhoneNumberInput <<< customize) { "phoneNumber": _phoneNumber }



-- | <p>The response for the OptInPhoneNumber action.</p>
newtype OptInPhoneNumberResponse = OptInPhoneNumberResponse Types.NoArguments
derive instance newtypeOptInPhoneNumberResponse :: Newtype OptInPhoneNumberResponse _
derive instance repGenericOptInPhoneNumberResponse :: Generic OptInPhoneNumberResponse _
instance showOptInPhoneNumberResponse :: Show OptInPhoneNumberResponse where
  show = genericShow
instance decodeOptInPhoneNumberResponse :: Decode OptInPhoneNumberResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOptInPhoneNumberResponse :: Encode OptInPhoneNumberResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PhoneNumber = PhoneNumber String
derive instance newtypePhoneNumber :: Newtype PhoneNumber _
derive instance repGenericPhoneNumber :: Generic PhoneNumber _
instance showPhoneNumber :: Show PhoneNumber where
  show = genericShow
instance decodePhoneNumber :: Decode PhoneNumber where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePhoneNumber :: Encode PhoneNumber where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PhoneNumberList = PhoneNumberList (Array PhoneNumber)
derive instance newtypePhoneNumberList :: Newtype PhoneNumberList _
derive instance repGenericPhoneNumberList :: Generic PhoneNumberList _
instance showPhoneNumberList :: Show PhoneNumberList where
  show = genericShow
instance decodePhoneNumberList :: Decode PhoneNumberList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePhoneNumberList :: Encode PhoneNumberList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Platform application object.</p>
newtype PlatformApplication = PlatformApplication 
  { "PlatformApplicationArn" :: NullOrUndefined.NullOrUndefined (String)
  , "Attributes" :: NullOrUndefined.NullOrUndefined (MapStringToString)
  }
derive instance newtypePlatformApplication :: Newtype PlatformApplication _
derive instance repGenericPlatformApplication :: Generic PlatformApplication _
instance showPlatformApplication :: Show PlatformApplication where
  show = genericShow
instance decodePlatformApplication :: Decode PlatformApplication where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePlatformApplication :: Encode PlatformApplication where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PlatformApplication from required parameters
newPlatformApplication :: PlatformApplication
newPlatformApplication  = PlatformApplication { "Attributes": (NullOrUndefined Nothing), "PlatformApplicationArn": (NullOrUndefined Nothing) }

-- | Constructs PlatformApplication's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPlatformApplication' :: ( { "PlatformApplicationArn" :: NullOrUndefined.NullOrUndefined (String) , "Attributes" :: NullOrUndefined.NullOrUndefined (MapStringToString) } -> {"PlatformApplicationArn" :: NullOrUndefined.NullOrUndefined (String) , "Attributes" :: NullOrUndefined.NullOrUndefined (MapStringToString) } ) -> PlatformApplication
newPlatformApplication'  customize = (PlatformApplication <<< customize) { "Attributes": (NullOrUndefined Nothing), "PlatformApplicationArn": (NullOrUndefined Nothing) }



-- | <p>Exception error indicating platform application disabled.</p>
newtype PlatformApplicationDisabledException = PlatformApplicationDisabledException 
  { "message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypePlatformApplicationDisabledException :: Newtype PlatformApplicationDisabledException _
derive instance repGenericPlatformApplicationDisabledException :: Generic PlatformApplicationDisabledException _
instance showPlatformApplicationDisabledException :: Show PlatformApplicationDisabledException where
  show = genericShow
instance decodePlatformApplicationDisabledException :: Decode PlatformApplicationDisabledException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePlatformApplicationDisabledException :: Encode PlatformApplicationDisabledException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PlatformApplicationDisabledException from required parameters
newPlatformApplicationDisabledException :: PlatformApplicationDisabledException
newPlatformApplicationDisabledException  = PlatformApplicationDisabledException { "message": (NullOrUndefined Nothing) }

-- | Constructs PlatformApplicationDisabledException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPlatformApplicationDisabledException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (String) } -> {"message" :: NullOrUndefined.NullOrUndefined (String) } ) -> PlatformApplicationDisabledException
newPlatformApplicationDisabledException'  customize = (PlatformApplicationDisabledException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>Input for Publish action.</p>
newtype PublishInput = PublishInput 
  { "TopicArn" :: NullOrUndefined.NullOrUndefined (TopicARN')
  , "TargetArn" :: NullOrUndefined.NullOrUndefined (String)
  , "PhoneNumber" :: NullOrUndefined.NullOrUndefined (String)
  , "Message" :: (Message')
  , "Subject" :: NullOrUndefined.NullOrUndefined (Subject')
  , "MessageStructure" :: NullOrUndefined.NullOrUndefined (MessageStructure')
  , "MessageAttributes" :: NullOrUndefined.NullOrUndefined (MessageAttributeMap)
  }
derive instance newtypePublishInput :: Newtype PublishInput _
derive instance repGenericPublishInput :: Generic PublishInput _
instance showPublishInput :: Show PublishInput where
  show = genericShow
instance decodePublishInput :: Decode PublishInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePublishInput :: Encode PublishInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PublishInput from required parameters
newPublishInput :: Message' -> PublishInput
newPublishInput _Message = PublishInput { "Message": _Message, "MessageAttributes": (NullOrUndefined Nothing), "MessageStructure": (NullOrUndefined Nothing), "PhoneNumber": (NullOrUndefined Nothing), "Subject": (NullOrUndefined Nothing), "TargetArn": (NullOrUndefined Nothing), "TopicArn": (NullOrUndefined Nothing) }

-- | Constructs PublishInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPublishInput' :: Message' -> ( { "TopicArn" :: NullOrUndefined.NullOrUndefined (TopicARN') , "TargetArn" :: NullOrUndefined.NullOrUndefined (String) , "PhoneNumber" :: NullOrUndefined.NullOrUndefined (String) , "Message" :: (Message') , "Subject" :: NullOrUndefined.NullOrUndefined (Subject') , "MessageStructure" :: NullOrUndefined.NullOrUndefined (MessageStructure') , "MessageAttributes" :: NullOrUndefined.NullOrUndefined (MessageAttributeMap) } -> {"TopicArn" :: NullOrUndefined.NullOrUndefined (TopicARN') , "TargetArn" :: NullOrUndefined.NullOrUndefined (String) , "PhoneNumber" :: NullOrUndefined.NullOrUndefined (String) , "Message" :: (Message') , "Subject" :: NullOrUndefined.NullOrUndefined (Subject') , "MessageStructure" :: NullOrUndefined.NullOrUndefined (MessageStructure') , "MessageAttributes" :: NullOrUndefined.NullOrUndefined (MessageAttributeMap) } ) -> PublishInput
newPublishInput' _Message customize = (PublishInput <<< customize) { "Message": _Message, "MessageAttributes": (NullOrUndefined Nothing), "MessageStructure": (NullOrUndefined Nothing), "PhoneNumber": (NullOrUndefined Nothing), "Subject": (NullOrUndefined Nothing), "TargetArn": (NullOrUndefined Nothing), "TopicArn": (NullOrUndefined Nothing) }



-- | <p>Response for Publish action.</p>
newtype PublishResponse = PublishResponse 
  { "MessageId" :: NullOrUndefined.NullOrUndefined (MessageId')
  }
derive instance newtypePublishResponse :: Newtype PublishResponse _
derive instance repGenericPublishResponse :: Generic PublishResponse _
instance showPublishResponse :: Show PublishResponse where
  show = genericShow
instance decodePublishResponse :: Decode PublishResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePublishResponse :: Encode PublishResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PublishResponse from required parameters
newPublishResponse :: PublishResponse
newPublishResponse  = PublishResponse { "MessageId": (NullOrUndefined Nothing) }

-- | Constructs PublishResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPublishResponse' :: ( { "MessageId" :: NullOrUndefined.NullOrUndefined (MessageId') } -> {"MessageId" :: NullOrUndefined.NullOrUndefined (MessageId') } ) -> PublishResponse
newPublishResponse'  customize = (PublishResponse <<< customize) { "MessageId": (NullOrUndefined Nothing) }



-- | <p>Input for RemovePermission action.</p>
newtype RemovePermissionInput = RemovePermissionInput 
  { "TopicArn" :: (TopicARN')
  , "Label" :: (Label')
  }
derive instance newtypeRemovePermissionInput :: Newtype RemovePermissionInput _
derive instance repGenericRemovePermissionInput :: Generic RemovePermissionInput _
instance showRemovePermissionInput :: Show RemovePermissionInput where
  show = genericShow
instance decodeRemovePermissionInput :: Decode RemovePermissionInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRemovePermissionInput :: Encode RemovePermissionInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RemovePermissionInput from required parameters
newRemovePermissionInput :: Label' -> TopicARN' -> RemovePermissionInput
newRemovePermissionInput _Label _TopicArn = RemovePermissionInput { "Label": _Label, "TopicArn": _TopicArn }

-- | Constructs RemovePermissionInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRemovePermissionInput' :: Label' -> TopicARN' -> ( { "TopicArn" :: (TopicARN') , "Label" :: (Label') } -> {"TopicArn" :: (TopicARN') , "Label" :: (Label') } ) -> RemovePermissionInput
newRemovePermissionInput' _Label _TopicArn customize = (RemovePermissionInput <<< customize) { "Label": _Label, "TopicArn": _TopicArn }



-- | <p>Input for SetEndpointAttributes action.</p>
newtype SetEndpointAttributesInput = SetEndpointAttributesInput 
  { "EndpointArn" :: (String)
  , "Attributes" :: (MapStringToString)
  }
derive instance newtypeSetEndpointAttributesInput :: Newtype SetEndpointAttributesInput _
derive instance repGenericSetEndpointAttributesInput :: Generic SetEndpointAttributesInput _
instance showSetEndpointAttributesInput :: Show SetEndpointAttributesInput where
  show = genericShow
instance decodeSetEndpointAttributesInput :: Decode SetEndpointAttributesInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSetEndpointAttributesInput :: Encode SetEndpointAttributesInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SetEndpointAttributesInput from required parameters
newSetEndpointAttributesInput :: MapStringToString -> String -> SetEndpointAttributesInput
newSetEndpointAttributesInput _Attributes _EndpointArn = SetEndpointAttributesInput { "Attributes": _Attributes, "EndpointArn": _EndpointArn }

-- | Constructs SetEndpointAttributesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetEndpointAttributesInput' :: MapStringToString -> String -> ( { "EndpointArn" :: (String) , "Attributes" :: (MapStringToString) } -> {"EndpointArn" :: (String) , "Attributes" :: (MapStringToString) } ) -> SetEndpointAttributesInput
newSetEndpointAttributesInput' _Attributes _EndpointArn customize = (SetEndpointAttributesInput <<< customize) { "Attributes": _Attributes, "EndpointArn": _EndpointArn }



-- | <p>Input for SetPlatformApplicationAttributes action.</p>
newtype SetPlatformApplicationAttributesInput = SetPlatformApplicationAttributesInput 
  { "PlatformApplicationArn" :: (String)
  , "Attributes" :: (MapStringToString)
  }
derive instance newtypeSetPlatformApplicationAttributesInput :: Newtype SetPlatformApplicationAttributesInput _
derive instance repGenericSetPlatformApplicationAttributesInput :: Generic SetPlatformApplicationAttributesInput _
instance showSetPlatformApplicationAttributesInput :: Show SetPlatformApplicationAttributesInput where
  show = genericShow
instance decodeSetPlatformApplicationAttributesInput :: Decode SetPlatformApplicationAttributesInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSetPlatformApplicationAttributesInput :: Encode SetPlatformApplicationAttributesInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SetPlatformApplicationAttributesInput from required parameters
newSetPlatformApplicationAttributesInput :: MapStringToString -> String -> SetPlatformApplicationAttributesInput
newSetPlatformApplicationAttributesInput _Attributes _PlatformApplicationArn = SetPlatformApplicationAttributesInput { "Attributes": _Attributes, "PlatformApplicationArn": _PlatformApplicationArn }

-- | Constructs SetPlatformApplicationAttributesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetPlatformApplicationAttributesInput' :: MapStringToString -> String -> ( { "PlatformApplicationArn" :: (String) , "Attributes" :: (MapStringToString) } -> {"PlatformApplicationArn" :: (String) , "Attributes" :: (MapStringToString) } ) -> SetPlatformApplicationAttributesInput
newSetPlatformApplicationAttributesInput' _Attributes _PlatformApplicationArn customize = (SetPlatformApplicationAttributesInput <<< customize) { "Attributes": _Attributes, "PlatformApplicationArn": _PlatformApplicationArn }



-- | <p>The input for the SetSMSAttributes action.</p>
newtype SetSMSAttributesInput = SetSMSAttributesInput 
  { "attributes" :: (MapStringToString)
  }
derive instance newtypeSetSMSAttributesInput :: Newtype SetSMSAttributesInput _
derive instance repGenericSetSMSAttributesInput :: Generic SetSMSAttributesInput _
instance showSetSMSAttributesInput :: Show SetSMSAttributesInput where
  show = genericShow
instance decodeSetSMSAttributesInput :: Decode SetSMSAttributesInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSetSMSAttributesInput :: Encode SetSMSAttributesInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SetSMSAttributesInput from required parameters
newSetSMSAttributesInput :: MapStringToString -> SetSMSAttributesInput
newSetSMSAttributesInput _attributes = SetSMSAttributesInput { "attributes": _attributes }

-- | Constructs SetSMSAttributesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetSMSAttributesInput' :: MapStringToString -> ( { "attributes" :: (MapStringToString) } -> {"attributes" :: (MapStringToString) } ) -> SetSMSAttributesInput
newSetSMSAttributesInput' _attributes customize = (SetSMSAttributesInput <<< customize) { "attributes": _attributes }



-- | <p>The response for the SetSMSAttributes action.</p>
newtype SetSMSAttributesResponse = SetSMSAttributesResponse Types.NoArguments
derive instance newtypeSetSMSAttributesResponse :: Newtype SetSMSAttributesResponse _
derive instance repGenericSetSMSAttributesResponse :: Generic SetSMSAttributesResponse _
instance showSetSMSAttributesResponse :: Show SetSMSAttributesResponse where
  show = genericShow
instance decodeSetSMSAttributesResponse :: Decode SetSMSAttributesResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSetSMSAttributesResponse :: Encode SetSMSAttributesResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Input for SetSubscriptionAttributes action.</p>
newtype SetSubscriptionAttributesInput = SetSubscriptionAttributesInput 
  { "SubscriptionArn" :: (SubscriptionARN')
  , "AttributeName" :: (AttributeName')
  , "AttributeValue" :: NullOrUndefined.NullOrUndefined (AttributeValue')
  }
derive instance newtypeSetSubscriptionAttributesInput :: Newtype SetSubscriptionAttributesInput _
derive instance repGenericSetSubscriptionAttributesInput :: Generic SetSubscriptionAttributesInput _
instance showSetSubscriptionAttributesInput :: Show SetSubscriptionAttributesInput where
  show = genericShow
instance decodeSetSubscriptionAttributesInput :: Decode SetSubscriptionAttributesInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSetSubscriptionAttributesInput :: Encode SetSubscriptionAttributesInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SetSubscriptionAttributesInput from required parameters
newSetSubscriptionAttributesInput :: AttributeName' -> SubscriptionARN' -> SetSubscriptionAttributesInput
newSetSubscriptionAttributesInput _AttributeName _SubscriptionArn = SetSubscriptionAttributesInput { "AttributeName": _AttributeName, "SubscriptionArn": _SubscriptionArn, "AttributeValue": (NullOrUndefined Nothing) }

-- | Constructs SetSubscriptionAttributesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetSubscriptionAttributesInput' :: AttributeName' -> SubscriptionARN' -> ( { "SubscriptionArn" :: (SubscriptionARN') , "AttributeName" :: (AttributeName') , "AttributeValue" :: NullOrUndefined.NullOrUndefined (AttributeValue') } -> {"SubscriptionArn" :: (SubscriptionARN') , "AttributeName" :: (AttributeName') , "AttributeValue" :: NullOrUndefined.NullOrUndefined (AttributeValue') } ) -> SetSubscriptionAttributesInput
newSetSubscriptionAttributesInput' _AttributeName _SubscriptionArn customize = (SetSubscriptionAttributesInput <<< customize) { "AttributeName": _AttributeName, "SubscriptionArn": _SubscriptionArn, "AttributeValue": (NullOrUndefined Nothing) }



-- | <p>Input for SetTopicAttributes action.</p>
newtype SetTopicAttributesInput = SetTopicAttributesInput 
  { "TopicArn" :: (TopicARN')
  , "AttributeName" :: (AttributeName')
  , "AttributeValue" :: NullOrUndefined.NullOrUndefined (AttributeValue')
  }
derive instance newtypeSetTopicAttributesInput :: Newtype SetTopicAttributesInput _
derive instance repGenericSetTopicAttributesInput :: Generic SetTopicAttributesInput _
instance showSetTopicAttributesInput :: Show SetTopicAttributesInput where
  show = genericShow
instance decodeSetTopicAttributesInput :: Decode SetTopicAttributesInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSetTopicAttributesInput :: Encode SetTopicAttributesInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SetTopicAttributesInput from required parameters
newSetTopicAttributesInput :: AttributeName' -> TopicARN' -> SetTopicAttributesInput
newSetTopicAttributesInput _AttributeName _TopicArn = SetTopicAttributesInput { "AttributeName": _AttributeName, "TopicArn": _TopicArn, "AttributeValue": (NullOrUndefined Nothing) }

-- | Constructs SetTopicAttributesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetTopicAttributesInput' :: AttributeName' -> TopicARN' -> ( { "TopicArn" :: (TopicARN') , "AttributeName" :: (AttributeName') , "AttributeValue" :: NullOrUndefined.NullOrUndefined (AttributeValue') } -> {"TopicArn" :: (TopicARN') , "AttributeName" :: (AttributeName') , "AttributeValue" :: NullOrUndefined.NullOrUndefined (AttributeValue') } ) -> SetTopicAttributesInput
newSetTopicAttributesInput' _AttributeName _TopicArn customize = (SetTopicAttributesInput <<< customize) { "AttributeName": _AttributeName, "TopicArn": _TopicArn, "AttributeValue": (NullOrUndefined Nothing) }



-- | <p>Input for Subscribe action.</p>
newtype SubscribeInput = SubscribeInput 
  { "TopicArn" :: (TopicARN')
  , "Protocol" :: (Protocol')
  , "Endpoint" :: NullOrUndefined.NullOrUndefined (Endpoint')
  }
derive instance newtypeSubscribeInput :: Newtype SubscribeInput _
derive instance repGenericSubscribeInput :: Generic SubscribeInput _
instance showSubscribeInput :: Show SubscribeInput where
  show = genericShow
instance decodeSubscribeInput :: Decode SubscribeInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSubscribeInput :: Encode SubscribeInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SubscribeInput from required parameters
newSubscribeInput :: Protocol' -> TopicARN' -> SubscribeInput
newSubscribeInput _Protocol _TopicArn = SubscribeInput { "Protocol": _Protocol, "TopicArn": _TopicArn, "Endpoint": (NullOrUndefined Nothing) }

-- | Constructs SubscribeInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSubscribeInput' :: Protocol' -> TopicARN' -> ( { "TopicArn" :: (TopicARN') , "Protocol" :: (Protocol') , "Endpoint" :: NullOrUndefined.NullOrUndefined (Endpoint') } -> {"TopicArn" :: (TopicARN') , "Protocol" :: (Protocol') , "Endpoint" :: NullOrUndefined.NullOrUndefined (Endpoint') } ) -> SubscribeInput
newSubscribeInput' _Protocol _TopicArn customize = (SubscribeInput <<< customize) { "Protocol": _Protocol, "TopicArn": _TopicArn, "Endpoint": (NullOrUndefined Nothing) }



-- | <p>Response for Subscribe action.</p>
newtype SubscribeResponse = SubscribeResponse 
  { "SubscriptionArn" :: NullOrUndefined.NullOrUndefined (SubscriptionARN')
  }
derive instance newtypeSubscribeResponse :: Newtype SubscribeResponse _
derive instance repGenericSubscribeResponse :: Generic SubscribeResponse _
instance showSubscribeResponse :: Show SubscribeResponse where
  show = genericShow
instance decodeSubscribeResponse :: Decode SubscribeResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSubscribeResponse :: Encode SubscribeResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SubscribeResponse from required parameters
newSubscribeResponse :: SubscribeResponse
newSubscribeResponse  = SubscribeResponse { "SubscriptionArn": (NullOrUndefined Nothing) }

-- | Constructs SubscribeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSubscribeResponse' :: ( { "SubscriptionArn" :: NullOrUndefined.NullOrUndefined (SubscriptionARN') } -> {"SubscriptionArn" :: NullOrUndefined.NullOrUndefined (SubscriptionARN') } ) -> SubscribeResponse
newSubscribeResponse'  customize = (SubscribeResponse <<< customize) { "SubscriptionArn": (NullOrUndefined Nothing) }



-- | <p>A wrapper type for the attributes of an Amazon SNS subscription.</p>
newtype Subscription = Subscription 
  { "SubscriptionArn" :: NullOrUndefined.NullOrUndefined (SubscriptionARN')
  , "Owner" :: NullOrUndefined.NullOrUndefined (Account')
  , "Protocol" :: NullOrUndefined.NullOrUndefined (Protocol')
  , "Endpoint" :: NullOrUndefined.NullOrUndefined (Endpoint')
  , "TopicArn" :: NullOrUndefined.NullOrUndefined (TopicARN')
  }
derive instance newtypeSubscription :: Newtype Subscription _
derive instance repGenericSubscription :: Generic Subscription _
instance showSubscription :: Show Subscription where
  show = genericShow
instance decodeSubscription :: Decode Subscription where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSubscription :: Encode Subscription where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Subscription from required parameters
newSubscription :: Subscription
newSubscription  = Subscription { "Endpoint": (NullOrUndefined Nothing), "Owner": (NullOrUndefined Nothing), "Protocol": (NullOrUndefined Nothing), "SubscriptionArn": (NullOrUndefined Nothing), "TopicArn": (NullOrUndefined Nothing) }

-- | Constructs Subscription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSubscription' :: ( { "SubscriptionArn" :: NullOrUndefined.NullOrUndefined (SubscriptionARN') , "Owner" :: NullOrUndefined.NullOrUndefined (Account') , "Protocol" :: NullOrUndefined.NullOrUndefined (Protocol') , "Endpoint" :: NullOrUndefined.NullOrUndefined (Endpoint') , "TopicArn" :: NullOrUndefined.NullOrUndefined (TopicARN') } -> {"SubscriptionArn" :: NullOrUndefined.NullOrUndefined (SubscriptionARN') , "Owner" :: NullOrUndefined.NullOrUndefined (Account') , "Protocol" :: NullOrUndefined.NullOrUndefined (Protocol') , "Endpoint" :: NullOrUndefined.NullOrUndefined (Endpoint') , "TopicArn" :: NullOrUndefined.NullOrUndefined (TopicARN') } ) -> Subscription
newSubscription'  customize = (Subscription <<< customize) { "Endpoint": (NullOrUndefined Nothing), "Owner": (NullOrUndefined Nothing), "Protocol": (NullOrUndefined Nothing), "SubscriptionArn": (NullOrUndefined Nothing), "TopicArn": (NullOrUndefined Nothing) }



newtype SubscriptionAttributesMap = SubscriptionAttributesMap (StrMap.StrMap AttributeValue')
derive instance newtypeSubscriptionAttributesMap :: Newtype SubscriptionAttributesMap _
derive instance repGenericSubscriptionAttributesMap :: Generic SubscriptionAttributesMap _
instance showSubscriptionAttributesMap :: Show SubscriptionAttributesMap where
  show = genericShow
instance decodeSubscriptionAttributesMap :: Decode SubscriptionAttributesMap where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSubscriptionAttributesMap :: Encode SubscriptionAttributesMap where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Indicates that the customer already owns the maximum allowed number of subscriptions.</p>
newtype SubscriptionLimitExceededException = SubscriptionLimitExceededException 
  { "message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeSubscriptionLimitExceededException :: Newtype SubscriptionLimitExceededException _
derive instance repGenericSubscriptionLimitExceededException :: Generic SubscriptionLimitExceededException _
instance showSubscriptionLimitExceededException :: Show SubscriptionLimitExceededException where
  show = genericShow
instance decodeSubscriptionLimitExceededException :: Decode SubscriptionLimitExceededException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSubscriptionLimitExceededException :: Encode SubscriptionLimitExceededException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SubscriptionLimitExceededException from required parameters
newSubscriptionLimitExceededException :: SubscriptionLimitExceededException
newSubscriptionLimitExceededException  = SubscriptionLimitExceededException { "message": (NullOrUndefined Nothing) }

-- | Constructs SubscriptionLimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSubscriptionLimitExceededException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (String) } -> {"message" :: NullOrUndefined.NullOrUndefined (String) } ) -> SubscriptionLimitExceededException
newSubscriptionLimitExceededException'  customize = (SubscriptionLimitExceededException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype SubscriptionsList = SubscriptionsList (Array Subscription)
derive instance newtypeSubscriptionsList :: Newtype SubscriptionsList _
derive instance repGenericSubscriptionsList :: Generic SubscriptionsList _
instance showSubscriptionsList :: Show SubscriptionsList where
  show = genericShow
instance decodeSubscriptionsList :: Decode SubscriptionsList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSubscriptionsList :: Encode SubscriptionsList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Indicates that the rate at which requests have been submitted for this action exceeds the limit for your account.</p>
newtype ThrottledException = ThrottledException 
  { "message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeThrottledException :: Newtype ThrottledException _
derive instance repGenericThrottledException :: Generic ThrottledException _
instance showThrottledException :: Show ThrottledException where
  show = genericShow
instance decodeThrottledException :: Decode ThrottledException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeThrottledException :: Encode ThrottledException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ThrottledException from required parameters
newThrottledException :: ThrottledException
newThrottledException  = ThrottledException { "message": (NullOrUndefined Nothing) }

-- | Constructs ThrottledException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newThrottledException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (String) } -> {"message" :: NullOrUndefined.NullOrUndefined (String) } ) -> ThrottledException
newThrottledException'  customize = (ThrottledException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>A wrapper type for the topic's Amazon Resource Name (ARN). To retrieve a topic's attributes, use <code>GetTopicAttributes</code>.</p>
newtype Topic = Topic 
  { "TopicArn" :: NullOrUndefined.NullOrUndefined (TopicARN')
  }
derive instance newtypeTopic :: Newtype Topic _
derive instance repGenericTopic :: Generic Topic _
instance showTopic :: Show Topic where
  show = genericShow
instance decodeTopic :: Decode Topic where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTopic :: Encode Topic where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Topic from required parameters
newTopic :: Topic
newTopic  = Topic { "TopicArn": (NullOrUndefined Nothing) }

-- | Constructs Topic's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTopic' :: ( { "TopicArn" :: NullOrUndefined.NullOrUndefined (TopicARN') } -> {"TopicArn" :: NullOrUndefined.NullOrUndefined (TopicARN') } ) -> Topic
newTopic'  customize = (Topic <<< customize) { "TopicArn": (NullOrUndefined Nothing) }



newtype TopicAttributesMap = TopicAttributesMap (StrMap.StrMap AttributeValue')
derive instance newtypeTopicAttributesMap :: Newtype TopicAttributesMap _
derive instance repGenericTopicAttributesMap :: Generic TopicAttributesMap _
instance showTopicAttributesMap :: Show TopicAttributesMap where
  show = genericShow
instance decodeTopicAttributesMap :: Decode TopicAttributesMap where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTopicAttributesMap :: Encode TopicAttributesMap where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Indicates that the customer already owns the maximum allowed number of topics.</p>
newtype TopicLimitExceededException = TopicLimitExceededException 
  { "message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeTopicLimitExceededException :: Newtype TopicLimitExceededException _
derive instance repGenericTopicLimitExceededException :: Generic TopicLimitExceededException _
instance showTopicLimitExceededException :: Show TopicLimitExceededException where
  show = genericShow
instance decodeTopicLimitExceededException :: Decode TopicLimitExceededException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTopicLimitExceededException :: Encode TopicLimitExceededException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs TopicLimitExceededException from required parameters
newTopicLimitExceededException :: TopicLimitExceededException
newTopicLimitExceededException  = TopicLimitExceededException { "message": (NullOrUndefined Nothing) }

-- | Constructs TopicLimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTopicLimitExceededException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (String) } -> {"message" :: NullOrUndefined.NullOrUndefined (String) } ) -> TopicLimitExceededException
newTopicLimitExceededException'  customize = (TopicLimitExceededException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype TopicsList = TopicsList (Array Topic)
derive instance newtypeTopicsList :: Newtype TopicsList _
derive instance repGenericTopicsList :: Generic TopicsList _
instance showTopicsList :: Show TopicsList where
  show = genericShow
instance decodeTopicsList :: Decode TopicsList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTopicsList :: Encode TopicsList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Input for Unsubscribe action.</p>
newtype UnsubscribeInput = UnsubscribeInput 
  { "SubscriptionArn" :: (SubscriptionARN')
  }
derive instance newtypeUnsubscribeInput :: Newtype UnsubscribeInput _
derive instance repGenericUnsubscribeInput :: Generic UnsubscribeInput _
instance showUnsubscribeInput :: Show UnsubscribeInput where
  show = genericShow
instance decodeUnsubscribeInput :: Decode UnsubscribeInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUnsubscribeInput :: Encode UnsubscribeInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UnsubscribeInput from required parameters
newUnsubscribeInput :: SubscriptionARN' -> UnsubscribeInput
newUnsubscribeInput _SubscriptionArn = UnsubscribeInput { "SubscriptionArn": _SubscriptionArn }

-- | Constructs UnsubscribeInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnsubscribeInput' :: SubscriptionARN' -> ( { "SubscriptionArn" :: (SubscriptionARN') } -> {"SubscriptionArn" :: (SubscriptionARN') } ) -> UnsubscribeInput
newUnsubscribeInput' _SubscriptionArn customize = (UnsubscribeInput <<< customize) { "SubscriptionArn": _SubscriptionArn }



newtype Account' = Account' String
derive instance newtypeAccount' :: Newtype Account' _
derive instance repGenericAccount' :: Generic Account' _
instance showAccount' :: Show Account' where
  show = genericShow
instance decodeAccount' :: Decode Account' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAccount' :: Encode Account' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Action' = Action' String
derive instance newtypeAction' :: Newtype Action' _
derive instance repGenericAction' :: Generic Action' _
instance showAction' :: Show Action' where
  show = genericShow
instance decodeAction' :: Decode Action' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAction' :: Encode Action' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype AttributeName' = AttributeName' String
derive instance newtypeAttributeName' :: Newtype AttributeName' _
derive instance repGenericAttributeName' :: Generic AttributeName' _
instance showAttributeName' :: Show AttributeName' where
  show = genericShow
instance decodeAttributeName' :: Decode AttributeName' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAttributeName' :: Encode AttributeName' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype AttributeValue' = AttributeValue' String
derive instance newtypeAttributeValue' :: Newtype AttributeValue' _
derive instance repGenericAttributeValue' :: Generic AttributeValue' _
instance showAttributeValue' :: Show AttributeValue' where
  show = genericShow
instance decodeAttributeValue' :: Decode AttributeValue' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAttributeValue' :: Encode AttributeValue' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype AuthenticateOnUnsubscribe' = AuthenticateOnUnsubscribe' String
derive instance newtypeAuthenticateOnUnsubscribe' :: Newtype AuthenticateOnUnsubscribe' _
derive instance repGenericAuthenticateOnUnsubscribe' :: Generic AuthenticateOnUnsubscribe' _
instance showAuthenticateOnUnsubscribe' :: Show AuthenticateOnUnsubscribe' where
  show = genericShow
instance decodeAuthenticateOnUnsubscribe' :: Decode AuthenticateOnUnsubscribe' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAuthenticateOnUnsubscribe' :: Encode AuthenticateOnUnsubscribe' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Delegate' = Delegate' String
derive instance newtypeDelegate' :: Newtype Delegate' _
derive instance repGenericDelegate' :: Generic Delegate' _
instance showDelegate' :: Show Delegate' where
  show = genericShow
instance decodeDelegate' :: Decode Delegate' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDelegate' :: Encode Delegate' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Endpoint' = Endpoint' String
derive instance newtypeEndpoint' :: Newtype Endpoint' _
derive instance repGenericEndpoint' :: Generic Endpoint' _
instance showEndpoint' :: Show Endpoint' where
  show = genericShow
instance decodeEndpoint' :: Decode Endpoint' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEndpoint' :: Encode Endpoint' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Label' = Label' String
derive instance newtypeLabel' :: Newtype Label' _
derive instance repGenericLabel' :: Generic Label' _
instance showLabel' :: Show Label' where
  show = genericShow
instance decodeLabel' :: Decode Label' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLabel' :: Encode Label' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Message' = Message' String
derive instance newtypeMessage' :: Newtype Message' _
derive instance repGenericMessage' :: Generic Message' _
instance showMessage' :: Show Message' where
  show = genericShow
instance decodeMessage' :: Decode Message' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMessage' :: Encode Message' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype MessageId' = MessageId' String
derive instance newtypeMessageId' :: Newtype MessageId' _
derive instance repGenericMessageId' :: Generic MessageId' _
instance showMessageId' :: Show MessageId' where
  show = genericShow
instance decodeMessageId' :: Decode MessageId' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMessageId' :: Encode MessageId' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype MessageStructure' = MessageStructure' String
derive instance newtypeMessageStructure' :: Newtype MessageStructure' _
derive instance repGenericMessageStructure' :: Generic MessageStructure' _
instance showMessageStructure' :: Show MessageStructure' where
  show = genericShow
instance decodeMessageStructure' :: Decode MessageStructure' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMessageStructure' :: Encode MessageStructure' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype NextToken' = NextToken' String
derive instance newtypeNextToken' :: Newtype NextToken' _
derive instance repGenericNextToken' :: Generic NextToken' _
instance showNextToken' :: Show NextToken' where
  show = genericShow
instance decodeNextToken' :: Decode NextToken' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNextToken' :: Encode NextToken' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Protocol' = Protocol' String
derive instance newtypeProtocol' :: Newtype Protocol' _
derive instance repGenericProtocol' :: Generic Protocol' _
instance showProtocol' :: Show Protocol' where
  show = genericShow
instance decodeProtocol' :: Decode Protocol' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeProtocol' :: Encode Protocol' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Subject' = Subject' String
derive instance newtypeSubject' :: Newtype Subject' _
derive instance repGenericSubject' :: Generic Subject' _
instance showSubject' :: Show Subject' where
  show = genericShow
instance decodeSubject' :: Decode Subject' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSubject' :: Encode Subject' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype SubscriptionARN' = SubscriptionARN' String
derive instance newtypeSubscriptionARN' :: Newtype SubscriptionARN' _
derive instance repGenericSubscriptionARN' :: Generic SubscriptionARN' _
instance showSubscriptionARN' :: Show SubscriptionARN' where
  show = genericShow
instance decodeSubscriptionARN' :: Decode SubscriptionARN' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSubscriptionARN' :: Encode SubscriptionARN' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Token' = Token' String
derive instance newtypeToken' :: Newtype Token' _
derive instance repGenericToken' :: Generic Token' _
instance showToken' :: Show Token' where
  show = genericShow
instance decodeToken' :: Decode Token' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeToken' :: Encode Token' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype TopicARN' = TopicARN' String
derive instance newtypeTopicARN' :: Newtype TopicARN' _
derive instance repGenericTopicARN' :: Generic TopicARN' _
instance showTopicARN' :: Show TopicARN' where
  show = genericShow
instance decodeTopicARN' :: Decode TopicARN' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTopicARN' :: Encode TopicARN' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype TopicName' = TopicName' String
derive instance newtypeTopicName' :: Newtype TopicName' _
derive instance repGenericTopicName' :: Generic TopicName' _
instance showTopicName' :: Show TopicName' where
  show = genericShow
instance decodeTopicName' :: Decode TopicName' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTopicName' :: Encode TopicName' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

