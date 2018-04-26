
module AWS.SNS.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.SNS as SNS
import AWS.SNS.Types as SNSTypes


-- | <p>Adds a statement to a topic's access control policy, granting access for the specified AWS accounts to the specified actions.</p>
addPermission :: forall eff. SNS.Service -> SNSTypes.AddPermissionInput -> Aff (exception :: EXCEPTION | eff) Unit
addPermission (SNS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "addPermission"


-- | <p>Accepts a phone number and indicates whether the phone holder has opted out of receiving SMS messages from your account. You cannot send SMS messages to a number that is opted out.</p> <p>To resume sending messages, you can opt in the number by using the <code>OptInPhoneNumber</code> action.</p>
checkIfPhoneNumberIsOptedOut :: forall eff. SNS.Service -> SNSTypes.CheckIfPhoneNumberIsOptedOutInput -> Aff (exception :: EXCEPTION | eff) SNSTypes.CheckIfPhoneNumberIsOptedOutResponse
checkIfPhoneNumberIsOptedOut (SNS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "checkIfPhoneNumberIsOptedOut"


-- | <p>Verifies an endpoint owner's intent to receive messages by validating the token sent to the endpoint by an earlier <code>Subscribe</code> action. If the token is valid, the action creates a new subscription and returns its Amazon Resource Name (ARN). This call requires an AWS signature only when the <code>AuthenticateOnUnsubscribe</code> flag is set to "true".</p>
confirmSubscription :: forall eff. SNS.Service -> SNSTypes.ConfirmSubscriptionInput -> Aff (exception :: EXCEPTION | eff) SNSTypes.ConfirmSubscriptionResponse
confirmSubscription (SNS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "confirmSubscription"


-- | <p>Creates a platform application object for one of the supported push notification services, such as APNS and GCM, to which devices and mobile apps may register. You must specify PlatformPrincipal and PlatformCredential attributes when using the <code>CreatePlatformApplication</code> action. The PlatformPrincipal is received from the notification service. For APNS/APNS_SANDBOX, PlatformPrincipal is "SSL certificate". For GCM, PlatformPrincipal is not applicable. For ADM, PlatformPrincipal is "client id". The PlatformCredential is also received from the notification service. For WNS, PlatformPrincipal is "Package Security Identifier". For MPNS, PlatformPrincipal is "TLS certificate". For Baidu, PlatformPrincipal is "API key".</p> <p>For APNS/APNS_SANDBOX, PlatformCredential is "private key". For GCM, PlatformCredential is "API key". For ADM, PlatformCredential is "client secret". For WNS, PlatformCredential is "secret key". For MPNS, PlatformCredential is "private key". For Baidu, PlatformCredential is "secret key". The PlatformApplicationArn that is returned when using <code>CreatePlatformApplication</code> is then used as an attribute for the <code>CreatePlatformEndpoint</code> action. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. For more information about obtaining the PlatformPrincipal and PlatformCredential for each of the supported push notification services, see <a href="http://docs.aws.amazon.com/sns/latest/dg/mobile-push-apns.html">Getting Started with Apple Push Notification Service</a>, <a href="http://docs.aws.amazon.com/sns/latest/dg/mobile-push-adm.html">Getting Started with Amazon Device Messaging</a>, <a href="http://docs.aws.amazon.com/sns/latest/dg/mobile-push-baidu.html">Getting Started with Baidu Cloud Push</a>, <a href="http://docs.aws.amazon.com/sns/latest/dg/mobile-push-gcm.html">Getting Started with Google Cloud Messaging for Android</a>, <a href="http://docs.aws.amazon.com/sns/latest/dg/mobile-push-mpns.html">Getting Started with MPNS</a>, or <a href="http://docs.aws.amazon.com/sns/latest/dg/mobile-push-wns.html">Getting Started with WNS</a>. </p>
createPlatformApplication :: forall eff. SNS.Service -> SNSTypes.CreatePlatformApplicationInput -> Aff (exception :: EXCEPTION | eff) SNSTypes.CreatePlatformApplicationResponse
createPlatformApplication (SNS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createPlatformApplication"


-- | <p>Creates an endpoint for a device and mobile app on one of the supported push notification services, such as GCM and APNS. <code>CreatePlatformEndpoint</code> requires the PlatformApplicationArn that is returned from <code>CreatePlatformApplication</code>. The EndpointArn that is returned when using <code>CreatePlatformEndpoint</code> can then be used by the <code>Publish</code> action to send a message to a mobile app or by the <code>Subscribe</code> action for subscription to a topic. The <code>CreatePlatformEndpoint</code> action is idempotent, so if the requester already owns an endpoint with the same device token and attributes, that endpoint's ARN is returned without creating a new endpoint. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p> <p>When using <code>CreatePlatformEndpoint</code> with Baidu, two attributes must be provided: ChannelId and UserId. The token field must also contain the ChannelId. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePushBaiduEndpoint.html">Creating an Amazon SNS Endpoint for Baidu</a>. </p>
createPlatformEndpoint :: forall eff. SNS.Service -> SNSTypes.CreatePlatformEndpointInput -> Aff (exception :: EXCEPTION | eff) SNSTypes.CreateEndpointResponse
createPlatformEndpoint (SNS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createPlatformEndpoint"


-- | <p>Creates a topic to which notifications can be published. Users can create at most 100,000 topics. For more information, see <a href="http://aws.amazon.com/sns/">http://aws.amazon.com/sns</a>. This action is idempotent, so if the requester already owns a topic with the specified name, that topic's ARN is returned without creating a new topic.</p>
createTopic :: forall eff. SNS.Service -> SNSTypes.CreateTopicInput -> Aff (exception :: EXCEPTION | eff) SNSTypes.CreateTopicResponse
createTopic (SNS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createTopic"


-- | <p>Deletes the endpoint for a device and mobile app from Amazon SNS. This action is idempotent. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p> <p>When you delete an endpoint that is also subscribed to a topic, then you must also unsubscribe the endpoint from the topic.</p>
deleteEndpoint :: forall eff. SNS.Service -> SNSTypes.DeleteEndpointInput -> Aff (exception :: EXCEPTION | eff) Unit
deleteEndpoint (SNS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteEndpoint"


-- | <p>Deletes a platform application object for one of the supported push notification services, such as APNS and GCM. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>
deletePlatformApplication :: forall eff. SNS.Service -> SNSTypes.DeletePlatformApplicationInput -> Aff (exception :: EXCEPTION | eff) Unit
deletePlatformApplication (SNS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deletePlatformApplication"


-- | <p>Deletes a topic and all its subscriptions. Deleting a topic might prevent some messages previously sent to the topic from being delivered to subscribers. This action is idempotent, so deleting a topic that does not exist does not result in an error.</p>
deleteTopic :: forall eff. SNS.Service -> SNSTypes.DeleteTopicInput -> Aff (exception :: EXCEPTION | eff) Unit
deleteTopic (SNS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteTopic"


-- | <p>Retrieves the endpoint attributes for a device on one of the supported push notification services, such as GCM and APNS. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>
getEndpointAttributes :: forall eff. SNS.Service -> SNSTypes.GetEndpointAttributesInput -> Aff (exception :: EXCEPTION | eff) SNSTypes.GetEndpointAttributesResponse
getEndpointAttributes (SNS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getEndpointAttributes"


-- | <p>Retrieves the attributes of the platform application object for the supported push notification services, such as APNS and GCM. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>
getPlatformApplicationAttributes :: forall eff. SNS.Service -> SNSTypes.GetPlatformApplicationAttributesInput -> Aff (exception :: EXCEPTION | eff) SNSTypes.GetPlatformApplicationAttributesResponse
getPlatformApplicationAttributes (SNS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getPlatformApplicationAttributes"


-- | <p>Returns the settings for sending SMS messages from your account.</p> <p>These settings are set with the <code>SetSMSAttributes</code> action.</p>
getSMSAttributes :: forall eff. SNS.Service -> SNSTypes.GetSMSAttributesInput -> Aff (exception :: EXCEPTION | eff) SNSTypes.GetSMSAttributesResponse
getSMSAttributes (SNS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getSMSAttributes"


-- | <p>Returns all of the properties of a subscription.</p>
getSubscriptionAttributes :: forall eff. SNS.Service -> SNSTypes.GetSubscriptionAttributesInput -> Aff (exception :: EXCEPTION | eff) SNSTypes.GetSubscriptionAttributesResponse
getSubscriptionAttributes (SNS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getSubscriptionAttributes"


-- | <p>Returns all of the properties of a topic. Topic properties returned might differ based on the authorization of the user.</p>
getTopicAttributes :: forall eff. SNS.Service -> SNSTypes.GetTopicAttributesInput -> Aff (exception :: EXCEPTION | eff) SNSTypes.GetTopicAttributesResponse
getTopicAttributes (SNS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getTopicAttributes"


-- | <p>Lists the endpoints and endpoint attributes for devices in a supported push notification service, such as GCM and APNS. The results for <code>ListEndpointsByPlatformApplication</code> are paginated and return a limited list of endpoints, up to 100. If additional records are available after the first page results, then a NextToken string will be returned. To receive the next page, you call <code>ListEndpointsByPlatformApplication</code> again using the NextToken string received from the previous call. When there are no more records to return, NextToken will be null. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>
listEndpointsByPlatformApplication :: forall eff. SNS.Service -> SNSTypes.ListEndpointsByPlatformApplicationInput -> Aff (exception :: EXCEPTION | eff) SNSTypes.ListEndpointsByPlatformApplicationResponse
listEndpointsByPlatformApplication (SNS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listEndpointsByPlatformApplication"


-- | <p>Returns a list of phone numbers that are opted out, meaning you cannot send SMS messages to them.</p> <p>The results for <code>ListPhoneNumbersOptedOut</code> are paginated, and each page returns up to 100 phone numbers. If additional phone numbers are available after the first page of results, then a <code>NextToken</code> string will be returned. To receive the next page, you call <code>ListPhoneNumbersOptedOut</code> again using the <code>NextToken</code> string received from the previous call. When there are no more records to return, <code>NextToken</code> will be null.</p>
listPhoneNumbersOptedOut :: forall eff. SNS.Service -> SNSTypes.ListPhoneNumbersOptedOutInput -> Aff (exception :: EXCEPTION | eff) SNSTypes.ListPhoneNumbersOptedOutResponse
listPhoneNumbersOptedOut (SNS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listPhoneNumbersOptedOut"


-- | <p>Lists the platform application objects for the supported push notification services, such as APNS and GCM. The results for <code>ListPlatformApplications</code> are paginated and return a limited list of applications, up to 100. If additional records are available after the first page results, then a NextToken string will be returned. To receive the next page, you call <code>ListPlatformApplications</code> using the NextToken string received from the previous call. When there are no more records to return, NextToken will be null. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>
listPlatformApplications :: forall eff. SNS.Service -> SNSTypes.ListPlatformApplicationsInput -> Aff (exception :: EXCEPTION | eff) SNSTypes.ListPlatformApplicationsResponse
listPlatformApplications (SNS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listPlatformApplications"


-- | <p>Returns a list of the requester's subscriptions. Each call returns a limited list of subscriptions, up to 100. If there are more subscriptions, a <code>NextToken</code> is also returned. Use the <code>NextToken</code> parameter in a new <code>ListSubscriptions</code> call to get further results.</p>
listSubscriptions :: forall eff. SNS.Service -> SNSTypes.ListSubscriptionsInput -> Aff (exception :: EXCEPTION | eff) SNSTypes.ListSubscriptionsResponse
listSubscriptions (SNS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listSubscriptions"


-- | <p>Returns a list of the subscriptions to a specific topic. Each call returns a limited list of subscriptions, up to 100. If there are more subscriptions, a <code>NextToken</code> is also returned. Use the <code>NextToken</code> parameter in a new <code>ListSubscriptionsByTopic</code> call to get further results.</p>
listSubscriptionsByTopic :: forall eff. SNS.Service -> SNSTypes.ListSubscriptionsByTopicInput -> Aff (exception :: EXCEPTION | eff) SNSTypes.ListSubscriptionsByTopicResponse
listSubscriptionsByTopic (SNS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listSubscriptionsByTopic"


-- | <p>Returns a list of the requester's topics. Each call returns a limited list of topics, up to 100. If there are more topics, a <code>NextToken</code> is also returned. Use the <code>NextToken</code> parameter in a new <code>ListTopics</code> call to get further results.</p>
listTopics :: forall eff. SNS.Service -> SNSTypes.ListTopicsInput -> Aff (exception :: EXCEPTION | eff) SNSTypes.ListTopicsResponse
listTopics (SNS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listTopics"


-- | <p>Use this request to opt in a phone number that is opted out, which enables you to resume sending SMS messages to the number.</p> <p>You can opt in a phone number only once every 30 days.</p>
optInPhoneNumber :: forall eff. SNS.Service -> SNSTypes.OptInPhoneNumberInput -> Aff (exception :: EXCEPTION | eff) SNSTypes.OptInPhoneNumberResponse
optInPhoneNumber (SNS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "optInPhoneNumber"


-- | <p>Sends a message to all of a topic's subscribed endpoints. When a <code>messageId</code> is returned, the message has been saved and Amazon SNS will attempt to deliver it to the topic's subscribers shortly. The format of the outgoing message to each subscribed endpoint depends on the notification protocol.</p> <p>To use the <code>Publish</code> action for sending a message to a mobile endpoint, such as an app on a Kindle device or mobile phone, you must specify the EndpointArn for the TargetArn parameter. The EndpointArn is returned when making a call with the <code>CreatePlatformEndpoint</code> action. </p> <p>For more information about formatting messages, see <a href="http://docs.aws.amazon.com/sns/latest/dg/mobile-push-send-custommessage.html">Send Custom Platform-Specific Payloads in Messages to Mobile Devices</a>. </p>
publish :: forall eff. SNS.Service -> SNSTypes.PublishInput -> Aff (exception :: EXCEPTION | eff) SNSTypes.PublishResponse
publish (SNS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "publish"


-- | <p>Removes a statement from a topic's access control policy.</p>
removePermission :: forall eff. SNS.Service -> SNSTypes.RemovePermissionInput -> Aff (exception :: EXCEPTION | eff) Unit
removePermission (SNS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "removePermission"


-- | <p>Sets the attributes for an endpoint for a device on one of the supported push notification services, such as GCM and APNS. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>
setEndpointAttributes :: forall eff. SNS.Service -> SNSTypes.SetEndpointAttributesInput -> Aff (exception :: EXCEPTION | eff) Unit
setEndpointAttributes (SNS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "setEndpointAttributes"


-- | <p>Sets the attributes of the platform application object for the supported push notification services, such as APNS and GCM. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. For information on configuring attributes for message delivery status, see <a href="http://docs.aws.amazon.com/sns/latest/dg/sns-msg-status.html">Using Amazon SNS Application Attributes for Message Delivery Status</a>. </p>
setPlatformApplicationAttributes :: forall eff. SNS.Service -> SNSTypes.SetPlatformApplicationAttributesInput -> Aff (exception :: EXCEPTION | eff) Unit
setPlatformApplicationAttributes (SNS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "setPlatformApplicationAttributes"


-- | <p>Use this request to set the default settings for sending SMS messages and receiving daily SMS usage reports.</p> <p>You can override some of these settings for a single message when you use the <code>Publish</code> action with the <code>MessageAttributes.entry.N</code> parameter. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/sms_publish-to-phone.html">Sending an SMS Message</a> in the <i>Amazon SNS Developer Guide</i>.</p>
setSMSAttributes :: forall eff. SNS.Service -> SNSTypes.SetSMSAttributesInput -> Aff (exception :: EXCEPTION | eff) SNSTypes.SetSMSAttributesResponse
setSMSAttributes (SNS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "setSMSAttributes"


-- | <p>Allows a subscription owner to set an attribute of the topic to a new value.</p>
setSubscriptionAttributes :: forall eff. SNS.Service -> SNSTypes.SetSubscriptionAttributesInput -> Aff (exception :: EXCEPTION | eff) Unit
setSubscriptionAttributes (SNS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "setSubscriptionAttributes"


-- | <p>Allows a topic owner to set an attribute of the topic to a new value.</p>
setTopicAttributes :: forall eff. SNS.Service -> SNSTypes.SetTopicAttributesInput -> Aff (exception :: EXCEPTION | eff) Unit
setTopicAttributes (SNS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "setTopicAttributes"


-- | <p>Prepares to subscribe an endpoint by sending the endpoint a confirmation message. To actually create a subscription, the endpoint owner must call the <code>ConfirmSubscription</code> action with the token from the confirmation message. Confirmation tokens are valid for three days.</p>
subscribe :: forall eff. SNS.Service -> SNSTypes.SubscribeInput -> Aff (exception :: EXCEPTION | eff) SNSTypes.SubscribeResponse
subscribe (SNS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "subscribe"


-- | <p>Deletes a subscription. If the subscription requires authentication for deletion, only the owner of the subscription or the topic's owner can unsubscribe, and an AWS signature is required. If the <code>Unsubscribe</code> call does not require authentication and the requester is not the subscription owner, a final cancellation message is delivered to the endpoint, so that the endpoint owner can easily resubscribe to the topic if the <code>Unsubscribe</code> request was unintended.</p>
unsubscribe :: forall eff. SNS.Service -> SNSTypes.UnsubscribeInput -> Aff (exception :: EXCEPTION | eff) Unit
unsubscribe (SNS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "unsubscribe"
