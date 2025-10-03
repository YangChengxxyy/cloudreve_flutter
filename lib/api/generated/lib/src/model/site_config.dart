//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloudreve_api_client/src/model/site_config_group_skus_inner.dart';
import 'package:cloudreve_api_client/src/model/site_config_storage_products_inner.dart';
import 'package:cloudreve_api_client/src/model/custom_html.dart';
import 'package:cloudreve_api_client/src/model/site_config_file_viewers_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloudreve_api_client/src/model/site_config_custom_nav_items_inner.dart';
import 'package:cloudreve_api_client/src/model/custom_props.dart';
import 'package:cloudreve_api_client/src/model/user.dart';
import 'package:cloudreve_api_client/src/model/payment_setting.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site_config.g.dart';

/// SiteConfig
///
/// Properties:
/// * [instanceId] - Unique UUID of the Cloudreve instance.
/// * [title] - Name of the site.
/// * [loginCaptcha] - Whether CPATCHA is required for sign in request.
/// * [regCaptcha] - Whether CPATCHA is required for sign up request.
/// * [forgetCaptcha] - Whether CPATCHA is required for resettinig password request.
/// * [abuseReportCaptcha] - Whether CPATCHA is required for submiting abuse report. Only available in Pro.
/// * [themes] - JSON encoded theme options.
/// * [defaultTheme] - Primary color of the global default theme.
/// * [authn] - Whether Passkey is enabled.
/// * [user] 
/// * [captchaReCaptchaKey] - Site key of Google reCaptcha (if configured).
/// * [captchaCapInstanceUrl] - Instance URL for Cap V2.
/// * [captchaCapSiteKey] - Site key for Cap V2.
/// * [siteNotice] - Global site announcement (if configured).
/// * [captchaType] - Provider type of the captcha.
/// * [turnstileSiteId] - Cloudflare Turnstile Site ID (if configured).
/// * [registerEnabled] - Whether this site allowing new user sign up.
/// * [qqEnabled] - Whether sign in via Tencent QQ is enabled.
/// * [ssoEnabled] - Whether sign in via Logto is enabled.
/// * [ssoDisplayName] - Display name of the Logto sign method, may be i18next key.
/// * [ssoIcon] - Iconify icon name or image URL of custom icon for Logto.
/// * [oidcEnabled] - Whether sign in via OIDC is enabled.
/// * [oidcDisplayName] - Display name of the OIDC sign method, may be i18next key.
/// * [oidcIcon] - Iconify icon name or image URL of custom icon for OIDC.
/// * [logo] - URL of the logo image for light mode.
/// * [logoLight] - URL of the logo image for dark mode.
/// * [tosUrl] - URL of the document for term of serivce.
/// * [privacyPolicyUrl] - URL of the document for privacy policy.
/// * [icons] - JSON encoded file icons map.
/// * [emojiPreset] - JSON encoded emoji preset for customizing file icons.
/// * [pointEnabled] - Whether credit(points) feature is enabled.
/// * [sharePointGainRate] - Percentage of share owner's commission rate.
/// * [mapProvider] - Map provider.
/// * [googleMapTileType] - Google map tile type.
/// * [fileViewers] - List of file app groups.
/// * [maxBatchSize] - The maximum number of files in a batch operation.
/// * [appPromotion] - Whether to show promotion page.
/// * [appFeedback] - Feedback URL for mobile APP.
/// * [appForum] - Forum URL for mobile APP.
/// * [payment] 
/// * [anonymousPurchase] - Whether to allow non-logged-in users to purchase share links directly.
/// * [pointPrice] - Price for recharging credit points with money (in minimum currency unit). Fill 0 to disable credit recharge.
/// * [shopNavEnabled] - Whether to display 'Shop' items in the sidebar navigation.
/// * [storageProducts] - Available storage product SKUs.
/// * [groupSkus] - Available membership SKUs.
/// * [thumbnailWidth] - Max width of file thumbnails.
/// * [thumbnailHeight] - Max height of file thumbnails.
/// * [customProps] - Available custom file propertity options.
/// * [customNavItems] 
/// * [customHtml] 
@BuiltValue()
abstract class SiteConfig implements Built<SiteConfig, SiteConfigBuilder> {
  /// Unique UUID of the Cloudreve instance.
  @BuiltValueField(wireName: r'instance_id')
  String? get instanceId;

