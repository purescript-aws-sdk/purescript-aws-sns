## Module AWS.SNS.Types

#### `options`

``` purescript
options :: Options
```

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
  = AuthorizationErrorException { message :: Maybe (String) }
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
newAuthorizationErrorException' :: ({ message :: Maybe (String) } -> { message :: Maybe (String) }) -> AuthorizationErrorException
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
  = CheckIfPhoneNumberIsOptedOutResponse { isOptedOut :: Maybe (Boolean) }
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
newCheckIfPhoneNumberIsOptedOutResponse' :: ({ isOptedOut :: Maybe (Boolean) } -> { isOptedOut :: Maybe (Boolean) }) -> CheckIfPhoneNumberIsOptedOutResponse
```

Constructs CheckIfPhoneNumberIsOptedOutResponse's fields from required parameters

#### `ConfirmSubscriptionInput`

``` purescript
newtype ConfirmSubscriptionInput
  = ConfirmSubscriptionInput { "TopicArn" :: TopicARN', "Token" :: Token', "AuthenticateOnUnsubscribe" :: Maybe (AuthenticateOnUnsubscribe') }
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
newConfirmSubscriptionInput' :: Token' -> TopicARN' -> ({ "TopicArn" :: TopicARN', "Token" :: Token', "AuthenticateOnUnsubscribe" :: Maybe (AuthenticateOnUnsubscribe') } -> { "TopicArn" :: TopicARN', "Token" :: Token', "AuthenticateOnUnsubscribe" :: Maybe (AuthenticateOnUnsubscribe') }) -> ConfirmSubscriptionInput
```

Constructs ConfirmSubscriptionInput's fields from required parameters

#### `ConfirmSubscriptionResponse`

``` purescript
newtype ConfirmSubscriptionResponse
  = ConfirmSubscriptionResponse { "SubscriptionArn" :: Maybe (SubscriptionARN') }
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
newConfirmSubscriptionResponse' :: ({ "SubscriptionArn" :: Maybe (SubscriptionARN') } -> { "SubscriptionArn" :: Maybe (SubscriptionARN') }) -> ConfirmSubscriptionResponse
```

Constructs ConfirmSubscriptionResponse's fields from required parameters

#### `CreateEndpointResponse`

``` purescript
newtype CreateEndpointResponse
  = CreateEndpointResponse { "EndpointArn" :: Maybe (String) }
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
newCreateEndpointResponse' :: ({ "EndpointArn" :: Maybe (String) } -> { "EndpointArn" :: Maybe (String) }) -> CreateEndpointResponse
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
  = CreatePlatformApplicationResponse { "PlatformApplicationArn" :: Maybe (String) }
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
newCreatePlatformApplicationResponse' :: ({ "PlatformApplicationArn" :: Maybe (String) } -> { "PlatformApplicationArn" :: Maybe (String) }) -> CreatePlatformApplicationResponse
```

Constructs CreatePlatformApplicationResponse's fields from required parameters

#### `CreatePlatformEndpointInput`

``` purescript
newtype CreatePlatformEndpointInput
  = CreatePlatformEndpointInput { "PlatformApplicationArn" :: String, "Token" :: String, "CustomUserData" :: Maybe (String), "Attributes" :: Maybe (MapStringToString) }
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
newCreatePlatformEndpointInput' :: String -> String -> ({ "PlatformApplicationArn" :: String, "Token" :: String, "CustomUserData" :: Maybe (String), "Attributes" :: Maybe (MapStringToString) } -> { "PlatformApplicationArn" :: String, "Token" :: String, "CustomUserData" :: Maybe (String), "Attributes" :: Maybe (MapStringToString) }) -> CreatePlatformEndpointInput
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
  = CreateTopicResponse { "TopicArn" :: Maybe (TopicARN') }
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
newCreateTopicResponse' :: ({ "TopicArn" :: Maybe (TopicARN') } -> { "TopicArn" :: Maybe (TopicARN') }) -> CreateTopicResponse
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
  = Endpoint { "EndpointArn" :: Maybe (String), "Attributes" :: Maybe (MapStringToString) }
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
newEndpoint' :: ({ "EndpointArn" :: Maybe (String), "Attributes" :: Maybe (MapStringToString) } -> { "EndpointArn" :: Maybe (String), "Attributes" :: Maybe (MapStringToString) }) -> Endpoint
```

Constructs Endpoint's fields from required parameters

#### `EndpointDisabledException`

``` purescript
newtype EndpointDisabledException
  = EndpointDisabledException { message :: Maybe (String) }
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
newEndpointDisabledException' :: ({ message :: Maybe (String) } -> { message :: Maybe (String) }) -> EndpointDisabledException
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
  = GetEndpointAttributesResponse { "Attributes" :: Maybe (MapStringToString) }
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
newGetEndpointAttributesResponse' :: ({ "Attributes" :: Maybe (MapStringToString) } -> { "Attributes" :: Maybe (MapStringToString) }) -> GetEndpointAttributesResponse
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
  = GetPlatformApplicationAttributesResponse { "Attributes" :: Maybe (MapStringToString) }
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
newGetPlatformApplicationAttributesResponse' :: ({ "Attributes" :: Maybe (MapStringToString) } -> { "Attributes" :: Maybe (MapStringToString) }) -> GetPlatformApplicationAttributesResponse
```

Constructs GetPlatformApplicationAttributesResponse's fields from required parameters

#### `GetSMSAttributesInput`

``` purescript
newtype GetSMSAttributesInput
  = GetSMSAttributesInput { attributes :: Maybe (ListString) }
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
newGetSMSAttributesInput' :: ({ attributes :: Maybe (ListString) } -> { attributes :: Maybe (ListString) }) -> GetSMSAttributesInput
```

Constructs GetSMSAttributesInput's fields from required parameters

#### `GetSMSAttributesResponse`

``` purescript
newtype GetSMSAttributesResponse
  = GetSMSAttributesResponse { attributes :: Maybe (MapStringToString) }
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
newGetSMSAttributesResponse' :: ({ attributes :: Maybe (MapStringToString) } -> { attributes :: Maybe (MapStringToString) }) -> GetSMSAttributesResponse
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
  = GetSubscriptionAttributesResponse { "Attributes" :: Maybe (SubscriptionAttributesMap) }
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
newGetSubscriptionAttributesResponse' :: ({ "Attributes" :: Maybe (SubscriptionAttributesMap) } -> { "Attributes" :: Maybe (SubscriptionAttributesMap) }) -> GetSubscriptionAttributesResponse
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
  = GetTopicAttributesResponse { "Attributes" :: Maybe (TopicAttributesMap) }
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
newGetTopicAttributesResponse' :: ({ "Attributes" :: Maybe (TopicAttributesMap) } -> { "Attributes" :: Maybe (TopicAttributesMap) }) -> GetTopicAttributesResponse
```

Constructs GetTopicAttributesResponse's fields from required parameters

#### `InternalErrorException`

``` purescript
newtype InternalErrorException
  = InternalErrorException { message :: Maybe (String) }
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
newInternalErrorException' :: ({ message :: Maybe (String) } -> { message :: Maybe (String) }) -> InternalErrorException
```

Constructs InternalErrorException's fields from required parameters

#### `InvalidParameterException`

``` purescript
newtype InvalidParameterException
  = InvalidParameterException { message :: Maybe (String) }
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
newInvalidParameterException' :: ({ message :: Maybe (String) } -> { message :: Maybe (String) }) -> InvalidParameterException
```

Constructs InvalidParameterException's fields from required parameters

#### `InvalidParameterValueException`

``` purescript
newtype InvalidParameterValueException
  = InvalidParameterValueException { message :: Maybe (String) }
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
newInvalidParameterValueException' :: ({ message :: Maybe (String) } -> { message :: Maybe (String) }) -> InvalidParameterValueException
```

Constructs InvalidParameterValueException's fields from required parameters

#### `ListEndpointsByPlatformApplicationInput`

``` purescript
newtype ListEndpointsByPlatformApplicationInput
  = ListEndpointsByPlatformApplicationInput { "PlatformApplicationArn" :: String, "NextToken" :: Maybe (String) }
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
newListEndpointsByPlatformApplicationInput' :: String -> ({ "PlatformApplicationArn" :: String, "NextToken" :: Maybe (String) } -> { "PlatformApplicationArn" :: String, "NextToken" :: Maybe (String) }) -> ListEndpointsByPlatformApplicationInput
```

Constructs ListEndpointsByPlatformApplicationInput's fields from required parameters

#### `ListEndpointsByPlatformApplicationResponse`

``` purescript
newtype ListEndpointsByPlatformApplicationResponse
  = ListEndpointsByPlatformApplicationResponse { "Endpoints" :: Maybe (ListOfEndpoints), "NextToken" :: Maybe (String) }
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
newListEndpointsByPlatformApplicationResponse' :: ({ "Endpoints" :: Maybe (ListOfEndpoints), "NextToken" :: Maybe (String) } -> { "Endpoints" :: Maybe (ListOfEndpoints), "NextToken" :: Maybe (String) }) -> ListEndpointsByPlatformApplicationResponse
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
  = ListPhoneNumbersOptedOutInput { nextToken :: Maybe (String) }
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
newListPhoneNumbersOptedOutInput' :: ({ nextToken :: Maybe (String) } -> { nextToken :: Maybe (String) }) -> ListPhoneNumbersOptedOutInput
```

Constructs ListPhoneNumbersOptedOutInput's fields from required parameters

#### `ListPhoneNumbersOptedOutResponse`

``` purescript
newtype ListPhoneNumbersOptedOutResponse
  = ListPhoneNumbersOptedOutResponse { phoneNumbers :: Maybe (PhoneNumberList), nextToken :: Maybe (String) }
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
newListPhoneNumbersOptedOutResponse' :: ({ phoneNumbers :: Maybe (PhoneNumberList), nextToken :: Maybe (String) } -> { phoneNumbers :: Maybe (PhoneNumberList), nextToken :: Maybe (String) }) -> ListPhoneNumbersOptedOutResponse
```

Constructs ListPhoneNumbersOptedOutResponse's fields from required parameters

#### `ListPlatformApplicationsInput`

``` purescript
newtype ListPlatformApplicationsInput
  = ListPlatformApplicationsInput { "NextToken" :: Maybe (String) }
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
newListPlatformApplicationsInput' :: ({ "NextToken" :: Maybe (String) } -> { "NextToken" :: Maybe (String) }) -> ListPlatformApplicationsInput
```

Constructs ListPlatformApplicationsInput's fields from required parameters

#### `ListPlatformApplicationsResponse`

``` purescript
newtype ListPlatformApplicationsResponse
  = ListPlatformApplicationsResponse { "PlatformApplications" :: Maybe (ListOfPlatformApplications), "NextToken" :: Maybe (String) }
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
newListPlatformApplicationsResponse' :: ({ "PlatformApplications" :: Maybe (ListOfPlatformApplications), "NextToken" :: Maybe (String) } -> { "PlatformApplications" :: Maybe (ListOfPlatformApplications), "NextToken" :: Maybe (String) }) -> ListPlatformApplicationsResponse
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
  = ListSubscriptionsByTopicInput { "TopicArn" :: TopicARN', "NextToken" :: Maybe (NextToken') }
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
newListSubscriptionsByTopicInput' :: TopicARN' -> ({ "TopicArn" :: TopicARN', "NextToken" :: Maybe (NextToken') } -> { "TopicArn" :: TopicARN', "NextToken" :: Maybe (NextToken') }) -> ListSubscriptionsByTopicInput
```

Constructs ListSubscriptionsByTopicInput's fields from required parameters

#### `ListSubscriptionsByTopicResponse`

``` purescript
newtype ListSubscriptionsByTopicResponse
  = ListSubscriptionsByTopicResponse { "Subscriptions" :: Maybe (SubscriptionsList), "NextToken" :: Maybe (NextToken') }
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
newListSubscriptionsByTopicResponse' :: ({ "Subscriptions" :: Maybe (SubscriptionsList), "NextToken" :: Maybe (NextToken') } -> { "Subscriptions" :: Maybe (SubscriptionsList), "NextToken" :: Maybe (NextToken') }) -> ListSubscriptionsByTopicResponse
```

Constructs ListSubscriptionsByTopicResponse's fields from required parameters

#### `ListSubscriptionsInput`

``` purescript
newtype ListSubscriptionsInput
  = ListSubscriptionsInput { "NextToken" :: Maybe (NextToken') }
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
newListSubscriptionsInput' :: ({ "NextToken" :: Maybe (NextToken') } -> { "NextToken" :: Maybe (NextToken') }) -> ListSubscriptionsInput
```

Constructs ListSubscriptionsInput's fields from required parameters

#### `ListSubscriptionsResponse`

``` purescript
newtype ListSubscriptionsResponse
  = ListSubscriptionsResponse { "Subscriptions" :: Maybe (SubscriptionsList), "NextToken" :: Maybe (NextToken') }
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
newListSubscriptionsResponse' :: ({ "Subscriptions" :: Maybe (SubscriptionsList), "NextToken" :: Maybe (NextToken') } -> { "Subscriptions" :: Maybe (SubscriptionsList), "NextToken" :: Maybe (NextToken') }) -> ListSubscriptionsResponse
```

Constructs ListSubscriptionsResponse's fields from required parameters

#### `ListTopicsInput`

``` purescript
newtype ListTopicsInput
  = ListTopicsInput { "NextToken" :: Maybe (NextToken') }
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
newListTopicsInput' :: ({ "NextToken" :: Maybe (NextToken') } -> { "NextToken" :: Maybe (NextToken') }) -> ListTopicsInput
```

Constructs ListTopicsInput's fields from required parameters

#### `ListTopicsResponse`

``` purescript
newtype ListTopicsResponse
  = ListTopicsResponse { "Topics" :: Maybe (TopicsList), "NextToken" :: Maybe (NextToken') }
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
newListTopicsResponse' :: ({ "Topics" :: Maybe (TopicsList), "NextToken" :: Maybe (NextToken') } -> { "Topics" :: Maybe (TopicsList), "NextToken" :: Maybe (NextToken') }) -> ListTopicsResponse
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
  = MessageAttributeValue { "DataType" :: String, "StringValue" :: Maybe (String), "BinaryValue" :: Maybe (Binary) }
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
newMessageAttributeValue' :: String -> ({ "DataType" :: String, "StringValue" :: Maybe (String), "BinaryValue" :: Maybe (Binary) } -> { "DataType" :: String, "StringValue" :: Maybe (String), "BinaryValue" :: Maybe (Binary) }) -> MessageAttributeValue
```

Constructs MessageAttributeValue's fields from required parameters

#### `NotFoundException`

``` purescript
newtype NotFoundException
  = NotFoundException { message :: Maybe (String) }
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
newNotFoundException' :: ({ message :: Maybe (String) } -> { message :: Maybe (String) }) -> NotFoundException
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
  = PlatformApplication { "PlatformApplicationArn" :: Maybe (String), "Attributes" :: Maybe (MapStringToString) }
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
newPlatformApplication' :: ({ "PlatformApplicationArn" :: Maybe (String), "Attributes" :: Maybe (MapStringToString) } -> { "PlatformApplicationArn" :: Maybe (String), "Attributes" :: Maybe (MapStringToString) }) -> PlatformApplication
```

Constructs PlatformApplication's fields from required parameters

#### `PlatformApplicationDisabledException`

``` purescript
newtype PlatformApplicationDisabledException
  = PlatformApplicationDisabledException { message :: Maybe (String) }
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
newPlatformApplicationDisabledException' :: ({ message :: Maybe (String) } -> { message :: Maybe (String) }) -> PlatformApplicationDisabledException
```

Constructs PlatformApplicationDisabledException's fields from required parameters

#### `PublishInput`

``` purescript
newtype PublishInput
  = PublishInput { "TopicArn" :: Maybe (TopicARN'), "TargetArn" :: Maybe (String), "PhoneNumber" :: Maybe (String), "Message" :: Message', "Subject" :: Maybe (Subject'), "MessageStructure" :: Maybe (MessageStructure'), "MessageAttributes" :: Maybe (MessageAttributeMap) }
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
newPublishInput' :: Message' -> ({ "TopicArn" :: Maybe (TopicARN'), "TargetArn" :: Maybe (String), "PhoneNumber" :: Maybe (String), "Message" :: Message', "Subject" :: Maybe (Subject'), "MessageStructure" :: Maybe (MessageStructure'), "MessageAttributes" :: Maybe (MessageAttributeMap) } -> { "TopicArn" :: Maybe (TopicARN'), "TargetArn" :: Maybe (String), "PhoneNumber" :: Maybe (String), "Message" :: Message', "Subject" :: Maybe (Subject'), "MessageStructure" :: Maybe (MessageStructure'), "MessageAttributes" :: Maybe (MessageAttributeMap) }) -> PublishInput
```

Constructs PublishInput's fields from required parameters

#### `PublishResponse`

``` purescript
newtype PublishResponse
  = PublishResponse { "MessageId" :: Maybe (MessageId') }
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
newPublishResponse' :: ({ "MessageId" :: Maybe (MessageId') } -> { "MessageId" :: Maybe (MessageId') }) -> PublishResponse
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
  = SetSubscriptionAttributesInput { "SubscriptionArn" :: SubscriptionARN', "AttributeName" :: AttributeName', "AttributeValue" :: Maybe (AttributeValue') }
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
newSetSubscriptionAttributesInput' :: AttributeName' -> SubscriptionARN' -> ({ "SubscriptionArn" :: SubscriptionARN', "AttributeName" :: AttributeName', "AttributeValue" :: Maybe (AttributeValue') } -> { "SubscriptionArn" :: SubscriptionARN', "AttributeName" :: AttributeName', "AttributeValue" :: Maybe (AttributeValue') }) -> SetSubscriptionAttributesInput
```

Constructs SetSubscriptionAttributesInput's fields from required parameters

#### `SetTopicAttributesInput`

``` purescript
newtype SetTopicAttributesInput
  = SetTopicAttributesInput { "TopicArn" :: TopicARN', "AttributeName" :: AttributeName', "AttributeValue" :: Maybe (AttributeValue') }
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
newSetTopicAttributesInput' :: AttributeName' -> TopicARN' -> ({ "TopicArn" :: TopicARN', "AttributeName" :: AttributeName', "AttributeValue" :: Maybe (AttributeValue') } -> { "TopicArn" :: TopicARN', "AttributeName" :: AttributeName', "AttributeValue" :: Maybe (AttributeValue') }) -> SetTopicAttributesInput
```

Constructs SetTopicAttributesInput's fields from required parameters

#### `SubscribeInput`

``` purescript
newtype SubscribeInput
  = SubscribeInput { "TopicArn" :: TopicARN', "Protocol" :: Protocol', "Endpoint" :: Maybe (Endpoint') }
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
newSubscribeInput' :: Protocol' -> TopicARN' -> ({ "TopicArn" :: TopicARN', "Protocol" :: Protocol', "Endpoint" :: Maybe (Endpoint') } -> { "TopicArn" :: TopicARN', "Protocol" :: Protocol', "Endpoint" :: Maybe (Endpoint') }) -> SubscribeInput
```

Constructs SubscribeInput's fields from required parameters

#### `SubscribeResponse`

``` purescript
newtype SubscribeResponse
  = SubscribeResponse { "SubscriptionArn" :: Maybe (SubscriptionARN') }
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
newSubscribeResponse' :: ({ "SubscriptionArn" :: Maybe (SubscriptionARN') } -> { "SubscriptionArn" :: Maybe (SubscriptionARN') }) -> SubscribeResponse
```

Constructs SubscribeResponse's fields from required parameters

#### `Subscription`

``` purescript
newtype Subscription
  = Subscription { "SubscriptionArn" :: Maybe (SubscriptionARN'), "Owner" :: Maybe (Account'), "Protocol" :: Maybe (Protocol'), "Endpoint" :: Maybe (Endpoint'), "TopicArn" :: Maybe (TopicARN') }
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
newSubscription' :: ({ "SubscriptionArn" :: Maybe (SubscriptionARN'), "Owner" :: Maybe (Account'), "Protocol" :: Maybe (Protocol'), "Endpoint" :: Maybe (Endpoint'), "TopicArn" :: Maybe (TopicARN') } -> { "SubscriptionArn" :: Maybe (SubscriptionARN'), "Owner" :: Maybe (Account'), "Protocol" :: Maybe (Protocol'), "Endpoint" :: Maybe (Endpoint'), "TopicArn" :: Maybe (TopicARN') }) -> Subscription
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
  = SubscriptionLimitExceededException { message :: Maybe (String) }
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
newSubscriptionLimitExceededException' :: ({ message :: Maybe (String) } -> { message :: Maybe (String) }) -> SubscriptionLimitExceededException
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
  = ThrottledException { message :: Maybe (String) }
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
newThrottledException' :: ({ message :: Maybe (String) } -> { message :: Maybe (String) }) -> ThrottledException
```

Constructs ThrottledException's fields from required parameters

#### `Topic`

``` purescript
newtype Topic
  = Topic { "TopicArn" :: Maybe (TopicARN') }
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
newTopic' :: ({ "TopicArn" :: Maybe (TopicARN') } -> { "TopicArn" :: Maybe (TopicARN') }) -> Topic
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
  = TopicLimitExceededException { message :: Maybe (String) }
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
newTopicLimitExceededException' :: ({ message :: Maybe (String) } -> { message :: Maybe (String) }) -> TopicLimitExceededException
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


