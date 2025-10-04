import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';


/// tests for ShareApi
void main() {
  final instance = CloudreveApiClient().getShareApi();

  group(ShareApi, () {
    // List my share links
    //
    // 
    //
    //Future<ShareGet200Response> shareGet(int pageSize, { String orderBy, String orderDirection, String nextPageToken }) async
    test('test shareGet', () async {
      // TODO
    });

    // Delete share link
    //
    // Only the ower of the share link of administrators can delete it.
    //
    //Future<ShareIdDelete200Response> shareIdDelete(String id) async
    test('test shareIdDelete', () async {
      // TODO
    });

    // Edit share link
    //
    // Create a share link to given file. Only file owner or administrator can create share links.
    //
    //Future<ShareIdPost200Response> shareIdPost(String id, { ShareIdPostRequest shareIdPostRequest }) async
    test('test shareIdPost', () async {
      // TODO
    });

    // Get share link info
    //
    // Get share link info from ID.
    //
    //Future<ShareInfoIdGet200Response> shareInfoIdGet(String id, { String password, bool countViews, bool ownerExtended, String xCrPurchaseTicket }) async
    test('test shareInfoIdGet', () async {
      // TODO
    });

    // Create share link
    //
    // Create a share link to given file. Only file owner or administrator can create share links.
    //
    //Future<SharePut200Response> sharePut({ ShareCreateService shareCreateService }) async
    test('test sharePut', () async {
      // TODO
    });

  });
}
