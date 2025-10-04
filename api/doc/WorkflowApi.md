# cloudreve_api_client.api.WorkflowApi

## Load the API package
```dart
import 'package:cloudreve_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**workflowArchivePost**](WorkflowApi.md#workflowarchivepost) | **POST** /workflow/archive | Create archive
[**workflowExtractPost**](WorkflowApi.md#workflowextractpost) | **POST** /workflow/extract | Extract archive
[**workflowGet**](WorkflowApi.md#workflowget) | **GET** /workflow | List tasks
[**workflowImportPost**](WorkflowApi.md#workflowimportpost) | **POST** /workflow/import | Import external files
[**workflowProgressIdGet**](WorkflowApi.md#workflowprogressidget) | **GET** /workflow/progress/{id} | Get task progress
[**workflowReloactePost**](WorkflowApi.md#workflowreloactepost) | **POST** /workflow/reloacte | Relocate storage policy


# **workflowArchivePost**
> WorkflowArchivePost200Response workflowArchivePost(workflowArchivePostRequest)

Create archive

Create a tasks to create a new archive file from existing files.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getWorkflowApi();
final WorkflowArchivePostRequest workflowArchivePostRequest = {"src":["cloudreve://my/1/marker-shadow%20(2).png","cloudreve://my/1/cloudreve_4.0.0-beta.7_windows_amd64.zip"],"dst":"cloudreve://my/1/archive.zip","preferred_node_id":"m9uO"}; // WorkflowArchivePostRequest | 

try {
    final response = api.workflowArchivePost(workflowArchivePostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WorkflowApi->workflowArchivePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflowArchivePostRequest** | [**WorkflowArchivePostRequest**](WorkflowArchivePostRequest.md)|  | [optional] 

### Return type

[**WorkflowArchivePost200Response**](WorkflowArchivePost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workflowExtractPost**
> WorkflowExtractPost200Response workflowExtractPost(workflowExtractPostRequest)

Extract archive

Create a task to extract all files in a given archive file.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getWorkflowApi();
final WorkflowExtractPostRequest workflowExtractPostRequest = {"src":["cloudreve://my/1/cloudreve_4.0.0-beta.7_windows_amd64.zip"],"dst":"cloudreve://my/1","preferred_node_id":"xmhb"}; // WorkflowExtractPostRequest | 

try {
    final response = api.workflowExtractPost(workflowExtractPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WorkflowApi->workflowExtractPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflowExtractPostRequest** | [**WorkflowExtractPostRequest**](WorkflowExtractPostRequest.md)|  | [optional] 

### Return type

[**WorkflowExtractPost200Response**](WorkflowExtractPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workflowGet**
> WorkflowGet200Response workflowGet(pageSize, category, nextPageToken)

List tasks

List all background tasks triggered by current authenticated user.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getWorkflowApi();
final int pageSize = 20; // int | 
final String category = general; // String | Select which category of tasks to list.
final String nextPageToken = nextPageToken_example; // String | Token for requesting next page. Empty value means requesting the first page.

try {
    final response = api.workflowGet(pageSize, category, nextPageToken);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WorkflowApi->workflowGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**|  | 
 **category** | **String**| Select which category of tasks to list. | 
 **nextPageToken** | **String**| Token for requesting next page. Empty value means requesting the first page. | [optional] 

### Return type

[**WorkflowGet200Response**](WorkflowGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workflowImportPost**
> WorkflowImportPost200Response workflowImportPost(workflowImportPostRequest)

Import external files

Create a task to import external physical files to given path of a given user. **This method is restricted to users with admin permission only.**

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getWorkflowApi();
final WorkflowImportPostRequest workflowImportPostRequest = {"src":"/path/to/existing","dst":"/","extract_media_meta":false,"user_id":"lpua","recursive":true,"policy_id":1}; // WorkflowImportPostRequest | 

try {
    final response = api.workflowImportPost(workflowImportPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WorkflowApi->workflowImportPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflowImportPostRequest** | [**WorkflowImportPostRequest**](WorkflowImportPostRequest.md)|  | [optional] 

### Return type

[**WorkflowImportPost200Response**](WorkflowImportPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workflowProgressIdGet**
> WorkflowProgressIdGet200Response workflowProgressIdGet(id)

Get task progress

Get realtime progress of the given task. Note that not all phases and all task types support getting progress. Empty response will be returned if there's no available progress info.  The response is a map between progress type and the actual progress. Common progress types are:   | Progress Type | Description | | --- | --- | | `upload_single_<index>` | Uploaded/Total bytes of a single uplaod thread. | |`upload_count`|Count of processed/total files.| |`upload`| Uploaded/Total bytes of all files to be processed in this step.| |`imported`| Imported/Total files.| |`indexed`| Used in importing file tasks, indicating indexed files.|  Only tasks owned by current authenticated user is available. For admin users, all tasks are available in this method.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getWorkflowApi();
final String id = mA7mF4; // String | ID of the task.

try {
    final response = api.workflowProgressIdGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WorkflowApi->workflowProgressIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the task. | 

### Return type

[**WorkflowProgressIdGet200Response**](WorkflowProgressIdGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workflowReloactePost**
> WorkflowReloactePost200Response workflowReloactePost(workflowReloactePostRequest)

Relocate storage policy

Create a task to relocate storage policy for given files.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getWorkflowApi();
final WorkflowReloactePostRequest workflowReloactePostRequest = {"src":["cloudreve://my/1/test_folder","cloudreve://my/1/cloudreve.exe"],"dst_policy_id":"J7uV"}; // WorkflowReloactePostRequest | 

try {
    final response = api.workflowReloactePost(workflowReloactePostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WorkflowApi->workflowReloactePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflowReloactePostRequest** | [**WorkflowReloactePostRequest**](WorkflowReloactePostRequest.md)|  | [optional] 

### Return type

[**WorkflowReloactePost200Response**](WorkflowReloactePost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

