import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';


/// tests for FileVersionApi
void main() {
  final instance = CloudreveApiClient().getFileVersionApi();

  group(FileVersionApi, () {
    // Set file version
    //
    // Set the current version of the file.
    //
    //Future<FileVersionCurrentPost200Response> fileVersionCurrentPost({ String xCrPurchaseTicket, FileVersionCurrentPostRequest fileVersionCurrentPostRequest }) async
    test('test fileVersionCurrentPost', () async {
      // TODO
    });

    // Delete file version
    //
    // Delete a version from a file's version history.
    //
    //Future<FileVersionDelete200Response> fileVersionDelete({ String uri, String version, String xCrPurchaseTicketCommaStringCommaFalseComma1f63aa26Edc040ce950aCb4d4323158eCommaCanBeUsedToAuthenticateToPaidShareLinksWithAAnonymousIdentityPeriodTheTicketValueCanBeObtainedAfterAnAnonymousUserPurchaseAPaidShareLink }) async
    test('test fileVersionDelete', () async {
      // TODO
    });

  });
}
