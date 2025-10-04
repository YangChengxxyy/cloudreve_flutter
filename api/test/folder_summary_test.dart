import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for FolderSummary
void main() {
  final instance = FolderSummaryBuilder();
  // TODO add properties to the builder and call build()

  group(FolderSummary, () {
    // Total size of this folder.
    // int size
    test('to test the property `size`', () async {
      // TODO
    });

    // Count of files under this folder (recursive).
    // int files
    test('to test the property `files`', () async {
      // TODO
    });

    // Count of folders under this folder (recursive).
    // int folders
    test('to test the property `folders`', () async {
      // TODO
    });

    // Whether the size calculation is completed. If there're too many children under this folder, it may exceed the limit, in this case only subset of files are counted.
    // bool completed
    test('to test the property `completed`', () async {
      // TODO
    });

    // When the summary is calculated. It may be a cached result.
    // String calculatedAt
    test('to test the property `calculatedAt`', () async {
      // TODO
    });

  });
}
