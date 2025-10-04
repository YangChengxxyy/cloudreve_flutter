import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';


/// tests for FileDirectLinkApi
void main() {
  final instance = CloudreveApiClient().getFileDirectLinkApi();

  group(FileDirectLinkApi, () {
    // Create direct links
    //
    // Create a direct link that can be used to access the file's content directly. Only file owners or administrators can create direct links.
    //
    //Future<FileSourcePut200Response> fileSourcePut({ FileSourcePutRequest fileSourcePutRequest }) async
    test('test fileSourcePut', () async {
      // TODO
    });

    // Delete direct link
    //
    // Only file owner can delete direct links.
    //
    //Future<FileSourceIdDelete200Response> fileSourceidDelete(String id) async
    test('test fileSourceidDelete', () async {
      // TODO
    });

  });
}
