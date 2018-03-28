## Module AWS.SNS.Requests

#### `addPermission`

``` purescript
addPermission :: forall eff. Service -> AddPermissionInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Adds a statement to a topic's access control policy, granting access for the specified AWS accounts to the specified actions.</p>

#### `checkIfPhoneNumberIsOptedOut`

``` purescript
checkIfPhoneNumberIsOptedOut :: forall eff. Service -> CheckIfPhoneNumberIsOptedOutInput -> Aff (exception :: EXCEPTION | eff) CheckIfPhoneNumberIsOptedOutResponse
```

<p>Accepts a phone number and indicates whether the phone holder has opted out of receiving SMS messages from your account. You cannot send SMS messages to a number that is opted out.</p> <p>To resume sending messages, you can opt in the number by using the <code>OptInPhoneNumber</code> action.</p>

#### `confirmSubscription`

``` purescript
confirmSubscription :: forall eff. Service -> ConfirmSubscriptionInput -> Aff (exception :: EXCEPTION | eff) ConfirmSubscriptionResponse
```

<p>Verifies an endpoint owner's intent to receive messages by validating the token sent to the endpoint by an earlier <code>Subscribe</code> action. If the token is valid, the action creates a new subscription and returns its Amazon Resource Name (ARN). This call requires an AWS signature only when the <code>AuthenticateOnUnsubscribe</code> flag is set to "true".</p>

#### `createPlatformApplication`

``` purescript
createPlatformApplication :: forall eff. Service -> CreatePlatformApplicationInput -> Aff (exception :: EXCEPTION | eff) CreatePlatformApplicationResponse
```

<p>Creates a platform application object for one of the supported push notification services, such as APNS and GCM, to which devices and mobile apps may register. You must specify PlatformPrincipal and PlatformCredential attributes when using the <code>CreatePlatformApplication</code> action. The PlatformPrincipal is received from the notification service. For APNS/APNS_SANDBOX, PlatformPrincipal is "SSL certificate". For GCM, PlatformPrincipal is not applicable. For ADM, PlatformPrincipal is "client id". The PlatformCredential is also received from the notification service. For WNS, PlatformPrincipal is "Package Security Identifier". For MPNS, PlatformPrincipal is "TLS certificate". For Baidu, PlatformPrincipal is "API key".</p> <p>For APNS/APNS_SANDBOX, PlatformCredential is "private key". For GCM, PlatformCredential is "API key". For ADM, PlatformCredential is "client secret". For WNS, PlatformCredential is "secret key". For MPNS, PlatformCredential is "private key". For Baidu, PlatformCredential is "secret key". The PlatformApplicationArn that is returned when using <code>CreatePlatformApplication</code> is then used as an attribute for the <code>CreatePlatformEndpoint</code> action. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. For more information about obtaining the PlatformPrincipal and PlatformCredential for each of the supported push notification services, see <a href="http://docs.aws.amazon.com/sns/latest/dg/mobile-push-apns.html">Getting Started with Apple Push Notification Service</a>, <a href="http://docs.aws.amazon.com/sns/latest/dg/mobile-push-adm.html">Getting Started with Amazon Device Messaging</a>, <a href="http://docs.aws.amazon.com/sns/latest/dg/mobile-push-baidu.html">Getting Started with Baidu Cloud Push</a>, <a href="http://docs.aws.amazon.com/sns/latest/dg/mobile-push-gcm.html">Getting Started with Google Cloud Messaging for Android</a>, <a href="http://docs.aws.amazon.com/sns/latest/dg/mobile-push-mpns.html">Getting Started with MPNS</a>, or <a href="http://docs.aws.amazon.com/sns/latest/dg/mobile-push-wns.html">Getting Started with WNS</a>. </p>

#### `createPlatformEndpoint`

``` purescript
createPlatformEndpoint :: forall eff. Service -> CreatePlatformEndpointInput -> Aff (exception :: EXCEPTION | eff) CreateEndpointResponse
```

<p>Creates an endpoint for a device and mobile app on one of the supported push notification services, such as GCM and APNS. <code>CreatePlatformEndpoint</code> requires the PlatformApplicationArn that is returned from <code>CreatePlatformApplication</code>. The EndpointArn that is returned when using <code>CreatePlatformEndpoint</code> can then be used by the <code>Publish</code> action to send a message to a mobile app or by the <code>Subscribe</code> action for subscription to a topic. The <code>CreatePlatformEndpoint</code> action is idempotent, so if the requester already owns an endpoint with the same device token and attributes, that endpoint's ARN is returned without creating a new endpoint. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p> <p>When using <code>CreatePlatformEndpoint</code> with Baidu, two attributes must be provided: ChannelId and UserId. The token field must also contain the ChannelId. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePushBaiduEndpoint.html">Creating an Amazon SNS Endpoint for Baidu</a>. </p>

#### `createTopic`

``` purescript
createTopic :: forall eff. Service -> CreateTopicInput -> Aff (exception :: EXCEPTION | eff) CreateTopicResponse
```

<p>Creates a topic to which notifications can be published. Users can create at most 100,000 topics. For more information, see <a href="http://aws.amazon.com/sns/">http://aws.amazon.com/sns</a>. This action is idempotent, so if the requester already owns a topic with the specified name, that topic's ARN is returned without creating a new topic.</p>

#### `deleteEndpoint`

``` purescript
deleteEndpoint :: forall eff. Service -> DeleteEndpointInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the endpoint for a device and mobile app from Amazon SNS. This action is idempotent. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p> <p>When you delete an endpoint that is also subscribed to a topic, then you must also unsubscribe the endpoint from the topic.</p>

