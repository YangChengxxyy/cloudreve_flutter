import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for ListResponse
void main() {
  final instance = ListResponseBuilder();
  // TODO add properties to the builder and call build()

  group(ListResponse, () {
    // List of files.
    // BuiltList<FileResponse> files
    test('to test the property `files`', () async {
      // TODO
    });

    // FileResponse parent
    test('to test the property `parent`', () async {
      // TODO
    });

    // PaginationResults pagination
    test('to test the property `pagination`', () async {
      // TODO
    });

    // NavigatorProps props
    test('to test the property `props`', () async {
      // TODO
    });

    // ContextHint is used to speed up following operations under this listed directory. It persists some intermedia state so that the following request don't need to query database again. One typical case is loading thumbnails under the listed folder, carry context hint in `X-Cr-Context-Hint` header in the thumbnail request can speed up backend database operations.
    // String contextHint
    test('to test the property `contextHint`', () async {
      // TODO
    });

    // Only applies to search list, indicating whether the recursion limit has been reached. Client side should suggest user narrow down search root folder in this case.
    // bool recursionLimitReached
    test('to test the property `recursionLimitReached`', () async {
      // TODO
    });

    // If it's `false`, folders is alway placed in front of the file list. If it's `true`, folders might be mixed with files in the list. Cloudreve will try its best not to mix file types, but in search result list, this value is `false`.
    // bool mixedType
    test('to test the property `mixedType`', () async {
      // TODO
    });

    // Indicating the frontend UI should use \"Single share file\" UI, since there's only one file in single file share link.
    // bool singleFileView
    test('to test the property `singleFileView`', () async {
      // TODO
    });

    // StoragePolicy storagePolicy
    test('to test the property `storagePolicy`', () async {
      // TODO
    });

    // ExplorerView view
    test('to test the property `view`', () async {
      // TODO
    });

  });
}
