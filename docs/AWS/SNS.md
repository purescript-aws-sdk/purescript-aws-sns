## Module AWS.SNS

<fullname>Amazon Simple Notification Service</fullname> <p>Amazon Simple Notification Service (Amazon SNS) is a web service that enables you to build distributed web-enabled applications. Applications can use Amazon SNS to easily push real-time notification messages to interested subscribers over multiple delivery protocols. For more information about this product see <a href="http://aws.amazon.com/sns/">http://aws.amazon.com/sns</a>. For detailed information about Amazon SNS features and their associated API calls, see the <a href="http://docs.aws.amazon.com/sns/latest/dg/">Amazon SNS Developer Guide</a>. </p> <p>We also provide SDKs that enable you to access Amazon SNS from your preferred programming language. The SDKs contain functionality that automatically takes care of tasks such as: cryptographically signing your service requests, retrying requests, and handling error responses. For a list of available SDKs, go to <a href="http://aws.amazon.com/tools/">Tools for Amazon Web Services</a>. </p>

#### `addPermission`

``` purescript
addPermission :: forall eff. AddPermissionInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Adds a statement to a topic's access control policy, granting access for the specified AWS accounts to the specified actions.</p>

#### `checkIfPhoneNumberIsOptedOut`

``` purescript
checkIfPhoneNumberIsOptedOut :: forall eff. CheckIfPhoneNumberIsOptedOutInput -> Aff (exception :: EXCEPTION | eff) CheckIfPhoneNumberIsOptedOutResponse
```

<p>Accepts a phone number and indicates whether the phone holder has opted out of receiving SMS messages from your account. You cannot send SMS messages to a number that is opted out.</p> <p>To resume sending messages, you can opt in the number by using the <code>OptInPhoneNumber</code> action.</p>

#### `confirmSubscription`

``` purescript
confirmSubscription :: forall eff. ConfirmSubscriptionInput -> Aff (exception :: EXCEPTION | eff) ConfirmSubscriptionResponse
```

<p>Verifies an endpoint owner's intent to receive messages by validating the token sent to the endpoint by an earlier <code>Subscribe</code> action. If the token is valid, the action creates a new subscription and returns its Amazon Resource Name (ARN). This call requires an AWS signature only when the <code>AuthenticateOnUnsubscribe</code> flag is set to "true".</p>

#### `createPlatformApplication`

``` purescript
createPlatformApplication :: forall eff. CreatePlatformApplicationInput -> Aff (exception :: EXCEPTION | eff) CreatePlatformApplicationResponse
```

<p>Creates a platform application object for one of the supported push notification services, such as APNS and GCM, to which devices and mobile apps may register. You must specify PlatformPrincipal and PlatformCredential attributes when using the <code>CreatePlatformApplication</code> action. The PlatformPrincipal is received from the notification service. For APNS/APNS_SANDBOX, PlatformPrincipal is "SSL certificate". For GCM, PlatformPrincipal is not applicable. For ADM, PlatformPrincipal is "client id". The PlatformCredential is also received from the notification service. For WNS, PlatformPrincipal is "Package Security Identifier". For MPNS, PlatformPrincipal is "TLS certificate". For Baidu, PlatformPrincipal is "API key".</p> <p>For APNS/APNS_SANDBOX, PlatformCredential is "private key". For GCM, PlatformCredential is "API key". For ADM, PlatformCredential is "client secret". For WNS, PlatformCredential is "secret key". For MPNS, PlatformCredential is "private key". For Baidu, PlatformCredential is "secret key". The PlatformApplicationArn that is returned when using <code>CreatePlatformApplication</code> is then used as an attribute for the <code>CreatePlatformEndpoint</code> action. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. For more information about obtaining the PlatformPrincipal and PlatformCredential for each of the supported push notification services, see <a href="http://docs.aws.amazon.com/sns/latest/dg/mobile-push-apns.html">Getting Started with Apple Push Notification Service</a>, <a href="http://docs.aws.amazon.com/sns/latest/dg/mobile-push-adm.html">Getting Started with Amazon Device Messaging</a>, <a href="http://docs.aws.amazon.com/sns/latest/dg/mobile-push-baidu.html">Getting Started with Baidu Cloud Push</a>, <a href="http://docs.aws.amazon.com/sns/latest/dg/mobile-push-gcm.html">Getting Started with Google Cloud Messaging for Android</a>, <a href="http://docs.aws.amazon.com/sns/latest/dg/mobile-push-mpns.html">Getting Started with MPNS</a>, or <a href="http://docs.aws.amazon.com/sns/latest/dg/mobile-push-wns.html">Getting Started with WNS</a>. </p>

#### `createPlatformEndpoint`

``` purescript
createPlatformEndpoint :: forall eff. CreatePlatformEndpointInput -> Aff (exception :: EXCEPTION | eff) CreateEndpointResponse
```

<p>Creates an endpoint for a device and mobile app on one of the supported push notification services, such as GCM and APNS. <code>CreatePlatformEndpoint</code> requires the PlatformApplicationArn that is returned from <code>CreatePlatformApplication</code>. The EndpointArn that is returned when using <code>CreatePlatformEndpoint</code> can then be used by the <code>Publish</code> action to send a message to a mobile app or by the <code>Subscribe</code> action for subscription to a topic. The <code>CreatePlatformEndpoint</code> action is idempotent, so if the requester already owns an endpoint with the same device token and attributes, that endpoint's ARN is returned without creating a new endpoint. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p> <p>When using <code>CreatePlatformEndpoint</code> with Baidu, two attributes must be provided: ChannelId and UserId. The token field must also contain the ChannelId. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePushBaiduEndpoint.html">Creating an Amazon SNS Endpoint for Baidu</a>. </p>

#### `createTopic`

``` purescript
createTopic :: forall eff. CreateTopicInput -> Aff (exception :: EXCEPTION | eff) CreateTopicResponse
```

<p>Creates a topic to which notifications can be published. Users can create at most 100,000 topics. For more information, see <a href="http://aws.amazon.com/sns/">http://aws.amazon.com/sns</a>. This action is idempotent, so if the requester already owns a topic with the specified name, that topic's ARN is returned without creating a new topic.</p>

#### `deleteEndpoint`

``` purescript
deleteEndpoint :: forall eff. DeleteEndpointInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the endpoint for a device and mobile app from Amazon SNS. This action is idempotent. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p> <p>When you delete an endpoint that is also subscribed to a topic, then you must also unsubscribe the endpoint from the topic.</p>

#### `deletePlatformApplication`

``` purescript
deletePlatformApplication :: forall eff. DeletePlatformApplicationInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes a platform application object for one of the supported push notification services, such as APNS and GCM. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>

#### `deleteTopic`

``` purescript
deleteTopic :: forall eff. DeleteTopicInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes a topic and all its subscriptions. Deleting a topic might prevent some messages previously sent to the topic from being delivered to subscribers. This action is idempotent, so deleting a topic that does not exist does not result in an error.</p>

#### `getEndpointAttributes`

``` purescript
getEndpointAttributes :: forall eff. GetEndpointAttributesInput -> Aff (exception :: EXCEPTION | eff) GetEndpointAttributesResponse
```

<p>Retrieves the endpoint attributes for a device on one of the supported push notification services, such as GCM and APNS. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>

#### `getPlatformApplicationAttributes`

``` purescript
getPlatformApplicationAttributes :: forall eff. GetPlatformApplicationAttributesInput -> Aff (exception :: EXCEPTION | eff) GetPlatformApplicationAttributesResponse
```

<p>Retrieves the attributes of the platform application object for the supported push notification services, such as APNS and GCM. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>

#### `getSMSAttributes`

``` purescript
getSMSAttributes :: forall eff. GetSMSAttributesInput -> Aff (exception :: EXCEPTION | eff) GetSMSAttributesResponse
```

<p>Returns the settings for sending SMS messages from your account.</p> <p>These settings are set with the <code>SetSMSAttributes</code> action.</p>

#### `getSubscriptionAttributes`

``` purescript
getSubscriptionAttributes :: forall eff. GetSubscriptionAttributesInput -> Aff (exception :: EXCEPTION | eff) GetSubscriptionAttributesResponse
```

<p>Returns all of the properties of a subscription.</p>

#### `getTopicAttributes`

``` purescript
getTopicAttributes :: forall eff. GetTopicAttributesInput -> Aff (exception :: EXCEPTION | eff) GetTopicAttributesResponse
```

<p>Returns all of the properties of a topic. Topic properties returned might differ based on the authorization of the user.</p>

#### `listEndpointsByPlatformApplication`

``` purescript
listEndpointsByPlatformApplication :: forall eff. ListEndpointsByPlatformApplicationInput -> Aff (exception :: EXCEPTION | eff) ListEndpointsByPlatformApplicationResponse
```

<p>Lists the endpoints and endpoint attributes for devices in a supported push notification service, such as GCM and APNS. The results for <code>ListEndpointsByPlatformApplication</code> are paginated and return a limited list of endpoints, up to 100. If additional records are available after the first page results, then a NextToken string will be returned. To receive the next page, you call <code>ListEndpointsByPlatformApplication</code> again using the NextToken string received from the previous call. When there are no more records to return, NextToken will be null. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>

#### `listPhoneNumbersOptedOut`

``` purescript
listPhoneNumbersOptedOut :: forall eff. ListPhoneNumbersOptedOutInput -> Aff (exception :: EXCEPTION | eff) ListPhoneNumbersOptedOutResponse
```

<p>Returns a list of phone numbers that are opted out, meaning you cannot send SMS messages to them.</p> <p>The results for <code>ListPhoneNumbersOptedOut</code> are paginated, and each page returns up to 100 phone numbers. If additional phone numbers are available after the first page of results, then a <code>NextToken</code> string will be returned. To receive the next page, you call <code>ListPhoneNumbersOptedOut</code> again using the <code>NextToken</code> string received from the previous call. When there are no more records to return, <code>NextToken</code> will be null.</p>

#### `listPlatformApplications`

``` purescript
listPlatformApplications :: forall eff. ListPlatformApplicationsInput -> Aff (exception :: EXCEPTION | eff) ListPlatformApplicationsResponse
```

<p>Lists the platform application objects for the supported push notification services, such as APNS and GCM. The results for <code>ListPlatformApplications</code> are paginated and return a limited list of applications, up to 100. If additional records are available after the first page results, then a NextToken string will be returned. To receive the next page, you call <code>ListPlatformApplications</code> using the NextToken string received from the previous call. When there are no more records to return, NextToken will be null. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>

#### `listSubscriptions`

``` purescript
listSubscriptions :: forall eff. ListSubscriptionsInput -> Aff (exception :: EXCEPTION | eff) ListSubscriptionsResponse
```

<p>Returns a list of the requester's subscriptions. Each call returns a limited list of subscriptions, up to 100. If there are more subscriptions, a <code>NextToken</code> is also returned. Use the <code>NextToken</code> parameter in a new <code>ListSubscriptions</code> call to get further results.</p>

#### `listSubscriptionsByTopic`

``` purescript
listSubscriptionsByTopic :: forall eff. ListSubscriptionsByTopicInput -> Aff (exception :: EXCEPTION | eff) ListSubscriptionsByTopicResponse
```

<p>Returns a list of the subscriptions to a specific topic. Each call returns a limited list of subscriptions, up to 100. If there are more subscriptions, a <code>NextToken</code> is also returned. Use the <code>NextToken</code> parameter in a new <code>ListSubscriptionsByTopic</code> call to get further results.</p>

#### `listTopics`

``` purescript
listTopics :: forall eff. ListTopicsInput -> Aff (exception :: EXCEPTION | eff) ListTopicsResponse
```