  /// Name of the site.
  @BuiltValueField(wireName: r'title')
  String? get title;

  /// Whether CPATCHA is required for sign in request.
  @BuiltValueField(wireName: r'login_captcha')
  bool? get loginCaptcha;

  /// Whether CPATCHA is required for sign up request.
  @BuiltValueField(wireName: r'reg_captcha')
  bool? get regCaptcha;

  /// Whether CPATCHA is required for resettinig password request.
  @BuiltValueField(wireName: r'forget_captcha')
  bool? get forgetCaptcha;

  /// Whether CPATCHA is required for submiting abuse report. Only available in Pro.
  @BuiltValueField(wireName: r'abuse_report_captcha')
  bool? get abuseReportCaptcha;

  /// JSON encoded theme options.
  @BuiltValueField(wireName: r'themes')
  String? get themes;

  /// Primary color of the global default theme.
  @BuiltValueField(wireName: r'default_theme')
  String? get defaultTheme;

  /// Whether Passkey is enabled.
  @BuiltValueField(wireName: r'authn')
  bool? get authn;

  @BuiltValueField(wireName: r'user')
  User? get user;

  /// Site key of Google reCaptcha (if configured).
  @BuiltValueField(wireName: r'captcha_ReCaptchaKey')
  String? get captchaReCaptchaKey;

  /// Instance URL for Cap V2.
  @BuiltValueField(wireName: r'captcha_cap_instance_url')
  String get captchaCapInstanceUrl;

  /// Site key for Cap V2.
  @BuiltValueField(wireName: r'captcha_cap_site_key')
  String get captchaCapSiteKey;

  /// Global site announcement (if configured).
  @BuiltValueField(wireName: r'site_notice')
  String? get siteNotice;

  /// Provider type of the captcha.
  @BuiltValueField(wireName: r'captcha_type')
  SiteConfigCaptchaTypeEnum? get captchaType;
  // enum captchaTypeEnum {  normal,  recaptcha,  turnstile,  };

  /// Cloudflare Turnstile Site ID (if configured).
  @BuiltValueField(wireName: r'turnstile_site_id')
  String? get turnstileSiteId;

  /// Whether this site allowing new user sign up.
  @BuiltValueField(wireName: r'register_enabled')
  bool? get registerEnabled;

  /// Whether sign in via Tencent QQ is enabled.
  @BuiltValueField(wireName: r'qq_enabled')
  bool? get qqEnabled;

  /// Whether sign in via Logto is enabled.
  @BuiltValueField(wireName: r'sso_enabled')
  bool? get ssoEnabled;

  /// Display name of the Logto sign method, may be i18next key.
  @BuiltValueField(wireName: r'sso_display_name')
  String? get ssoDisplayName;

  /// Iconify icon name or image URL of custom icon for Logto.
  @BuiltValueField(wireName: r'sso_icon')
  String? get ssoIcon;

  /// Whether sign in via OIDC is enabled.
  @BuiltValueField(wireName: r'oidc_enabled')
  bool? get oidcEnabled;

  /// Display name of the OIDC sign method, may be i18next key.
  @BuiltValueField(wireName: r'oidc_display_name')
  String? get oidcDisplayName;

  /// Iconify icon name or image URL of custom icon for OIDC.
  @BuiltValueField(wireName: r'oidc_icon')
  String? get oidcIcon;

  /// URL of the logo image for light mode.
  @BuiltValueField(wireName: r'logo')
  String? get logo;

