import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for PaginationResults
void main() {
  final instance = PaginationResultsBuilder();
  // TODO add properties to the builder and call build()

  group(PaginationResults, () {
    // Current page starting from `0`, only applied to offset pagination.
    // int page
    test('to test the property `page`', () async {
      // TODO
    });

    // Maximum items included in one page.
    // int pageSize
    test('to test the property `pageSize`', () async {
      // TODO
    });

    // Total count of items, only applied to offset pagination.
    // int totalItems
    test('to test the property `totalItems`', () async {
      // TODO
    });

    // Token used to request the next page in cursor pagination.
    // String nextToken
    test('to test the property `nextToken`', () async {
      // TODO
    });

    // Whether the response is using cursor pagination.
    // bool isCursor
    test('to test the property `isCursor`', () async {
      // TODO
    });

  });
}
