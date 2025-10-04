import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';


/// tests for WorkflowRemoteDownloadApi
void main() {
  final instance = CloudreveApiClient().getWorkflowRemoteDownloadApi();

  group(WorkflowRemoteDownloadApi, () {
    // Create remote download
    //
    // Create a remote download task.
    //
    //Future<WorkflowDownloadPost200Response> workflowDownloadPost({ WorkflowDownloadPostRequest workflowDownloadPostRequest }) async
    test('test workflowDownloadPost', () async {
      // TODO
    });

    // Cancel task
    //
    // Cancel given remote download task. This method only applies to ongoing remote downlaod tasks.
    //
    //Future<WorkflowDownloadTaskIdDelete200Response> workflowDownloadTaskIdDelete(String taskId) async
    test('test workflowDownloadTaskIdDelete', () async {
      // TODO
    });

    // Select files to download
    //
    // Select/Unselect specific files in a bittorrent download task. This method only works for ongoing remote download tasks. For files not included in the request, their download behaviour is unchanged.
    //
    //Future<WorkflowDownloadTaskIdPatch200Response> workflowDownloadTaskIdPatch(String taskId, { WorkflowDownloadTaskIdPatchRequest workflowDownloadTaskIdPatchRequest }) async
    test('test workflowDownloadTaskIdPatch', () async {
      // TODO
    });

  });
}
