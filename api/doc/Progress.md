# cloudreve_api_client.model.Progress

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total** | **int** | Total items to process. Could be file size in bytes, or item counts depending on the progress type. | 
**current** | **int** | Currently procressed items. Could be file size in bytes, or item counts depending on the progress type. | 
**identifier** | **String** | Identifier of this progress (if applied). For batched file tasks, this could be used to differentiate different files processed in parallel. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