<p>Returns a list of the requester's topics. Each call returns a limited list of topics, up to 100. If there are more topics, a <code>NextToken</code> is also returned. Use the <code>NextToken</code> parameter in a new <code>ListTopics</code> call to get further results.</p>

#### `optInPhoneNumber`

``` purescript
optInPhoneNumber :: forall eff. OptInPhoneNumberInput -> Aff (exception :: EXCEPTION | eff) OptInPhoneNumberResponse
```

<p>Use this request to opt in a phone number that is opted out, which enables you to resume sending SMS messages to the number.</p> <p>You can opt in a phone number only once every 30 days.</p>

#### `publish`

``` purescript
publish :: forall eff. PublishInput -> Aff (exception :: EXCEPTION | eff) PublishResponse
```

<p>Sends a message to all of a topic's subscribed endpoints. When a <code>messageId</code> is returned, the message has been saved and Amazon SNS will attempt to deliver it to the topic's subscribers shortly. The format of the outgoing message to each subscribed endpoint depends on the notification protocol.</p> <p>To use the <code>Publish</code> action for sending a message to a mobile endpoint, such as an app on a Kindle device or mobile phone, you must specify the EndpointArn for the TargetArn parameter. The EndpointArn is returned when making a call with the <code>CreatePlatformEndpoint</code> action. </p> <p>For more information about formatting messages, see <a href="http://docs.aws.amazon.com/sns/latest/dg/mobile-push-send-custommessage.html">Send Custom Platform-Specific Payloads in Messages to Mobile Devices</a>. </p>

#### `removePermission`

``` purescript
removePermission :: forall eff. RemovePermissionInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Removes a statement from a topic's access control policy.</p>

#### `setEndpointAttributes`

``` purescript
setEndpointAttributes :: forall eff. SetEndpointAttributesInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Sets the attributes for an endpoint for a device on one of the supported push notification services, such as GCM and APNS. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>

#### `setPlatformApplicationAttributes`

``` purescript
setPlatformApplicationAttributes :: forall eff. SetPlatformApplicationAttributesInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Sets the attributes of the platform application object for the supported push notification services, such as APNS and GCM. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. For information on configuring attributes for message delivery status, see <a href="http://docs.aws.amazon.com/sns/latest/dg/sns-msg-status.html">Using Amazon SNS Application Attributes for Message Delivery Status</a>. </p>

#### `setSMSAttributes`

``` purescript
setSMSAttributes :: forall eff. SetSMSAttributesInput -> Aff (exception :: EXCEPTION | eff) SetSMSAttributesResponse
```

<p>Use this request to set the default settings for sending SMS messages and receiving daily SMS usage reports.</p> <p>You can override some of these settings for a single message when you use the <code>Publish</code> action with the <code>MessageAttributes.entry.N</code> parameter. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/sms_publish-to-phone.html">Sending an SMS Message</a> in the <i>Amazon SNS Developer Guide</i>.</p>

#### `setSubscriptionAttributes`

``` purescript
setSubscriptionAttributes :: forall eff. SetSubscriptionAttributesInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Allows a subscription owner to set an attribute of the topic to a new value.</p>

#### `setTopicAttributes`

``` purescript
setTopicAttributes :: forall eff. SetTopicAttributesInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Allows a topic owner to set an attribute of the topic to a new value.</p>

#### `subscribe`

``` purescript
subscribe :: forall eff. SubscribeInput -> Aff (exception :: EXCEPTION | eff) SubscribeResponse
```

<p>Prepares to subscribe an endpoint by sending the endpoint a confirmation message. To actually create a subscription, the endpoint owner must call the <code>ConfirmSubscription</code> action with the token from the confirmation message. Confirmation tokens are valid for three days.</p>

#### `unsubscribe`

``` purescript
unsubscribe :: forall eff. UnsubscribeInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes a subscription. If the subscription requires authentication for deletion, only the owner of the subscription or the topic's owner can unsubscribe, and an AWS signature is required. If the <code>Unsubscribe</code> call does not require authentication and the requester is not the subscription owner, a final cancellation message is delivered to the endpoint, so that the endpoint owner can easily resubscribe to the topic if the <code>Unsubscribe</code> request was unintended.</p>

#### `ActionsList`

``` purescript
newtype ActionsList
  = ActionsList (Array Action')
```

##### Instances
``` purescript
Newtype ActionsList _
Generic ActionsList _
Show ActionsList
Decode ActionsList
Encode ActionsList
```

#### `AddPermissionInput`

``` purescript
newtype AddPermissionInput
  = AddPermissionInput { "TopicArn" :: TopicARN', "Label" :: Label', "AWSAccountId" :: DelegatesList, "ActionName" :: ActionsList }
```

##### Instances
``` purescript
Newtype AddPermissionInput _
Generic AddPermissionInput _
Show AddPermissionInput
Decode AddPermissionInput
Encode AddPermissionInput
```

#### `newAddPermissionInput`

``` purescript
newAddPermissionInput :: DelegatesList -> ActionsList -> Label' -> TopicARN' -> AddPermissionInput
```

Constructs AddPermissionInput from required parameters

#### `newAddPermissionInput'`

``` purescript
newAddPermissionInput' :: DelegatesList -> ActionsList -> Label' -> TopicARN' -> ({ "TopicArn" :: TopicARN', "Label" :: Label', "AWSAccountId" :: DelegatesList, "ActionName" :: ActionsList } -> { "TopicArn" :: TopicARN', "Label" :: Label', "AWSAccountId" :: DelegatesList, "ActionName" :: ActionsList }) -> AddPermissionInput
```

Constructs AddPermissionInput's fields from required parameters

#### `AuthorizationErrorException`

``` purescript
newtype AuthorizationErrorException
  = AuthorizationErrorException { message :: NullOrUndefined (String) }
```

<p>Indicates that the user has been denied access to the requested resource.</p>

##### Instances
``` purescript
Newtype AuthorizationErrorException _
Generic AuthorizationErrorException _
Show AuthorizationErrorException
Decode AuthorizationErrorException
Encode AuthorizationErrorException
```

#### `newAuthorizationErrorException`

``` purescript
newAuthorizationErrorException :: AuthorizationErrorException
```

Constructs AuthorizationErrorException from required parameters

#### `newAuthorizationErrorException'`

``` purescript
newAuthorizationErrorException' :: ({ message :: NullOrUndefined (String) } -> { message :: NullOrUndefined (String) }) -> AuthorizationErrorException
```

Constructs AuthorizationErrorException's fields from required parameters

#### `Binary`

``` purescript
newtype Binary
  = Binary String
```

##### Instances
``` purescript
Newtype Binary _
Generic Binary _
Show Binary
Decode Binary
Encode Binary
```

#### `CheckIfPhoneNumberIsOptedOutInput`

``` purescript
newtype CheckIfPhoneNumberIsOptedOutInput
  = CheckIfPhoneNumberIsOptedOutInput { phoneNumber :: PhoneNumber }
```

<p>The input for the <code>CheckIfPhoneNumberIsOptedOut</code> action.</p>

##### Instances
``` purescript
Newtype CheckIfPhoneNumberIsOptedOutInput _
Generic CheckIfPhoneNumberIsOptedOutInput _
Show CheckIfPhoneNumberIsOptedOutInput
Decode CheckIfPhoneNumberIsOptedOutInput
Encode CheckIfPhoneNumberIsOptedOutInput
```

#### `newCheckIfPhoneNumberIsOptedOutInput`

``` purescript
newCheckIfPhoneNumberIsOptedOutInput :: PhoneNumber -> CheckIfPhoneNumberIsOptedOutInput
```

Constructs CheckIfPhoneNumberIsOptedOutInput from required parameters

#### `newCheckIfPhoneNumberIsOptedOutInput'`

``` purescript
newCheckIfPhoneNumberIsOptedOutInput' :: PhoneNumber -> ({ phoneNumber :: PhoneNumber } -> { phoneNumber :: PhoneNumber }) -> CheckIfPhoneNumberIsOptedOutInput
```

Constructs CheckIfPhoneNumberIsOptedOutInput's fields from required parameters

#### `CheckIfPhoneNumberIsOptedOutResponse`

``` purescript
newtype CheckIfPhoneNumberIsOptedOutResponse
  = CheckIfPhoneNumberIsOptedOutResponse { isOptedOut :: NullOrUndefined (Boolean) }
```

<p>The response from the <code>CheckIfPhoneNumberIsOptedOut</code> action.</p>

##### Instances
``` purescript
Newtype CheckIfPhoneNumberIsOptedOutResponse _
Generic CheckIfPhoneNumberIsOptedOutResponse _
Show CheckIfPhoneNumberIsOptedOutResponse
Decode CheckIfPhoneNumberIsOptedOutResponse
Encode CheckIfPhoneNumberIsOptedOutResponse
```

#### `newCheckIfPhoneNumberIsOptedOutResponse`

``` purescript
newCheckIfPhoneNumberIsOptedOutResponse :: CheckIfPhoneNumberIsOptedOutResponse
```

Constructs CheckIfPhoneNumberIsOptedOutResponse from required parameters

#### `newCheckIfPhoneNumberIsOptedOutResponse'`

``` purescript
newCheckIfPhoneNumberIsOptedOutResponse' :: ({ isOptedOut :: NullOrUndefined (Boolean) } -> { isOptedOut :: NullOrUndefined (Boolean) }) -> CheckIfPhoneNumberIsOptedOutResponse
```

Constructs CheckIfPhoneNumberIsOptedOutResponse's fields from required parameters

#### `ConfirmSubscriptionInput`

``` purescript
newtype ConfirmSubscriptionInput
  = ConfirmSubscriptionInput { "TopicArn" :: TopicARN', "Token" :: Token', "AuthenticateOnUnsubscribe" :: NullOrUndefined (AuthenticateOnUnsubscribe') }
```

<p>Input for ConfirmSubscription action.</p>

##### Instances
``` purescript
Newtype ConfirmSubscriptionInput _
Generic ConfirmSubscriptionInput _
Show ConfirmSubscriptionInput
Decode ConfirmSubscriptionInput
Encode ConfirmSubscriptionInput
```

#### `newConfirmSubscriptionInput`

``` purescript
newConfirmSubscriptionInput :: Token' -> TopicARN' -> ConfirmSubscriptionInput
```

Constructs ConfirmSubscriptionInput from required parameters

#### `newConfirmSubscriptionInput'`

``` purescript
newConfirmSubscriptionInput' :: Token' -> TopicARN' -> ({ "TopicArn" :: TopicARN', "Token" :: Token', "AuthenticateOnUnsubscribe" :: NullOrUndefined (AuthenticateOnUnsubscribe') } -> { "TopicArn" :: TopicARN', "Token" :: Token', "AuthenticateOnUnsubscribe" :: NullOrUndefined (AuthenticateOnUnsubscribe') }) -> ConfirmSubscriptionInput
```

Constructs ConfirmSubscriptionInput's fields from required parameters

#### `ConfirmSubscriptionResponse`

``` purescript
newtype ConfirmSubscriptionResponse
  = ConfirmSubscriptionResponse { "SubscriptionArn" :: NullOrUndefined (SubscriptionARN') }
```

<p>Response for ConfirmSubscriptions action.</p>

##### Instances
``` purescript
Newtype ConfirmSubscriptionResponse _
Generic ConfirmSubscriptionResponse _
Show ConfirmSubscriptionResponse
Decode ConfirmSubscriptionResponse
Encode ConfirmSubscriptionResponse
```

#### `newConfirmSubscriptionResponse`

``` purescript
newConfirmSubscriptionResponse :: ConfirmSubscriptionResponse
```

Constructs ConfirmSubscriptionResponse from required parameters

#### `newConfirmSubscriptionResponse'`

