import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for FileDelete200Response
void main() {
  final instance = FileDelete200ResponseBuilder();
  // TODO add properties to the builder and call build()

  group(FileDelete200Response, () {
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

    // Map of multiple error in batch request. The key is the failed resource ID, it could be a file URI or a resource ID, the value is a `Response`.
    // BuiltMap<String, Response> aggregatedError
    test('to test the property `aggregatedError`', () async {
      // TODO
    });

    // Correlation ID of the request. Only presented on failed reqeust.
    // String correlationId
    test('to test the property `correlationId`', () async {
      // TODO
    });

  });
}
