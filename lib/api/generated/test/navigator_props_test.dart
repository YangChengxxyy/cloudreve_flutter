import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for NavigatorProps
void main() {
  final instance = NavigatorPropsBuilder();
  // TODO add properties to the builder and call build()

  group(NavigatorProps, () {
    // [Boolset](https://docs.cloudreve.org/api/boolset) encoded set of capabilities supported in this filesystem. Capability definition can be found at [File System Capabilities](https://docs.cloudreve.org/api/boolset#file-system-capability)
    // String capability
    test('to test the property `capability`', () async {
      // TODO
    });

    // Max supported page size.
    // int maxPageSize
    test('to test the property `maxPageSize`', () async {
      // TODO
    });

    // List of supported `order by` fields.
    // BuiltList<String> orderByOptions
    test('to test the property `orderByOptions`', () async {
      // TODO
    });

    // List of supported order direction.
    // BuiltList<String> orderDirectionOptions
    test('to test the property `orderDirectionOptions`', () async {
      // TODO
    });

  });
}
