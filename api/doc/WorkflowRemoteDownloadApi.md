# cloudreve_api_client.api.WorkflowRemoteDownloadApi

## Load the API package
```dart
import 'package:cloudreve_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**workflowDownloadPost**](WorkflowRemoteDownloadApi.md#workflowdownloadpost) | **POST** /workflow/download | Create remote download
[**workflowDownloadTaskIdDelete**](WorkflowRemoteDownloadApi.md#workflowdownloadtaskiddelete) | **DELETE** /workflow/download/{task_id} | Cancel task
[**workflowDownloadTaskIdPatch**](WorkflowRemoteDownloadApi.md#workflowdownloadtaskidpatch) | **PATCH** /workflow/download/{task_id} | Select files to download


# **workflowDownloadPost**
> WorkflowDownloadPost200Response workflowDownloadPost(workflowDownloadPostRequest)

Create remote download

Create a remote download task.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getWorkflowRemoteDownloadApi();
final WorkflowDownloadPostRequest workflowDownloadPostRequest = ; // WorkflowDownloadPostRequest | 

try {
    final response = api.workflowDownloadPost(workflowDownloadPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WorkflowRemoteDownloadApi->workflowDownloadPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflowDownloadPostRequest** | [**WorkflowDownloadPostRequest**](WorkflowDownloadPostRequest.md)|  | [optional] 

### Return type

[**WorkflowDownloadPost200Response**](WorkflowDownloadPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workflowDownloadTaskIdDelete**
> WorkflowDownloadTaskIdDelete200Response workflowDownloadTaskIdDelete(taskId)

Cancel task

Cancel given remote download task. This method only applies to ongoing remote downlaod tasks.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getWorkflowRemoteDownloadApi();
final String taskId = jAMaCN; // String | ID of the remote download tasks.

try {
    final response = api.workflowDownloadTaskIdDelete(taskId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WorkflowRemoteDownloadApi->workflowDownloadTaskIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskId** | **String**| ID of the remote download tasks. | 

### Return type

[**WorkflowDownloadTaskIdDelete200Response**](WorkflowDownloadTaskIdDelete200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workflowDownloadTaskIdPatch**
> WorkflowDownloadTaskIdPatch200Response workflowDownloadTaskIdPatch(taskId, workflowDownloadTaskIdPatchRequest)

Select files to download

Select/Unselect specific files in a bittorrent download task. This method only works for ongoing remote download tasks. For files not included in the request, their download behaviour is unchanged.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getWorkflowRemoteDownloadApi();
final String taskId = jAMaCN; // String | ID of the remote download tasks.
final WorkflowDownloadTaskIdPatchRequest workflowDownloadTaskIdPatchRequest = {"files":[{"index":7,"download":false},{"index":8,"download":false}]}; // WorkflowDownloadTaskIdPatchRequest | 

try {
    final response = api.workflowDownloadTaskIdPatch(taskId, workflowDownloadTaskIdPatchRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WorkflowRemoteDownloadApi->workflowDownloadTaskIdPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskId** | **String**| ID of the remote download tasks. | 
 **workflowDownloadTaskIdPatchRequest** | [**WorkflowDownloadTaskIdPatchRequest**](WorkflowDownloadTaskIdPatchRequest.md)|  | [optional] 

### Return type

[**WorkflowDownloadTaskIdPatch200Response**](WorkflowDownloadTaskIdPatch200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