``` purescript
newConfirmSubscriptionResponse' :: ({ "SubscriptionArn" :: NullOrUndefined (SubscriptionARN') } -> { "SubscriptionArn" :: NullOrUndefined (SubscriptionARN') }) -> ConfirmSubscriptionResponse
```

Constructs ConfirmSubscriptionResponse's fields from required parameters

#### `CreateEndpointResponse`

``` purescript
newtype CreateEndpointResponse
  = CreateEndpointResponse { "EndpointArn" :: NullOrUndefined (String) }
```

<p>Response from CreateEndpoint action.</p>

##### Instances
``` purescript
Newtype CreateEndpointResponse _
Generic CreateEndpointResponse _
Show CreateEndpointResponse
Decode CreateEndpointResponse
Encode CreateEndpointResponse
```

#### `newCreateEndpointResponse`

``` purescript
newCreateEndpointResponse :: CreateEndpointResponse
```

Constructs CreateEndpointResponse from required parameters

#### `newCreateEndpointResponse'`

``` purescript
newCreateEndpointResponse' :: ({ "EndpointArn" :: NullOrUndefined (String) } -> { "EndpointArn" :: NullOrUndefined (String) }) -> CreateEndpointResponse
```

Constructs CreateEndpointResponse's fields from required parameters

#### `CreatePlatformApplicationInput`

``` purescript
newtype CreatePlatformApplicationInput
  = CreatePlatformApplicationInput { "Name" :: String, "Platform" :: String, "Attributes" :: MapStringToString }
```

<p>Input for CreatePlatformApplication action.</p>

##### Instances
``` purescript
Newtype CreatePlatformApplicationInput _
Generic CreatePlatformApplicationInput _
Show CreatePlatformApplicationInput
Decode CreatePlatformApplicationInput
Encode CreatePlatformApplicationInput
```

#### `newCreatePlatformApplicationInput`

``` purescript
newCreatePlatformApplicationInput :: MapStringToString -> String -> String -> CreatePlatformApplicationInput
```

Constructs CreatePlatformApplicationInput from required parameters

#### `newCreatePlatformApplicationInput'`

``` purescript
newCreatePlatformApplicationInput' :: MapStringToString -> String -> String -> ({ "Name" :: String, "Platform" :: String, "Attributes" :: MapStringToString } -> { "Name" :: String, "Platform" :: String, "Attributes" :: MapStringToString }) -> CreatePlatformApplicationInput
```

Constructs CreatePlatformApplicationInput's fields from required parameters

#### `CreatePlatformApplicationResponse`

``` purescript
newtype CreatePlatformApplicationResponse
  = CreatePlatformApplicationResponse { "PlatformApplicationArn" :: NullOrUndefined (String) }
```

<p>Response from CreatePlatformApplication action.</p>

##### Instances
``` purescript
Newtype CreatePlatformApplicationResponse _
Generic CreatePlatformApplicationResponse _
Show CreatePlatformApplicationResponse
Decode CreatePlatformApplicationResponse
Encode CreatePlatformApplicationResponse
```

#### `newCreatePlatformApplicationResponse`

``` purescript
newCreatePlatformApplicationResponse :: CreatePlatformApplicationResponse
```

Constructs CreatePlatformApplicationResponse from required parameters

#### `newCreatePlatformApplicationResponse'`

``` purescript
newCreatePlatformApplicationResponse' :: ({ "PlatformApplicationArn" :: NullOrUndefined (String) } -> { "PlatformApplicationArn" :: NullOrUndefined (String) }) -> CreatePlatformApplicationResponse
```

Constructs CreatePlatformApplicationResponse's fields from required parameters

#### `CreatePlatformEndpointInput`

``` purescript
newtype CreatePlatformEndpointInput
  = CreatePlatformEndpointInput { "PlatformApplicationArn" :: String, "Token" :: String, "CustomUserData" :: NullOrUndefined (String), "Attributes" :: NullOrUndefined (MapStringToString) }
```

<p>Input for CreatePlatformEndpoint action.</p>

##### Instances
``` purescript
Newtype CreatePlatformEndpointInput _
Generic CreatePlatformEndpointInput _
Show CreatePlatformEndpointInput
Decode CreatePlatformEndpointInput
Encode CreatePlatformEndpointInput
```

#### `newCreatePlatformEndpointInput`

``` purescript
newCreatePlatformEndpointInput :: String -> String -> CreatePlatformEndpointInput
```

Constructs CreatePlatformEndpointInput from required parameters

#### `newCreatePlatformEndpointInput'`

``` purescript
newCreatePlatformEndpointInput' :: String -> String -> ({ "PlatformApplicationArn" :: String, "Token" :: String, "CustomUserData" :: NullOrUndefined (String), "Attributes" :: NullOrUndefined (MapStringToString) } -> { "PlatformApplicationArn" :: String, "Token" :: String, "CustomUserData" :: NullOrUndefined (String), "Attributes" :: NullOrUndefined (MapStringToString) }) -> CreatePlatformEndpointInput
```

Constructs CreatePlatformEndpointInput's fields from required parameters

#### `CreateTopicInput`

``` purescript
newtype CreateTopicInput
  = CreateTopicInput { "Name" :: TopicName' }
```

<p>Input for CreateTopic action.</p>

##### Instances
``` purescript
Newtype CreateTopicInput _
Generic CreateTopicInput _
Show CreateTopicInput
Decode CreateTopicInput
Encode CreateTopicInput
```

#### `newCreateTopicInput`

``` purescript
newCreateTopicInput :: TopicName' -> CreateTopicInput
```

Constructs CreateTopicInput from required parameters

#### `newCreateTopicInput'`

``` purescript
newCreateTopicInput' :: TopicName' -> ({ "Name" :: TopicName' } -> { "Name" :: TopicName' }) -> CreateTopicInput
```

Constructs CreateTopicInput's fields from required parameters

#### `CreateTopicResponse`

``` purescript
newtype CreateTopicResponse
  = CreateTopicResponse { "TopicArn" :: NullOrUndefined (TopicARN') }
```

<p>Response from CreateTopic action.</p>

##### Instances
``` purescript
Newtype CreateTopicResponse _
Generic CreateTopicResponse _
Show CreateTopicResponse
Decode CreateTopicResponse
Encode CreateTopicResponse
```

#### `newCreateTopicResponse`

``` purescript
newCreateTopicResponse :: CreateTopicResponse
```

Constructs CreateTopicResponse from required parameters

#### `newCreateTopicResponse'`

``` purescript
newCreateTopicResponse' :: ({ "TopicArn" :: NullOrUndefined (TopicARN') } -> { "TopicArn" :: NullOrUndefined (TopicARN') }) -> CreateTopicResponse
```

Constructs CreateTopicResponse's fields from required parameters

#### `DelegatesList`

``` purescript
newtype DelegatesList
  = DelegatesList (Array Delegate')
```

##### Instances
``` purescript
Newtype DelegatesList _
Generic DelegatesList _
Show DelegatesList
Decode DelegatesList
Encode DelegatesList
```

#### `DeleteEndpointInput`

``` purescript
newtype DeleteEndpointInput
  = DeleteEndpointInput { "EndpointArn" :: String }
```

<p>Input for DeleteEndpoint action.</p>

##### Instances
``` purescript
Newtype DeleteEndpointInput _
Generic DeleteEndpointInput _
Show DeleteEndpointInput
Decode DeleteEndpointInput
Encode DeleteEndpointInput
```

#### `newDeleteEndpointInput`

``` purescript
newDeleteEndpointInput :: String -> DeleteEndpointInput
```

Constructs DeleteEndpointInput from required parameters

#### `newDeleteEndpointInput'`

``` purescript
newDeleteEndpointInput' :: String -> ({ "EndpointArn" :: String } -> { "EndpointArn" :: String }) -> DeleteEndpointInput
```

Constructs DeleteEndpointInput's fields from required parameters

#### `DeletePlatformApplicationInput`

``` purescript
newtype DeletePlatformApplicationInput
  = DeletePlatformApplicationInput { "PlatformApplicationArn" :: String }
```

<p>Input for DeletePlatformApplication action.</p>

##### Instances
``` purescript
Newtype DeletePlatformApplicationInput _
Generic DeletePlatformApplicationInput _
Show DeletePlatformApplicationInput
Decode DeletePlatformApplicationInput
Encode DeletePlatformApplicationInput
```

#### `newDeletePlatformApplicationInput`

``` purescript
newDeletePlatformApplicationInput :: String -> DeletePlatformApplicationInput
```

Constructs DeletePlatformApplicationInput from required parameters

#### `newDeletePlatformApplicationInput'`

``` purescript
newDeletePlatformApplicationInput' :: String -> ({ "PlatformApplicationArn" :: String } -> { "PlatformApplicationArn" :: String }) -> DeletePlatformApplicationInput
```

Constructs DeletePlatformApplicationInput's fields from required parameters

#### `DeleteTopicInput`

``` purescript
newtype DeleteTopicInput
  = DeleteTopicInput { "TopicArn" :: TopicARN' }
```

##### Instances
``` purescript
Newtype DeleteTopicInput _
Generic DeleteTopicInput _
Show DeleteTopicInput
Decode DeleteTopicInput
Encode DeleteTopicInput
```

#### `newDeleteTopicInput`

``` purescript
newDeleteTopicInput :: TopicARN' -> DeleteTopicInput
```

Constructs DeleteTopicInput from required parameters

#### `newDeleteTopicInput'`

``` purescript
newDeleteTopicInput' :: TopicARN' -> ({ "TopicArn" :: TopicARN' } -> { "TopicArn" :: TopicARN' }) -> DeleteTopicInput
```

Constructs DeleteTopicInput's fields from required parameters

#### `Endpoint`

``` purescript
newtype Endpoint
  = Endpoint { "EndpointArn" :: NullOrUndefined (String), "Attributes" :: NullOrUndefined (MapStringToString) }
```

<p>Endpoint for mobile app and device.</p>

##### Instances
``` purescript
Newtype Endpoint _
Generic Endpoint _
Show Endpoint
Decode Endpoint
Encode Endpoint
```

#### `newEndpoint`

``` purescript
newEndpoint :: Endpoint
```

Constructs Endpoint from required parameters

#### `newEndpoint'`

``` purescript
newEndpoint' :: ({ "EndpointArn" :: NullOrUndefined (String), "Attributes" :: NullOrUndefined (MapStringToString) } -> { "EndpointArn" :: NullOrUndefined (String), "Attributes" :: NullOrUndefined (MapStringToString) }) -> Endpoint
```

Constructs Endpoint's fields from required parameters

#### `EndpointDisabledException`

``` purescript
newtype EndpointDisabledException
  = EndpointDisabledException { message :: NullOrUndefined (String) }
```

<p>Exception error indicating endpoint disabled.</p>

##### Instances
``` purescript
Newtype EndpointDisabledException _
Generic EndpointDisabledException _
Show EndpointDisabledException
Decode EndpointDisabledException
Encode EndpointDisabledException
```

#### `newEndpointDisabledException`

``` purescript
newEndpointDisabledException :: EndpointDisabledException
```

Constructs EndpointDisabledException from required parameters

#### `newEndpointDisabledException'`

``` purescript
newEndpointDisabledException' :: ({ message :: NullOrUndefined (String) } -> { message :: NullOrUndefined (String) }) -> EndpointDisabledException
```

Constructs EndpointDisabledException's fields from required parameters

#### `GetEndpointAttributesInput`

``` purescript
newtype GetEndpointAttributesInput
  = GetEndpointAttributesInput { "EndpointArn" :: String }
```

<p>Input for GetEndpointAttributes action.</p>

##### Instances
``` purescript
Newtype GetEndpointAttributesInput _
Generic GetEndpointAttributesInput _
Show GetEndpointAttributesInput
Decode GetEndpointAttributesInput
Encode GetEndpointAttributesInput
```

