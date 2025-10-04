import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';


/// tests for CallbackApi
void main() {
  final instance = CloudreveApiClient().getCallbackApi();

  group(CallbackApi, () {
    // Complete COS upload
    //
    // Notify Cloudreve that a file is uploaded into Tencent COS.
    //
    //Future<CallbackCosSessionIdKeyGet200Response> callbackCosSessionIdKeyGet(String sessionId, String key) async
    test('test callbackCosSessionIdKeyGet', () async {
      // TODO
    });

    // Complete OBS upload
    //
    // Notify Cloudreve that a file is uploaded into Huawei OBS.
    //
    //Future<CallbackCosSessionIdKeyGet200Response> callbackObsSessionIdKeyPost(String sessionId, String key) async
    test('test callbackObsSessionIdKeyPost', () async {
      // TODO
    });

    // Complete OneDrive upload
    //
    // Notify Cloudreve that a file is uploaded into OneDrive.
    //
    //Future<CallbackCosSessionIdKeyGet200Response> callbackOnedriveSessionIdKeyPost(String sessionId, String key) async
    test('test callbackOnedriveSessionIdKeyPost', () async {
      // TODO
    });

    // Complete S3 upload
    //
    // Notify Cloudreve that a file is uploaded into S3.
    //
    //Future<CallbackCosSessionIdKeyGet200Response> callbackS3SessionIdKeyGet(String sessionId, String key) async
    test('test callbackS3SessionIdKeyGet', () async {
      // TODO
    });

  });
}
