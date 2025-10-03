import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';


/// tests for SiteApi
void main() {
  final instance = CloudreveApiClient().getSiteApi();

  group(SiteApi, () {
    // Report abuse
    //
    // Report abuse on share links or users.
    //
    //Future<SiteAbusePost200Response> siteAbusePost({ SiteAbusePostRequest siteAbusePostRequest }) async
    test('test siteAbusePost', () async {
      // TODO
    });

    // Get CAPTCHA
    //
    // Request a CAPTCHA image and a ticket.
    //
    //Future<SiteCaptchaGet200Response> siteCaptchaGet() async
    test('test siteCaptchaGet', () async {
      // TODO
    });

    // Get site settings
    //
    // Get global site settings paritioned by sections. Only settings in your requested section will be included in your response.
    //
    //Future<SiteConfigSectionGet200Response> siteConfigSectionGet(String section) async
    test('test siteConfigSectionGet', () async {
      // TODO
    });

    // Ping
    //
    // Get the version of the instance.
    //
    //Future<SitePingGet200Response> sitePingGet() async
    test('test sitePingGet', () async {
      // TODO
    });

  });
}