#### `newGetEndpointAttributesInput`

``` purescript
newGetEndpointAttributesInput :: String -> GetEndpointAttributesInput
```

Constructs GetEndpointAttributesInput from required parameters

#### `newGetEndpointAttributesInput'`

``` purescript
newGetEndpointAttributesInput' :: String -> ({ "EndpointArn" :: String } -> { "EndpointArn" :: String }) -> GetEndpointAttributesInput
```

Constructs GetEndpointAttributesInput's fields from required parameters

#### `GetEndpointAttributesResponse`

``` purescript
newtype GetEndpointAttributesResponse
  = GetEndpointAttributesResponse { "Attributes" :: NullOrUndefined (MapStringToString) }
```

<p>Response from GetEndpointAttributes of the EndpointArn.</p>

##### Instances
``` purescript
Newtype GetEndpointAttributesResponse _
Generic GetEndpointAttributesResponse _
Show GetEndpointAttributesResponse
Decode GetEndpointAttributesResponse
Encode GetEndpointAttributesResponse
```

#### `newGetEndpointAttributesResponse`

``` purescript
newGetEndpointAttributesResponse :: GetEndpointAttributesResponse
```

Constructs GetEndpointAttributesResponse from required parameters

#### `newGetEndpointAttributesResponse'`

``` purescript
newGetEndpointAttributesResponse' :: ({ "Attributes" :: NullOrUndefined (MapStringToString) } -> { "Attributes" :: NullOrUndefined (MapStringToString) }) -> GetEndpointAttributesResponse
```

Constructs GetEndpointAttributesResponse's fields from required parameters

#### `GetPlatformApplicationAttributesInput`

``` purescript
newtype GetPlatformApplicationAttributesInput
  = GetPlatformApplicationAttributesInput { "PlatformApplicationArn" :: String }
```

<p>Input for GetPlatformApplicationAttributes action.</p>

##### Instances
``` purescript
Newtype GetPlatformApplicationAttributesInput _
Generic GetPlatformApplicationAttributesInput _
Show GetPlatformApplicationAttributesInput
Decode GetPlatformApplicationAttributesInput
Encode GetPlatformApplicationAttributesInput
```

#### `newGetPlatformApplicationAttributesInput`

``` purescript
newGetPlatformApplicationAttributesInput :: String -> GetPlatformApplicationAttributesInput
```

Constructs GetPlatformApplicationAttributesInput from required parameters

#### `newGetPlatformApplicationAttributesInput'`

``` purescript
newGetPlatformApplicationAttributesInput' :: String -> ({ "PlatformApplicationArn" :: String } -> { "PlatformApplicationArn" :: String }) -> GetPlatformApplicationAttributesInput
```

Constructs GetPlatformApplicationAttributesInput's fields from required parameters

#### `GetPlatformApplicationAttributesResponse`

``` purescript
newtype GetPlatformApplicationAttributesResponse
  = GetPlatformApplicationAttributesResponse { "Attributes" :: NullOrUndefined (MapStringToString) }
```

<p>Response for GetPlatformApplicationAttributes action.</p>

##### Instances
``` purescript
Newtype GetPlatformApplicationAttributesResponse _
Generic GetPlatformApplicationAttributesResponse _
Show GetPlatformApplicationAttributesResponse
Decode GetPlatformApplicationAttributesResponse
Encode GetPlatformApplicationAttributesResponse
```

#### `newGetPlatformApplicationAttributesResponse`

``` purescript
newGetPlatformApplicationAttributesResponse :: GetPlatformApplicationAttributesResponse
```

Constructs GetPlatformApplicationAttributesResponse from required parameters

#### `newGetPlatformApplicationAttributesResponse'`

``` purescript
newGetPlatformApplicationAttributesResponse' :: ({ "Attributes" :: NullOrUndefined (MapStringToString) } -> { "Attributes" :: NullOrUndefined (MapStringToString) }) -> GetPlatformApplicationAttributesResponse
```

Constructs GetPlatformApplicationAttributesResponse's fields from required parameters

#### `GetSMSAttributesInput`

``` purescript
newtype GetSMSAttributesInput
  = GetSMSAttributesInput { attributes :: NullOrUndefined (ListString) }
```

<p>The input for the <code>GetSMSAttributes</code> request.</p>

##### Instances
``` purescript
Newtype GetSMSAttributesInput _
Generic GetSMSAttributesInput _
Show GetSMSAttributesInput
Decode GetSMSAttributesInput
Encode GetSMSAttributesInput
```

#### `newGetSMSAttributesInput`

``` purescript
newGetSMSAttributesInput :: GetSMSAttributesInput
```

Constructs GetSMSAttributesInput from required parameters

#### `newGetSMSAttributesInput'`

``` purescript
newGetSMSAttributesInput' :: ({ attributes :: NullOrUndefined (ListString) } -> { attributes :: NullOrUndefined (ListString) }) -> GetSMSAttributesInput
```

Constructs GetSMSAttributesInput's fields from required parameters

#### `GetSMSAttributesResponse`

``` purescript
newtype GetSMSAttributesResponse
  = GetSMSAttributesResponse { attributes :: NullOrUndefined (MapStringToString) }
```

<p>The response from the <code>GetSMSAttributes</code> request.</p>

##### Instances
``` purescript
Newtype GetSMSAttributesResponse _
Generic GetSMSAttributesResponse _
Show GetSMSAttributesResponse
Decode GetSMSAttributesResponse
Encode GetSMSAttributesResponse
```

#### `newGetSMSAttributesResponse`

``` purescript
newGetSMSAttributesResponse :: GetSMSAttributesResponse
```

Constructs GetSMSAttributesResponse from required parameters

#### `newGetSMSAttributesResponse'`

``` purescript
newGetSMSAttributesResponse' :: ({ attributes :: NullOrUndefined (MapStringToString) } -> { attributes :: NullOrUndefined (MapStringToString) }) -> GetSMSAttributesResponse
```

Constructs GetSMSAttributesResponse's fields from required parameters

#### `GetSubscriptionAttributesInput`

``` purescript
newtype GetSubscriptionAttributesInput
  = GetSubscriptionAttributesInput { "SubscriptionArn" :: SubscriptionARN' }
```

<p>Input for GetSubscriptionAttributes.</p>

##### Instances
``` purescript
Newtype GetSubscriptionAttributesInput _
Generic GetSubscriptionAttributesInput _
Show GetSubscriptionAttributesInput
Decode GetSubscriptionAttributesInput
Encode GetSubscriptionAttributesInput
```

#### `newGetSubscriptionAttributesInput`

``` purescript
newGetSubscriptionAttributesInput :: SubscriptionARN' -> GetSubscriptionAttributesInput
```

Constructs GetSubscriptionAttributesInput from required parameters

#### `newGetSubscriptionAttributesInput'`

``` purescript
newGetSubscriptionAttributesInput' :: SubscriptionARN' -> ({ "SubscriptionArn" :: SubscriptionARN' } -> { "SubscriptionArn" :: SubscriptionARN' }) -> GetSubscriptionAttributesInput
```

Constructs GetSubscriptionAttributesInput's fields from required parameters

#### `GetSubscriptionAttributesResponse`

``` purescript
newtype GetSubscriptionAttributesResponse
  = GetSubscriptionAttributesResponse { "Attributes" :: NullOrUndefined (SubscriptionAttributesMap) }
```

<p>Response for GetSubscriptionAttributes action.</p>

##### Instances
``` purescript
Newtype GetSubscriptionAttributesResponse _
Generic GetSubscriptionAttributesResponse _
Show GetSubscriptionAttributesResponse
Decode GetSubscriptionAttributesResponse
Encode GetSubscriptionAttributesResponse
```

#### `newGetSubscriptionAttributesResponse`

``` purescript
newGetSubscriptionAttributesResponse :: GetSubscriptionAttributesResponse
```

Constructs GetSubscriptionAttributesResponse from required parameters

#### `newGetSubscriptionAttributesResponse'`

``` purescript
newGetSubscriptionAttributesResponse' :: ({ "Attributes" :: NullOrUndefined (SubscriptionAttributesMap) } -> { "Attributes" :: NullOrUndefined (SubscriptionAttributesMap) }) -> GetSubscriptionAttributesResponse
```

Constructs GetSubscriptionAttributesResponse's fields from required parameters

#### `GetTopicAttributesInput`

``` purescript
newtype GetTopicAttributesInput
  = GetTopicAttributesInput { "TopicArn" :: TopicARN' }
```

<p>Input for GetTopicAttributes action.</p>

##### Instances
``` purescript
Newtype GetTopicAttributesInput _
Generic GetTopicAttributesInput _
Show GetTopicAttributesInput
Decode GetTopicAttributesInput
Encode GetTopicAttributesInput
```

#### `newGetTopicAttributesInput`

``` purescript
newGetTopicAttributesInput :: TopicARN' -> GetTopicAttributesInput
```

Constructs GetTopicAttributesInput from required parameters

#### `newGetTopicAttributesInput'`

``` purescript
newGetTopicAttributesInput' :: TopicARN' -> ({ "TopicArn" :: TopicARN' } -> { "TopicArn" :: TopicARN' }) -> GetTopicAttributesInput
```

Constructs GetTopicAttributesInput's fields from required parameters

#### `GetTopicAttributesResponse`

``` purescript
newtype GetTopicAttributesResponse
  = GetTopicAttributesResponse { "Attributes" :: NullOrUndefined (TopicAttributesMap) }
```

<p>Response for GetTopicAttributes action.</p>

##### Instances
``` purescript
Newtype GetTopicAttributesResponse _
Generic GetTopicAttributesResponse _
Show GetTopicAttributesResponse
Decode GetTopicAttributesResponse
Encode GetTopicAttributesResponse
```

#### `newGetTopicAttributesResponse`

``` purescript
newGetTopicAttributesResponse :: GetTopicAttributesResponse
```

Constructs GetTopicAttributesResponse from required parameters

#### `newGetTopicAttributesResponse'`

``` purescript
newGetTopicAttributesResponse' :: ({ "Attributes" :: NullOrUndefined (TopicAttributesMap) } -> { "Attributes" :: NullOrUndefined (TopicAttributesMap) }) -> GetTopicAttributesResponse
```

Constructs GetTopicAttributesResponse's fields from required parameters

#### `InternalErrorException`

``` purescript
newtype InternalErrorException
  = InternalErrorException { message :: NullOrUndefined (String) }
```

<p>Indicates an internal service error.</p>

##### Instances
``` purescript
Newtype InternalErrorException _
Generic InternalErrorException _
Show InternalErrorException
Decode InternalErrorException
Encode InternalErrorException
```

#### `newInternalErrorException`

``` purescript
newInternalErrorException :: InternalErrorException
```

Constructs InternalErrorException from required parameters

#### `newInternalErrorException'`

``` purescript
newInternalErrorException' :: ({ message :: NullOrUndefined (String) } -> { message :: NullOrUndefined (String) }) -> InternalErrorException
```

Constructs InternalErrorException's fields from required parameters

#### `InvalidParameterException`

``` purescript
newtype InvalidParameterException
  = InvalidParameterException { message :: NullOrUndefined (String) }
```

<p>Indicates that a request parameter does not comply with the associated constraints.</p>

##### Instances
``` purescript
Newtype InvalidParameterException _
Generic InvalidParameterException _
Show InvalidParameterException
Decode InvalidParameterException
Encode InvalidParameterException
```

#### `newInvalidParameterException`

``` purescript
newInvalidParameterException :: InvalidParameterException
```

Constructs InvalidParameterException from required parameters

#### `newInvalidParameterException'`

