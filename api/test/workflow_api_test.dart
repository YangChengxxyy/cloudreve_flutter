import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';


/// tests for WorkflowApi
void main() {
  final instance = CloudreveApiClient().getWorkflowApi();

  group(WorkflowApi, () {
    // Create archive
    //
    // Create a tasks to create a new archive file from existing files.
    //
    //Future<WorkflowArchivePost200Response> workflowArchivePost({ WorkflowArchivePostRequest workflowArchivePostRequest }) async
    test('test workflowArchivePost', () async {
      // TODO
    });

    // Extract archive
    //
    // Create a task to extract all files in a given archive file.
    //
    //Future<WorkflowExtractPost200Response> workflowExtractPost({ WorkflowExtractPostRequest workflowExtractPostRequest }) async
    test('test workflowExtractPost', () async {
      // TODO
    });

    // List tasks
    //
    // List all background tasks triggered by current authenticated user.
    //
    //Future<WorkflowGet200Response> workflowGet(int pageSize, String category, { String nextPageToken }) async
    test('test workflowGet', () async {
      // TODO
    });

    // Import external files
    //
    // Create a task to import external physical files to given path of a given user. **This method is restricted to users with admin permission only.**
    //
    //Future<WorkflowImportPost200Response> workflowImportPost({ WorkflowImportPostRequest workflowImportPostRequest }) async
    test('test workflowImportPost', () async {
      // TODO
    });

    // Get task progress
    //
    // Get realtime progress of the given task. Note that not all phases and all task types support getting progress. Empty response will be returned if there's no available progress info.  The response is a map between progress type and the actual progress. Common progress types are:   | Progress Type | Description | | --- | --- | | `upload_single_<index>` | Uploaded/Total bytes of a single uplaod thread. | |`upload_count`|Count of processed/total files.| |`upload`| Uploaded/Total bytes of all files to be processed in this step.| |`imported`| Imported/Total files.| |`indexed`| Used in importing file tasks, indicating indexed files.|  Only tasks owned by current authenticated user is available. For admin users, all tasks are available in this method.
    //
    //Future<WorkflowProgressIdGet200Response> workflowProgressIdGet(String id) async
    test('test workflowProgressIdGet', () async {
      // TODO
    });

    // Relocate storage policy
    //
    // Create a task to relocate storage policy for given files.
    //
    //Future<WorkflowReloactePost200Response> workflowReloactePost({ WorkflowReloactePostRequest workflowReloactePostRequest }) async
    test('test workflowReloactePost', () async {
      // TODO
    });

  });
}
