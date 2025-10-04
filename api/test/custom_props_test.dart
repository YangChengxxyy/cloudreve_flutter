import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for CustomProps
void main() {
  final instance = CustomPropsBuilder();
  // TODO add properties to the builder and call build()

  group(CustomProps, () {
    // ID of the custom props. You can get the corresponding metadata key by appending `props:` prefix.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // Display name of the propertity.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Type of the input component.
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

    // Maximum length for text fields, maximum value for number/rating field.
    // String max
    test('to test the property `max`', () async {
      // TODO
    });

    // Minimum length for text fields, minimum value for number field.
    // String min
    test('to test the property `min`', () async {
      // TODO
    });

    // Default value in string.
    // String default_
    test('to test the property `default_`', () async {
      // TODO
    });

    // Options for selection component.
    // BuiltList<String> options
    test('to test the property `options`', () async {
      // TODO
    });

    // Optional icon name from Iconify.
    // String icon
    test('to test the property `icon`', () async {
      // TODO
    });

  });
}
