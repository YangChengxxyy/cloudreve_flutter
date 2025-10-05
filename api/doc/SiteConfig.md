# cloudreve_api_client.model.SiteConfig

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**instanceId** | **String** | Unique UUID of the Cloudreve instance. | [optional] 
**title** | **String** | Name of the site. | [optional] 
**loginCaptcha** | **bool** | Whether CPATCHA is required for sign in request. | [optional] 
**regCaptcha** | **bool** | Whether CPATCHA is required for sign up request. | [optional] 
**forgetCaptcha** | **bool** | Whether CPATCHA is required for resettinig password request. | [optional] 
**abuseReportCaptcha** | **bool** | Whether CPATCHA is required for submiting abuse report. Only available in Pro. | [optional] 
**themes** | **String** | JSON encoded theme options. | [optional] 
**defaultTheme** | **String** | Primary color of the global default theme. | [optional] 
**authn** | **bool** | Whether Passkey is enabled. | [optional] 
**user** | [**User**](User.md) |  | [optional] 
**captchaReCaptchaKey** | **String** | Site key of Google reCaptcha (if configured). | [optional] 
**captchaCapInstanceUrl** | **String** | Instance URL for Cap V2. | [optional] 
**captchaCapSiteKey** | **String** | Site key for Cap V2. | [optional] 
**siteNotice** | **String** | Global site announcement (if configured). | [optional] 
**captchaType** | **String** | Provider type of the captcha. | [optional] 
**turnstileSiteId** | **String** | Cloudflare Turnstile Site ID (if configured). | [optional] 
**registerEnabled** | **bool** | Whether this site allowing new user sign up. | [optional] 
**qqEnabled** | **bool** | Whether sign in via Tencent QQ is enabled. | [optional] 
**ssoEnabled** | **bool** | Whether sign in via Logto is enabled. | [optional] 
**ssoDisplayName** | **String** | Display name of the Logto sign method, may be i18next key. | [optional] 
**ssoIcon** | **String** | Iconify icon name or image URL of custom icon for Logto. | [optional] 
**oidcEnabled** | **bool** | Whether sign in via OIDC is enabled. | [optional] 
**oidcDisplayName** | **String** | Display name of the OIDC sign method, may be i18next key. | [optional] 
**oidcIcon** | **String** | Iconify icon name or image URL of custom icon for OIDC. | [optional] 
**logo** | **String** | URL of the logo image for light mode. | [optional] 
**logoLight** | **String** | URL of the logo image for dark mode. | [optional] 
**tosUrl** | **String** | URL of the document for term of serivce. | [optional] 
**privacyPolicyUrl** | **String** | URL of the document for privacy policy. | [optional] 
**icons** | **String** | JSON encoded file icons map. | [optional] 
**emojiPreset** | **String** | JSON encoded emoji preset for customizing file icons. | [optional] 
**pointEnabled** | **bool** | Whether credit(points) feature is enabled. | [optional] 
**sharePointGainRate** | **num** | Percentage of share owner's commission rate. | [optional] 
**mapProvider** | **String** | Map provider. | [optional] 
**googleMapTileType** | **String** | Google map tile type. | [optional] 
**fileViewers** | [**BuiltList&lt;SiteConfigFileViewersInner&gt;**](SiteConfigFileViewersInner.md) | List of file app groups. | [optional] 
**maxBatchSize** | **num** | The maximum number of files in a batch operation. | [optional] 
**appPromotion** | **bool** | Whether to show promotion page. | [optional] 
**appFeedback** | **String** | Feedback URL for mobile APP. | [optional] 
**appForum** | **String** | Forum URL for mobile APP. | [optional] 
**payment** | [**PaymentSetting**](PaymentSetting.md) |  | [optional] 
**anonymousPurchase** | **bool** | Whether to allow non-logged-in users to purchase share links directly. | [optional] 
**pointPrice** | **num** | Price for recharging credit points with money (in minimum currency unit). Fill 0 to disable credit recharge. | [optional] 
**shopNavEnabled** | **bool** | Whether to display 'Shop' items in the sidebar navigation. | [optional] 
**storageProducts** | [**BuiltList&lt;SiteConfigStorageProductsInner&gt;**](SiteConfigStorageProductsInner.md) | Available storage product SKUs. | [optional] 
**groupSkus** | [**BuiltList&lt;SiteConfigGroupSkusInner&gt;**](SiteConfigGroupSkusInner.md) | Available membership SKUs. | [optional] 
**thumbnailWidth** | **num** | Max width of file thumbnails. | [optional] 
**thumbnailHeight** | **num** | Max height of file thumbnails. | [optional] 
**customProps** | [**BuiltList&lt;CustomProps&gt;**](CustomProps.md) | Available custom file propertity options. | [optional] 
**customNavItems** | [**BuiltList&lt;SiteConfigCustomNavItemsInner&gt;**](SiteConfigCustomNavItemsInner.md) |  | [optional] 
**customHtml** | [**CustomHTML**](CustomHTML.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


