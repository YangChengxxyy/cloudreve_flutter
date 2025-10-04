import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for Progress
void main() {
  final instance = ProgressBuilder();
  // TODO add properties to the builder and call build()

  group(Progress, () {
    // Total items to process. Could be file size in bytes, or item counts depending on the progress type.
    // int total
    test('to test the property `total`', () async {
      // TODO
    });

    // Currently procressed items. Could be file size in bytes, or item counts depending on the progress type.
    // int current
    test('to test the property `current`', () async {
      // TODO
    });

    // Identifier of this progress (if applied). For batched file tasks, this could be used to differentiate different files processed in parallel.
    // String identifier
    test('to test the property `identifier`', () async {
      // TODO
    });

  });
}