  /// URL of the logo image for dark mode.
  @BuiltValueField(wireName: r'logo_light')
  String? get logoLight;

  /// URL of the document for term of serivce.
  @BuiltValueField(wireName: r'tos_url')
  String? get tosUrl;

  /// URL of the document for privacy policy.
  @BuiltValueField(wireName: r'privacy_policy_url')
  String? get privacyPolicyUrl;

  /// JSON encoded file icons map.
  @BuiltValueField(wireName: r'icons')
  String? get icons;

  /// JSON encoded emoji preset for customizing file icons.
  @BuiltValueField(wireName: r'emoji_preset')
  String? get emojiPreset;

  /// Whether credit(points) feature is enabled.
  @BuiltValueField(wireName: r'point_enabled')
  bool? get pointEnabled;

  /// Percentage of share owner's commission rate.
  @BuiltValueField(wireName: r'share_point_gain_rate')
  num? get sharePointGainRate;

  /// Map provider.
  @BuiltValueField(wireName: r'map_provider')
  SiteConfigMapProviderEnum? get mapProvider;
  // enum mapProviderEnum {  google,  openstreetmap,  };

  /// Google map tile type.
  @BuiltValueField(wireName: r'google_map_tile_type')
  SiteConfigGoogleMapTileTypeEnum? get googleMapTileType;
  // enum googleMapTileTypeEnum {  terrain,  satellite,  normal,  };

  /// List of file app groups.
  @BuiltValueField(wireName: r'file_viewers')
  BuiltList<SiteConfigFileViewersInner?>? get fileViewers;

  /// The maximum number of files in a batch operation.
  @BuiltValueField(wireName: r'max_batch_size')
  num? get maxBatchSize;

  /// Whether to show promotion page.
  @BuiltValueField(wireName: r'app_promotion')
  bool? get appPromotion;

  /// Feedback URL for mobile APP.
  @BuiltValueField(wireName: r'app_feedback')
  String? get appFeedback;

  /// Forum URL for mobile APP.
  @BuiltValueField(wireName: r'app_forum')
  String? get appForum;

  @BuiltValueField(wireName: r'payment')
  PaymentSetting? get payment;

  /// Whether to allow non-logged-in users to purchase share links directly.
  @BuiltValueField(wireName: r'anonymous_purchase')
  bool? get anonymousPurchase;

  /// Price for recharging credit points with money (in minimum currency unit). Fill 0 to disable credit recharge.
  @BuiltValueField(wireName: r'point_price')
  num? get pointPrice;

  /// Whether to display 'Shop' items in the sidebar navigation.
  @BuiltValueField(wireName: r'shop_nav_enabled')
  bool? get shopNavEnabled;

  /// Available storage product SKUs.
  @BuiltValueField(wireName: r'storage_products')
  BuiltList<SiteConfigStorageProductsInner?>? get storageProducts;

  /// Available membership SKUs.
  @BuiltValueField(wireName: r'group_skus')
  BuiltList<SiteConfigGroupSkusInner?>? get groupSkus;

  /// Max width of file thumbnails.
  @BuiltValueField(wireName: r'thumbnail_width')
  num? get thumbnailWidth;

  /// Max height of file thumbnails.
  @BuiltValueField(wireName: r'thumbnail_height')
  num? get thumbnailHeight;

  /// Available custom file propertity options.
  @BuiltValueField(wireName: r'custom_props')
  BuiltList<CustomProps>? get customProps;

  @BuiltValueField(wireName: r'custom_nav_items')
  BuiltList<SiteConfigCustomNavItemsInner>? get customNavItems;

  @BuiltValueField(wireName: r'custom_html')
  CustomHTML? get customHtml;

  SiteConfig._();

  factory SiteConfig([void updates(SiteConfigBuilder b)]) = _$SiteConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SiteConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SiteConfig> get serializer => _$SiteConfigSerializer();
}

class _$SiteConfigSerializer implements PrimitiveSerializer<SiteConfig> {
  @override
  final Iterable<Type> types = const [SiteConfig, _$SiteConfig];

