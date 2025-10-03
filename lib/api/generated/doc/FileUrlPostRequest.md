# cloudreve_api_client.model.FileUrlPostRequest

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uris** | **BuiltList&lt;String&gt;** | List of [URI](https://docs.cloudreve.org/api/file-uri) of the target files. | 
**download** | **bool** | Whether the desired URL is for downloading files. For supported storage policy, browser will download file instead of previewing it directly if this field is set to  `true`. | [optional] 
**redirect** | **bool** | Only works if only 1 items presented in `uris`.  If set to `true`, the HTTP response will use 302 status code to redirect to target URL instead of returning result in JSON response. | [optional] 
**entity** | **String** | Only works if only 1 items presented in `uris` and `archive` is `false`. Specify preferred ID of the file blob. By default, latest version blob will be selected. | [optional] 
**usePrimarySiteUrl** | **bool** | By default, the host domain of file URL will try to accommodate the actual `Host` that the client site requesting the API (If the `Host` is presented in primary/secondary site URL setting in dashboard). If you wish to force using primary site URL, please set this to `true`. | [optional] 
**skipError** | **bool** | Whether to skip errors and return partial successful file URLs. If set to `false` or omited, the whole request will fail if errors occurs for any items in `uris`. | [optional] 
**archive** | **bool** | Whether to use server-side batch download. If set to `true`, only one URl will be returned for multiple target files. This URL will trigger server-side archving for target files, resulting in one `.zip` file containing all target files. | [optional] 
**noCache** | **bool** | Whether to disable blob URL cache. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


