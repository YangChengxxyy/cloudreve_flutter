import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for SiteConfig
void main() {
  final instance = SiteConfigBuilder();
  // TODO add properties to the builder and call build()

  group(SiteConfig, () {
    // Unique UUID of the Cloudreve instance.
    // String instanceId
    test('to test the property `instanceId`', () async {
      // TODO
    });

    // Name of the site.
    // String title
    test('to test the property `title`', () async {
      // TODO
    });

    // Whether CPATCHA is required for sign in request.
    // bool loginCaptcha
    test('to test the property `loginCaptcha`', () async {
      // TODO
    });

    // Whether CPATCHA is required for sign up request.
    // bool regCaptcha
    test('to test the property `regCaptcha`', () async {
      // TODO
    });

    // Whether CPATCHA is required for resettinig password request.
    // bool forgetCaptcha
    test('to test the property `forgetCaptcha`', () async {
      // TODO
    });

    // Whether CPATCHA is required for submiting abuse report. Only available in Pro.
    // bool abuseReportCaptcha
    test('to test the property `abuseReportCaptcha`', () async {
      // TODO
    });

    // JSON encoded theme options.
    // String themes
    test('to test the property `themes`', () async {
      // TODO
    });

    // Primary color of the global default theme.
    // String defaultTheme
    test('to test the property `defaultTheme`', () async {
      // TODO
    });

    // Whether Passkey is enabled.
    // bool authn
    test('to test the property `authn`', () async {
      // TODO
    });

    // User user
    test('to test the property `user`', () async {
      // TODO
    });

    // Site key of Google reCaptcha (if configured).
    // String captchaReCaptchaKey
    test('to test the property `captchaReCaptchaKey`', () async {
      // TODO
    });

    // Instance URL for Cap V2.
    // String captchaCapInstanceUrl
    test('to test the property `captchaCapInstanceUrl`', () async {
      // TODO
    });

    // Site key for Cap V2.
    // String captchaCapSiteKey
    test('to test the property `captchaCapSiteKey`', () async {
      // TODO
    });

    // Global site announcement (if configured).
    // String siteNotice
    test('to test the property `siteNotice`', () async {
      // TODO
    });

    // Provider type of the captcha.
    // String captchaType
    test('to test the property `captchaType`', () async {
      // TODO
    });

    // Cloudflare Turnstile Site ID (if configured).
    // String turnstileSiteId
    test('to test the property `turnstileSiteId`', () async {
      // TODO
    });

    // Whether this site allowing new user sign up.
    // bool registerEnabled
    test('to test the property `registerEnabled`', () async {
      // TODO
    });

    // Whether sign in via Tencent QQ is enabled.
    // bool qqEnabled
    test('to test the property `qqEnabled`', () async {
      // TODO
    });

    // Whether sign in via Logto is enabled.
    // bool ssoEnabled
    test('to test the property `ssoEnabled`', () async {
      // TODO
    });

    // Display name of the Logto sign method, may be i18next key.
    // String ssoDisplayName
    test('to test the property `ssoDisplayName`', () async {
      // TODO
    });

    // Iconify icon name or image URL of custom icon for Logto.
    // String ssoIcon
    test('to test the property `ssoIcon`', () async {
      // TODO
    });

    // Whether sign in via OIDC is enabled.
    // bool oidcEnabled
    test('to test the property `oidcEnabled`', () async {
      // TODO
    });

    // Display name of the OIDC sign method, may be i18next key.
    // String oidcDisplayName
    test('to test the property `oidcDisplayName`', () async {
      // TODO
    });

    // Iconify icon name or image URL of custom icon for OIDC.
    // String oidcIcon
    test('to test the property `oidcIcon`', () async {
      // TODO
    });

    // URL of the logo image for light mode.
    // String logo
    test('to test the property `logo`', () async {
      // TODO
    });

    // URL of the logo image for dark mode.
    // String logoLight
    test('to test the property `logoLight`', () async {
      // TODO
    });

    // URL of the document for term of serivce.
    // String tosUrl
    test('to test the property `tosUrl`', () async {
      // TODO
    });

    // URL of the document for privacy policy.
    // String privacyPolicyUrl
    test('to test the property `privacyPolicyUrl`', () async {
      // TODO
    });

    // JSON encoded file icons map.
    // String icons
    test('to test the property `icons`', () async {
      // TODO
    });

    // JSON encoded emoji preset for customizing file icons.
    // String emojiPreset
    test('to test the property `emojiPreset`', () async {
      // TODO
    });

    // Whether credit(points) feature is enabled.
    // bool pointEnabled
    test('to test the property `pointEnabled`', () async {
      // TODO
    });

    // Percentage of share owner's commission rate.
    // num sharePointGainRate
    test('to test the property `sharePointGainRate`', () async {
      // TODO
    });

    // Map provider.
    // String mapProvider
    test('to test the property `mapProvider`', () async {
      // TODO
    });

    // Google map tile type.
    // String googleMapTileType
    test('to test the property `googleMapTileType`', () async {
      // TODO
    });

    // List of file app groups.
    // BuiltList<SiteConfigFileViewersInner> fileViewers
    test('to test the property `fileViewers`', () async {
      // TODO
    });

    // The maximum number of files in a batch operation.
    // num maxBatchSize
    test('to test the property `maxBatchSize`', () async {
      // TODO
    });

    // Whether to show promotion page.
    // bool appPromotion
    test('to test the property `appPromotion`', () async {
      // TODO
    });

    // Feedback URL for mobile APP.
    // String appFeedback
    test('to test the property `appFeedback`', () async {
      // TODO
    });

    // Forum URL for mobile APP.
    // String appForum
    test('to test the property `appForum`', () async {
      // TODO
    });

    // PaymentSetting payment
    test('to test the property `payment`', () async {
      // TODO
    });

    // Whether to allow non-logged-in users to purchase share links directly.
    // bool anonymousPurchase
    test('to test the property `anonymousPurchase`', () async {
      // TODO
    });

    // Price for recharging credit points with money (in minimum currency unit). Fill 0 to disable credit recharge.
    // num pointPrice
    test('to test the property `pointPrice`', () async {
      // TODO
    });

    // Whether to display 'Shop' items in the sidebar navigation.
    // bool shopNavEnabled
    test('to test the property `shopNavEnabled`', () async {
      // TODO
    });

    // Available storage product SKUs.
    // BuiltList<SiteConfigStorageProductsInner> storageProducts
    test('to test the property `storageProducts`', () async {
      // TODO
    });

    // Available membership SKUs.
    // BuiltList<SiteConfigGroupSkusInner> groupSkus
    test('to test the property `groupSkus`', () async {
      // TODO
    });

    // Max width of file thumbnails.
    // num thumbnailWidth
    test('to test the property `thumbnailWidth`', () async {
      // TODO
    });

    // Max height of file thumbnails.
    // num thumbnailHeight
    test('to test the property `thumbnailHeight`', () async {
      // TODO
    });

    // Available custom file propertity options.
    // BuiltList<CustomProps> customProps
    test('to test the property `customProps`', () async {
      // TODO
    });

    // BuiltList<SiteConfigCustomNavItemsInner> customNavItems
    test('to test the property `customNavItems`', () async {
      // TODO
    });

    // CustomHTML customHtml
    test('to test the property `customHtml`', () async {
      // TODO
    });

  });
}