``` purescript
newInvalidParameterException' :: ({ message :: NullOrUndefined (String) } -> { message :: NullOrUndefined (String) }) -> InvalidParameterException
```

Constructs InvalidParameterException's fields from required parameters

#### `InvalidParameterValueException`

``` purescript
newtype InvalidParameterValueException
  = InvalidParameterValueException { message :: NullOrUndefined (String) }
```

<p>Indicates that a request parameter does not comply with the associated constraints.</p>

##### Instances
``` purescript
Newtype InvalidParameterValueException _
Generic InvalidParameterValueException _
Show InvalidParameterValueException
Decode InvalidParameterValueException
Encode InvalidParameterValueException
```

#### `newInvalidParameterValueException`

``` purescript
newInvalidParameterValueException :: InvalidParameterValueException
```

Constructs InvalidParameterValueException from required parameters

#### `newInvalidParameterValueException'`

``` purescript
newInvalidParameterValueException' :: ({ message :: NullOrUndefined (String) } -> { message :: NullOrUndefined (String) }) -> InvalidParameterValueException
```

Constructs InvalidParameterValueException's fields from required parameters

#### `ListEndpointsByPlatformApplicationInput`

``` purescript
newtype ListEndpointsByPlatformApplicationInput
  = ListEndpointsByPlatformApplicationInput { "PlatformApplicationArn" :: String, "NextToken" :: NullOrUndefined (String) }
```

<p>Input for ListEndpointsByPlatformApplication action.</p>

##### Instances
``` purescript
Newtype ListEndpointsByPlatformApplicationInput _
Generic ListEndpointsByPlatformApplicationInput _
Show ListEndpointsByPlatformApplicationInput
Decode ListEndpointsByPlatformApplicationInput
Encode ListEndpointsByPlatformApplicationInput
```

#### `newListEndpointsByPlatformApplicationInput`

``` purescript
newListEndpointsByPlatformApplicationInput :: String -> ListEndpointsByPlatformApplicationInput
```

Constructs ListEndpointsByPlatformApplicationInput from required parameters

#### `newListEndpointsByPlatformApplicationInput'`

``` purescript
newListEndpointsByPlatformApplicationInput' :: String -> ({ "PlatformApplicationArn" :: String, "NextToken" :: NullOrUndefined (String) } -> { "PlatformApplicationArn" :: String, "NextToken" :: NullOrUndefined (String) }) -> ListEndpointsByPlatformApplicationInput
```

Constructs ListEndpointsByPlatformApplicationInput's fields from required parameters

#### `ListEndpointsByPlatformApplicationResponse`

``` purescript
newtype ListEndpointsByPlatformApplicationResponse
  = ListEndpointsByPlatformApplicationResponse { "Endpoints" :: NullOrUndefined (ListOfEndpoints), "NextToken" :: NullOrUndefined (String) }
```

<p>Response for ListEndpointsByPlatformApplication action.</p>

##### Instances
``` purescript
Newtype ListEndpointsByPlatformApplicationResponse _
Generic ListEndpointsByPlatformApplicationResponse _
Show ListEndpointsByPlatformApplicationResponse
Decode ListEndpointsByPlatformApplicationResponse
Encode ListEndpointsByPlatformApplicationResponse
```

#### `newListEndpointsByPlatformApplicationResponse`

``` purescript
newListEndpointsByPlatformApplicationResponse :: ListEndpointsByPlatformApplicationResponse
```

Constructs ListEndpointsByPlatformApplicationResponse from required parameters

#### `newListEndpointsByPlatformApplicationResponse'`

``` purescript
newListEndpointsByPlatformApplicationResponse' :: ({ "Endpoints" :: NullOrUndefined (ListOfEndpoints), "NextToken" :: NullOrUndefined (String) } -> { "Endpoints" :: NullOrUndefined (ListOfEndpoints), "NextToken" :: NullOrUndefined (String) }) -> ListEndpointsByPlatformApplicationResponse
```

Constructs ListEndpointsByPlatformApplicationResponse's fields from required parameters

#### `ListOfEndpoints`

``` purescript
newtype ListOfEndpoints
  = ListOfEndpoints (Array Endpoint)
```

##### Instances
``` purescript
Newtype ListOfEndpoints _
Generic ListOfEndpoints _
Show ListOfEndpoints
Decode ListOfEndpoints
Encode ListOfEndpoints
```

#### `ListOfPlatformApplications`

``` purescript
newtype ListOfPlatformApplications
  = ListOfPlatformApplications (Array PlatformApplication)
```

##### Instances
``` purescript
Newtype ListOfPlatformApplications _
Generic ListOfPlatformApplications _
Show ListOfPlatformApplications
Decode ListOfPlatformApplications
Encode ListOfPlatformApplications
```

#### `ListPhoneNumbersOptedOutInput`

``` purescript
newtype ListPhoneNumbersOptedOutInput
  = ListPhoneNumbersOptedOutInput { nextToken :: NullOrUndefined (String) }
```

<p>The input for the <code>ListPhoneNumbersOptedOut</code> action.</p>

##### Instances
``` purescript
Newtype ListPhoneNumbersOptedOutInput _
Generic ListPhoneNumbersOptedOutInput _
Show ListPhoneNumbersOptedOutInput
Decode ListPhoneNumbersOptedOutInput
Encode ListPhoneNumbersOptedOutInput
```

#### `newListPhoneNumbersOptedOutInput`

``` purescript
newListPhoneNumbersOptedOutInput :: ListPhoneNumbersOptedOutInput
```

Constructs ListPhoneNumbersOptedOutInput from required parameters

#### `newListPhoneNumbersOptedOutInput'`

``` purescript
newListPhoneNumbersOptedOutInput' :: ({ nextToken :: NullOrUndefined (String) } -> { nextToken :: NullOrUndefined (String) }) -> ListPhoneNumbersOptedOutInput
```

Constructs ListPhoneNumbersOptedOutInput's fields from required parameters

#### `ListPhoneNumbersOptedOutResponse`

``` purescript
newtype ListPhoneNumbersOptedOutResponse
  = ListPhoneNumbersOptedOutResponse { phoneNumbers :: NullOrUndefined (PhoneNumberList), nextToken :: NullOrUndefined (String) }
```

<p>The response from the <code>ListPhoneNumbersOptedOut</code> action.</p>

##### Instances
``` purescript
Newtype ListPhoneNumbersOptedOutResponse _
Generic ListPhoneNumbersOptedOutResponse _
Show ListPhoneNumbersOptedOutResponse
Decode ListPhoneNumbersOptedOutResponse
Encode ListPhoneNumbersOptedOutResponse
```

#### `newListPhoneNumbersOptedOutResponse`

``` purescript
newListPhoneNumbersOptedOutResponse :: ListPhoneNumbersOptedOutResponse
```

Constructs ListPhoneNumbersOptedOutResponse from required parameters

#### `newListPhoneNumbersOptedOutResponse'`

``` purescript
newListPhoneNumbersOptedOutResponse' :: ({ phoneNumbers :: NullOrUndefined (PhoneNumberList), nextToken :: NullOrUndefined (String) } -> { phoneNumbers :: NullOrUndefined (PhoneNumberList), nextToken :: NullOrUndefined (String) }) -> ListPhoneNumbersOptedOutResponse
```

Constructs ListPhoneNumbersOptedOutResponse's fields from required parameters

#### `ListPlatformApplicationsInput`

``` purescript
newtype ListPlatformApplicationsInput
  = ListPlatformApplicationsInput { "NextToken" :: NullOrUndefined (String) }
```

<p>Input for ListPlatformApplications action.</p>

##### Instances
``` purescript
Newtype ListPlatformApplicationsInput _
Generic ListPlatformApplicationsInput _
Show ListPlatformApplicationsInput
Decode ListPlatformApplicationsInput
Encode ListPlatformApplicationsInput
```

#### `newListPlatformApplicationsInput`

``` purescript
newListPlatformApplicationsInput :: ListPlatformApplicationsInput
```

Constructs ListPlatformApplicationsInput from required parameters

#### `newListPlatformApplicationsInput'`

``` purescript
newListPlatformApplicationsInput' :: ({ "NextToken" :: NullOrUndefined (String) } -> { "NextToken" :: NullOrUndefined (String) }) -> ListPlatformApplicationsInput
```

Constructs ListPlatformApplicationsInput's fields from required parameters

#### `ListPlatformApplicationsResponse`

``` purescript
newtype ListPlatformApplicationsResponse
  = ListPlatformApplicationsResponse { "PlatformApplications" :: NullOrUndefined (ListOfPlatformApplications), "NextToken" :: NullOrUndefined (String) }
```

<p>Response for ListPlatformApplications action.</p>

##### Instances
``` purescript
Newtype ListPlatformApplicationsResponse _
Generic ListPlatformApplicationsResponse _
Show ListPlatformApplicationsResponse
Decode ListPlatformApplicationsResponse
Encode ListPlatformApplicationsResponse
```

#### `newListPlatformApplicationsResponse`

``` purescript
newListPlatformApplicationsResponse :: ListPlatformApplicationsResponse
```

Constructs ListPlatformApplicationsResponse from required parameters

#### `newListPlatformApplicationsResponse'`

``` purescript
newListPlatformApplicationsResponse' :: ({ "PlatformApplications" :: NullOrUndefined (ListOfPlatformApplications), "NextToken" :: NullOrUndefined (String) } -> { "PlatformApplications" :: NullOrUndefined (ListOfPlatformApplications), "NextToken" :: NullOrUndefined (String) }) -> ListPlatformApplicationsResponse
```

Constructs ListPlatformApplicationsResponse's fields from required parameters

#### `ListString`

``` purescript
newtype ListString
  = ListString (Array String)
```

##### Instances
``` purescript
Newtype ListString _
Generic ListString _
Show ListString
Decode ListString
Encode ListString
```

#### `ListSubscriptionsByTopicInput`

``` purescript
newtype ListSubscriptionsByTopicInput
  = ListSubscriptionsByTopicInput { "TopicArn" :: TopicARN', "NextToken" :: NullOrUndefined (NextToken') }
```

<p>Input for ListSubscriptionsByTopic action.</p>

##### Instances
``` purescript
Newtype ListSubscriptionsByTopicInput _
Generic ListSubscriptionsByTopicInput _
Show ListSubscriptionsByTopicInput
Decode ListSubscriptionsByTopicInput
Encode ListSubscriptionsByTopicInput
```

#### `newListSubscriptionsByTopicInput`

``` purescript
newListSubscriptionsByTopicInput :: TopicARN' -> ListSubscriptionsByTopicInput
```

Constructs ListSubscriptionsByTopicInput from required parameters

#### `newListSubscriptionsByTopicInput'`

``` purescript
newListSubscriptionsByTopicInput' :: TopicARN' -> ({ "TopicArn" :: TopicARN', "NextToken" :: NullOrUndefined (NextToken') } -> { "TopicArn" :: TopicARN', "NextToken" :: NullOrUndefined (NextToken') }) -> ListSubscriptionsByTopicInput
```

Constructs ListSubscriptionsByTopicInput's fields from required parameters

#### `ListSubscriptionsByTopicResponse`

``` purescript
newtype ListSubscriptionsByTopicResponse
  = ListSubscriptionsByTopicResponse { "Subscriptions" :: NullOrUndefined (SubscriptionsList), "NextToken" :: NullOrUndefined (NextToken') }
```

<p>Response for ListSubscriptionsByTopic action.</p>

##### Instances
``` purescript
Newtype ListSubscriptionsByTopicResponse _
Generic ListSubscriptionsByTopicResponse _
Show ListSubscriptionsByTopicResponse
Decode ListSubscriptionsByTopicResponse
Encode ListSubscriptionsByTopicResponse
```

#### `newListSubscriptionsByTopicResponse`

