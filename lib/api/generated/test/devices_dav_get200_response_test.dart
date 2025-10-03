import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for DevicesDavGet200Response
void main() {
  final instance = DevicesDavGet200ResponseBuilder();
  // TODO add properties to the builder and call build()

  group(DevicesDavGet200Response, () {
    // Response content. In some error type, e.g. lock conflicting errors, this field wil present details of the error, e.g. who is locking the current file.
    // BuiltList<DevicesDavGet200ResponseDataInner> data
    test('to test the property `data`', () async {
      // TODO
    });

    // Response code. `0` - Success.
    // int code (default value: 0)
    test('to test the property `code`', () async {
      // TODO
    });

    // Human readable error message (if any).
    // String msg
    test('to test the property `msg`', () async {
      // TODO
    });

    // Internal error message, only visable in debug mode.
    // String error
    test('to test the property `error`', () async {
      // TODO
    });

    // Correlation ID of the request. Only presented on failed reqeust.
    // String correlationId
    test('to test the property `correlationId`', () async {
      // TODO
    });

  });
}
