import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';


/// tests for FilePinApi
void main() {
  final instance = CloudreveApiClient().getFilePinApi();

  group(FilePinApi, () {
    // Delete a pin
    //
    // Remove a pinned URI from user's sidebar.
    //
    //Future<FilePinPut200Response> filePinDelete({ PinFileService pinFileService }) async
    test('test filePinDelete', () async {
      // TODO
    });

    // Pin to sidebar
    //
    // Pin a [URI](https://docs.cloudreve.org/api/file-uri) to user's sidebar.
    //
    //Future<FilePinPut200Response> filePinPut({ PinFileService pinFileService }) async
    test('test filePinPut', () async {
      // TODO
    });

  });
}
