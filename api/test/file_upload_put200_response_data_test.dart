import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for FileUploadPut200ResponseData
void main() {
  final instance = FileUploadPut200ResponseDataBuilder();
  // TODO add properties to the builder and call build()

  group(FileUploadPut200ResponseData, () {
    // ID of the upload session. Might be used in following upload requests.
    // String sessionId
    test('to test the property `sessionId`', () async {
      // TODO
    });

    // ID of the multipart upload request. Only used by some storage policy. 
    // String uploadId
    test('to test the property `uploadId`', () async {
      // TODO
    });

    // Size of a chunk in multipart uplaod. `0` means multipart upload is disabled.
    // int chunkSize
    test('to test the property `chunkSize`', () async {
      // TODO
    });

    // Unix timestamp of the expiration date for this uplaod session. Client must finish the uploading before this time.
    // int expires
    test('to test the property `expires`', () async {
      // TODO
    });

    // List of URLs to upload each chunk. Some storage policy use only one URL for all chunks, in this case only one URL is included in the list.
    // BuiltList<String> uploadUrls
    test('to test the property `uploadUrls`', () async {
      // TODO
    });

    // Some storage policy (qiniu, upyun, remote) requires addition credential to upload.
    // String credential
    test('to test the property `credential`', () async {
      // TODO
    });

    // URL to finish multipart upload. Used by cos, oss, s3 and obs.
    // String completeURL
    test('to test the property `completeURL`', () async {
      // TODO
    });

    // StoragePolicy storagePolicy
    test('to test the property `storagePolicy`', () async {
      // TODO
    });

    // Desired value of content-type in uplaod requests. Only used by qiniu and upyun.
    // String mimeType
    test('to test the property `mimeType`', () async {
      // TODO
    });

    // Upyun upload policy.
    // String uploadPolicy
    test('to test the property `uploadPolicy`', () async {
      // TODO
    });

  });
}
