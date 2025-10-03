import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for SiteAbusePostRequest
void main() {
  final instance = SiteAbusePostRequestBuilder();
  // TODO add properties to the builder and call build()

  group(SiteAbusePostRequest, () {
    // User input value of the graphical CAPTCHA. Required if graphic CAPTCHA enabled for current action.
    // String captcha
    test('to test the property `captcha`', () async {
      // TODO
    });

    // Ticket/Token of the CAPTCHA. Required if CAPTCHA is enabled for current action. Can be obtained from [Get CAPTCHA](https://cloudrevev4.apifox.cn/get-captcha-289470260e0.md).
    // String ticket
    test('to test the property `ticket`', () async {
      // TODO
    });

    // If reporting target is a share link, this should be the [URI](https://docs.cloudreve.org/api/file-uri) of the folder in which user submitted the report.
    // String fileUri
    test('to test the property `fileUri`', () async {
      // TODO
    });

    // Category of the report.
    // num category
    test('to test the property `category`', () async {
      // TODO
    });

    // Additional descriptions.
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // ID of the reporting share link. Must be omitted if `user_id` is set.
    // String shareId
    test('to test the property `shareId`', () async {
      // TODO
    });

    // ID of the reporting user. Must be omitted if `share_id` is set.
    // String userId
    test('to test the property `userId`', () async {
      // TODO
    });

  });
}