  @override
  final String wireName = r'SiteConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SiteConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.instanceId != null) {
      yield r'instance_id';
      yield serializers.serialize(
        object.instanceId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.loginCaptcha != null) {
      yield r'login_captcha';
      yield serializers.serialize(
        object.loginCaptcha,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.regCaptcha != null) {
      yield r'reg_captcha';
      yield serializers.serialize(
        object.regCaptcha,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.forgetCaptcha != null) {
      yield r'forget_captcha';
      yield serializers.serialize(
        object.forgetCaptcha,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.abuseReportCaptcha != null) {
      yield r'abuse_report_captcha';
      yield serializers.serialize(
        object.abuseReportCaptcha,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.themes != null) {
      yield r'themes';
      yield serializers.serialize(
        object.themes,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.defaultTheme != null) {
      yield r'default_theme';
      yield serializers.serialize(
        object.defaultTheme,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.authn != null) {
      yield r'authn';
      yield serializers.serialize(
        object.authn,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.user != null) {
      yield r'user';
      yield serializers.serialize(
        object.user,
        specifiedType: const FullType.nullable(User),
      );
    }
    if (object.captchaReCaptchaKey != null) {
      yield r'captcha_ReCaptchaKey';
      yield serializers.serialize(
        object.captchaReCaptchaKey,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'captcha_cap_instance_url';
    yield serializers.serialize(
      object.captchaCapInstanceUrl,
      specifiedType: const FullType(String),
    );
    yield r'captcha_cap_site_key';
    yield serializers.serialize(
      object.captchaCapSiteKey,
      specifiedType: const FullType(String),
    );
    if (object.siteNotice != null) {
      yield r'site_notice';
      yield serializers.serialize(
        object.siteNotice,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.captchaType != null) {
      yield r'captcha_type';
      yield serializers.serialize(
        object.captchaType,
        specifiedType: const FullType.nullable(SiteConfigCaptchaTypeEnum),
      );
    }
    if (object.turnstileSiteId != null) {
      yield r'turnstile_site_id';
      yield serializers.serialize(
        object.turnstileSiteId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.registerEnabled != null) {
      yield r'register_enabled';
      yield serializers.serialize(
        object.registerEnabled,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.qqEnabled != null) {
      yield r'qq_enabled';
      yield serializers.serialize(
        object.qqEnabled,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.ssoEnabled != null) {
      yield r'sso_enabled';
      yield serializers.serialize(
        object.ssoEnabled,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.ssoDisplayName != null) {
      yield r'sso_display_name';
      yield serializers.serialize(
        object.ssoDisplayName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.ssoIcon != null) {
      yield r'sso_icon';
      yield serializers.serialize(
        object.ssoIcon,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.oidcEnabled != null) {
      yield r'oidc_enabled';
      yield serializers.serialize(
        object.oidcEnabled,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.oidcDisplayName != null) {
      yield r'oidc_display_name';
      yield serializers.serialize(
        object.oidcDisplayName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.oidcIcon != null) {
      yield r'oidc_icon';
      yield serializers.serialize(
        object.oidcIcon,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.logo != null) {
      yield r'logo';
      yield serializers.serialize(
        object.logo,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.logoLight != null) {
      yield r'logo_light';
      yield serializers.serialize(
        object.logoLight,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tosUrl != null) {
      yield r'tos_url';
      yield serializers.serialize(
        object.tosUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.privacyPolicyUrl != null) {
      yield r'privacy_policy_url';
      yield serializers.serialize(
        object.privacyPolicyUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.icons != null) {
      yield r'icons';
      yield serializers.serialize(
        object.icons,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.emojiPreset != null) {
      yield r'emoji_preset';
      yield serializers.serialize(
        object.emojiPreset,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.pointEnabled != null) {
      yield r'point_enabled';
      yield serializers.serialize(
        object.pointEnabled,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.sharePointGainRate != null) {
      yield r'share_point_gain_rate';
      yield serializers.serialize(
        object.sharePointGainRate,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.mapProvider != null) {
      yield r'map_provider';
      yield serializers.serialize(
        object.mapProvider,
        specifiedType: const FullType.nullable(SiteConfigMapProviderEnum),
      );
    }
    if (object.googleMapTileType != null) {
      yield r'google_map_tile_type';
      yield serializers.serialize(
        object.googleMapTileType,
        specifiedType: const FullType.nullable(SiteConfigGoogleMapTileTypeEnum),
      );
    }
    if (object.fileViewers != null) {
      yield r'file_viewers';
      yield serializers.serialize(
        object.fileViewers,
        specifiedType: const FullType.nullable(BuiltList, [FullType.nullable(SiteConfigFileViewersInner)]),
      );
    }
    if (object.maxBatchSize != null) {
      yield r'max_batch_size';
      yield serializers.serialize(
        object.maxBatchSize,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.appPromotion != null) {
      yield r'app_promotion';
      yield serializers.serialize(
        object.appPromotion,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.appFeedback != null) {
      yield r'app_feedback';
      yield serializers.serialize(
        object.appFeedback,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.appForum != null) {
      yield r'app_forum';
      yield serializers.serialize(
        object.appForum,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.payment != null) {
      yield r'payment';
      yield serializers.serialize(
        object.payment,
        specifiedType: const FullType.nullable(PaymentSetting),
      );
    }
    if (object.anonymousPurchase != null) {
      yield r'anonymous_purchase';
      yield serializers.serialize(
        object.anonymousPurchase,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.pointPrice != null) {
      yield r'point_price';
      yield serializers.serialize(
        object.pointPrice,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.shopNavEnabled != null) {
      yield r'shop_nav_enabled';
      yield serializers.serialize(
        object.shopNavEnabled,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.storageProducts != null) {
      yield r'storage_products';
      yield serializers.serialize(
        object.storageProducts,
        specifiedType: const FullType.nullable(BuiltList, [FullType.nullable(SiteConfigStorageProductsInner)]),
      );
    }
    if (object.groupSkus != null) {
      yield r'group_skus';
      yield serializers.serialize(
        object.groupSkus,
        specifiedType: const FullType.nullable(BuiltList, [FullType.nullable(SiteConfigGroupSkusInner)]),
      );
    }
    if (object.thumbnailWidth != null) {
      yield r'thumbnail_width';
      yield serializers.serialize(
        object.thumbnailWidth,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.thumbnailHeight != null) {
      yield r'thumbnail_height';
      yield serializers.serialize(
        object.thumbnailHeight,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.customProps != null) {
      yield r'custom_props';
      yield serializers.serialize(
        object.customProps,
        specifiedType: const FullType.nullable(BuiltList, [FullType(CustomProps)]),
      );
    }
    if (object.customNavItems != null) {
      yield r'custom_nav_items';
      yield serializers.serialize(
        object.customNavItems,
        specifiedType: const FullType.nullable(BuiltList, [FullType(SiteConfigCustomNavItemsInner)]),
      );
    }
    if (object.customHtml != null) {
      yield r'custom_html';
      yield serializers.serialize(
        object.customHtml,
        specifiedType: const FullType.nullable(CustomHTML),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SiteConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SiteConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'instance_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.instanceId = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'login_captcha':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.loginCaptcha = valueDes;
          break;
        case r'reg_captcha':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.regCaptcha = valueDes;
          break;
        case r'forget_captcha':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.forgetCaptcha = valueDes;
          break;
        case r'abuse_report_captcha':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.abuseReportCaptcha = valueDes;
          break;
        case r'themes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.themes = valueDes;
          break;
        case r'default_theme':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.defaultTheme = valueDes;
          break;
        case r'authn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.authn = valueDes;
          break;
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(User),
          ) as User?;
          if (valueDes == null) continue;
          result.user.replace(valueDes);
          break;
        case r'captcha_ReCaptchaKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.captchaReCaptchaKey = valueDes;
          break;
        case r'captcha_cap_instance_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.captchaCapInstanceUrl = valueDes;
          break;
        case r'captcha_cap_site_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.captchaCapSiteKey = valueDes;
          break;
        case r'site_notice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.siteNotice = valueDes;
          break;
        case r'captcha_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SiteConfigCaptchaTypeEnum),
          ) as SiteConfigCaptchaTypeEnum?;
          if (valueDes == null) continue;
          result.captchaType = valueDes;
          break;
        case r'turnstile_site_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.turnstileSiteId = valueDes;
          break;
        case r'register_enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.registerEnabled = valueDes;
          break;
        case r'qq_enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.qqEnabled = valueDes;
          break;
        case r'sso_enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.ssoEnabled = valueDes;
          break;
        case r'sso_display_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ssoDisplayName = valueDes;
          break;
        case r'sso_icon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ssoIcon = valueDes;
          break;
        case r'oidc_enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.oidcEnabled = valueDes;
          break;
        case r'oidc_display_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.oidcDisplayName = valueDes;
          break;
        case r'oidc_icon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.oidcIcon = valueDes;
          break;
        case r'logo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.logo = valueDes;
          break;
        case r'logo_light':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.logoLight = valueDes;
          break;
        case r'tos_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tosUrl = valueDes;
          break;
        case r'privacy_policy_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.privacyPolicyUrl = valueDes;
          break;
        case r'icons':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.icons = valueDes;
          break;
        case r'emoji_preset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.emojiPreset = valueDes;
          break;
        case r'point_enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.pointEnabled = valueDes;
          break;
        case r'share_point_gain_rate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.sharePointGainRate = valueDes;
          break;
        case r'map_provider':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SiteConfigMapProviderEnum),
          ) as SiteConfigMapProviderEnum?;
          if (valueDes == null) continue;
          result.mapProvider = valueDes;
          break;
        case r'google_map_tile_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SiteConfigGoogleMapTileTypeEnum),
          ) as SiteConfigGoogleMapTileTypeEnum?;
          if (valueDes == null) continue;
          result.googleMapTileType = valueDes;
          break;
        case r'file_viewers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType.nullable(SiteConfigFileViewersInner)]),
          ) as BuiltList<SiteConfigFileViewersInner?>?;
          if (valueDes == null) continue;
          result.fileViewers.replace(valueDes);
          break;
        case r'max_batch_size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.maxBatchSize = valueDes;
          break;
        case r'app_promotion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.appPromotion = valueDes;
          break;
        case r'app_feedback':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.appFeedback = valueDes;
          break;
        case r'app_forum':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.appForum = valueDes;
          break;
        case r'payment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PaymentSetting),
          ) as PaymentSetting?;
          if (valueDes == null) continue;
          result.payment.replace(valueDes);
          break;
        case r'anonymous_purchase':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.anonymousPurchase = valueDes;
          break;
        case r'point_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.pointPrice = valueDes;
          break;
        case r'shop_nav_enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.shopNavEnabled = valueDes;
          break;
        case r'storage_products':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType.nullable(SiteConfigStorageProductsInner)]),
          ) as BuiltList<SiteConfigStorageProductsInner?>?;
          if (valueDes == null) continue;
          result.storageProducts.replace(valueDes);
          break;
        case r'group_skus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType.nullable(SiteConfigGroupSkusInner)]),
          ) as BuiltList<SiteConfigGroupSkusInner?>?;
          if (valueDes == null) continue;
          result.groupSkus.replace(valueDes);
          break;
        case r'thumbnail_width':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.thumbnailWidth = valueDes;
          break;
        case r'thumbnail_height':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.thumbnailHeight = valueDes;
          break;
        case r'custom_props':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(CustomProps)]),
          ) as BuiltList<CustomProps>?;
          if (valueDes == null) continue;
          result.customProps.replace(valueDes);
          break;
        case r'custom_nav_items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(SiteConfigCustomNavItemsInner)]),
          ) as BuiltList<SiteConfigCustomNavItemsInner>?;
          if (valueDes == null) continue;
          result.customNavItems.replace(valueDes);
          break;
        case r'custom_html':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(CustomHTML),
          ) as CustomHTML?;
          if (valueDes == null) continue;
          result.customHtml.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SiteConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SiteConfigBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class SiteConfigCaptchaTypeEnum extends EnumClass {

  /// Provider type of the captcha.
  @BuiltValueEnumConst(wireName: r'normal')
  static const SiteConfigCaptchaTypeEnum normal = _$siteConfigCaptchaTypeEnum_normal;
  /// Provider type of the captcha.
  @BuiltValueEnumConst(wireName: r'recaptcha')
  static const SiteConfigCaptchaTypeEnum recaptcha = _$siteConfigCaptchaTypeEnum_recaptcha;
  /// Provider type of the captcha.
  @BuiltValueEnumConst(wireName: r'turnstile')
  static const SiteConfigCaptchaTypeEnum turnstile = _$siteConfigCaptchaTypeEnum_turnstile;

  static Serializer<SiteConfigCaptchaTypeEnum> get serializer => _$siteConfigCaptchaTypeEnumSerializer;

  const SiteConfigCaptchaTypeEnum._(String name): super(name);

  static BuiltSet<SiteConfigCaptchaTypeEnum> get values => _$siteConfigCaptchaTypeEnumValues;
  static SiteConfigCaptchaTypeEnum valueOf(String name) => _$siteConfigCaptchaTypeEnumValueOf(name);
}

class SiteConfigMapProviderEnum extends EnumClass {

  /// Map provider.
  @BuiltValueEnumConst(wireName: r'google')
  static const SiteConfigMapProviderEnum google = _$siteConfigMapProviderEnum_google;
  /// Map provider.
  @BuiltValueEnumConst(wireName: r'openstreetmap')
  static const SiteConfigMapProviderEnum openstreetmap = _$siteConfigMapProviderEnum_openstreetmap;

  static Serializer<SiteConfigMapProviderEnum> get serializer => _$siteConfigMapProviderEnumSerializer;

  const SiteConfigMapProviderEnum._(String name): super(name);

  static BuiltSet<SiteConfigMapProviderEnum> get values => _$siteConfigMapProviderEnumValues;
  static SiteConfigMapProviderEnum valueOf(String name) => _$siteConfigMapProviderEnumValueOf(name);
}

class SiteConfigGoogleMapTileTypeEnum extends EnumClass {

  /// Google map tile type.
  @BuiltValueEnumConst(wireName: r'terrain')
  static const SiteConfigGoogleMapTileTypeEnum terrain = _$siteConfigGoogleMapTileTypeEnum_terrain;
  /// Google map tile type.
  @BuiltValueEnumConst(wireName: r'satellite')
  static const SiteConfigGoogleMapTileTypeEnum satellite = _$siteConfigGoogleMapTileTypeEnum_satellite;
  /// Google map tile type.
  @BuiltValueEnumConst(wireName: r'normal')
  static const SiteConfigGoogleMapTileTypeEnum normal = _$siteConfigGoogleMapTileTypeEnum_normal;

  static Serializer<SiteConfigGoogleMapTileTypeEnum> get serializer => _$siteConfigGoogleMapTileTypeEnumSerializer;

  const SiteConfigGoogleMapTileTypeEnum._(String name): super(name);

  static BuiltSet<SiteConfigGoogleMapTileTypeEnum> get values => _$siteConfigGoogleMapTileTypeEnumValues;
  static SiteConfigGoogleMapTileTypeEnum valueOf(String name) => _$siteConfigGoogleMapTileTypeEnumValueOf(name);
}