#### `deletePlatformApplication`

``` purescript
deletePlatformApplication :: forall eff. Service -> DeletePlatformApplicationInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes a platform application object for one of the supported push notification services, such as APNS and GCM. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>

#### `deleteTopic`

``` purescript
deleteTopic :: forall eff. Service -> DeleteTopicInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes a topic and all its subscriptions. Deleting a topic might prevent some messages previously sent to the topic from being delivered to subscribers. This action is idempotent, so deleting a topic that does not exist does not result in an error.</p>

#### `getEndpointAttributes`

``` purescript
getEndpointAttributes :: forall eff. Service -> GetEndpointAttributesInput -> Aff (exception :: EXCEPTION | eff) GetEndpointAttributesResponse
```

<p>Retrieves the endpoint attributes for a device on one of the supported push notification services, such as GCM and APNS. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>

#### `getPlatformApplicationAttributes`

``` purescript
getPlatformApplicationAttributes :: forall eff. Service -> GetPlatformApplicationAttributesInput -> Aff (exception :: EXCEPTION | eff) GetPlatformApplicationAttributesResponse
```

<p>Retrieves the attributes of the platform application object for the supported push notification services, such as APNS and GCM. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>

#### `getSMSAttributes`

``` purescript
getSMSAttributes :: forall eff. Service -> GetSMSAttributesInput -> Aff (exception :: EXCEPTION | eff) GetSMSAttributesResponse
```

<p>Returns the settings for sending SMS messages from your account.</p> <p>These settings are set with the <code>SetSMSAttributes</code> action.</p>

#### `getSubscriptionAttributes`

``` purescript
getSubscriptionAttributes :: forall eff. Service -> GetSubscriptionAttributesInput -> Aff (exception :: EXCEPTION | eff) GetSubscriptionAttributesResponse
```

<p>Returns all of the properties of a subscription.</p>

#### `getTopicAttributes`

``` purescript
getTopicAttributes :: forall eff. Service -> GetTopicAttributesInput -> Aff (exception :: EXCEPTION | eff) GetTopicAttributesResponse
```

<p>Returns all of the properties of a topic. Topic properties returned might differ based on the authorization of the user.</p>

#### `listEndpointsByPlatformApplication`

``` purescript
listEndpointsByPlatformApplication :: forall eff. Service -> ListEndpointsByPlatformApplicationInput -> Aff (exception :: EXCEPTION | eff) ListEndpointsByPlatformApplicationResponse
```

<p>Lists the endpoints and endpoint attributes for devices in a supported push notification service, such as GCM and APNS. The results for <code>ListEndpointsByPlatformApplication</code> are paginated and return a limited list of endpoints, up to 100. If additional records are available after the first page results, then a NextToken string will be returned. To receive the next page, you call <code>ListEndpointsByPlatformApplication</code> again using the NextToken string received from the previous call. When there are no more records to return, NextToken will be null. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>

#### `listPhoneNumbersOptedOut`

``` purescript
listPhoneNumbersOptedOut :: forall eff. Service -> ListPhoneNumbersOptedOutInput -> Aff (exception :: EXCEPTION | eff) ListPhoneNumbersOptedOutResponse
```

<p>Returns a list of phone numbers that are opted out, meaning you cannot send SMS messages to them.</p> <p>The results for <code>ListPhoneNumbersOptedOut</code> are paginated, and each page returns up to 100 phone numbers. If additional phone numbers are available after the first page of results, then a <code>NextToken</code> string will be returned. To receive the next page, you call <code>ListPhoneNumbersOptedOut</code> again using the <code>NextToken</code> string received from the previous call. When there are no more records to return, <code>NextToken</code> will be null.</p>

#### `listPlatformApplications`

``` purescript
listPlatformApplications :: forall eff. Service -> ListPlatformApplicationsInput -> Aff (exception :: EXCEPTION | eff) ListPlatformApplicationsResponse
```

<p>Lists the platform application objects for the supported push notification services, such as APNS and GCM. The results for <code>ListPlatformApplications</code> are paginated and return a limited list of applications, up to 100. If additional records are available after the first page results, then a NextToken string will be returned. To receive the next page, you call <code>ListPlatformApplications</code> using the NextToken string received from the previous call. When there are no more records to return, NextToken will be null. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>

#### `listSubscriptions`

``` purescript
listSubscriptions :: forall eff. Service -> ListSubscriptionsInput -> Aff (exception :: EXCEPTION | eff) ListSubscriptionsResponse
```

<p>Returns a list of the requester's subscriptions. Each call returns a limited list of subscriptions, up to 100. If there are more subscriptions, a <code>NextToken</code> is also returned. Use the <code>NextToken</code> parameter in a new <code>ListSubscriptions</code> call to get further results.</p>