``` purescript
newListSubscriptionsByTopicResponse :: ListSubscriptionsByTopicResponse
```

Constructs ListSubscriptionsByTopicResponse from required parameters

#### `newListSubscriptionsByTopicResponse'`

``` purescript
newListSubscriptionsByTopicResponse' :: ({ "Subscriptions" :: NullOrUndefined (SubscriptionsList), "NextToken" :: NullOrUndefined (NextToken') } -> { "Subscriptions" :: NullOrUndefined (SubscriptionsList), "NextToken" :: NullOrUndefined (NextToken') }) -> ListSubscriptionsByTopicResponse
```

Constructs ListSubscriptionsByTopicResponse's fields from required parameters

#### `ListSubscriptionsInput`

``` purescript
newtype ListSubscriptionsInput
  = ListSubscriptionsInput { "NextToken" :: NullOrUndefined (NextToken') }
```

<p>Input for ListSubscriptions action.</p>

##### Instances
``` purescript
Newtype ListSubscriptionsInput _
Generic ListSubscriptionsInput _
Show ListSubscriptionsInput
Decode ListSubscriptionsInput
Encode ListSubscriptionsInput
```

#### `newListSubscriptionsInput`

``` purescript
newListSubscriptionsInput :: ListSubscriptionsInput
```

Constructs ListSubscriptionsInput from required parameters

#### `newListSubscriptionsInput'`

``` purescript
newListSubscriptionsInput' :: ({ "NextToken" :: NullOrUndefined (NextToken') } -> { "NextToken" :: NullOrUndefined (NextToken') }) -> ListSubscriptionsInput
```

Constructs ListSubscriptionsInput's fields from required parameters

#### `ListSubscriptionsResponse`

``` purescript
newtype ListSubscriptionsResponse
  = ListSubscriptionsResponse { "Subscriptions" :: NullOrUndefined (SubscriptionsList), "NextToken" :: NullOrUndefined (NextToken') }
```

<p>Response for ListSubscriptions action</p>

##### Instances
``` purescript
Newtype ListSubscriptionsResponse _
Generic ListSubscriptionsResponse _
Show ListSubscriptionsResponse
Decode ListSubscriptionsResponse
Encode ListSubscriptionsResponse
```

#### `newListSubscriptionsResponse`

``` purescript
newListSubscriptionsResponse :: ListSubscriptionsResponse
```

Constructs ListSubscriptionsResponse from required parameters

#### `newListSubscriptionsResponse'`

``` purescript
newListSubscriptionsResponse' :: ({ "Subscriptions" :: NullOrUndefined (SubscriptionsList), "NextToken" :: NullOrUndefined (NextToken') } -> { "Subscriptions" :: NullOrUndefined (SubscriptionsList), "NextToken" :: NullOrUndefined (NextToken') }) -> ListSubscriptionsResponse
```

Constructs ListSubscriptionsResponse's fields from required parameters

#### `ListTopicsInput`

``` purescript
newtype ListTopicsInput
  = ListTopicsInput { "NextToken" :: NullOrUndefined (NextToken') }
```

##### Instances
``` purescript
Newtype ListTopicsInput _
Generic ListTopicsInput _
Show ListTopicsInput
Decode ListTopicsInput
Encode ListTopicsInput
```

#### `newListTopicsInput`

``` purescript
newListTopicsInput :: ListTopicsInput
```

Constructs ListTopicsInput from required parameters

#### `newListTopicsInput'`

``` purescript
newListTopicsInput' :: ({ "NextToken" :: NullOrUndefined (NextToken') } -> { "NextToken" :: NullOrUndefined (NextToken') }) -> ListTopicsInput
```

Constructs ListTopicsInput's fields from required parameters

#### `ListTopicsResponse`

``` purescript
newtype ListTopicsResponse
  = ListTopicsResponse { "Topics" :: NullOrUndefined (TopicsList), "NextToken" :: NullOrUndefined (NextToken') }
```

<p>Response for ListTopics action.</p>

##### Instances
``` purescript
Newtype ListTopicsResponse _
Generic ListTopicsResponse _
Show ListTopicsResponse
Decode ListTopicsResponse
Encode ListTopicsResponse
```

#### `newListTopicsResponse`

``` purescript
newListTopicsResponse :: ListTopicsResponse
```

Constructs ListTopicsResponse from required parameters

#### `newListTopicsResponse'`

``` purescript
newListTopicsResponse' :: ({ "Topics" :: NullOrUndefined (TopicsList), "NextToken" :: NullOrUndefined (NextToken') } -> { "Topics" :: NullOrUndefined (TopicsList), "NextToken" :: NullOrUndefined (NextToken') }) -> ListTopicsResponse
```

Constructs ListTopicsResponse's fields from required parameters

#### `MapStringToString`

``` purescript
newtype MapStringToString
  = MapStringToString (StrMap String)
```

##### Instances
``` purescript
Newtype MapStringToString _
Generic MapStringToString _
Show MapStringToString
Decode MapStringToString
Encode MapStringToString
```

#### `MessageAttributeMap`

``` purescript
newtype MessageAttributeMap
  = MessageAttributeMap (StrMap MessageAttributeValue)
```

##### Instances
``` purescript
Newtype MessageAttributeMap _
Generic MessageAttributeMap _
Show MessageAttributeMap
Decode MessageAttributeMap
Encode MessageAttributeMap
```

#### `MessageAttributeValue`

``` purescript
newtype MessageAttributeValue
  = MessageAttributeValue { "DataType" :: String, "StringValue" :: NullOrUndefined (String), "BinaryValue" :: NullOrUndefined (Binary) }
```

<p>The user-specified message attribute value. For string data types, the value attribute has the same restrictions on the content as the message body. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/api/API_Publish.html">Publish</a>.</p> <p>Name, type, and value must not be empty or null. In addition, the message body should not be empty or null. All parts of the message attribute, including name, type, and value, are included in the message size restriction, which is currently 256 KB (262,144 bytes). For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMessageAttributes.html">Using Amazon SNS Message Attributes</a>.</p>

##### Instances
``` purescript
Newtype MessageAttributeValue _
Generic MessageAttributeValue _
Show MessageAttributeValue
Decode MessageAttributeValue
Encode MessageAttributeValue
```

#### `newMessageAttributeValue`

``` purescript
newMessageAttributeValue :: String -> MessageAttributeValue
```

Constructs MessageAttributeValue from required parameters

#### `newMessageAttributeValue'`

``` purescript
newMessageAttributeValue' :: String -> ({ "DataType" :: String, "StringValue" :: NullOrUndefined (String), "BinaryValue" :: NullOrUndefined (Binary) } -> { "DataType" :: String, "StringValue" :: NullOrUndefined (String), "BinaryValue" :: NullOrUndefined (Binary) }) -> MessageAttributeValue
```

Constructs MessageAttributeValue's fields from required parameters

#### `NotFoundException`

``` purescript
newtype NotFoundException
  = NotFoundException { message :: NullOrUndefined (String) }
```

<p>Indicates that the requested resource does not exist.</p>

##### Instances
``` purescript
Newtype NotFoundException _
Generic NotFoundException _
Show NotFoundException
Decode NotFoundException
Encode NotFoundException
```

#### `newNotFoundException`

``` purescript
newNotFoundException :: NotFoundException
```

Constructs NotFoundException from required parameters

#### `newNotFoundException'`

``` purescript
newNotFoundException' :: ({ message :: NullOrUndefined (String) } -> { message :: NullOrUndefined (String) }) -> NotFoundException
```

Constructs NotFoundException's fields from required parameters

#### `OptInPhoneNumberInput`

``` purescript
newtype OptInPhoneNumberInput
  = OptInPhoneNumberInput { phoneNumber :: PhoneNumber }
```

<p>Input for the OptInPhoneNumber action.</p>

##### Instances
``` purescript
Newtype OptInPhoneNumberInput _
Generic OptInPhoneNumberInput _
Show OptInPhoneNumberInput
Decode OptInPhoneNumberInput
Encode OptInPhoneNumberInput
```

#### `newOptInPhoneNumberInput`

``` purescript
newOptInPhoneNumberInput :: PhoneNumber -> OptInPhoneNumberInput
```

Constructs OptInPhoneNumberInput from required parameters

#### `newOptInPhoneNumberInput'`

``` purescript
newOptInPhoneNumberInput' :: PhoneNumber -> ({ phoneNumber :: PhoneNumber } -> { phoneNumber :: PhoneNumber }) -> OptInPhoneNumberInput
```

Constructs OptInPhoneNumberInput's fields from required parameters

#### `OptInPhoneNumberResponse`

``` purescript
newtype OptInPhoneNumberResponse
  = OptInPhoneNumberResponse NoArguments
```

<p>The response for the OptInPhoneNumber action.</p>

##### Instances
``` purescript
Newtype OptInPhoneNumberResponse _
Generic OptInPhoneNumberResponse _
Show OptInPhoneNumberResponse
Decode OptInPhoneNumberResponse
Encode OptInPhoneNumberResponse
```

#### `PhoneNumber`

``` purescript
newtype PhoneNumber
  = PhoneNumber String
```

##### Instances
``` purescript
Newtype PhoneNumber _
Generic PhoneNumber _
Show PhoneNumber
Decode PhoneNumber
Encode PhoneNumber
```

#### `PhoneNumberList`

``` purescript
newtype PhoneNumberList
  = PhoneNumberList (Array PhoneNumber)
```

##### Instances
``` purescript
Newtype PhoneNumberList _
Generic PhoneNumberList _
Show PhoneNumberList
Decode PhoneNumberList
Encode PhoneNumberList
```

#### `PlatformApplication`

``` purescript
newtype PlatformApplication
  = PlatformApplication { "PlatformApplicationArn" :: NullOrUndefined (String), "Attributes" :: NullOrUndefined (MapStringToString) }
```

<p>Platform application object.</p>

##### Instances
``` purescript
Newtype PlatformApplication _
Generic PlatformApplication _
Show PlatformApplication
Decode PlatformApplication
Encode PlatformApplication
```

#### `newPlatformApplication`

``` purescript
newPlatformApplication :: PlatformApplication
```

Constructs PlatformApplication from required parameters

#### `newPlatformApplication'`

``` purescript
newPlatformApplication' :: ({ "PlatformApplicationArn" :: NullOrUndefined (String), "Attributes" :: NullOrUndefined (MapStringToString) } -> { "PlatformApplicationArn" :: NullOrUndefined (String), "Attributes" :: NullOrUndefined (MapStringToString) }) -> PlatformApplication
```

Constructs PlatformApplication's fields from required parameters

#### `PlatformApplicationDisabledException`

``` purescript
newtype PlatformApplicationDisabledException
  = PlatformApplicationDisabledException { message :: NullOrUndefined (String) }
```

<p>Exception error indicating platform application disabled.</p>

##### Instances
``` purescript
Newtype PlatformApplicationDisabledException _
Generic PlatformApplicationDisabledException _
Show PlatformApplicationDisabledException
Decode PlatformApplicationDisabledException
Encode PlatformApplicationDisabledException
```

#### `newPlatformApplicationDisabledException`

``` purescript
newPlatformApplicationDisabledException :: PlatformApplicationDisabledException
```

Constructs PlatformApplicationDisabledException from required parameters

#### `newPlatformApplicationDisabledException'`

``` purescript
newPlatformApplicationDisabledException' :: ({ message :: NullOrUndefined (String) } -> { message :: NullOrUndefined (String) }) -> PlatformApplicationDisabledException
```

Constructs PlatformApplicationDisabledException's fields from required parameters

#### `PublishInput`

