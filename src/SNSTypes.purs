
module AWS.SNS.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


newtype ActionsList = ActionsList (Array Action')
derive instance newtypeActionsList :: Newtype ActionsList _
derive instance repGenericActionsList :: Generic ActionsList _
instance showActionsList :: Show ActionsList where show = genericShow
instance decodeActionsList :: Decode ActionsList where decode = genericDecode options
instance encodeActionsList :: Encode ActionsList where encode = genericEncode options



newtype AddPermissionInput = AddPermissionInput 
  { "TopicArn" :: (TopicARN')
  , "Label" :: (Label')
  , "AWSAccountId" :: (DelegatesList)
  , "ActionName" :: (ActionsList)
  }
derive instance newtypeAddPermissionInput :: Newtype AddPermissionInput _
derive instance repGenericAddPermissionInput :: Generic AddPermissionInput _
instance showAddPermissionInput :: Show AddPermissionInput where show = genericShow
instance decodeAddPermissionInput :: Decode AddPermissionInput where decode = genericDecode options
instance encodeAddPermissionInput :: Encode AddPermissionInput where encode = genericEncode options

-- | Constructs AddPermissionInput from required parameters
newAddPermissionInput :: DelegatesList -> ActionsList -> Label' -> TopicARN' -> AddPermissionInput
newAddPermissionInput _AWSAccountId _ActionName _Label _TopicArn = AddPermissionInput { "AWSAccountId": _AWSAccountId, "ActionName": _ActionName, "Label": _Label, "TopicArn": _TopicArn }

-- | Constructs AddPermissionInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddPermissionInput' :: DelegatesList -> ActionsList -> Label' -> TopicARN' -> ( { "TopicArn" :: (TopicARN') , "Label" :: (Label') , "AWSAccountId" :: (DelegatesList) , "ActionName" :: (ActionsList) } -> {"TopicArn" :: (TopicARN') , "Label" :: (Label') , "AWSAccountId" :: (DelegatesList) , "ActionName" :: (ActionsList) } ) -> AddPermissionInput
newAddPermissionInput' _AWSAccountId _ActionName _Label _TopicArn customize = (AddPermissionInput <<< customize) { "AWSAccountId": _AWSAccountId, "ActionName": _ActionName, "Label": _Label, "TopicArn": _TopicArn }



-- | <p>Indicates that the user has been denied access to the requested resource.</p>
newtype AuthorizationErrorException = AuthorizationErrorException 
  { "message" :: NullOrUndefined (String)
  }
derive instance newtypeAuthorizationErrorException :: Newtype AuthorizationErrorException _
derive instance repGenericAuthorizationErrorException :: Generic AuthorizationErrorException _
instance showAuthorizationErrorException :: Show AuthorizationErrorException where show = genericShow
instance decodeAuthorizationErrorException :: Decode AuthorizationErrorException where decode = genericDecode options
instance encodeAuthorizationErrorException :: Encode AuthorizationErrorException where encode = genericEncode options

-- | Constructs AuthorizationErrorException from required parameters
newAuthorizationErrorException :: AuthorizationErrorException
newAuthorizationErrorException  = AuthorizationErrorException { "message": (NullOrUndefined Nothing) }

-- | Constructs AuthorizationErrorException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAuthorizationErrorException' :: ( { "message" :: NullOrUndefined (String) } -> {"message" :: NullOrUndefined (String) } ) -> AuthorizationErrorException
newAuthorizationErrorException'  customize = (AuthorizationErrorException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype Binary = Binary String
derive instance newtypeBinary :: Newtype Binary _
derive instance repGenericBinary :: Generic Binary _
instance showBinary :: Show Binary where show = genericShow
instance decodeBinary :: Decode Binary where decode = genericDecode options
instance encodeBinary :: Encode Binary where encode = genericEncode options



-- | <p>The input for the <code>CheckIfPhoneNumberIsOptedOut</code> action.</p>
newtype CheckIfPhoneNumberIsOptedOutInput = CheckIfPhoneNumberIsOptedOutInput 
  { "phoneNumber" :: (PhoneNumber)
  }
derive instance newtypeCheckIfPhoneNumberIsOptedOutInput :: Newtype CheckIfPhoneNumberIsOptedOutInput _
derive instance repGenericCheckIfPhoneNumberIsOptedOutInput :: Generic CheckIfPhoneNumberIsOptedOutInput _
instance showCheckIfPhoneNumberIsOptedOutInput :: Show CheckIfPhoneNumberIsOptedOutInput where show = genericShow
instance decodeCheckIfPhoneNumberIsOptedOutInput :: Decode CheckIfPhoneNumberIsOptedOutInput where decode = genericDecode options
instance encodeCheckIfPhoneNumberIsOptedOutInput :: Encode CheckIfPhoneNumberIsOptedOutInput where encode = genericEncode options

-- | Constructs CheckIfPhoneNumberIsOptedOutInput from required parameters
newCheckIfPhoneNumberIsOptedOutInput :: PhoneNumber -> CheckIfPhoneNumberIsOptedOutInput
newCheckIfPhoneNumberIsOptedOutInput _phoneNumber = CheckIfPhoneNumberIsOptedOutInput { "phoneNumber": _phoneNumber }

-- | Constructs CheckIfPhoneNumberIsOptedOutInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCheckIfPhoneNumberIsOptedOutInput' :: PhoneNumber -> ( { "phoneNumber" :: (PhoneNumber) } -> {"phoneNumber" :: (PhoneNumber) } ) -> CheckIfPhoneNumberIsOptedOutInput
newCheckIfPhoneNumberIsOptedOutInput' _phoneNumber customize = (CheckIfPhoneNumberIsOptedOutInput <<< customize) { "phoneNumber": _phoneNumber }



-- | <p>The response from the <code>CheckIfPhoneNumberIsOptedOut</code> action.</p>
newtype CheckIfPhoneNumberIsOptedOutResponse = CheckIfPhoneNumberIsOptedOutResponse 
  { "isOptedOut" :: NullOrUndefined (Boolean)
  }
derive instance newtypeCheckIfPhoneNumberIsOptedOutResponse :: Newtype CheckIfPhoneNumberIsOptedOutResponse _
derive instance repGenericCheckIfPhoneNumberIsOptedOutResponse :: Generic CheckIfPhoneNumberIsOptedOutResponse _
instance showCheckIfPhoneNumberIsOptedOutResponse :: Show CheckIfPhoneNumberIsOptedOutResponse where show = genericShow
instance decodeCheckIfPhoneNumberIsOptedOutResponse :: Decode CheckIfPhoneNumberIsOptedOutResponse where decode = genericDecode options
instance encodeCheckIfPhoneNumberIsOptedOutResponse :: Encode CheckIfPhoneNumberIsOptedOutResponse where encode = genericEncode options

-- | Constructs CheckIfPhoneNumberIsOptedOutResponse from required parameters
newCheckIfPhoneNumberIsOptedOutResponse :: CheckIfPhoneNumberIsOptedOutResponse
newCheckIfPhoneNumberIsOptedOutResponse  = CheckIfPhoneNumberIsOptedOutResponse { "isOptedOut": (NullOrUndefined Nothing) }

-- | Constructs CheckIfPhoneNumberIsOptedOutResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCheckIfPhoneNumberIsOptedOutResponse' :: ( { "isOptedOut" :: NullOrUndefined (Boolean) } -> {"isOptedOut" :: NullOrUndefined (Boolean) } ) -> CheckIfPhoneNumberIsOptedOutResponse
newCheckIfPhoneNumberIsOptedOutResponse'  customize = (CheckIfPhoneNumberIsOptedOutResponse <<< customize) { "isOptedOut": (NullOrUndefined Nothing) }



-- | <p>Input for ConfirmSubscription action.</p>
newtype ConfirmSubscriptionInput = ConfirmSubscriptionInput 
  { "TopicArn" :: (TopicARN')
  , "Token" :: (Token')
  , "AuthenticateOnUnsubscribe" :: NullOrUndefined (AuthenticateOnUnsubscribe')
  }
derive instance newtypeConfirmSubscriptionInput :: Newtype ConfirmSubscriptionInput _
derive instance repGenericConfirmSubscriptionInput :: Generic ConfirmSubscriptionInput _
instance showConfirmSubscriptionInput :: Show ConfirmSubscriptionInput where show = genericShow
instance decodeConfirmSubscriptionInput :: Decode ConfirmSubscriptionInput where decode = genericDecode options
instance encodeConfirmSubscriptionInput :: Encode ConfirmSubscriptionInput where encode = genericEncode options

-- | Constructs ConfirmSubscriptionInput from required parameters
newConfirmSubscriptionInput :: Token' -> TopicARN' -> ConfirmSubscriptionInput
newConfirmSubscriptionInput _Token _TopicArn = ConfirmSubscriptionInput { "Token": _Token, "TopicArn": _TopicArn, "AuthenticateOnUnsubscribe": (NullOrUndefined Nothing) }

-- | Constructs ConfirmSubscriptionInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConfirmSubscriptionInput' :: Token' -> TopicARN' -> ( { "TopicArn" :: (TopicARN') , "Token" :: (Token') , "AuthenticateOnUnsubscribe" :: NullOrUndefined (AuthenticateOnUnsubscribe') } -> {"TopicArn" :: (TopicARN') , "Token" :: (Token') , "AuthenticateOnUnsubscribe" :: NullOrUndefined (AuthenticateOnUnsubscribe') } ) -> ConfirmSubscriptionInput
newConfirmSubscriptionInput' _Token _TopicArn customize = (ConfirmSubscriptionInput <<< customize) { "Token": _Token, "TopicArn": _TopicArn, "AuthenticateOnUnsubscribe": (NullOrUndefined Nothing) }



-- | <p>Response for ConfirmSubscriptions action.</p>
newtype ConfirmSubscriptionResponse = ConfirmSubscriptionResponse 
  { "SubscriptionArn" :: NullOrUndefined (SubscriptionARN')
  }
derive instance newtypeConfirmSubscriptionResponse :: Newtype ConfirmSubscriptionResponse _
derive instance repGenericConfirmSubscriptionResponse :: Generic ConfirmSubscriptionResponse _
instance showConfirmSubscriptionResponse :: Show ConfirmSubscriptionResponse where show = genericShow
instance decodeConfirmSubscriptionResponse :: Decode ConfirmSubscriptionResponse where decode = genericDecode options
instance encodeConfirmSubscriptionResponse :: Encode ConfirmSubscriptionResponse where encode = genericEncode options

-- | Constructs ConfirmSubscriptionResponse from required parameters
newConfirmSubscriptionResponse :: ConfirmSubscriptionResponse
newConfirmSubscriptionResponse  = ConfirmSubscriptionResponse { "SubscriptionArn": (NullOrUndefined Nothing) }

-- | Constructs ConfirmSubscriptionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConfirmSubscriptionResponse' :: ( { "SubscriptionArn" :: NullOrUndefined (SubscriptionARN') } -> {"SubscriptionArn" :: NullOrUndefined (SubscriptionARN') } ) -> ConfirmSubscriptionResponse
newConfirmSubscriptionResponse'  customize = (ConfirmSubscriptionResponse <<< customize) { "SubscriptionArn": (NullOrUndefined Nothing) }



-- | <p>Response from CreateEndpoint action.</p>
newtype CreateEndpointResponse = CreateEndpointResponse 
  { "EndpointArn" :: NullOrUndefined (String)
  }
derive instance newtypeCreateEndpointResponse :: Newtype CreateEndpointResponse _
derive instance repGenericCreateEndpointResponse :: Generic CreateEndpointResponse _
instance showCreateEndpointResponse :: Show CreateEndpointResponse where show = genericShow
instance decodeCreateEndpointResponse :: Decode CreateEndpointResponse where decode = genericDecode options
instance encodeCreateEndpointResponse :: Encode CreateEndpointResponse where encode = genericEncode options

-- | Constructs CreateEndpointResponse from required parameters
newCreateEndpointResponse :: CreateEndpointResponse
newCreateEndpointResponse  = CreateEndpointResponse { "EndpointArn": (NullOrUndefined Nothing) }

-- | Constructs CreateEndpointResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateEndpointResponse' :: ( { "EndpointArn" :: NullOrUndefined (String) } -> {"EndpointArn" :: NullOrUndefined (String) } ) -> CreateEndpointResponse
newCreateEndpointResponse'  customize = (CreateEndpointResponse <<< customize) { "EndpointArn": (NullOrUndefined Nothing) }



-- | <p>Input for CreatePlatformApplication action.</p>
newtype CreatePlatformApplicationInput = CreatePlatformApplicationInput 
  { "Name" :: (String)
  , "Platform" :: (String)
  , "Attributes" :: (MapStringToString)
  }
derive instance newtypeCreatePlatformApplicationInput :: Newtype CreatePlatformApplicationInput _
derive instance repGenericCreatePlatformApplicationInput :: Generic CreatePlatformApplicationInput _
instance showCreatePlatformApplicationInput :: Show CreatePlatformApplicationInput where show = genericShow
instance decodeCreatePlatformApplicationInput :: Decode CreatePlatformApplicationInput where decode = genericDecode options
instance encodeCreatePlatformApplicationInput :: Encode CreatePlatformApplicationInput where encode = genericEncode options

-- | Constructs CreatePlatformApplicationInput from required parameters
newCreatePlatformApplicationInput :: MapStringToString -> String -> String -> CreatePlatformApplicationInput
newCreatePlatformApplicationInput _Attributes _Name _Platform = CreatePlatformApplicationInput { "Attributes": _Attributes, "Name": _Name, "Platform": _Platform }

-- | Constructs CreatePlatformApplicationInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatePlatformApplicationInput' :: MapStringToString -> String -> String -> ( { "Name" :: (String) , "Platform" :: (String) , "Attributes" :: (MapStringToString) } -> {"Name" :: (String) , "Platform" :: (String) , "Attributes" :: (MapStringToString) } ) -> CreatePlatformApplicationInput
newCreatePlatformApplicationInput' _Attributes _Name _Platform customize = (CreatePlatformApplicationInput <<< customize) { "Attributes": _Attributes, "Name": _Name, "Platform": _Platform }



-- | <p>Response from CreatePlatformApplication action.</p>
newtype CreatePlatformApplicationResponse = CreatePlatformApplicationResponse 
  { "PlatformApplicationArn" :: NullOrUndefined (String)
  }
derive instance newtypeCreatePlatformApplicationResponse :: Newtype CreatePlatformApplicationResponse _
derive instance repGenericCreatePlatformApplicationResponse :: Generic CreatePlatformApplicationResponse _
instance showCreatePlatformApplicationResponse :: Show CreatePlatformApplicationResponse where show = genericShow
instance decodeCreatePlatformApplicationResponse :: Decode CreatePlatformApplicationResponse where decode = genericDecode options
instance encodeCreatePlatformApplicationResponse :: Encode CreatePlatformApplicationResponse where encode = genericEncode options

-- | Constructs CreatePlatformApplicationResponse from required parameters
newCreatePlatformApplicationResponse :: CreatePlatformApplicationResponse
newCreatePlatformApplicationResponse  = CreatePlatformApplicationResponse { "PlatformApplicationArn": (NullOrUndefined Nothing) }

-- | Constructs CreatePlatformApplicationResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatePlatformApplicationResponse' :: ( { "PlatformApplicationArn" :: NullOrUndefined (String) } -> {"PlatformApplicationArn" :: NullOrUndefined (String) } ) -> CreatePlatformApplicationResponse
newCreatePlatformApplicationResponse'  customize = (CreatePlatformApplicationResponse <<< customize) { "PlatformApplicationArn": (NullOrUndefined Nothing) }



-- | <p>Input for CreatePlatformEndpoint action.</p>
newtype CreatePlatformEndpointInput = CreatePlatformEndpointInput 
  { "PlatformApplicationArn" :: (String)
  , "Token" :: (String)
  , "CustomUserData" :: NullOrUndefined (String)
  , "Attributes" :: NullOrUndefined (MapStringToString)
  }
derive instance newtypeCreatePlatformEndpointInput :: Newtype CreatePlatformEndpointInput _
derive instance repGenericCreatePlatformEndpointInput :: Generic CreatePlatformEndpointInput _
instance showCreatePlatformEndpointInput :: Show CreatePlatformEndpointInput where show = genericShow
instance decodeCreatePlatformEndpointInput :: Decode CreatePlatformEndpointInput where decode = genericDecode options
instance encodeCreatePlatformEndpointInput :: Encode CreatePlatformEndpointInput where encode = genericEncode options

-- | Constructs CreatePlatformEndpointInput from required parameters
newCreatePlatformEndpointInput :: String -> String -> CreatePlatformEndpointInput
newCreatePlatformEndpointInput _PlatformApplicationArn _Token = CreatePlatformEndpointInput { "PlatformApplicationArn": _PlatformApplicationArn, "Token": _Token, "Attributes": (NullOrUndefined Nothing), "CustomUserData": (NullOrUndefined Nothing) }

-- | Constructs CreatePlatformEndpointInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatePlatformEndpointInput' :: String -> String -> ( { "PlatformApplicationArn" :: (String) , "Token" :: (String) , "CustomUserData" :: NullOrUndefined (String) , "Attributes" :: NullOrUndefined (MapStringToString) } -> {"PlatformApplicationArn" :: (String) , "Token" :: (String) , "CustomUserData" :: NullOrUndefined (String) , "Attributes" :: NullOrUndefined (MapStringToString) } ) -> CreatePlatformEndpointInput
newCreatePlatformEndpointInput' _PlatformApplicationArn _Token customize = (CreatePlatformEndpointInput <<< customize) { "PlatformApplicationArn": _PlatformApplicationArn, "Token": _Token, "Attributes": (NullOrUndefined Nothing), "CustomUserData": (NullOrUndefined Nothing) }



-- | <p>Input for CreateTopic action.</p>
newtype CreateTopicInput = CreateTopicInput 
  { "Name" :: (TopicName')
  }
derive instance newtypeCreateTopicInput :: Newtype CreateTopicInput _
derive instance repGenericCreateTopicInput :: Generic CreateTopicInput _
instance showCreateTopicInput :: Show CreateTopicInput where show = genericShow
instance decodeCreateTopicInput :: Decode CreateTopicInput where decode = genericDecode options
instance encodeCreateTopicInput :: Encode CreateTopicInput where encode = genericEncode options

-- | Constructs CreateTopicInput from required parameters
newCreateTopicInput :: TopicName' -> CreateTopicInput
newCreateTopicInput _Name = CreateTopicInput { "Name": _Name }

-- | Constructs CreateTopicInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateTopicInput' :: TopicName' -> ( { "Name" :: (TopicName') } -> {"Name" :: (TopicName') } ) -> CreateTopicInput
newCreateTopicInput' _Name customize = (CreateTopicInput <<< customize) { "Name": _Name }



-- | <p>Response from CreateTopic action.</p>
newtype CreateTopicResponse = CreateTopicResponse 
  { "TopicArn" :: NullOrUndefined (TopicARN')
  }
derive instance newtypeCreateTopicResponse :: Newtype CreateTopicResponse _
derive instance repGenericCreateTopicResponse :: Generic CreateTopicResponse _
instance showCreateTopicResponse :: Show CreateTopicResponse where show = genericShow
instance decodeCreateTopicResponse :: Decode CreateTopicResponse where decode = genericDecode options
instance encodeCreateTopicResponse :: Encode CreateTopicResponse where encode = genericEncode options

-- | Constructs CreateTopicResponse from required parameters
newCreateTopicResponse :: CreateTopicResponse
newCreateTopicResponse  = CreateTopicResponse { "TopicArn": (NullOrUndefined Nothing) }

-- | Constructs CreateTopicResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateTopicResponse' :: ( { "TopicArn" :: NullOrUndefined (TopicARN') } -> {"TopicArn" :: NullOrUndefined (TopicARN') } ) -> CreateTopicResponse
newCreateTopicResponse'  customize = (CreateTopicResponse <<< customize) { "TopicArn": (NullOrUndefined Nothing) }



newtype DelegatesList = DelegatesList (Array Delegate')
derive instance newtypeDelegatesList :: Newtype DelegatesList _
derive instance repGenericDelegatesList :: Generic DelegatesList _
instance showDelegatesList :: Show DelegatesList where show = genericShow
instance decodeDelegatesList :: Decode DelegatesList where decode = genericDecode options
instance encodeDelegatesList :: Encode DelegatesList where encode = genericEncode options



-- | <p>Input for DeleteEndpoint action.</p>
newtype DeleteEndpointInput = DeleteEndpointInput 
  { "EndpointArn" :: (String)
  }
derive instance newtypeDeleteEndpointInput :: Newtype DeleteEndpointInput _
derive instance repGenericDeleteEndpointInput :: Generic DeleteEndpointInput _
instance showDeleteEndpointInput :: Show DeleteEndpointInput where show = genericShow
instance decodeDeleteEndpointInput :: Decode DeleteEndpointInput where decode = genericDecode options
instance encodeDeleteEndpointInput :: Encode DeleteEndpointInput where encode = genericEncode options

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
instance showDeletePlatformApplicationInput :: Show DeletePlatformApplicationInput where show = genericShow
instance decodeDeletePlatformApplicationInput :: Decode DeletePlatformApplicationInput where decode = genericDecode options
instance encodeDeletePlatformApplicationInput :: Encode DeletePlatformApplicationInput where encode = genericEncode options

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
instance showDeleteTopicInput :: Show DeleteTopicInput where show = genericShow
instance decodeDeleteTopicInput :: Decode DeleteTopicInput where decode = genericDecode options
instance encodeDeleteTopicInput :: Encode DeleteTopicInput where encode = genericEncode options

-- | Constructs DeleteTopicInput from required parameters
newDeleteTopicInput :: TopicARN' -> DeleteTopicInput
newDeleteTopicInput _TopicArn = DeleteTopicInput { "TopicArn": _TopicArn }

-- | Constructs DeleteTopicInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteTopicInput' :: TopicARN' -> ( { "TopicArn" :: (TopicARN') } -> {"TopicArn" :: (TopicARN') } ) -> DeleteTopicInput
newDeleteTopicInput' _TopicArn customize = (DeleteTopicInput <<< customize) { "TopicArn": _TopicArn }



-- | <p>Endpoint for mobile app and device.</p>
newtype Endpoint = Endpoint 
  { "EndpointArn" :: NullOrUndefined (String)
  , "Attributes" :: NullOrUndefined (MapStringToString)
  }
derive instance newtypeEndpoint :: Newtype Endpoint _
derive instance repGenericEndpoint :: Generic Endpoint _
instance showEndpoint :: Show Endpoint where show = genericShow
instance decodeEndpoint :: Decode Endpoint where decode = genericDecode options
instance encodeEndpoint :: Encode Endpoint where encode = genericEncode options

-- | Constructs Endpoint from required parameters
newEndpoint :: Endpoint
newEndpoint  = Endpoint { "Attributes": (NullOrUndefined Nothing), "EndpointArn": (NullOrUndefined Nothing) }

-- | Constructs Endpoint's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEndpoint' :: ( { "EndpointArn" :: NullOrUndefined (String) , "Attributes" :: NullOrUndefined (MapStringToString) } -> {"EndpointArn" :: NullOrUndefined (String) , "Attributes" :: NullOrUndefined (MapStringToString) } ) -> Endpoint
newEndpoint'  customize = (Endpoint <<< customize) { "Attributes": (NullOrUndefined Nothing), "EndpointArn": (NullOrUndefined Nothing) }



-- | <p>Exception error indicating endpoint disabled.</p>
newtype EndpointDisabledException = EndpointDisabledException 
  { "message" :: NullOrUndefined (String)
  }
derive instance newtypeEndpointDisabledException :: Newtype EndpointDisabledException _
derive instance repGenericEndpointDisabledException :: Generic EndpointDisabledException _
instance showEndpointDisabledException :: Show EndpointDisabledException where show = genericShow
instance decodeEndpointDisabledException :: Decode EndpointDisabledException where decode = genericDecode options
instance encodeEndpointDisabledException :: Encode EndpointDisabledException where encode = genericEncode options

-- | Constructs EndpointDisabledException from required parameters
newEndpointDisabledException :: EndpointDisabledException
newEndpointDisabledException  = EndpointDisabledException { "message": (NullOrUndefined Nothing) }

-- | Constructs EndpointDisabledException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEndpointDisabledException' :: ( { "message" :: NullOrUndefined (String) } -> {"message" :: NullOrUndefined (String) } ) -> EndpointDisabledException
newEndpointDisabledException'  customize = (EndpointDisabledException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>Input for GetEndpointAttributes action.</p>
newtype GetEndpointAttributesInput = GetEndpointAttributesInput 
  { "EndpointArn" :: (String)
  }
derive instance newtypeGetEndpointAttributesInput :: Newtype GetEndpointAttributesInput _
derive instance repGenericGetEndpointAttributesInput :: Generic GetEndpointAttributesInput _
instance showGetEndpointAttributesInput :: Show GetEndpointAttributesInput where show = genericShow
instance decodeGetEndpointAttributesInput :: Decode GetEndpointAttributesInput where decode = genericDecode options
instance encodeGetEndpointAttributesInput :: Encode GetEndpointAttributesInput where encode = genericEncode options

-- | Constructs GetEndpointAttributesInput from required parameters
newGetEndpointAttributesInput :: String -> GetEndpointAttributesInput
newGetEndpointAttributesInput _EndpointArn = GetEndpointAttributesInput { "EndpointArn": _EndpointArn }

-- | Constructs GetEndpointAttributesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetEndpointAttributesInput' :: String -> ( { "EndpointArn" :: (String) } -> {"EndpointArn" :: (String) } ) -> GetEndpointAttributesInput
newGetEndpointAttributesInput' _EndpointArn customize = (GetEndpointAttributesInput <<< customize) { "EndpointArn": _EndpointArn }



-- | <p>Response from GetEndpointAttributes of the EndpointArn.</p>
newtype GetEndpointAttributesResponse = GetEndpointAttributesResponse 
  { "Attributes" :: NullOrUndefined (MapStringToString)
  }
derive instance newtypeGetEndpointAttributesResponse :: Newtype GetEndpointAttributesResponse _
derive instance repGenericGetEndpointAttributesResponse :: Generic GetEndpointAttributesResponse _
instance showGetEndpointAttributesResponse :: Show GetEndpointAttributesResponse where show = genericShow
instance decodeGetEndpointAttributesResponse :: Decode GetEndpointAttributesResponse where decode = genericDecode options
instance encodeGetEndpointAttributesResponse :: Encode GetEndpointAttributesResponse where encode = genericEncode options

-- | Constructs GetEndpointAttributesResponse from required parameters
newGetEndpointAttributesResponse :: GetEndpointAttributesResponse
newGetEndpointAttributesResponse  = GetEndpointAttributesResponse { "Attributes": (NullOrUndefined Nothing) }

-- | Constructs GetEndpointAttributesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetEndpointAttributesResponse' :: ( { "Attributes" :: NullOrUndefined (MapStringToString) } -> {"Attributes" :: NullOrUndefined (MapStringToString) } ) -> GetEndpointAttributesResponse
newGetEndpointAttributesResponse'  customize = (GetEndpointAttributesResponse <<< customize) { "Attributes": (NullOrUndefined Nothing) }



-- | <p>Input for GetPlatformApplicationAttributes action.</p>
newtype GetPlatformApplicationAttributesInput = GetPlatformApplicationAttributesInput 
  { "PlatformApplicationArn" :: (String)
  }
derive instance newtypeGetPlatformApplicationAttributesInput :: Newtype GetPlatformApplicationAttributesInput _
derive instance repGenericGetPlatformApplicationAttributesInput :: Generic GetPlatformApplicationAttributesInput _
instance showGetPlatformApplicationAttributesInput :: Show GetPlatformApplicationAttributesInput where show = genericShow
instance decodeGetPlatformApplicationAttributesInput :: Decode GetPlatformApplicationAttributesInput where decode = genericDecode options
instance encodeGetPlatformApplicationAttributesInput :: Encode GetPlatformApplicationAttributesInput where encode = genericEncode options

-- | Constructs GetPlatformApplicationAttributesInput from required parameters
newGetPlatformApplicationAttributesInput :: String -> GetPlatformApplicationAttributesInput
newGetPlatformApplicationAttributesInput _PlatformApplicationArn = GetPlatformApplicationAttributesInput { "PlatformApplicationArn": _PlatformApplicationArn }

-- | Constructs GetPlatformApplicationAttributesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetPlatformApplicationAttributesInput' :: String -> ( { "PlatformApplicationArn" :: (String) } -> {"PlatformApplicationArn" :: (String) } ) -> GetPlatformApplicationAttributesInput
newGetPlatformApplicationAttributesInput' _PlatformApplicationArn customize = (GetPlatformApplicationAttributesInput <<< customize) { "PlatformApplicationArn": _PlatformApplicationArn }



-- | <p>Response for GetPlatformApplicationAttributes action.</p>
newtype GetPlatformApplicationAttributesResponse = GetPlatformApplicationAttributesResponse 
  { "Attributes" :: NullOrUndefined (MapStringToString)
  }
derive instance newtypeGetPlatformApplicationAttributesResponse :: Newtype GetPlatformApplicationAttributesResponse _
derive instance repGenericGetPlatformApplicationAttributesResponse :: Generic GetPlatformApplicationAttributesResponse _
instance showGetPlatformApplicationAttributesResponse :: Show GetPlatformApplicationAttributesResponse where show = genericShow
instance decodeGetPlatformApplicationAttributesResponse :: Decode GetPlatformApplicationAttributesResponse where decode = genericDecode options
instance encodeGetPlatformApplicationAttributesResponse :: Encode GetPlatformApplicationAttributesResponse where encode = genericEncode options

-- | Constructs GetPlatformApplicationAttributesResponse from required parameters
newGetPlatformApplicationAttributesResponse :: GetPlatformApplicationAttributesResponse
newGetPlatformApplicationAttributesResponse  = GetPlatformApplicationAttributesResponse { "Attributes": (NullOrUndefined Nothing) }

-- | Constructs GetPlatformApplicationAttributesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetPlatformApplicationAttributesResponse' :: ( { "Attributes" :: NullOrUndefined (MapStringToString) } -> {"Attributes" :: NullOrUndefined (MapStringToString) } ) -> GetPlatformApplicationAttributesResponse
newGetPlatformApplicationAttributesResponse'  customize = (GetPlatformApplicationAttributesResponse <<< customize) { "Attributes": (NullOrUndefined Nothing) }



-- | <p>The input for the <code>GetSMSAttributes</code> request.</p>
newtype GetSMSAttributesInput = GetSMSAttributesInput 
  { "attributes" :: NullOrUndefined (ListString)
  }
derive instance newtypeGetSMSAttributesInput :: Newtype GetSMSAttributesInput _
derive instance repGenericGetSMSAttributesInput :: Generic GetSMSAttributesInput _
instance showGetSMSAttributesInput :: Show GetSMSAttributesInput where show = genericShow
instance decodeGetSMSAttributesInput :: Decode GetSMSAttributesInput where decode = genericDecode options
instance encodeGetSMSAttributesInput :: Encode GetSMSAttributesInput where encode = genericEncode options

-- | Constructs GetSMSAttributesInput from required parameters
newGetSMSAttributesInput :: GetSMSAttributesInput
newGetSMSAttributesInput  = GetSMSAttributesInput { "attributes": (NullOrUndefined Nothing) }

-- | Constructs GetSMSAttributesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetSMSAttributesInput' :: ( { "attributes" :: NullOrUndefined (ListString) } -> {"attributes" :: NullOrUndefined (ListString) } ) -> GetSMSAttributesInput
newGetSMSAttributesInput'  customize = (GetSMSAttributesInput <<< customize) { "attributes": (NullOrUndefined Nothing) }



-- | <p>The response from the <code>GetSMSAttributes</code> request.</p>
newtype GetSMSAttributesResponse = GetSMSAttributesResponse 
  { "attributes" :: NullOrUndefined (MapStringToString)
  }
derive instance newtypeGetSMSAttributesResponse :: Newtype GetSMSAttributesResponse _
derive instance repGenericGetSMSAttributesResponse :: Generic GetSMSAttributesResponse _
instance showGetSMSAttributesResponse :: Show GetSMSAttributesResponse where show = genericShow
instance decodeGetSMSAttributesResponse :: Decode GetSMSAttributesResponse where decode = genericDecode options
instance encodeGetSMSAttributesResponse :: Encode GetSMSAttributesResponse where encode = genericEncode options

-- | Constructs GetSMSAttributesResponse from required parameters
newGetSMSAttributesResponse :: GetSMSAttributesResponse
newGetSMSAttributesResponse  = GetSMSAttributesResponse { "attributes": (NullOrUndefined Nothing) }

-- | Constructs GetSMSAttributesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetSMSAttributesResponse' :: ( { "attributes" :: NullOrUndefined (MapStringToString) } -> {"attributes" :: NullOrUndefined (MapStringToString) } ) -> GetSMSAttributesResponse
newGetSMSAttributesResponse'  customize = (GetSMSAttributesResponse <<< customize) { "attributes": (NullOrUndefined Nothing) }



-- | <p>Input for GetSubscriptionAttributes.</p>
newtype GetSubscriptionAttributesInput = GetSubscriptionAttributesInput 
  { "SubscriptionArn" :: (SubscriptionARN')
  }
derive instance newtypeGetSubscriptionAttributesInput :: Newtype GetSubscriptionAttributesInput _
derive instance repGenericGetSubscriptionAttributesInput :: Generic GetSubscriptionAttributesInput _
instance showGetSubscriptionAttributesInput :: Show GetSubscriptionAttributesInput where show = genericShow
instance decodeGetSubscriptionAttributesInput :: Decode GetSubscriptionAttributesInput where decode = genericDecode options
instance encodeGetSubscriptionAttributesInput :: Encode GetSubscriptionAttributesInput where encode = genericEncode options

-- | Constructs GetSubscriptionAttributesInput from required parameters
newGetSubscriptionAttributesInput :: SubscriptionARN' -> GetSubscriptionAttributesInput
newGetSubscriptionAttributesInput _SubscriptionArn = GetSubscriptionAttributesInput { "SubscriptionArn": _SubscriptionArn }

-- | Constructs GetSubscriptionAttributesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetSubscriptionAttributesInput' :: SubscriptionARN' -> ( { "SubscriptionArn" :: (SubscriptionARN') } -> {"SubscriptionArn" :: (SubscriptionARN') } ) -> GetSubscriptionAttributesInput
newGetSubscriptionAttributesInput' _SubscriptionArn customize = (GetSubscriptionAttributesInput <<< customize) { "SubscriptionArn": _SubscriptionArn }



-- | <p>Response for GetSubscriptionAttributes action.</p>
newtype GetSubscriptionAttributesResponse = GetSubscriptionAttributesResponse 
  { "Attributes" :: NullOrUndefined (SubscriptionAttributesMap)
  }
derive instance newtypeGetSubscriptionAttributesResponse :: Newtype GetSubscriptionAttributesResponse _
derive instance repGenericGetSubscriptionAttributesResponse :: Generic GetSubscriptionAttributesResponse _
instance showGetSubscriptionAttributesResponse :: Show GetSubscriptionAttributesResponse where show = genericShow
instance decodeGetSubscriptionAttributesResponse :: Decode GetSubscriptionAttributesResponse where decode = genericDecode options
instance encodeGetSubscriptionAttributesResponse :: Encode GetSubscriptionAttributesResponse where encode = genericEncode options

-- | Constructs GetSubscriptionAttributesResponse from required parameters
newGetSubscriptionAttributesResponse :: GetSubscriptionAttributesResponse
newGetSubscriptionAttributesResponse  = GetSubscriptionAttributesResponse { "Attributes": (NullOrUndefined Nothing) }

-- | Constructs GetSubscriptionAttributesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetSubscriptionAttributesResponse' :: ( { "Attributes" :: NullOrUndefined (SubscriptionAttributesMap) } -> {"Attributes" :: NullOrUndefined (SubscriptionAttributesMap) } ) -> GetSubscriptionAttributesResponse
newGetSubscriptionAttributesResponse'  customize = (GetSubscriptionAttributesResponse <<< customize) { "Attributes": (NullOrUndefined Nothing) }



-- | <p>Input for GetTopicAttributes action.</p>
newtype GetTopicAttributesInput = GetTopicAttributesInput 
  { "TopicArn" :: (TopicARN')
  }
derive instance newtypeGetTopicAttributesInput :: Newtype GetTopicAttributesInput _
derive instance repGenericGetTopicAttributesInput :: Generic GetTopicAttributesInput _
instance showGetTopicAttributesInput :: Show GetTopicAttributesInput where show = genericShow
instance decodeGetTopicAttributesInput :: Decode GetTopicAttributesInput where decode = genericDecode options
instance encodeGetTopicAttributesInput :: Encode GetTopicAttributesInput where encode = genericEncode options

-- | Constructs GetTopicAttributesInput from required parameters
newGetTopicAttributesInput :: TopicARN' -> GetTopicAttributesInput
newGetTopicAttributesInput _TopicArn = GetTopicAttributesInput { "TopicArn": _TopicArn }

-- | Constructs GetTopicAttributesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetTopicAttributesInput' :: TopicARN' -> ( { "TopicArn" :: (TopicARN') } -> {"TopicArn" :: (TopicARN') } ) -> GetTopicAttributesInput
newGetTopicAttributesInput' _TopicArn customize = (GetTopicAttributesInput <<< customize) { "TopicArn": _TopicArn }



-- | <p>Response for GetTopicAttributes action.</p>
newtype GetTopicAttributesResponse = GetTopicAttributesResponse 
  { "Attributes" :: NullOrUndefined (TopicAttributesMap)
  }
derive instance newtypeGetTopicAttributesResponse :: Newtype GetTopicAttributesResponse _
derive instance repGenericGetTopicAttributesResponse :: Generic GetTopicAttributesResponse _
instance showGetTopicAttributesResponse :: Show GetTopicAttributesResponse where show = genericShow
instance decodeGetTopicAttributesResponse :: Decode GetTopicAttributesResponse where decode = genericDecode options
instance encodeGetTopicAttributesResponse :: Encode GetTopicAttributesResponse where encode = genericEncode options

-- | Constructs GetTopicAttributesResponse from required parameters
newGetTopicAttributesResponse :: GetTopicAttributesResponse
newGetTopicAttributesResponse  = GetTopicAttributesResponse { "Attributes": (NullOrUndefined Nothing) }

-- | Constructs GetTopicAttributesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetTopicAttributesResponse' :: ( { "Attributes" :: NullOrUndefined (TopicAttributesMap) } -> {"Attributes" :: NullOrUndefined (TopicAttributesMap) } ) -> GetTopicAttributesResponse
newGetTopicAttributesResponse'  customize = (GetTopicAttributesResponse <<< customize) { "Attributes": (NullOrUndefined Nothing) }



-- | <p>Indicates an internal service error.</p>
newtype InternalErrorException = InternalErrorException 
  { "message" :: NullOrUndefined (String)
  }
derive instance newtypeInternalErrorException :: Newtype InternalErrorException _
derive instance repGenericInternalErrorException :: Generic InternalErrorException _
instance showInternalErrorException :: Show InternalErrorException where show = genericShow
instance decodeInternalErrorException :: Decode InternalErrorException where decode = genericDecode options
instance encodeInternalErrorException :: Encode InternalErrorException where encode = genericEncode options

-- | Constructs InternalErrorException from required parameters
newInternalErrorException :: InternalErrorException
newInternalErrorException  = InternalErrorException { "message": (NullOrUndefined Nothing) }

-- | Constructs InternalErrorException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalErrorException' :: ( { "message" :: NullOrUndefined (String) } -> {"message" :: NullOrUndefined (String) } ) -> InternalErrorException
newInternalErrorException'  customize = (InternalErrorException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>Indicates that a request parameter does not comply with the associated constraints.</p>
newtype InvalidParameterException = InvalidParameterException 
  { "message" :: NullOrUndefined (String)
  }
derive instance newtypeInvalidParameterException :: Newtype InvalidParameterException _
derive instance repGenericInvalidParameterException :: Generic InvalidParameterException _
instance showInvalidParameterException :: Show InvalidParameterException where show = genericShow
instance decodeInvalidParameterException :: Decode InvalidParameterException where decode = genericDecode options
instance encodeInvalidParameterException :: Encode InvalidParameterException where encode = genericEncode options

-- | Constructs InvalidParameterException from required parameters
newInvalidParameterException :: InvalidParameterException
newInvalidParameterException  = InvalidParameterException { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidParameterException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidParameterException' :: ( { "message" :: NullOrUndefined (String) } -> {"message" :: NullOrUndefined (String) } ) -> InvalidParameterException
newInvalidParameterException'  customize = (InvalidParameterException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>Indicates that a request parameter does not comply with the associated constraints.</p>
newtype InvalidParameterValueException = InvalidParameterValueException 
  { "message" :: NullOrUndefined (String)
  }
derive instance newtypeInvalidParameterValueException :: Newtype InvalidParameterValueException _
derive instance repGenericInvalidParameterValueException :: Generic InvalidParameterValueException _
instance showInvalidParameterValueException :: Show InvalidParameterValueException where show = genericShow
instance decodeInvalidParameterValueException :: Decode InvalidParameterValueException where decode = genericDecode options
instance encodeInvalidParameterValueException :: Encode InvalidParameterValueException where encode = genericEncode options

-- | Constructs InvalidParameterValueException from required parameters
newInvalidParameterValueException :: InvalidParameterValueException
newInvalidParameterValueException  = InvalidParameterValueException { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidParameterValueException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidParameterValueException' :: ( { "message" :: NullOrUndefined (String) } -> {"message" :: NullOrUndefined (String) } ) -> InvalidParameterValueException
newInvalidParameterValueException'  customize = (InvalidParameterValueException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>Input for ListEndpointsByPlatformApplication action.</p>
newtype ListEndpointsByPlatformApplicationInput = ListEndpointsByPlatformApplicationInput 
  { "PlatformApplicationArn" :: (String)
  , "NextToken" :: NullOrUndefined (String)
  }
derive instance newtypeListEndpointsByPlatformApplicationInput :: Newtype ListEndpointsByPlatformApplicationInput _
derive instance repGenericListEndpointsByPlatformApplicationInput :: Generic ListEndpointsByPlatformApplicationInput _
instance showListEndpointsByPlatformApplicationInput :: Show ListEndpointsByPlatformApplicationInput where show = genericShow
instance decodeListEndpointsByPlatformApplicationInput :: Decode ListEndpointsByPlatformApplicationInput where decode = genericDecode options
instance encodeListEndpointsByPlatformApplicationInput :: Encode ListEndpointsByPlatformApplicationInput where encode = genericEncode options

-- | Constructs ListEndpointsByPlatformApplicationInput from required parameters
newListEndpointsByPlatformApplicationInput :: String -> ListEndpointsByPlatformApplicationInput
newListEndpointsByPlatformApplicationInput _PlatformApplicationArn = ListEndpointsByPlatformApplicationInput { "PlatformApplicationArn": _PlatformApplicationArn, "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListEndpointsByPlatformApplicationInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListEndpointsByPlatformApplicationInput' :: String -> ( { "PlatformApplicationArn" :: (String) , "NextToken" :: NullOrUndefined (String) } -> {"PlatformApplicationArn" :: (String) , "NextToken" :: NullOrUndefined (String) } ) -> ListEndpointsByPlatformApplicationInput
newListEndpointsByPlatformApplicationInput' _PlatformApplicationArn customize = (ListEndpointsByPlatformApplicationInput <<< customize) { "PlatformApplicationArn": _PlatformApplicationArn, "NextToken": (NullOrUndefined Nothing) }



-- | <p>Response for ListEndpointsByPlatformApplication action.</p>
newtype ListEndpointsByPlatformApplicationResponse = ListEndpointsByPlatformApplicationResponse 
  { "Endpoints" :: NullOrUndefined (ListOfEndpoints)
  , "NextToken" :: NullOrUndefined (String)
  }
derive instance newtypeListEndpointsByPlatformApplicationResponse :: Newtype ListEndpointsByPlatformApplicationResponse _
derive instance repGenericListEndpointsByPlatformApplicationResponse :: Generic ListEndpointsByPlatformApplicationResponse _
instance showListEndpointsByPlatformApplicationResponse :: Show ListEndpointsByPlatformApplicationResponse where show = genericShow
instance decodeListEndpointsByPlatformApplicationResponse :: Decode ListEndpointsByPlatformApplicationResponse where decode = genericDecode options
instance encodeListEndpointsByPlatformApplicationResponse :: Encode ListEndpointsByPlatformApplicationResponse where encode = genericEncode options

-- | Constructs ListEndpointsByPlatformApplicationResponse from required parameters
newListEndpointsByPlatformApplicationResponse :: ListEndpointsByPlatformApplicationResponse
newListEndpointsByPlatformApplicationResponse  = ListEndpointsByPlatformApplicationResponse { "Endpoints": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListEndpointsByPlatformApplicationResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListEndpointsByPlatformApplicationResponse' :: ( { "Endpoints" :: NullOrUndefined (ListOfEndpoints) , "NextToken" :: NullOrUndefined (String) } -> {"Endpoints" :: NullOrUndefined (ListOfEndpoints) , "NextToken" :: NullOrUndefined (String) } ) -> ListEndpointsByPlatformApplicationResponse
newListEndpointsByPlatformApplicationResponse'  customize = (ListEndpointsByPlatformApplicationResponse <<< customize) { "Endpoints": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListOfEndpoints = ListOfEndpoints (Array Endpoint)
derive instance newtypeListOfEndpoints :: Newtype ListOfEndpoints _
derive instance repGenericListOfEndpoints :: Generic ListOfEndpoints _
instance showListOfEndpoints :: Show ListOfEndpoints where show = genericShow
instance decodeListOfEndpoints :: Decode ListOfEndpoints where decode = genericDecode options
instance encodeListOfEndpoints :: Encode ListOfEndpoints where encode = genericEncode options



newtype ListOfPlatformApplications = ListOfPlatformApplications (Array PlatformApplication)
derive instance newtypeListOfPlatformApplications :: Newtype ListOfPlatformApplications _
derive instance repGenericListOfPlatformApplications :: Generic ListOfPlatformApplications _
instance showListOfPlatformApplications :: Show ListOfPlatformApplications where show = genericShow
instance decodeListOfPlatformApplications :: Decode ListOfPlatformApplications where decode = genericDecode options
instance encodeListOfPlatformApplications :: Encode ListOfPlatformApplications where encode = genericEncode options



-- | <p>The input for the <code>ListPhoneNumbersOptedOut</code> action.</p>
newtype ListPhoneNumbersOptedOutInput = ListPhoneNumbersOptedOutInput 
  { "nextToken" :: NullOrUndefined (String)
  }
derive instance newtypeListPhoneNumbersOptedOutInput :: Newtype ListPhoneNumbersOptedOutInput _
derive instance repGenericListPhoneNumbersOptedOutInput :: Generic ListPhoneNumbersOptedOutInput _
instance showListPhoneNumbersOptedOutInput :: Show ListPhoneNumbersOptedOutInput where show = genericShow
instance decodeListPhoneNumbersOptedOutInput :: Decode ListPhoneNumbersOptedOutInput where decode = genericDecode options
instance encodeListPhoneNumbersOptedOutInput :: Encode ListPhoneNumbersOptedOutInput where encode = genericEncode options

-- | Constructs ListPhoneNumbersOptedOutInput from required parameters
newListPhoneNumbersOptedOutInput :: ListPhoneNumbersOptedOutInput
newListPhoneNumbersOptedOutInput  = ListPhoneNumbersOptedOutInput { "nextToken": (NullOrUndefined Nothing) }

-- | Constructs ListPhoneNumbersOptedOutInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPhoneNumbersOptedOutInput' :: ( { "nextToken" :: NullOrUndefined (String) } -> {"nextToken" :: NullOrUndefined (String) } ) -> ListPhoneNumbersOptedOutInput
newListPhoneNumbersOptedOutInput'  customize = (ListPhoneNumbersOptedOutInput <<< customize) { "nextToken": (NullOrUndefined Nothing) }



-- | <p>The response from the <code>ListPhoneNumbersOptedOut</code> action.</p>
newtype ListPhoneNumbersOptedOutResponse = ListPhoneNumbersOptedOutResponse 
  { "phoneNumbers" :: NullOrUndefined (PhoneNumberList)
  , "nextToken" :: NullOrUndefined (String)
  }
derive instance newtypeListPhoneNumbersOptedOutResponse :: Newtype ListPhoneNumbersOptedOutResponse _
derive instance repGenericListPhoneNumbersOptedOutResponse :: Generic ListPhoneNumbersOptedOutResponse _
instance showListPhoneNumbersOptedOutResponse :: Show ListPhoneNumbersOptedOutResponse where show = genericShow
instance decodeListPhoneNumbersOptedOutResponse :: Decode ListPhoneNumbersOptedOutResponse where decode = genericDecode options
instance encodeListPhoneNumbersOptedOutResponse :: Encode ListPhoneNumbersOptedOutResponse where encode = genericEncode options

-- | Constructs ListPhoneNumbersOptedOutResponse from required parameters
newListPhoneNumbersOptedOutResponse :: ListPhoneNumbersOptedOutResponse
newListPhoneNumbersOptedOutResponse  = ListPhoneNumbersOptedOutResponse { "nextToken": (NullOrUndefined Nothing), "phoneNumbers": (NullOrUndefined Nothing) }

-- | Constructs ListPhoneNumbersOptedOutResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPhoneNumbersOptedOutResponse' :: ( { "phoneNumbers" :: NullOrUndefined (PhoneNumberList) , "nextToken" :: NullOrUndefined (String) } -> {"phoneNumbers" :: NullOrUndefined (PhoneNumberList) , "nextToken" :: NullOrUndefined (String) } ) -> ListPhoneNumbersOptedOutResponse
newListPhoneNumbersOptedOutResponse'  customize = (ListPhoneNumbersOptedOutResponse <<< customize) { "nextToken": (NullOrUndefined Nothing), "phoneNumbers": (NullOrUndefined Nothing) }



-- | <p>Input for ListPlatformApplications action.</p>
newtype ListPlatformApplicationsInput = ListPlatformApplicationsInput 
  { "NextToken" :: NullOrUndefined (String)
  }
derive instance newtypeListPlatformApplicationsInput :: Newtype ListPlatformApplicationsInput _
derive instance repGenericListPlatformApplicationsInput :: Generic ListPlatformApplicationsInput _
instance showListPlatformApplicationsInput :: Show ListPlatformApplicationsInput where show = genericShow
instance decodeListPlatformApplicationsInput :: Decode ListPlatformApplicationsInput where decode = genericDecode options
instance encodeListPlatformApplicationsInput :: Encode ListPlatformApplicationsInput where encode = genericEncode options

-- | Constructs ListPlatformApplicationsInput from required parameters
newListPlatformApplicationsInput :: ListPlatformApplicationsInput
newListPlatformApplicationsInput  = ListPlatformApplicationsInput { "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListPlatformApplicationsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPlatformApplicationsInput' :: ( { "NextToken" :: NullOrUndefined (String) } -> {"NextToken" :: NullOrUndefined (String) } ) -> ListPlatformApplicationsInput
newListPlatformApplicationsInput'  customize = (ListPlatformApplicationsInput <<< customize) { "NextToken": (NullOrUndefined Nothing) }



-- | <p>Response for ListPlatformApplications action.</p>
newtype ListPlatformApplicationsResponse = ListPlatformApplicationsResponse 
  { "PlatformApplications" :: NullOrUndefined (ListOfPlatformApplications)
  , "NextToken" :: NullOrUndefined (String)
  }
derive instance newtypeListPlatformApplicationsResponse :: Newtype ListPlatformApplicationsResponse _
derive instance repGenericListPlatformApplicationsResponse :: Generic ListPlatformApplicationsResponse _
instance showListPlatformApplicationsResponse :: Show ListPlatformApplicationsResponse where show = genericShow
instance decodeListPlatformApplicationsResponse :: Decode ListPlatformApplicationsResponse where decode = genericDecode options
instance encodeListPlatformApplicationsResponse :: Encode ListPlatformApplicationsResponse where encode = genericEncode options

-- | Constructs ListPlatformApplicationsResponse from required parameters
newListPlatformApplicationsResponse :: ListPlatformApplicationsResponse
newListPlatformApplicationsResponse  = ListPlatformApplicationsResponse { "NextToken": (NullOrUndefined Nothing), "PlatformApplications": (NullOrUndefined Nothing) }

-- | Constructs ListPlatformApplicationsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPlatformApplicationsResponse' :: ( { "PlatformApplications" :: NullOrUndefined (ListOfPlatformApplications) , "NextToken" :: NullOrUndefined (String) } -> {"PlatformApplications" :: NullOrUndefined (ListOfPlatformApplications) , "NextToken" :: NullOrUndefined (String) } ) -> ListPlatformApplicationsResponse
newListPlatformApplicationsResponse'  customize = (ListPlatformApplicationsResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "PlatformApplications": (NullOrUndefined Nothing) }



newtype ListString = ListString (Array String)
derive instance newtypeListString :: Newtype ListString _
derive instance repGenericListString :: Generic ListString _
instance showListString :: Show ListString where show = genericShow
instance decodeListString :: Decode ListString where decode = genericDecode options
instance encodeListString :: Encode ListString where encode = genericEncode options



-- | <p>Input for ListSubscriptionsByTopic action.</p>
newtype ListSubscriptionsByTopicInput = ListSubscriptionsByTopicInput 
  { "TopicArn" :: (TopicARN')
  , "NextToken" :: NullOrUndefined (NextToken')
  }
derive instance newtypeListSubscriptionsByTopicInput :: Newtype ListSubscriptionsByTopicInput _
derive instance repGenericListSubscriptionsByTopicInput :: Generic ListSubscriptionsByTopicInput _
instance showListSubscriptionsByTopicInput :: Show ListSubscriptionsByTopicInput where show = genericShow
instance decodeListSubscriptionsByTopicInput :: Decode ListSubscriptionsByTopicInput where decode = genericDecode options
instance encodeListSubscriptionsByTopicInput :: Encode ListSubscriptionsByTopicInput where encode = genericEncode options

-- | Constructs ListSubscriptionsByTopicInput from required parameters
newListSubscriptionsByTopicInput :: TopicARN' -> ListSubscriptionsByTopicInput
newListSubscriptionsByTopicInput _TopicArn = ListSubscriptionsByTopicInput { "TopicArn": _TopicArn, "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListSubscriptionsByTopicInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListSubscriptionsByTopicInput' :: TopicARN' -> ( { "TopicArn" :: (TopicARN') , "NextToken" :: NullOrUndefined (NextToken') } -> {"TopicArn" :: (TopicARN') , "NextToken" :: NullOrUndefined (NextToken') } ) -> ListSubscriptionsByTopicInput
newListSubscriptionsByTopicInput' _TopicArn customize = (ListSubscriptionsByTopicInput <<< customize) { "TopicArn": _TopicArn, "NextToken": (NullOrUndefined Nothing) }



-- | <p>Response for ListSubscriptionsByTopic action.</p>
newtype ListSubscriptionsByTopicResponse = ListSubscriptionsByTopicResponse 
  { "Subscriptions" :: NullOrUndefined (SubscriptionsList)
  , "NextToken" :: NullOrUndefined (NextToken')
  }
derive instance newtypeListSubscriptionsByTopicResponse :: Newtype ListSubscriptionsByTopicResponse _
derive instance repGenericListSubscriptionsByTopicResponse :: Generic ListSubscriptionsByTopicResponse _
instance showListSubscriptionsByTopicResponse :: Show ListSubscriptionsByTopicResponse where show = genericShow
instance decodeListSubscriptionsByTopicResponse :: Decode ListSubscriptionsByTopicResponse where decode = genericDecode options
instance encodeListSubscriptionsByTopicResponse :: Encode ListSubscriptionsByTopicResponse where encode = genericEncode options

-- | Constructs ListSubscriptionsByTopicResponse from required parameters
newListSubscriptionsByTopicResponse :: ListSubscriptionsByTopicResponse
newListSubscriptionsByTopicResponse  = ListSubscriptionsByTopicResponse { "NextToken": (NullOrUndefined Nothing), "Subscriptions": (NullOrUndefined Nothing) }

-- | Constructs ListSubscriptionsByTopicResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListSubscriptionsByTopicResponse' :: ( { "Subscriptions" :: NullOrUndefined (SubscriptionsList) , "NextToken" :: NullOrUndefined (NextToken') } -> {"Subscriptions" :: NullOrUndefined (SubscriptionsList) , "NextToken" :: NullOrUndefined (NextToken') } ) -> ListSubscriptionsByTopicResponse
newListSubscriptionsByTopicResponse'  customize = (ListSubscriptionsByTopicResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "Subscriptions": (NullOrUndefined Nothing) }



-- | <p>Input for ListSubscriptions action.</p>
newtype ListSubscriptionsInput = ListSubscriptionsInput 
  { "NextToken" :: NullOrUndefined (NextToken')
  }
derive instance newtypeListSubscriptionsInput :: Newtype ListSubscriptionsInput _
derive instance repGenericListSubscriptionsInput :: Generic ListSubscriptionsInput _
instance showListSubscriptionsInput :: Show ListSubscriptionsInput where show = genericShow
instance decodeListSubscriptionsInput :: Decode ListSubscriptionsInput where decode = genericDecode options
instance encodeListSubscriptionsInput :: Encode ListSubscriptionsInput where encode = genericEncode options

-- | Constructs ListSubscriptionsInput from required parameters
newListSubscriptionsInput :: ListSubscriptionsInput
newListSubscriptionsInput  = ListSubscriptionsInput { "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListSubscriptionsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListSubscriptionsInput' :: ( { "NextToken" :: NullOrUndefined (NextToken') } -> {"NextToken" :: NullOrUndefined (NextToken') } ) -> ListSubscriptionsInput
newListSubscriptionsInput'  customize = (ListSubscriptionsInput <<< customize) { "NextToken": (NullOrUndefined Nothing) }



-- | <p>Response for ListSubscriptions action</p>
newtype ListSubscriptionsResponse = ListSubscriptionsResponse 
  { "Subscriptions" :: NullOrUndefined (SubscriptionsList)
  , "NextToken" :: NullOrUndefined (NextToken')
  }
derive instance newtypeListSubscriptionsResponse :: Newtype ListSubscriptionsResponse _
derive instance repGenericListSubscriptionsResponse :: Generic ListSubscriptionsResponse _
instance showListSubscriptionsResponse :: Show ListSubscriptionsResponse where show = genericShow
instance decodeListSubscriptionsResponse :: Decode ListSubscriptionsResponse where decode = genericDecode options
instance encodeListSubscriptionsResponse :: Encode ListSubscriptionsResponse where encode = genericEncode options

-- | Constructs ListSubscriptionsResponse from required parameters
newListSubscriptionsResponse :: ListSubscriptionsResponse
newListSubscriptionsResponse  = ListSubscriptionsResponse { "NextToken": (NullOrUndefined Nothing), "Subscriptions": (NullOrUndefined Nothing) }

-- | Constructs ListSubscriptionsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListSubscriptionsResponse' :: ( { "Subscriptions" :: NullOrUndefined (SubscriptionsList) , "NextToken" :: NullOrUndefined (NextToken') } -> {"Subscriptions" :: NullOrUndefined (SubscriptionsList) , "NextToken" :: NullOrUndefined (NextToken') } ) -> ListSubscriptionsResponse
newListSubscriptionsResponse'  customize = (ListSubscriptionsResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "Subscriptions": (NullOrUndefined Nothing) }



newtype ListTopicsInput = ListTopicsInput 
  { "NextToken" :: NullOrUndefined (NextToken')
  }
derive instance newtypeListTopicsInput :: Newtype ListTopicsInput _
derive instance repGenericListTopicsInput :: Generic ListTopicsInput _
instance showListTopicsInput :: Show ListTopicsInput where show = genericShow
instance decodeListTopicsInput :: Decode ListTopicsInput where decode = genericDecode options
instance encodeListTopicsInput :: Encode ListTopicsInput where encode = genericEncode options

-- | Constructs ListTopicsInput from required parameters
newListTopicsInput :: ListTopicsInput
newListTopicsInput  = ListTopicsInput { "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListTopicsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTopicsInput' :: ( { "NextToken" :: NullOrUndefined (NextToken') } -> {"NextToken" :: NullOrUndefined (NextToken') } ) -> ListTopicsInput
newListTopicsInput'  customize = (ListTopicsInput <<< customize) { "NextToken": (NullOrUndefined Nothing) }



-- | <p>Response for ListTopics action.</p>
newtype ListTopicsResponse = ListTopicsResponse 
  { "Topics" :: NullOrUndefined (TopicsList)
  , "NextToken" :: NullOrUndefined (NextToken')
  }
derive instance newtypeListTopicsResponse :: Newtype ListTopicsResponse _
derive instance repGenericListTopicsResponse :: Generic ListTopicsResponse _
instance showListTopicsResponse :: Show ListTopicsResponse where show = genericShow
instance decodeListTopicsResponse :: Decode ListTopicsResponse where decode = genericDecode options
instance encodeListTopicsResponse :: Encode ListTopicsResponse where encode = genericEncode options

-- | Constructs ListTopicsResponse from required parameters
newListTopicsResponse :: ListTopicsResponse
newListTopicsResponse  = ListTopicsResponse { "NextToken": (NullOrUndefined Nothing), "Topics": (NullOrUndefined Nothing) }

-- | Constructs ListTopicsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTopicsResponse' :: ( { "Topics" :: NullOrUndefined (TopicsList) , "NextToken" :: NullOrUndefined (NextToken') } -> {"Topics" :: NullOrUndefined (TopicsList) , "NextToken" :: NullOrUndefined (NextToken') } ) -> ListTopicsResponse
newListTopicsResponse'  customize = (ListTopicsResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "Topics": (NullOrUndefined Nothing) }



newtype MapStringToString = MapStringToString (StrMap.StrMap String)
derive instance newtypeMapStringToString :: Newtype MapStringToString _
derive instance repGenericMapStringToString :: Generic MapStringToString _
instance showMapStringToString :: Show MapStringToString where show = genericShow
instance decodeMapStringToString :: Decode MapStringToString where decode = genericDecode options
instance encodeMapStringToString :: Encode MapStringToString where encode = genericEncode options



newtype MessageAttributeMap = MessageAttributeMap (StrMap.StrMap MessageAttributeValue)
derive instance newtypeMessageAttributeMap :: Newtype MessageAttributeMap _
derive instance repGenericMessageAttributeMap :: Generic MessageAttributeMap _
instance showMessageAttributeMap :: Show MessageAttributeMap where show = genericShow
instance decodeMessageAttributeMap :: Decode MessageAttributeMap where decode = genericDecode options
instance encodeMessageAttributeMap :: Encode MessageAttributeMap where encode = genericEncode options



-- | <p>The user-specified message attribute value. For string data types, the value attribute has the same restrictions on the content as the message body. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/api/API_Publish.html">Publish</a>.</p> <p>Name, type, and value must not be empty or null. In addition, the message body should not be empty or null. All parts of the message attribute, including name, type, and value, are included in the message size restriction, which is currently 256 KB (262,144 bytes). For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMessageAttributes.html">Using Amazon SNS Message Attributes</a>.</p>
newtype MessageAttributeValue = MessageAttributeValue 
  { "DataType" :: (String)
  , "StringValue" :: NullOrUndefined (String)
  , "BinaryValue" :: NullOrUndefined (Binary)
  }
derive instance newtypeMessageAttributeValue :: Newtype MessageAttributeValue _
derive instance repGenericMessageAttributeValue :: Generic MessageAttributeValue _
instance showMessageAttributeValue :: Show MessageAttributeValue where show = genericShow
instance decodeMessageAttributeValue :: Decode MessageAttributeValue where decode = genericDecode options
instance encodeMessageAttributeValue :: Encode MessageAttributeValue where encode = genericEncode options

-- | Constructs MessageAttributeValue from required parameters
newMessageAttributeValue :: String -> MessageAttributeValue
newMessageAttributeValue _DataType = MessageAttributeValue { "DataType": _DataType, "BinaryValue": (NullOrUndefined Nothing), "StringValue": (NullOrUndefined Nothing) }

-- | Constructs MessageAttributeValue's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMessageAttributeValue' :: String -> ( { "DataType" :: (String) , "StringValue" :: NullOrUndefined (String) , "BinaryValue" :: NullOrUndefined (Binary) } -> {"DataType" :: (String) , "StringValue" :: NullOrUndefined (String) , "BinaryValue" :: NullOrUndefined (Binary) } ) -> MessageAttributeValue
newMessageAttributeValue' _DataType customize = (MessageAttributeValue <<< customize) { "DataType": _DataType, "BinaryValue": (NullOrUndefined Nothing), "StringValue": (NullOrUndefined Nothing) }



-- | <p>Indicates that the requested resource does not exist.</p>
newtype NotFoundException = NotFoundException 
  { "message" :: NullOrUndefined (String)
  }
derive instance newtypeNotFoundException :: Newtype NotFoundException _
derive instance repGenericNotFoundException :: Generic NotFoundException _
instance showNotFoundException :: Show NotFoundException where show = genericShow
instance decodeNotFoundException :: Decode NotFoundException where decode = genericDecode options
instance encodeNotFoundException :: Encode NotFoundException where encode = genericEncode options

-- | Constructs NotFoundException from required parameters
newNotFoundException :: NotFoundException
newNotFoundException  = NotFoundException { "message": (NullOrUndefined Nothing) }

-- | Constructs NotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotFoundException' :: ( { "message" :: NullOrUndefined (String) } -> {"message" :: NullOrUndefined (String) } ) -> NotFoundException
newNotFoundException'  customize = (NotFoundException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>Input for the OptInPhoneNumber action.</p>
newtype OptInPhoneNumberInput = OptInPhoneNumberInput 
  { "phoneNumber" :: (PhoneNumber)
  }
derive instance newtypeOptInPhoneNumberInput :: Newtype OptInPhoneNumberInput _
derive instance repGenericOptInPhoneNumberInput :: Generic OptInPhoneNumberInput _
instance showOptInPhoneNumberInput :: Show OptInPhoneNumberInput where show = genericShow
instance decodeOptInPhoneNumberInput :: Decode OptInPhoneNumberInput where decode = genericDecode options
instance encodeOptInPhoneNumberInput :: Encode OptInPhoneNumberInput where encode = genericEncode options

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
instance showOptInPhoneNumberResponse :: Show OptInPhoneNumberResponse where show = genericShow
instance decodeOptInPhoneNumberResponse :: Decode OptInPhoneNumberResponse where decode = genericDecode options
instance encodeOptInPhoneNumberResponse :: Encode OptInPhoneNumberResponse where encode = genericEncode options



newtype PhoneNumber = PhoneNumber String
derive instance newtypePhoneNumber :: Newtype PhoneNumber _
derive instance repGenericPhoneNumber :: Generic PhoneNumber _
instance showPhoneNumber :: Show PhoneNumber where show = genericShow
instance decodePhoneNumber :: Decode PhoneNumber where decode = genericDecode options
instance encodePhoneNumber :: Encode PhoneNumber where encode = genericEncode options



newtype PhoneNumberList = PhoneNumberList (Array PhoneNumber)
derive instance newtypePhoneNumberList :: Newtype PhoneNumberList _
derive instance repGenericPhoneNumberList :: Generic PhoneNumberList _
instance showPhoneNumberList :: Show PhoneNumberList where show = genericShow
instance decodePhoneNumberList :: Decode PhoneNumberList where decode = genericDecode options
instance encodePhoneNumberList :: Encode PhoneNumberList where encode = genericEncode options



-- | <p>Platform application object.</p>
newtype PlatformApplication = PlatformApplication 
  { "PlatformApplicationArn" :: NullOrUndefined (String)
  , "Attributes" :: NullOrUndefined (MapStringToString)
  }
derive instance newtypePlatformApplication :: Newtype PlatformApplication _
derive instance repGenericPlatformApplication :: Generic PlatformApplication _
instance showPlatformApplication :: Show PlatformApplication where show = genericShow
instance decodePlatformApplication :: Decode PlatformApplication where decode = genericDecode options
instance encodePlatformApplication :: Encode PlatformApplication where encode = genericEncode options

-- | Constructs PlatformApplication from required parameters
newPlatformApplication :: PlatformApplication
newPlatformApplication  = PlatformApplication { "Attributes": (NullOrUndefined Nothing), "PlatformApplicationArn": (NullOrUndefined Nothing) }

-- | Constructs PlatformApplication's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPlatformApplication' :: ( { "PlatformApplicationArn" :: NullOrUndefined (String) , "Attributes" :: NullOrUndefined (MapStringToString) } -> {"PlatformApplicationArn" :: NullOrUndefined (String) , "Attributes" :: NullOrUndefined (MapStringToString) } ) -> PlatformApplication
newPlatformApplication'  customize = (PlatformApplication <<< customize) { "Attributes": (NullOrUndefined Nothing), "PlatformApplicationArn": (NullOrUndefined Nothing) }



-- | <p>Exception error indicating platform application disabled.</p>
newtype PlatformApplicationDisabledException = PlatformApplicationDisabledException 
  { "message" :: NullOrUndefined (String)
  }
derive instance newtypePlatformApplicationDisabledException :: Newtype PlatformApplicationDisabledException _
derive instance repGenericPlatformApplicationDisabledException :: Generic PlatformApplicationDisabledException _
instance showPlatformApplicationDisabledException :: Show PlatformApplicationDisabledException where show = genericShow
instance decodePlatformApplicationDisabledException :: Decode PlatformApplicationDisabledException where decode = genericDecode options
instance encodePlatformApplicationDisabledException :: Encode PlatformApplicationDisabledException where encode = genericEncode options

-- | Constructs PlatformApplicationDisabledException from required parameters
newPlatformApplicationDisabledException :: PlatformApplicationDisabledException
newPlatformApplicationDisabledException  = PlatformApplicationDisabledException { "message": (NullOrUndefined Nothing) }

-- | Constructs PlatformApplicationDisabledException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPlatformApplicationDisabledException' :: ( { "message" :: NullOrUndefined (String) } -> {"message" :: NullOrUndefined (String) } ) -> PlatformApplicationDisabledException
newPlatformApplicationDisabledException'  customize = (PlatformApplicationDisabledException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>Input for Publish action.</p>
newtype PublishInput = PublishInput 
  { "TopicArn" :: NullOrUndefined (TopicARN')
  , "TargetArn" :: NullOrUndefined (String)
  , "PhoneNumber" :: NullOrUndefined (String)
  , "Message" :: (Message')
  , "Subject" :: NullOrUndefined (Subject')
  , "MessageStructure" :: NullOrUndefined (MessageStructure')
  , "MessageAttributes" :: NullOrUndefined (MessageAttributeMap)
  }
derive instance newtypePublishInput :: Newtype PublishInput _
derive instance repGenericPublishInput :: Generic PublishInput _
instance showPublishInput :: Show PublishInput where show = genericShow
instance decodePublishInput :: Decode PublishInput where decode = genericDecode options
instance encodePublishInput :: Encode PublishInput where encode = genericEncode options

-- | Constructs PublishInput from required parameters
newPublishInput :: Message' -> PublishInput
newPublishInput _Message = PublishInput { "Message": _Message, "MessageAttributes": (NullOrUndefined Nothing), "MessageStructure": (NullOrUndefined Nothing), "PhoneNumber": (NullOrUndefined Nothing), "Subject": (NullOrUndefined Nothing), "TargetArn": (NullOrUndefined Nothing), "TopicArn": (NullOrUndefined Nothing) }

-- | Constructs PublishInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPublishInput' :: Message' -> ( { "TopicArn" :: NullOrUndefined (TopicARN') , "TargetArn" :: NullOrUndefined (String) , "PhoneNumber" :: NullOrUndefined (String) , "Message" :: (Message') , "Subject" :: NullOrUndefined (Subject') , "MessageStructure" :: NullOrUndefined (MessageStructure') , "MessageAttributes" :: NullOrUndefined (MessageAttributeMap) } -> {"TopicArn" :: NullOrUndefined (TopicARN') , "TargetArn" :: NullOrUndefined (String) , "PhoneNumber" :: NullOrUndefined (String) , "Message" :: (Message') , "Subject" :: NullOrUndefined (Subject') , "MessageStructure" :: NullOrUndefined (MessageStructure') , "MessageAttributes" :: NullOrUndefined (MessageAttributeMap) } ) -> PublishInput
newPublishInput' _Message customize = (PublishInput <<< customize) { "Message": _Message, "MessageAttributes": (NullOrUndefined Nothing), "MessageStructure": (NullOrUndefined Nothing), "PhoneNumber": (NullOrUndefined Nothing), "Subject": (NullOrUndefined Nothing), "TargetArn": (NullOrUndefined Nothing), "TopicArn": (NullOrUndefined Nothing) }



-- | <p>Response for Publish action.</p>
newtype PublishResponse = PublishResponse 
  { "MessageId" :: NullOrUndefined (MessageId')
  }
derive instance newtypePublishResponse :: Newtype PublishResponse _
derive instance repGenericPublishResponse :: Generic PublishResponse _
instance showPublishResponse :: Show PublishResponse where show = genericShow
instance decodePublishResponse :: Decode PublishResponse where decode = genericDecode options
instance encodePublishResponse :: Encode PublishResponse where encode = genericEncode options

-- | Constructs PublishResponse from required parameters
newPublishResponse :: PublishResponse
newPublishResponse  = PublishResponse { "MessageId": (NullOrUndefined Nothing) }

-- | Constructs PublishResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPublishResponse' :: ( { "MessageId" :: NullOrUndefined (MessageId') } -> {"MessageId" :: NullOrUndefined (MessageId') } ) -> PublishResponse
newPublishResponse'  customize = (PublishResponse <<< customize) { "MessageId": (NullOrUndefined Nothing) }



-- | <p>Input for RemovePermission action.</p>
newtype RemovePermissionInput = RemovePermissionInput 
  { "TopicArn" :: (TopicARN')
  , "Label" :: (Label')
  }
derive instance newtypeRemovePermissionInput :: Newtype RemovePermissionInput _
derive instance repGenericRemovePermissionInput :: Generic RemovePermissionInput _
instance showRemovePermissionInput :: Show RemovePermissionInput where show = genericShow
instance decodeRemovePermissionInput :: Decode RemovePermissionInput where decode = genericDecode options
instance encodeRemovePermissionInput :: Encode RemovePermissionInput where encode = genericEncode options

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
instance showSetEndpointAttributesInput :: Show SetEndpointAttributesInput where show = genericShow
instance decodeSetEndpointAttributesInput :: Decode SetEndpointAttributesInput where decode = genericDecode options
instance encodeSetEndpointAttributesInput :: Encode SetEndpointAttributesInput where encode = genericEncode options

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
instance showSetPlatformApplicationAttributesInput :: Show SetPlatformApplicationAttributesInput where show = genericShow
instance decodeSetPlatformApplicationAttributesInput :: Decode SetPlatformApplicationAttributesInput where decode = genericDecode options
instance encodeSetPlatformApplicationAttributesInput :: Encode SetPlatformApplicationAttributesInput where encode = genericEncode options

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
instance showSetSMSAttributesInput :: Show SetSMSAttributesInput where show = genericShow
instance decodeSetSMSAttributesInput :: Decode SetSMSAttributesInput where decode = genericDecode options
instance encodeSetSMSAttributesInput :: Encode SetSMSAttributesInput where encode = genericEncode options

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
instance showSetSMSAttributesResponse :: Show SetSMSAttributesResponse where show = genericShow
instance decodeSetSMSAttributesResponse :: Decode SetSMSAttributesResponse where decode = genericDecode options
instance encodeSetSMSAttributesResponse :: Encode SetSMSAttributesResponse where encode = genericEncode options



-- | <p>Input for SetSubscriptionAttributes action.</p>
newtype SetSubscriptionAttributesInput = SetSubscriptionAttributesInput 
  { "SubscriptionArn" :: (SubscriptionARN')
  , "AttributeName" :: (AttributeName')
  , "AttributeValue" :: NullOrUndefined (AttributeValue')
  }
derive instance newtypeSetSubscriptionAttributesInput :: Newtype SetSubscriptionAttributesInput _
derive instance repGenericSetSubscriptionAttributesInput :: Generic SetSubscriptionAttributesInput _
instance showSetSubscriptionAttributesInput :: Show SetSubscriptionAttributesInput where show = genericShow
instance decodeSetSubscriptionAttributesInput :: Decode SetSubscriptionAttributesInput where decode = genericDecode options
instance encodeSetSubscriptionAttributesInput :: Encode SetSubscriptionAttributesInput where encode = genericEncode options

-- | Constructs SetSubscriptionAttributesInput from required parameters
newSetSubscriptionAttributesInput :: AttributeName' -> SubscriptionARN' -> SetSubscriptionAttributesInput
newSetSubscriptionAttributesInput _AttributeName _SubscriptionArn = SetSubscriptionAttributesInput { "AttributeName": _AttributeName, "SubscriptionArn": _SubscriptionArn, "AttributeValue": (NullOrUndefined Nothing) }

-- | Constructs SetSubscriptionAttributesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetSubscriptionAttributesInput' :: AttributeName' -> SubscriptionARN' -> ( { "SubscriptionArn" :: (SubscriptionARN') , "AttributeName" :: (AttributeName') , "AttributeValue" :: NullOrUndefined (AttributeValue') } -> {"SubscriptionArn" :: (SubscriptionARN') , "AttributeName" :: (AttributeName') , "AttributeValue" :: NullOrUndefined (AttributeValue') } ) -> SetSubscriptionAttributesInput
newSetSubscriptionAttributesInput' _AttributeName _SubscriptionArn customize = (SetSubscriptionAttributesInput <<< customize) { "AttributeName": _AttributeName, "SubscriptionArn": _SubscriptionArn, "AttributeValue": (NullOrUndefined Nothing) }



-- | <p>Input for SetTopicAttributes action.</p>
newtype SetTopicAttributesInput = SetTopicAttributesInput 
  { "TopicArn" :: (TopicARN')
  , "AttributeName" :: (AttributeName')
  , "AttributeValue" :: NullOrUndefined (AttributeValue')
  }
derive instance newtypeSetTopicAttributesInput :: Newtype SetTopicAttributesInput _
derive instance repGenericSetTopicAttributesInput :: Generic SetTopicAttributesInput _
instance showSetTopicAttributesInput :: Show SetTopicAttributesInput where show = genericShow
instance decodeSetTopicAttributesInput :: Decode SetTopicAttributesInput where decode = genericDecode options
instance encodeSetTopicAttributesInput :: Encode SetTopicAttributesInput where encode = genericEncode options

-- | Constructs SetTopicAttributesInput from required parameters
newSetTopicAttributesInput :: AttributeName' -> TopicARN' -> SetTopicAttributesInput
newSetTopicAttributesInput _AttributeName _TopicArn = SetTopicAttributesInput { "AttributeName": _AttributeName, "TopicArn": _TopicArn, "AttributeValue": (NullOrUndefined Nothing) }

-- | Constructs SetTopicAttributesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetTopicAttributesInput' :: AttributeName' -> TopicARN' -> ( { "TopicArn" :: (TopicARN') , "AttributeName" :: (AttributeName') , "AttributeValue" :: NullOrUndefined (AttributeValue') } -> {"TopicArn" :: (TopicARN') , "AttributeName" :: (AttributeName') , "AttributeValue" :: NullOrUndefined (AttributeValue') } ) -> SetTopicAttributesInput
newSetTopicAttributesInput' _AttributeName _TopicArn customize = (SetTopicAttributesInput <<< customize) { "AttributeName": _AttributeName, "TopicArn": _TopicArn, "AttributeValue": (NullOrUndefined Nothing) }



-- | <p>Input for Subscribe action.</p>
newtype SubscribeInput = SubscribeInput 
  { "TopicArn" :: (TopicARN')
  , "Protocol" :: (Protocol')
  , "Endpoint" :: NullOrUndefined (Endpoint')
  }
derive instance newtypeSubscribeInput :: Newtype SubscribeInput _
derive instance repGenericSubscribeInput :: Generic SubscribeInput _
instance showSubscribeInput :: Show SubscribeInput where show = genericShow
instance decodeSubscribeInput :: Decode SubscribeInput where decode = genericDecode options
instance encodeSubscribeInput :: Encode SubscribeInput where encode = genericEncode options

-- | Constructs SubscribeInput from required parameters
newSubscribeInput :: Protocol' -> TopicARN' -> SubscribeInput
newSubscribeInput _Protocol _TopicArn = SubscribeInput { "Protocol": _Protocol, "TopicArn": _TopicArn, "Endpoint": (NullOrUndefined Nothing) }

-- | Constructs SubscribeInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSubscribeInput' :: Protocol' -> TopicARN' -> ( { "TopicArn" :: (TopicARN') , "Protocol" :: (Protocol') , "Endpoint" :: NullOrUndefined (Endpoint') } -> {"TopicArn" :: (TopicARN') , "Protocol" :: (Protocol') , "Endpoint" :: NullOrUndefined (Endpoint') } ) -> SubscribeInput
newSubscribeInput' _Protocol _TopicArn customize = (SubscribeInput <<< customize) { "Protocol": _Protocol, "TopicArn": _TopicArn, "Endpoint": (NullOrUndefined Nothing) }



-- | <p>Response for Subscribe action.</p>
newtype SubscribeResponse = SubscribeResponse 
  { "SubscriptionArn" :: NullOrUndefined (SubscriptionARN')
  }
derive instance newtypeSubscribeResponse :: Newtype SubscribeResponse _
derive instance repGenericSubscribeResponse :: Generic SubscribeResponse _
instance showSubscribeResponse :: Show SubscribeResponse where show = genericShow
instance decodeSubscribeResponse :: Decode SubscribeResponse where decode = genericDecode options
instance encodeSubscribeResponse :: Encode SubscribeResponse where encode = genericEncode options

-- | Constructs SubscribeResponse from required parameters
newSubscribeResponse :: SubscribeResponse
newSubscribeResponse  = SubscribeResponse { "SubscriptionArn": (NullOrUndefined Nothing) }

-- | Constructs SubscribeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSubscribeResponse' :: ( { "SubscriptionArn" :: NullOrUndefined (SubscriptionARN') } -> {"SubscriptionArn" :: NullOrUndefined (SubscriptionARN') } ) -> SubscribeResponse
newSubscribeResponse'  customize = (SubscribeResponse <<< customize) { "SubscriptionArn": (NullOrUndefined Nothing) }



-- | <p>A wrapper type for the attributes of an Amazon SNS subscription.</p>
newtype Subscription = Subscription 
  { "SubscriptionArn" :: NullOrUndefined (SubscriptionARN')
  , "Owner" :: NullOrUndefined (Account')
  , "Protocol" :: NullOrUndefined (Protocol')
  , "Endpoint" :: NullOrUndefined (Endpoint')
  , "TopicArn" :: NullOrUndefined (TopicARN')
  }
derive instance newtypeSubscription :: Newtype Subscription _
derive instance repGenericSubscription :: Generic Subscription _
instance showSubscription :: Show Subscription where show = genericShow
instance decodeSubscription :: Decode Subscription where decode = genericDecode options
instance encodeSubscription :: Encode Subscription where encode = genericEncode options

-- | Constructs Subscription from required parameters
newSubscription :: Subscription
newSubscription  = Subscription { "Endpoint": (NullOrUndefined Nothing), "Owner": (NullOrUndefined Nothing), "Protocol": (NullOrUndefined Nothing), "SubscriptionArn": (NullOrUndefined Nothing), "TopicArn": (NullOrUndefined Nothing) }

-- | Constructs Subscription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSubscription' :: ( { "SubscriptionArn" :: NullOrUndefined (SubscriptionARN') , "Owner" :: NullOrUndefined (Account') , "Protocol" :: NullOrUndefined (Protocol') , "Endpoint" :: NullOrUndefined (Endpoint') , "TopicArn" :: NullOrUndefined (TopicARN') } -> {"SubscriptionArn" :: NullOrUndefined (SubscriptionARN') , "Owner" :: NullOrUndefined (Account') , "Protocol" :: NullOrUndefined (Protocol') , "Endpoint" :: NullOrUndefined (Endpoint') , "TopicArn" :: NullOrUndefined (TopicARN') } ) -> Subscription
newSubscription'  customize = (Subscription <<< customize) { "Endpoint": (NullOrUndefined Nothing), "Owner": (NullOrUndefined Nothing), "Protocol": (NullOrUndefined Nothing), "SubscriptionArn": (NullOrUndefined Nothing), "TopicArn": (NullOrUndefined Nothing) }



newtype SubscriptionAttributesMap = SubscriptionAttributesMap (StrMap.StrMap AttributeValue')
derive instance newtypeSubscriptionAttributesMap :: Newtype SubscriptionAttributesMap _
derive instance repGenericSubscriptionAttributesMap :: Generic SubscriptionAttributesMap _
instance showSubscriptionAttributesMap :: Show SubscriptionAttributesMap where show = genericShow
instance decodeSubscriptionAttributesMap :: Decode SubscriptionAttributesMap where decode = genericDecode options
instance encodeSubscriptionAttributesMap :: Encode SubscriptionAttributesMap where encode = genericEncode options



-- | <p>Indicates that the customer already owns the maximum allowed number of subscriptions.</p>
newtype SubscriptionLimitExceededException = SubscriptionLimitExceededException 
  { "message" :: NullOrUndefined (String)
  }
derive instance newtypeSubscriptionLimitExceededException :: Newtype SubscriptionLimitExceededException _
derive instance repGenericSubscriptionLimitExceededException :: Generic SubscriptionLimitExceededException _
instance showSubscriptionLimitExceededException :: Show SubscriptionLimitExceededException where show = genericShow
instance decodeSubscriptionLimitExceededException :: Decode SubscriptionLimitExceededException where decode = genericDecode options
instance encodeSubscriptionLimitExceededException :: Encode SubscriptionLimitExceededException where encode = genericEncode options

-- | Constructs SubscriptionLimitExceededException from required parameters
newSubscriptionLimitExceededException :: SubscriptionLimitExceededException
newSubscriptionLimitExceededException  = SubscriptionLimitExceededException { "message": (NullOrUndefined Nothing) }

-- | Constructs SubscriptionLimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSubscriptionLimitExceededException' :: ( { "message" :: NullOrUndefined (String) } -> {"message" :: NullOrUndefined (String) } ) -> SubscriptionLimitExceededException
newSubscriptionLimitExceededException'  customize = (SubscriptionLimitExceededException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype SubscriptionsList = SubscriptionsList (Array Subscription)
derive instance newtypeSubscriptionsList :: Newtype SubscriptionsList _
derive instance repGenericSubscriptionsList :: Generic SubscriptionsList _
instance showSubscriptionsList :: Show SubscriptionsList where show = genericShow
instance decodeSubscriptionsList :: Decode SubscriptionsList where decode = genericDecode options
instance encodeSubscriptionsList :: Encode SubscriptionsList where encode = genericEncode options



-- | <p>Indicates that the rate at which requests have been submitted for this action exceeds the limit for your account.</p>
newtype ThrottledException = ThrottledException 
  { "message" :: NullOrUndefined (String)
  }
derive instance newtypeThrottledException :: Newtype ThrottledException _
derive instance repGenericThrottledException :: Generic ThrottledException _
instance showThrottledException :: Show ThrottledException where show = genericShow
instance decodeThrottledException :: Decode ThrottledException where decode = genericDecode options
instance encodeThrottledException :: Encode ThrottledException where encode = genericEncode options

-- | Constructs ThrottledException from required parameters
newThrottledException :: ThrottledException
newThrottledException  = ThrottledException { "message": (NullOrUndefined Nothing) }

-- | Constructs ThrottledException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newThrottledException' :: ( { "message" :: NullOrUndefined (String) } -> {"message" :: NullOrUndefined (String) } ) -> ThrottledException
newThrottledException'  customize = (ThrottledException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>A wrapper type for the topic's Amazon Resource Name (ARN). To retrieve a topic's attributes, use <code>GetTopicAttributes</code>.</p>
newtype Topic = Topic 
  { "TopicArn" :: NullOrUndefined (TopicARN')
  }
derive instance newtypeTopic :: Newtype Topic _
derive instance repGenericTopic :: Generic Topic _
instance showTopic :: Show Topic where show = genericShow
instance decodeTopic :: Decode Topic where decode = genericDecode options
instance encodeTopic :: Encode Topic where encode = genericEncode options

-- | Constructs Topic from required parameters
newTopic :: Topic
newTopic  = Topic { "TopicArn": (NullOrUndefined Nothing) }

-- | Constructs Topic's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTopic' :: ( { "TopicArn" :: NullOrUndefined (TopicARN') } -> {"TopicArn" :: NullOrUndefined (TopicARN') } ) -> Topic
newTopic'  customize = (Topic <<< customize) { "TopicArn": (NullOrUndefined Nothing) }



newtype TopicAttributesMap = TopicAttributesMap (StrMap.StrMap AttributeValue')
derive instance newtypeTopicAttributesMap :: Newtype TopicAttributesMap _
derive instance repGenericTopicAttributesMap :: Generic TopicAttributesMap _
instance showTopicAttributesMap :: Show TopicAttributesMap where show = genericShow
instance decodeTopicAttributesMap :: Decode TopicAttributesMap where decode = genericDecode options
instance encodeTopicAttributesMap :: Encode TopicAttributesMap where encode = genericEncode options



-- | <p>Indicates that the customer already owns the maximum allowed number of topics.</p>
newtype TopicLimitExceededException = TopicLimitExceededException 
  { "message" :: NullOrUndefined (String)
  }
derive instance newtypeTopicLimitExceededException :: Newtype TopicLimitExceededException _
derive instance repGenericTopicLimitExceededException :: Generic TopicLimitExceededException _
instance showTopicLimitExceededException :: Show TopicLimitExceededException where show = genericShow
instance decodeTopicLimitExceededException :: Decode TopicLimitExceededException where decode = genericDecode options
instance encodeTopicLimitExceededException :: Encode TopicLimitExceededException where encode = genericEncode options

-- | Constructs TopicLimitExceededException from required parameters
newTopicLimitExceededException :: TopicLimitExceededException
newTopicLimitExceededException  = TopicLimitExceededException { "message": (NullOrUndefined Nothing) }

-- | Constructs TopicLimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTopicLimitExceededException' :: ( { "message" :: NullOrUndefined (String) } -> {"message" :: NullOrUndefined (String) } ) -> TopicLimitExceededException
newTopicLimitExceededException'  customize = (TopicLimitExceededException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype TopicsList = TopicsList (Array Topic)
derive instance newtypeTopicsList :: Newtype TopicsList _
derive instance repGenericTopicsList :: Generic TopicsList _
instance showTopicsList :: Show TopicsList where show = genericShow
instance decodeTopicsList :: Decode TopicsList where decode = genericDecode options
instance encodeTopicsList :: Encode TopicsList where encode = genericEncode options



-- | <p>Input for Unsubscribe action.</p>
newtype UnsubscribeInput = UnsubscribeInput 
  { "SubscriptionArn" :: (SubscriptionARN')
  }
derive instance newtypeUnsubscribeInput :: Newtype UnsubscribeInput _
derive instance repGenericUnsubscribeInput :: Generic UnsubscribeInput _
instance showUnsubscribeInput :: Show UnsubscribeInput where show = genericShow
instance decodeUnsubscribeInput :: Decode UnsubscribeInput where decode = genericDecode options
instance encodeUnsubscribeInput :: Encode UnsubscribeInput where encode = genericEncode options

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
instance showAccount' :: Show Account' where show = genericShow
instance decodeAccount' :: Decode Account' where decode = genericDecode options
instance encodeAccount' :: Encode Account' where encode = genericEncode options



newtype Action' = Action' String
derive instance newtypeAction' :: Newtype Action' _
derive instance repGenericAction' :: Generic Action' _
instance showAction' :: Show Action' where show = genericShow
instance decodeAction' :: Decode Action' where decode = genericDecode options
instance encodeAction' :: Encode Action' where encode = genericEncode options



newtype AttributeName' = AttributeName' String
derive instance newtypeAttributeName' :: Newtype AttributeName' _
derive instance repGenericAttributeName' :: Generic AttributeName' _
instance showAttributeName' :: Show AttributeName' where show = genericShow
instance decodeAttributeName' :: Decode AttributeName' where decode = genericDecode options
instance encodeAttributeName' :: Encode AttributeName' where encode = genericEncode options



newtype AttributeValue' = AttributeValue' String
derive instance newtypeAttributeValue' :: Newtype AttributeValue' _
derive instance repGenericAttributeValue' :: Generic AttributeValue' _
instance showAttributeValue' :: Show AttributeValue' where show = genericShow
instance decodeAttributeValue' :: Decode AttributeValue' where decode = genericDecode options
instance encodeAttributeValue' :: Encode AttributeValue' where encode = genericEncode options



newtype AuthenticateOnUnsubscribe' = AuthenticateOnUnsubscribe' String
derive instance newtypeAuthenticateOnUnsubscribe' :: Newtype AuthenticateOnUnsubscribe' _
derive instance repGenericAuthenticateOnUnsubscribe' :: Generic AuthenticateOnUnsubscribe' _
instance showAuthenticateOnUnsubscribe' :: Show AuthenticateOnUnsubscribe' where show = genericShow
instance decodeAuthenticateOnUnsubscribe' :: Decode AuthenticateOnUnsubscribe' where decode = genericDecode options
instance encodeAuthenticateOnUnsubscribe' :: Encode AuthenticateOnUnsubscribe' where encode = genericEncode options



newtype Delegate' = Delegate' String
derive instance newtypeDelegate' :: Newtype Delegate' _
derive instance repGenericDelegate' :: Generic Delegate' _
instance showDelegate' :: Show Delegate' where show = genericShow
instance decodeDelegate' :: Decode Delegate' where decode = genericDecode options
instance encodeDelegate' :: Encode Delegate' where encode = genericEncode options



newtype Endpoint' = Endpoint' String
derive instance newtypeEndpoint' :: Newtype Endpoint' _
derive instance repGenericEndpoint' :: Generic Endpoint' _
instance showEndpoint' :: Show Endpoint' where show = genericShow
instance decodeEndpoint' :: Decode Endpoint' where decode = genericDecode options
instance encodeEndpoint' :: Encode Endpoint' where encode = genericEncode options



newtype Label' = Label' String
derive instance newtypeLabel' :: Newtype Label' _
derive instance repGenericLabel' :: Generic Label' _
instance showLabel' :: Show Label' where show = genericShow
instance decodeLabel' :: Decode Label' where decode = genericDecode options
instance encodeLabel' :: Encode Label' where encode = genericEncode options



newtype Message' = Message' String
derive instance newtypeMessage' :: Newtype Message' _
derive instance repGenericMessage' :: Generic Message' _
instance showMessage' :: Show Message' where show = genericShow
instance decodeMessage' :: Decode Message' where decode = genericDecode options
instance encodeMessage' :: Encode Message' where encode = genericEncode options



newtype MessageId' = MessageId' String
derive instance newtypeMessageId' :: Newtype MessageId' _
derive instance repGenericMessageId' :: Generic MessageId' _
instance showMessageId' :: Show MessageId' where show = genericShow
instance decodeMessageId' :: Decode MessageId' where decode = genericDecode options
instance encodeMessageId' :: Encode MessageId' where encode = genericEncode options



newtype MessageStructure' = MessageStructure' String
derive instance newtypeMessageStructure' :: Newtype MessageStructure' _
derive instance repGenericMessageStructure' :: Generic MessageStructure' _
instance showMessageStructure' :: Show MessageStructure' where show = genericShow
instance decodeMessageStructure' :: Decode MessageStructure' where decode = genericDecode options
instance encodeMessageStructure' :: Encode MessageStructure' where encode = genericEncode options



newtype NextToken' = NextToken' String
derive instance newtypeNextToken' :: Newtype NextToken' _
derive instance repGenericNextToken' :: Generic NextToken' _
instance showNextToken' :: Show NextToken' where show = genericShow
instance decodeNextToken' :: Decode NextToken' where decode = genericDecode options
instance encodeNextToken' :: Encode NextToken' where encode = genericEncode options



newtype Protocol' = Protocol' String
derive instance newtypeProtocol' :: Newtype Protocol' _
derive instance repGenericProtocol' :: Generic Protocol' _
instance showProtocol' :: Show Protocol' where show = genericShow
instance decodeProtocol' :: Decode Protocol' where decode = genericDecode options
instance encodeProtocol' :: Encode Protocol' where encode = genericEncode options



newtype Subject' = Subject' String
derive instance newtypeSubject' :: Newtype Subject' _
derive instance repGenericSubject' :: Generic Subject' _
instance showSubject' :: Show Subject' where show = genericShow
instance decodeSubject' :: Decode Subject' where decode = genericDecode options
instance encodeSubject' :: Encode Subject' where encode = genericEncode options



newtype SubscriptionARN' = SubscriptionARN' String
derive instance newtypeSubscriptionARN' :: Newtype SubscriptionARN' _
derive instance repGenericSubscriptionARN' :: Generic SubscriptionARN' _
instance showSubscriptionARN' :: Show SubscriptionARN' where show = genericShow
instance decodeSubscriptionARN' :: Decode SubscriptionARN' where decode = genericDecode options
instance encodeSubscriptionARN' :: Encode SubscriptionARN' where encode = genericEncode options



newtype Token' = Token' String
derive instance newtypeToken' :: Newtype Token' _
derive instance repGenericToken' :: Generic Token' _
instance showToken' :: Show Token' where show = genericShow
instance decodeToken' :: Decode Token' where decode = genericDecode options
instance encodeToken' :: Encode Token' where encode = genericEncode options



newtype TopicARN' = TopicARN' String
derive instance newtypeTopicARN' :: Newtype TopicARN' _
derive instance repGenericTopicARN' :: Generic TopicARN' _
instance showTopicARN' :: Show TopicARN' where show = genericShow
instance decodeTopicARN' :: Decode TopicARN' where decode = genericDecode options
instance encodeTopicARN' :: Encode TopicARN' where encode = genericEncode options



newtype TopicName' = TopicName' String
derive instance newtypeTopicName' :: Newtype TopicName' _
derive instance repGenericTopicName' :: Generic TopicName' _
instance showTopicName' :: Show TopicName' where show = genericShow
instance decodeTopicName' :: Decode TopicName' where decode = genericDecode options
instance encodeTopicName' :: Encode TopicName' where encode = genericEncode options