#### `listSubscriptionsByTopic`

``` purescript
listSubscriptionsByTopic :: forall eff. Service -> ListSubscriptionsByTopicInput -> Aff (exception :: EXCEPTION | eff) ListSubscriptionsByTopicResponse
```

<p>Returns a list of the subscriptions to a specific topic. Each call returns a limited list of subscriptions, up to 100. If there are more subscriptions, a <code>NextToken</code> is also returned. Use the <code>NextToken</code> parameter in a new <code>ListSubscriptionsByTopic</code> call to get further results.</p>

#### `listTopics`

``` purescript
listTopics :: forall eff. Service -> ListTopicsInput -> Aff (exception :: EXCEPTION | eff) ListTopicsResponse
```

<p>Returns a list of the requester's topics. Each call returns a limited list of topics, up to 100. If there are more topics, a <code>NextToken</code> is also returned. Use the <code>NextToken</code> parameter in a new <code>ListTopics</code> call to get further results.</p>

#### `optInPhoneNumber`

``` purescript
optInPhoneNumber :: forall eff. Service -> OptInPhoneNumberInput -> Aff (exception :: EXCEPTION | eff) OptInPhoneNumberResponse
```

<p>Use this request to opt in a phone number that is opted out, which enables you to resume sending SMS messages to the number.</p> <p>You can opt in a phone number only once every 30 days.</p>

#### `publish`

``` purescript
publish :: forall eff. Service -> PublishInput -> Aff (exception :: EXCEPTION | eff) PublishResponse
```

<p>Sends a message to all of a topic's subscribed endpoints. When a <code>messageId</code> is returned, the message has been saved and Amazon SNS will attempt to deliver it to the topic's subscribers shortly. The format of the outgoing message to each subscribed endpoint depends on the notification protocol.</p> <p>To use the <code>Publish</code> action for sending a message to a mobile endpoint, such as an app on a Kindle device or mobile phone, you must specify the EndpointArn for the TargetArn parameter. The EndpointArn is returned when making a call with the <code>CreatePlatformEndpoint</code> action. </p> <p>For more information about formatting messages, see <a href="http://docs.aws.amazon.com/sns/latest/dg/mobile-push-send-custommessage.html">Send Custom Platform-Specific Payloads in Messages to Mobile Devices</a>. </p>

#### `removePermission`

``` purescript
removePermission :: forall eff. Service -> RemovePermissionInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Removes a statement from a topic's access control policy.</p>

#### `setEndpointAttributes`

``` purescript
setEndpointAttributes :: forall eff. Service -> SetEndpointAttributesInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Sets the attributes for an endpoint for a device on one of the supported push notification services, such as GCM and APNS. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>

#### `setPlatformApplicationAttributes`

``` purescript
setPlatformApplicationAttributes :: forall eff. Service -> SetPlatformApplicationAttributesInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Sets the attributes of the platform application object for the supported push notification services, such as APNS and GCM. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. For information on configuring attributes for message delivery status, see <a href="http://docs.aws.amazon.com/sns/latest/dg/sns-msg-status.html">Using Amazon SNS Application Attributes for Message Delivery Status</a>. </p>

#### `setSMSAttributes`

``` purescript
setSMSAttributes :: forall eff. Service -> SetSMSAttributesInput -> Aff (exception :: EXCEPTION | eff) SetSMSAttributesResponse
```

<p>Use this request to set the default settings for sending SMS messages and receiving daily SMS usage reports.</p> <p>You can override some of these settings for a single message when you use the <code>Publish</code> action with the <code>MessageAttributes.entry.N</code> parameter. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/sms_publish-to-phone.html">Sending an SMS Message</a> in the <i>Amazon SNS Developer Guide</i>.</p>

#### `setSubscriptionAttributes`

``` purescript
setSubscriptionAttributes :: forall eff. Service -> SetSubscriptionAttributesInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Allows a subscription owner to set an attribute of the topic to a new value.</p>

#### `setTopicAttributes`

``` purescript
setTopicAttributes :: forall eff. Service -> SetTopicAttributesInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Allows a topic owner to set an attribute of the topic to a new value.</p>

#### `subscribe`

``` purescript
subscribe :: forall eff. Service -> SubscribeInput -> Aff (exception :: EXCEPTION | eff) SubscribeResponse
```

<p>Prepares to subscribe an endpoint by sending the endpoint a confirmation message. To actually create a subscription, the endpoint owner must call the <code>ConfirmSubscription</code> action with the token from the confirmation message. Confirmation tokens are valid for three days.</p>

#### `unsubscribe`

``` purescript
unsubscribe :: forall eff. Service -> UnsubscribeInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes a subscription. If the subscription requires authentication for deletion, only the owner of the subscription or the topic's owner can unsubscribe, and an AWS signature is required. If the <code>Unsubscribe</code> call does not require authentication and the requester is not the subscription owner, a final cancellation message is delivered to the endpoint, so that the endpoint owner can easily resubscribe to the topic if the <code>Unsubscribe</code> request was unintended.</p>