``` purescript
newtype PublishInput
  = PublishInput { "TopicArn" :: NullOrUndefined (TopicARN'), "TargetArn" :: NullOrUndefined (String), "PhoneNumber" :: NullOrUndefined (String), "Message" :: Message', "Subject" :: NullOrUndefined (Subject'), "MessageStructure" :: NullOrUndefined (MessageStructure'), "MessageAttributes" :: NullOrUndefined (MessageAttributeMap) }
```

<p>Input for Publish action.</p>

##### Instances
``` purescript
Newtype PublishInput _
Generic PublishInput _
Show PublishInput
Decode PublishInput
Encode PublishInput
```

#### `newPublishInput`

``` purescript
newPublishInput :: Message' -> PublishInput
```

Constructs PublishInput from required parameters

#### `newPublishInput'`

``` purescript
newPublishInput' :: Message' -> ({ "TopicArn" :: NullOrUndefined (TopicARN'), "TargetArn" :: NullOrUndefined (String), "PhoneNumber" :: NullOrUndefined (String), "Message" :: Message', "Subject" :: NullOrUndefined (Subject'), "MessageStructure" :: NullOrUndefined (MessageStructure'), "MessageAttributes" :: NullOrUndefined (MessageAttributeMap) } -> { "TopicArn" :: NullOrUndefined (TopicARN'), "TargetArn" :: NullOrUndefined (String), "PhoneNumber" :: NullOrUndefined (String), "Message" :: Message', "Subject" :: NullOrUndefined (Subject'), "MessageStructure" :: NullOrUndefined (MessageStructure'), "MessageAttributes" :: NullOrUndefined (MessageAttributeMap) }) -> PublishInput
```

Constructs PublishInput's fields from required parameters

#### `PublishResponse`

``` purescript
newtype PublishResponse
  = PublishResponse { "MessageId" :: NullOrUndefined (MessageId') }
```

<p>Response for Publish action.</p>

##### Instances
``` purescript
Newtype PublishResponse _
Generic PublishResponse _
Show PublishResponse
Decode PublishResponse
Encode PublishResponse
```

#### `newPublishResponse`

``` purescript
newPublishResponse :: PublishResponse
```

Constructs PublishResponse from required parameters

#### `newPublishResponse'`

``` purescript
newPublishResponse' :: ({ "MessageId" :: NullOrUndefined (MessageId') } -> { "MessageId" :: NullOrUndefined (MessageId') }) -> PublishResponse
```

Constructs PublishResponse's fields from required parameters

#### `RemovePermissionInput`

``` purescript
newtype RemovePermissionInput
  = RemovePermissionInput { "TopicArn" :: TopicARN', "Label" :: Label' }
```

<p>Input for RemovePermission action.</p>

##### Instances
``` purescript
Newtype RemovePermissionInput _
Generic RemovePermissionInput _
Show RemovePermissionInput
Decode RemovePermissionInput
Encode RemovePermissionInput
```

#### `newRemovePermissionInput`

``` purescript
newRemovePermissionInput :: Label' -> TopicARN' -> RemovePermissionInput
```

Constructs RemovePermissionInput from required parameters

#### `newRemovePermissionInput'`

``` purescript
newRemovePermissionInput' :: Label' -> TopicARN' -> ({ "TopicArn" :: TopicARN', "Label" :: Label' } -> { "TopicArn" :: TopicARN', "Label" :: Label' }) -> RemovePermissionInput
```

Constructs RemovePermissionInput's fields from required parameters

#### `SetEndpointAttributesInput`

``` purescript
newtype SetEndpointAttributesInput
  = SetEndpointAttributesInput { "EndpointArn" :: String, "Attributes" :: MapStringToString }
```

<p>Input for SetEndpointAttributes action.</p>

##### Instances
``` purescript
Newtype SetEndpointAttributesInput _
Generic SetEndpointAttributesInput _
Show SetEndpointAttributesInput
Decode SetEndpointAttributesInput
Encode SetEndpointAttributesInput
```

#### `newSetEndpointAttributesInput`

``` purescript
newSetEndpointAttributesInput :: MapStringToString -> String -> SetEndpointAttributesInput
```

Constructs SetEndpointAttributesInput from required parameters

#### `newSetEndpointAttributesInput'`

``` purescript
newSetEndpointAttributesInput' :: MapStringToString -> String -> ({ "EndpointArn" :: String, "Attributes" :: MapStringToString } -> { "EndpointArn" :: String, "Attributes" :: MapStringToString }) -> SetEndpointAttributesInput
```

Constructs SetEndpointAttributesInput's fields from required parameters

#### `SetPlatformApplicationAttributesInput`

``` purescript
newtype SetPlatformApplicationAttributesInput
  = SetPlatformApplicationAttributesInput { "PlatformApplicationArn" :: String, "Attributes" :: MapStringToString }
```

<p>Input for SetPlatformApplicationAttributes action.</p>

##### Instances
``` purescript
Newtype SetPlatformApplicationAttributesInput _
Generic SetPlatformApplicationAttributesInput _
Show SetPlatformApplicationAttributesInput
Decode SetPlatformApplicationAttributesInput
Encode SetPlatformApplicationAttributesInput
```

#### `newSetPlatformApplicationAttributesInput`

``` purescript
newSetPlatformApplicationAttributesInput :: MapStringToString -> String -> SetPlatformApplicationAttributesInput
```

Constructs SetPlatformApplicationAttributesInput from required parameters

#### `newSetPlatformApplicationAttributesInput'`

``` purescript
newSetPlatformApplicationAttributesInput' :: MapStringToString -> String -> ({ "PlatformApplicationArn" :: String, "Attributes" :: MapStringToString } -> { "PlatformApplicationArn" :: String, "Attributes" :: MapStringToString }) -> SetPlatformApplicationAttributesInput
```

Constructs SetPlatformApplicationAttributesInput's fields from required parameters

#### `SetSMSAttributesInput`

``` purescript
newtype SetSMSAttributesInput
  = SetSMSAttributesInput { attributes :: MapStringToString }
```

<p>The input for the SetSMSAttributes action.</p>

##### Instances
``` purescript
Newtype SetSMSAttributesInput _
Generic SetSMSAttributesInput _
Show SetSMSAttributesInput
Decode SetSMSAttributesInput
Encode SetSMSAttributesInput
```

#### `newSetSMSAttributesInput`

``` purescript
newSetSMSAttributesInput :: MapStringToString -> SetSMSAttributesInput
```

Constructs SetSMSAttributesInput from required parameters

#### `newSetSMSAttributesInput'`

``` purescript
newSetSMSAttributesInput' :: MapStringToString -> ({ attributes :: MapStringToString } -> { attributes :: MapStringToString }) -> SetSMSAttributesInput
```

Constructs SetSMSAttributesInput's fields from required parameters

#### `SetSMSAttributesResponse`

``` purescript
newtype SetSMSAttributesResponse
  = SetSMSAttributesResponse NoArguments
```

<p>The response for the SetSMSAttributes action.</p>

##### Instances
``` purescript
Newtype SetSMSAttributesResponse _
Generic SetSMSAttributesResponse _
Show SetSMSAttributesResponse
Decode SetSMSAttributesResponse
Encode SetSMSAttributesResponse
```

#### `SetSubscriptionAttributesInput`

``` purescript
newtype SetSubscriptionAttributesInput
  = SetSubscriptionAttributesInput { "SubscriptionArn" :: SubscriptionARN', "AttributeName" :: AttributeName', "AttributeValue" :: NullOrUndefined (AttributeValue') }
```

<p>Input for SetSubscriptionAttributes action.</p>

##### Instances
``` purescript
Newtype SetSubscriptionAttributesInput _
Generic SetSubscriptionAttributesInput _
Show SetSubscriptionAttributesInput
Decode SetSubscriptionAttributesInput
Encode SetSubscriptionAttributesInput
```

#### `newSetSubscriptionAttributesInput`

``` purescript
newSetSubscriptionAttributesInput :: AttributeName' -> SubscriptionARN' -> SetSubscriptionAttributesInput
```

Constructs SetSubscriptionAttributesInput from required parameters

#### `newSetSubscriptionAttributesInput'`

``` purescript
newSetSubscriptionAttributesInput' :: AttributeName' -> SubscriptionARN' -> ({ "SubscriptionArn" :: SubscriptionARN', "AttributeName" :: AttributeName', "AttributeValue" :: NullOrUndefined (AttributeValue') } -> { "SubscriptionArn" :: SubscriptionARN', "AttributeName" :: AttributeName', "AttributeValue" :: NullOrUndefined (AttributeValue') }) -> SetSubscriptionAttributesInput
```

Constructs SetSubscriptionAttributesInput's fields from required parameters

#### `SetTopicAttributesInput`

``` purescript
newtype SetTopicAttributesInput
  = SetTopicAttributesInput { "TopicArn" :: TopicARN', "AttributeName" :: AttributeName', "AttributeValue" :: NullOrUndefined (AttributeValue') }
```

<p>Input for SetTopicAttributes action.</p>

##### Instances
``` purescript
Newtype SetTopicAttributesInput _
Generic SetTopicAttributesInput _
Show SetTopicAttributesInput
Decode SetTopicAttributesInput
Encode SetTopicAttributesInput
```

#### `newSetTopicAttributesInput`

``` purescript
newSetTopicAttributesInput :: AttributeName' -> TopicARN' -> SetTopicAttributesInput
```

Constructs SetTopicAttributesInput from required parameters

#### `newSetTopicAttributesInput'`

``` purescript
newSetTopicAttributesInput' :: AttributeName' -> TopicARN' -> ({ "TopicArn" :: TopicARN', "AttributeName" :: AttributeName', "AttributeValue" :: NullOrUndefined (AttributeValue') } -> { "TopicArn" :: TopicARN', "AttributeName" :: AttributeName', "AttributeValue" :: NullOrUndefined (AttributeValue') }) -> SetTopicAttributesInput
```

Constructs SetTopicAttributesInput's fields from required parameters

#### `SubscribeInput`

``` purescript
newtype SubscribeInput
  = SubscribeInput { "TopicArn" :: TopicARN', "Protocol" :: Protocol', "Endpoint" :: NullOrUndefined (Endpoint') }
```

<p>Input for Subscribe action.</p>

##### Instances
``` purescript
Newtype SubscribeInput _
Generic SubscribeInput _
Show SubscribeInput
Decode SubscribeInput
Encode SubscribeInput
```

#### `newSubscribeInput`

``` purescript
newSubscribeInput :: Protocol' -> TopicARN' -> SubscribeInput
```

Constructs SubscribeInput from required parameters

#### `newSubscribeInput'`

``` purescript
newSubscribeInput' :: Protocol' -> TopicARN' -> ({ "TopicArn" :: TopicARN', "Protocol" :: Protocol', "Endpoint" :: NullOrUndefined (Endpoint') } -> { "TopicArn" :: TopicARN', "Protocol" :: Protocol', "Endpoint" :: NullOrUndefined (Endpoint') }) -> SubscribeInput
```

Constructs SubscribeInput's fields from required parameters

#### `SubscribeResponse`

``` purescript
newtype SubscribeResponse
  = SubscribeResponse { "SubscriptionArn" :: NullOrUndefined (SubscriptionARN') }
```

<p>Response for Subscribe action.</p>

##### Instances
``` purescript
Newtype SubscribeResponse _
Generic SubscribeResponse _
Show SubscribeResponse
Decode SubscribeResponse
Encode SubscribeResponse
```

#### `newSubscribeResponse`

``` purescript
newSubscribeResponse :: SubscribeResponse
```

Constructs SubscribeResponse from required parameters

#### `newSubscribeResponse'`

``` purescript
newSubscribeResponse' :: ({ "SubscriptionArn" :: NullOrUndefined (SubscriptionARN') } -> { "SubscriptionArn" :: NullOrUndefined (SubscriptionARN') }) -> SubscribeResponse
```

