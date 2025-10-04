# cloudreve_api_client.model.PermissionSetting

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**userExplicit** | **BuiltMap&lt;String, String&gt;** | Map of explicit permission setting from user ID to boolset. | [optional] 
**groupExplicit** | **BuiltMap&lt;String, String&gt;** | Map of explicit permission setting from group ID to boolset. | [optional] 
**sameGroup** | **String** | Permission for users under the same group as the file owner. | [optional] 
**other** | **String** | Permission for users under the different groups as the file owner. | [optional] 
**anonymous** | **String** | Permission for anonymous users. | [optional] 
**everyone** | **String** | Permission for everyone else. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