Constructs SubscribeResponse's fields from required parameters

#### `Subscription`

``` purescript
newtype Subscription
  = Subscription { "SubscriptionArn" :: NullOrUndefined (SubscriptionARN'), "Owner" :: NullOrUndefined (Account'), "Protocol" :: NullOrUndefined (Protocol'), "Endpoint" :: NullOrUndefined (Endpoint'), "TopicArn" :: NullOrUndefined (TopicARN') }
```

<p>A wrapper type for the attributes of an Amazon SNS subscription.</p>

##### Instances
``` purescript
Newtype Subscription _
Generic Subscription _
Show Subscription
Decode Subscription
Encode Subscription
```

#### `newSubscription`

``` purescript
newSubscription :: Subscription
```

Constructs Subscription from required parameters

#### `newSubscription'`

``` purescript
newSubscription' :: ({ "SubscriptionArn" :: NullOrUndefined (SubscriptionARN'), "Owner" :: NullOrUndefined (Account'), "Protocol" :: NullOrUndefined (Protocol'), "Endpoint" :: NullOrUndefined (Endpoint'), "TopicArn" :: NullOrUndefined (TopicARN') } -> { "SubscriptionArn" :: NullOrUndefined (SubscriptionARN'), "Owner" :: NullOrUndefined (Account'), "Protocol" :: NullOrUndefined (Protocol'), "Endpoint" :: NullOrUndefined (Endpoint'), "TopicArn" :: NullOrUndefined (TopicARN') }) -> Subscription
```

Constructs Subscription's fields from required parameters

#### `SubscriptionAttributesMap`

``` purescript
newtype SubscriptionAttributesMap
  = SubscriptionAttributesMap (StrMap AttributeValue')
```

##### Instances
``` purescript
Newtype SubscriptionAttributesMap _
Generic SubscriptionAttributesMap _
Show SubscriptionAttributesMap
Decode SubscriptionAttributesMap
Encode SubscriptionAttributesMap
```

#### `SubscriptionLimitExceededException`

``` purescript
newtype SubscriptionLimitExceededException
  = SubscriptionLimitExceededException { message :: NullOrUndefined (String) }
```

<p>Indicates that the customer already owns the maximum allowed number of subscriptions.</p>

##### Instances
``` purescript
Newtype SubscriptionLimitExceededException _
Generic SubscriptionLimitExceededException _
Show SubscriptionLimitExceededException
Decode SubscriptionLimitExceededException
Encode SubscriptionLimitExceededException
```

#### `newSubscriptionLimitExceededException`

``` purescript
newSubscriptionLimitExceededException :: SubscriptionLimitExceededException
```

Constructs SubscriptionLimitExceededException from required parameters

#### `newSubscriptionLimitExceededException'`

``` purescript
newSubscriptionLimitExceededException' :: ({ message :: NullOrUndefined (String) } -> { message :: NullOrUndefined (String) }) -> SubscriptionLimitExceededException
```

Constructs SubscriptionLimitExceededException's fields from required parameters

#### `SubscriptionsList`

``` purescript
newtype SubscriptionsList
  = SubscriptionsList (Array Subscription)
```

##### Instances
``` purescript
Newtype SubscriptionsList _
Generic SubscriptionsList _
Show SubscriptionsList
Decode SubscriptionsList
Encode SubscriptionsList
```

#### `ThrottledException`

``` purescript
newtype ThrottledException
  = ThrottledException { message :: NullOrUndefined (String) }
```

<p>Indicates that the rate at which requests have been submitted for this action exceeds the limit for your account.</p>

##### Instances
``` purescript
Newtype ThrottledException _
Generic ThrottledException _
Show ThrottledException
Decode ThrottledException
Encode ThrottledException
```

#### `newThrottledException`

``` purescript
newThrottledException :: ThrottledException
```

Constructs ThrottledException from required parameters

#### `newThrottledException'`

``` purescript
newThrottledException' :: ({ message :: NullOrUndefined (String) } -> { message :: NullOrUndefined (String) }) -> ThrottledException
```

Constructs ThrottledException's fields from required parameters

#### `Topic`

``` purescript
newtype Topic
  = Topic { "TopicArn" :: NullOrUndefined (TopicARN') }
```

<p>A wrapper type for the topic's Amazon Resource Name (ARN). To retrieve a topic's attributes, use <code>GetTopicAttributes</code>.</p>

##### Instances
``` purescript
Newtype Topic _
Generic Topic _
Show Topic
Decode Topic
Encode Topic
```

#### `newTopic`

``` purescript
newTopic :: Topic
```

Constructs Topic from required parameters

#### `newTopic'`

``` purescript
newTopic' :: ({ "TopicArn" :: NullOrUndefined (TopicARN') } -> { "TopicArn" :: NullOrUndefined (TopicARN') }) -> Topic
```

Constructs Topic's fields from required parameters

#### `TopicAttributesMap`

``` purescript
newtype TopicAttributesMap
  = TopicAttributesMap (StrMap AttributeValue')
```

##### Instances
``` purescript
Newtype TopicAttributesMap _
Generic TopicAttributesMap _
Show TopicAttributesMap
Decode TopicAttributesMap
Encode TopicAttributesMap
```

#### `TopicLimitExceededException`

``` purescript
newtype TopicLimitExceededException
  = TopicLimitExceededException { message :: NullOrUndefined (String) }
```

<p>Indicates that the customer already owns the maximum allowed number of topics.</p>

##### Instances
``` purescript
Newtype TopicLimitExceededException _
Generic TopicLimitExceededException _
Show TopicLimitExceededException
Decode TopicLimitExceededException
Encode TopicLimitExceededException
```

#### `newTopicLimitExceededException`

``` purescript
newTopicLimitExceededException :: TopicLimitExceededException
```

Constructs TopicLimitExceededException from required parameters

#### `newTopicLimitExceededException'`

``` purescript
newTopicLimitExceededException' :: ({ message :: NullOrUndefined (String) } -> { message :: NullOrUndefined (String) }) -> TopicLimitExceededException
```

Constructs TopicLimitExceededException's fields from required parameters

#### `TopicsList`

``` purescript
newtype TopicsList
  = TopicsList (Array Topic)
```

##### Instances
``` purescript
Newtype TopicsList _
Generic TopicsList _
Show TopicsList
Decode TopicsList
Encode TopicsList
```

#### `UnsubscribeInput`

``` purescript
newtype UnsubscribeInput
  = UnsubscribeInput { "SubscriptionArn" :: SubscriptionARN' }
```

<p>Input for Unsubscribe action.</p>

##### Instances
``` purescript
Newtype UnsubscribeInput _
Generic UnsubscribeInput _
Show UnsubscribeInput
Decode UnsubscribeInput
Encode UnsubscribeInput
```

#### `newUnsubscribeInput`

``` purescript
newUnsubscribeInput :: SubscriptionARN' -> UnsubscribeInput
```

Constructs UnsubscribeInput from required parameters

#### `newUnsubscribeInput'`

``` purescript
newUnsubscribeInput' :: SubscriptionARN' -> ({ "SubscriptionArn" :: SubscriptionARN' } -> { "SubscriptionArn" :: SubscriptionARN' }) -> UnsubscribeInput
```

Constructs UnsubscribeInput's fields from required parameters

#### `Account'`

``` purescript
newtype Account'
  = Account' String
```

##### Instances
``` purescript
Newtype Account' _
Generic Account' _
Show Account'
Decode Account'
Encode Account'
```

#### `Action'`

``` purescript
newtype Action'
  = Action' String
```

##### Instances
``` purescript
Newtype Action' _
Generic Action' _
Show Action'
Decode Action'
Encode Action'
```

#### `AttributeName'`

``` purescript
newtype AttributeName'
  = AttributeName' String
```

##### Instances
``` purescript
Newtype AttributeName' _
Generic AttributeName' _
Show AttributeName'
Decode AttributeName'
Encode AttributeName'
```

#### `AttributeValue'`

``` purescript
newtype AttributeValue'
  = AttributeValue' String
```

##### Instances
``` purescript
Newtype AttributeValue' _
Generic AttributeValue' _
Show AttributeValue'
Decode AttributeValue'
Encode AttributeValue'
```

#### `AuthenticateOnUnsubscribe'`

``` purescript
newtype AuthenticateOnUnsubscribe'
  = AuthenticateOnUnsubscribe' String
```

##### Instances
``` purescript
Newtype AuthenticateOnUnsubscribe' _
Generic AuthenticateOnUnsubscribe' _
Show AuthenticateOnUnsubscribe'
Decode AuthenticateOnUnsubscribe'
Encode AuthenticateOnUnsubscribe'
```

#### `Delegate'`

``` purescript
newtype Delegate'
  = Delegate' String
```

##### Instances
``` purescript
Newtype Delegate' _
Generic Delegate' _
Show Delegate'
Decode Delegate'
Encode Delegate'
```

#### `Endpoint'`

``` purescript
newtype Endpoint'
  = Endpoint' String
```

##### Instances
``` purescript
Newtype Endpoint' _
Generic Endpoint' _
Show Endpoint'
Decode Endpoint'
Encode Endpoint'
```

#### `Label'`

``` purescript
newtype Label'
  = Label' String
```

##### Instances
``` purescript
Newtype Label' _
Generic Label' _
Show Label'
Decode Label'
Encode Label'
```

#### `Message'`

``` purescript
newtype Message'
  = Message' String
```

##### Instances
``` purescript
Newtype Message' _
Generic Message' _
Show Message'
Decode Message'
Encode Message'
```

#### `MessageId'`

``` purescript
newtype MessageId'
  = MessageId' String
```

##### Instances
``` purescript
Newtype MessageId' _
Generic MessageId' _
Show MessageId'
Decode MessageId'
Encode MessageId'
```

#### `MessageStructure'`

``` purescript
newtype MessageStructure'
  = MessageStructure' String
```

##### Instances
``` purescript
Newtype MessageStructure' _
Generic MessageStructure' _
Show MessageStructure'
Decode MessageStructure'
Encode MessageStructure'
```

#### `NextToken'`

``` purescript
newtype NextToken'
  = NextToken' String
```

##### Instances
``` purescript
Newtype NextToken' _
Generic NextToken' _
Show NextToken'
Decode NextToken'
Encode NextToken'
```

#### `Protocol'`

``` purescript
newtype Protocol'
  = Protocol' String
```

##### Instances
``` purescript
Newtype Protocol' _
Generic Protocol' _
Show Protocol'
Decode Protocol'
Encode Protocol'
```

#### `Subject'`

``` purescript
newtype Subject'
  = Subject' String
```

##### Instances
``` purescript
Newtype Subject' _
Generic Subject' _
Show Subject'
Decode Subject'
Encode Subject'
```

#### `SubscriptionARN'`

``` purescript
newtype SubscriptionARN'
  = SubscriptionARN' String
```

##### Instances
``` purescript
Newtype SubscriptionARN' _
Generic SubscriptionARN' _
Show SubscriptionARN'
Decode SubscriptionARN'
Encode SubscriptionARN'
```

#### `Token'`

``` purescript
newtype Token'
  = Token' String
```

##### Instances
``` purescript
Newtype Token' _
Generic Token' _
Show Token'
Decode Token'
Encode Token'
```

#### `TopicARN'`

``` purescript
newtype TopicARN'
  = TopicARN' String
```

##### Instances
``` purescript
Newtype TopicARN' _
Generic TopicARN' _
Show TopicARN'
Decode TopicARN'
Encode TopicARN'
```

#### `TopicName'`

``` purescript
newtype TopicName'
  = TopicName' String
```

##### Instances
``` purescript
Newtype TopicName' _
Generic TopicName' _
Show TopicName'
Decode TopicName'
Encode TopicName'
```


