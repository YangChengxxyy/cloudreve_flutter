// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'site_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SiteConfigCaptchaTypeEnum _$siteConfigCaptchaTypeEnum_normal =
    const SiteConfigCaptchaTypeEnum._('normal');
const SiteConfigCaptchaTypeEnum _$siteConfigCaptchaTypeEnum_recaptcha =
    const SiteConfigCaptchaTypeEnum._('recaptcha');
const SiteConfigCaptchaTypeEnum _$siteConfigCaptchaTypeEnum_turnstile =
    const SiteConfigCaptchaTypeEnum._('turnstile');

SiteConfigCaptchaTypeEnum _$siteConfigCaptchaTypeEnumValueOf(String name) {
  switch (name) {
    case 'normal':
      return _$siteConfigCaptchaTypeEnum_normal;
    case 'recaptcha':
      return _$siteConfigCaptchaTypeEnum_recaptcha;
    case 'turnstile':
      return _$siteConfigCaptchaTypeEnum_turnstile;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SiteConfigCaptchaTypeEnum> _$siteConfigCaptchaTypeEnumValues =
    BuiltSet<SiteConfigCaptchaTypeEnum>(const <SiteConfigCaptchaTypeEnum>[
  _$siteConfigCaptchaTypeEnum_normal,
  _$siteConfigCaptchaTypeEnum_recaptcha,
  _$siteConfigCaptchaTypeEnum_turnstile,
]);

const SiteConfigMapProviderEnum _$siteConfigMapProviderEnum_google =
    const SiteConfigMapProviderEnum._('google');
const SiteConfigMapProviderEnum _$siteConfigMapProviderEnum_openstreetmap =
    const SiteConfigMapProviderEnum._('openstreetmap');

SiteConfigMapProviderEnum _$siteConfigMapProviderEnumValueOf(String name) {
  switch (name) {
    case 'google':
      return _$siteConfigMapProviderEnum_google;
    case 'openstreetmap':
      return _$siteConfigMapProviderEnum_openstreetmap;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SiteConfigMapProviderEnum> _$siteConfigMapProviderEnumValues =
    BuiltSet<SiteConfigMapProviderEnum>(const <SiteConfigMapProviderEnum>[
  _$siteConfigMapProviderEnum_google,
  _$siteConfigMapProviderEnum_openstreetmap,
]);

const SiteConfigGoogleMapTileTypeEnum
    _$siteConfigGoogleMapTileTypeEnum_terrain =
    const SiteConfigGoogleMapTileTypeEnum._('terrain');
const SiteConfigGoogleMapTileTypeEnum
    _$siteConfigGoogleMapTileTypeEnum_satellite =
    const SiteConfigGoogleMapTileTypeEnum._('satellite');
const SiteConfigGoogleMapTileTypeEnum _$siteConfigGoogleMapTileTypeEnum_normal =
    const SiteConfigGoogleMapTileTypeEnum._('normal');

SiteConfigGoogleMapTileTypeEnum _$siteConfigGoogleMapTileTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'terrain':
      return _$siteConfigGoogleMapTileTypeEnum_terrain;
    case 'satellite':
      return _$siteConfigGoogleMapTileTypeEnum_satellite;
    case 'normal':
      return _$siteConfigGoogleMapTileTypeEnum_normal;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SiteConfigGoogleMapTileTypeEnum>
    _$siteConfigGoogleMapTileTypeEnumValues = BuiltSet<
        SiteConfigGoogleMapTileTypeEnum>(const <SiteConfigGoogleMapTileTypeEnum>[
  _$siteConfigGoogleMapTileTypeEnum_terrain,
  _$siteConfigGoogleMapTileTypeEnum_satellite,
  _$siteConfigGoogleMapTileTypeEnum_normal,
]);

Serializer<SiteConfigCaptchaTypeEnum> _$siteConfigCaptchaTypeEnumSerializer =
    _$SiteConfigCaptchaTypeEnumSerializer();
Serializer<SiteConfigMapProviderEnum> _$siteConfigMapProviderEnumSerializer =
    _$SiteConfigMapProviderEnumSerializer();
Serializer<SiteConfigGoogleMapTileTypeEnum>
    _$siteConfigGoogleMapTileTypeEnumSerializer =
    _$SiteConfigGoogleMapTileTypeEnumSerializer();

class _$SiteConfigCaptchaTypeEnumSerializer
    implements PrimitiveSerializer<SiteConfigCaptchaTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'normal': 'normal',
    'recaptcha': 'recaptcha',
    'turnstile': 'turnstile',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'normal': 'normal',
    'recaptcha': 'recaptcha',
    'turnstile': 'turnstile',
  };

  @override
  final Iterable<Type> types = const <Type>[SiteConfigCaptchaTypeEnum];
  @override
  final String wireName = 'SiteConfigCaptchaTypeEnum';

  @override
  Object serialize(Serializers serializers, SiteConfigCaptchaTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SiteConfigCaptchaTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SiteConfigCaptchaTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SiteConfigMapProviderEnumSerializer
    implements PrimitiveSerializer<SiteConfigMapProviderEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'google': 'google',
    'openstreetmap': 'openstreetmap',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'google': 'google',
    'openstreetmap': 'openstreetmap',
  };

  @override
  final Iterable<Type> types = const <Type>[SiteConfigMapProviderEnum];
  @override
  final String wireName = 'SiteConfigMapProviderEnum';

  @override
  Object serialize(Serializers serializers, SiteConfigMapProviderEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SiteConfigMapProviderEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SiteConfigMapProviderEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SiteConfigGoogleMapTileTypeEnumSerializer
    implements PrimitiveSerializer<SiteConfigGoogleMapTileTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'terrain': 'terrain',
    'satellite': 'satellite',
    'normal': 'normal',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'terrain': 'terrain',
    'satellite': 'satellite',
    'normal': 'normal',
  };

  @override
  final Iterable<Type> types = const <Type>[SiteConfigGoogleMapTileTypeEnum];
  @override
  final String wireName = 'SiteConfigGoogleMapTileTypeEnum';

  @override
  Object serialize(
          Serializers serializers, SiteConfigGoogleMapTileTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SiteConfigGoogleMapTileTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SiteConfigGoogleMapTileTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SiteConfig extends SiteConfig {
  @override
  final String? instanceId;
  @override
  final String? title;
  @override
  final bool? loginCaptcha;
  @override
  final bool? regCaptcha;
  @override
  final bool? forgetCaptcha;
  @override
  final bool? abuseReportCaptcha;
  @override
  final String? themes;
  @override
  final String? defaultTheme;
  @override
  final bool? authn;
  @override
  final User? user;
  @override
  final String? captchaReCaptchaKey;
  @override
  final String? captchaCapInstanceUrl;
  @override
  final String? captchaCapSiteKey;
  @override
  final String? siteNotice;
  @override
  final SiteConfigCaptchaTypeEnum? captchaType;
  @override
  final String? turnstileSiteId;
  @override
  final bool? registerEnabled;
  @override
  final bool? qqEnabled;
  @override
  final bool? ssoEnabled;
  @override
  final String? ssoDisplayName;
  @override
  final String? ssoIcon;
  @override
  final bool? oidcEnabled;
  @override
  final String? oidcDisplayName;
  @override
  final String? oidcIcon;
  @override
  final String? logo;
  @override
  final String? logoLight;
  @override
  final String? tosUrl;
  @override
  final String? privacyPolicyUrl;
  @override
  final String? icons;
  @override
  final String? emojiPreset;
  @override
  final bool? pointEnabled;
  @override
  final num? sharePointGainRate;
  @override
  final SiteConfigMapProviderEnum? mapProvider;
  @override
  final SiteConfigGoogleMapTileTypeEnum? googleMapTileType;
  @override
  final BuiltList<SiteConfigFileViewersInner?>? fileViewers;
  @override
  final num? maxBatchSize;
  @override
  final bool? appPromotion;
  @override
  final String? appFeedback;
  @override
  final String? appForum;
  @override
  final PaymentSetting? payment;
  @override
  final bool? anonymousPurchase;
  @override
  final num? pointPrice;
  @override
  final bool? shopNavEnabled;
  @override
  final BuiltList<SiteConfigStorageProductsInner?>? storageProducts;
  @override
  final BuiltList<SiteConfigGroupSkusInner?>? groupSkus;
  @override
  final num? thumbnailWidth;
  @override
  final num? thumbnailHeight;
  @override
  final BuiltList<CustomProps>? customProps;
  @override
  final BuiltList<SiteConfigCustomNavItemsInner>? customNavItems;
  @override
  final CustomHTML? customHtml;

  factory _$SiteConfig([void Function(SiteConfigBuilder)? updates]) =>
      (SiteConfigBuilder()..update(updates))._build();

  _$SiteConfig._(
      {this.instanceId,
      this.title,
      this.loginCaptcha,
      this.regCaptcha,
      this.forgetCaptcha,
      this.abuseReportCaptcha,
      this.themes,
      this.defaultTheme,
      this.authn,
      this.user,
      this.captchaReCaptchaKey,
      this.captchaCapInstanceUrl,
      this.captchaCapSiteKey,
      this.siteNotice,
      this.captchaType,
      this.turnstileSiteId,
      this.registerEnabled,
      this.qqEnabled,
      this.ssoEnabled,
      this.ssoDisplayName,
      this.ssoIcon,
      this.oidcEnabled,
      this.oidcDisplayName,
      this.oidcIcon,
      this.logo,
      this.logoLight,
      this.tosUrl,
      this.privacyPolicyUrl,
      this.icons,
      this.emojiPreset,
      this.pointEnabled,
      this.sharePointGainRate,
      this.mapProvider,
      this.googleMapTileType,
      this.fileViewers,
      this.maxBatchSize,
      this.appPromotion,
      this.appFeedback,
      this.appForum,
      this.payment,
      this.anonymousPurchase,
      this.pointPrice,
      this.shopNavEnabled,
      this.storageProducts,
      this.groupSkus,
      this.thumbnailWidth,
      this.thumbnailHeight,
      this.customProps,
      this.customNavItems,
      this.customHtml})
      : super._();
  @override
  SiteConfig rebuild(void Function(SiteConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SiteConfigBuilder toBuilder() => SiteConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SiteConfig &&
        instanceId == other.instanceId &&
        title == other.title &&
        loginCaptcha == other.loginCaptcha &&
        regCaptcha == other.regCaptcha &&
        forgetCaptcha == other.forgetCaptcha &&
        abuseReportCaptcha == other.abuseReportCaptcha &&
        themes == other.themes &&
        defaultTheme == other.defaultTheme &&
        authn == other.authn &&
        user == other.user &&
        captchaReCaptchaKey == other.captchaReCaptchaKey &&
        captchaCapInstanceUrl == other.captchaCapInstanceUrl &&
        captchaCapSiteKey == other.captchaCapSiteKey &&
        siteNotice == other.siteNotice &&
        captchaType == other.captchaType &&
        turnstileSiteId == other.turnstileSiteId &&
        registerEnabled == other.registerEnabled &&
        qqEnabled == other.qqEnabled &&
        ssoEnabled == other.ssoEnabled &&
        ssoDisplayName == other.ssoDisplayName &&
        ssoIcon == other.ssoIcon &&
        oidcEnabled == other.oidcEnabled &&
        oidcDisplayName == other.oidcDisplayName &&
        oidcIcon == other.oidcIcon &&
        logo == other.logo &&
        logoLight == other.logoLight &&
        tosUrl == other.tosUrl &&
        privacyPolicyUrl == other.privacyPolicyUrl &&
        icons == other.icons &&
        emojiPreset == other.emojiPreset &&
        pointEnabled == other.pointEnabled &&
        sharePointGainRate == other.sharePointGainRate &&
        mapProvider == other.mapProvider &&
        googleMapTileType == other.googleMapTileType &&
        fileViewers == other.fileViewers &&
        maxBatchSize == other.maxBatchSize &&
        appPromotion == other.appPromotion &&
        appFeedback == other.appFeedback &&
        appForum == other.appForum &&
        payment == other.payment &&
        anonymousPurchase == other.anonymousPurchase &&
        pointPrice == other.pointPrice &&
        shopNavEnabled == other.shopNavEnabled &&
        storageProducts == other.storageProducts &&
        groupSkus == other.groupSkus &&
        thumbnailWidth == other.thumbnailWidth &&
        thumbnailHeight == other.thumbnailHeight &&
        customProps == other.customProps &&
        customNavItems == other.customNavItems &&
        customHtml == other.customHtml;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, loginCaptcha.hashCode);
    _$hash = $jc(_$hash, regCaptcha.hashCode);
    _$hash = $jc(_$hash, forgetCaptcha.hashCode);
    _$hash = $jc(_$hash, abuseReportCaptcha.hashCode);
    _$hash = $jc(_$hash, themes.hashCode);
    _$hash = $jc(_$hash, defaultTheme.hashCode);
    _$hash = $jc(_$hash, authn.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, captchaReCaptchaKey.hashCode);
    _$hash = $jc(_$hash, captchaCapInstanceUrl.hashCode);
    _$hash = $jc(_$hash, captchaCapSiteKey.hashCode);
    _$hash = $jc(_$hash, siteNotice.hashCode);
    _$hash = $jc(_$hash, captchaType.hashCode);
    _$hash = $jc(_$hash, turnstileSiteId.hashCode);
    _$hash = $jc(_$hash, registerEnabled.hashCode);
    _$hash = $jc(_$hash, qqEnabled.hashCode);
    _$hash = $jc(_$hash, ssoEnabled.hashCode);
    _$hash = $jc(_$hash, ssoDisplayName.hashCode);
    _$hash = $jc(_$hash, ssoIcon.hashCode);
    _$hash = $jc(_$hash, oidcEnabled.hashCode);
    _$hash = $jc(_$hash, oidcDisplayName.hashCode);
    _$hash = $jc(_$hash, oidcIcon.hashCode);
    _$hash = $jc(_$hash, logo.hashCode);
    _$hash = $jc(_$hash, logoLight.hashCode);
    _$hash = $jc(_$hash, tosUrl.hashCode);
    _$hash = $jc(_$hash, privacyPolicyUrl.hashCode);
    _$hash = $jc(_$hash, icons.hashCode);
    _$hash = $jc(_$hash, emojiPreset.hashCode);
    _$hash = $jc(_$hash, pointEnabled.hashCode);
    _$hash = $jc(_$hash, sharePointGainRate.hashCode);
    _$hash = $jc(_$hash, mapProvider.hashCode);
    _$hash = $jc(_$hash, googleMapTileType.hashCode);
    _$hash = $jc(_$hash, fileViewers.hashCode);
    _$hash = $jc(_$hash, maxBatchSize.hashCode);
    _$hash = $jc(_$hash, appPromotion.hashCode);
    _$hash = $jc(_$hash, appFeedback.hashCode);
    _$hash = $jc(_$hash, appForum.hashCode);
    _$hash = $jc(_$hash, payment.hashCode);
    _$hash = $jc(_$hash, anonymousPurchase.hashCode);
    _$hash = $jc(_$hash, pointPrice.hashCode);
    _$hash = $jc(_$hash, shopNavEnabled.hashCode);
    _$hash = $jc(_$hash, storageProducts.hashCode);
    _$hash = $jc(_$hash, groupSkus.hashCode);
    _$hash = $jc(_$hash, thumbnailWidth.hashCode);
    _$hash = $jc(_$hash, thumbnailHeight.hashCode);
    _$hash = $jc(_$hash, customProps.hashCode);
    _$hash = $jc(_$hash, customNavItems.hashCode);
    _$hash = $jc(_$hash, customHtml.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SiteConfig')
          ..add('instanceId', instanceId)
          ..add('title', title)
          ..add('loginCaptcha', loginCaptcha)
          ..add('regCaptcha', regCaptcha)
          ..add('forgetCaptcha', forgetCaptcha)
          ..add('abuseReportCaptcha', abuseReportCaptcha)
          ..add('themes', themes)
          ..add('defaultTheme', defaultTheme)
          ..add('authn', authn)
          ..add('user', user)
          ..add('captchaReCaptchaKey', captchaReCaptchaKey)
          ..add('captchaCapInstanceUrl', captchaCapInstanceUrl)
          ..add('captchaCapSiteKey', captchaCapSiteKey)
          ..add('siteNotice', siteNotice)
          ..add('captchaType', captchaType)
          ..add('turnstileSiteId', turnstileSiteId)
          ..add('registerEnabled', registerEnabled)
          ..add('qqEnabled', qqEnabled)
          ..add('ssoEnabled', ssoEnabled)
          ..add('ssoDisplayName', ssoDisplayName)
          ..add('ssoIcon', ssoIcon)
          ..add('oidcEnabled', oidcEnabled)
          ..add('oidcDisplayName', oidcDisplayName)
          ..add('oidcIcon', oidcIcon)
          ..add('logo', logo)
          ..add('logoLight', logoLight)
          ..add('tosUrl', tosUrl)
          ..add('privacyPolicyUrl', privacyPolicyUrl)
          ..add('icons', icons)
          ..add('emojiPreset', emojiPreset)
          ..add('pointEnabled', pointEnabled)
          ..add('sharePointGainRate', sharePointGainRate)
          ..add('mapProvider', mapProvider)
          ..add('googleMapTileType', googleMapTileType)
          ..add('fileViewers', fileViewers)
          ..add('maxBatchSize', maxBatchSize)
          ..add('appPromotion', appPromotion)
          ..add('appFeedback', appFeedback)
          ..add('appForum', appForum)
          ..add('payment', payment)
          ..add('anonymousPurchase', anonymousPurchase)
          ..add('pointPrice', pointPrice)
          ..add('shopNavEnabled', shopNavEnabled)
          ..add('storageProducts', storageProducts)
          ..add('groupSkus', groupSkus)
          ..add('thumbnailWidth', thumbnailWidth)
          ..add('thumbnailHeight', thumbnailHeight)
          ..add('customProps', customProps)
          ..add('customNavItems', customNavItems)
          ..add('customHtml', customHtml))
        .toString();
  }
}

class SiteConfigBuilder implements Builder<SiteConfig, SiteConfigBuilder> {
  _$SiteConfig? _$v;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  bool? _loginCaptcha;
  bool? get loginCaptcha => _$this._loginCaptcha;
  set loginCaptcha(bool? loginCaptcha) => _$this._loginCaptcha = loginCaptcha;

  bool? _regCaptcha;
  bool? get regCaptcha => _$this._regCaptcha;
  set regCaptcha(bool? regCaptcha) => _$this._regCaptcha = regCaptcha;

  bool? _forgetCaptcha;
  bool? get forgetCaptcha => _$this._forgetCaptcha;
  set forgetCaptcha(bool? forgetCaptcha) =>
      _$this._forgetCaptcha = forgetCaptcha;

  bool? _abuseReportCaptcha;
  bool? get abuseReportCaptcha => _$this._abuseReportCaptcha;
  set abuseReportCaptcha(bool? abuseReportCaptcha) =>
      _$this._abuseReportCaptcha = abuseReportCaptcha;

  String? _themes;
  String? get themes => _$this._themes;
  set themes(String? themes) => _$this._themes = themes;

  String? _defaultTheme;
  String? get defaultTheme => _$this._defaultTheme;
  set defaultTheme(String? defaultTheme) => _$this._defaultTheme = defaultTheme;

  bool? _authn;
  bool? get authn => _$this._authn;
  set authn(bool? authn) => _$this._authn = authn;

  UserBuilder? _user;
  UserBuilder get user => _$this._user ??= UserBuilder();
  set user(UserBuilder? user) => _$this._user = user;

  String? _captchaReCaptchaKey;
  String? get captchaReCaptchaKey => _$this._captchaReCaptchaKey;
  set captchaReCaptchaKey(String? captchaReCaptchaKey) =>
      _$this._captchaReCaptchaKey = captchaReCaptchaKey;

  String? _captchaCapInstanceUrl;
  String? get captchaCapInstanceUrl => _$this._captchaCapInstanceUrl;
  set captchaCapInstanceUrl(String? captchaCapInstanceUrl) =>
      _$this._captchaCapInstanceUrl = captchaCapInstanceUrl;

  String? _captchaCapSiteKey;
  String? get captchaCapSiteKey => _$this._captchaCapSiteKey;
  set captchaCapSiteKey(String? captchaCapSiteKey) =>
      _$this._captchaCapSiteKey = captchaCapSiteKey;

  String? _siteNotice;
  String? get siteNotice => _$this._siteNotice;
  set siteNotice(String? siteNotice) => _$this._siteNotice = siteNotice;

  SiteConfigCaptchaTypeEnum? _captchaType;
  SiteConfigCaptchaTypeEnum? get captchaType => _$this._captchaType;
  set captchaType(SiteConfigCaptchaTypeEnum? captchaType) =>
      _$this._captchaType = captchaType;

  String? _turnstileSiteId;
  String? get turnstileSiteId => _$this._turnstileSiteId;
  set turnstileSiteId(String? turnstileSiteId) =>
      _$this._turnstileSiteId = turnstileSiteId;

  bool? _registerEnabled;
  bool? get registerEnabled => _$this._registerEnabled;
  set registerEnabled(bool? registerEnabled) =>
      _$this._registerEnabled = registerEnabled;

  bool? _qqEnabled;
  bool? get qqEnabled => _$this._qqEnabled;
  set qqEnabled(bool? qqEnabled) => _$this._qqEnabled = qqEnabled;

  bool? _ssoEnabled;
  bool? get ssoEnabled => _$this._ssoEnabled;
  set ssoEnabled(bool? ssoEnabled) => _$this._ssoEnabled = ssoEnabled;

  String? _ssoDisplayName;
  String? get ssoDisplayName => _$this._ssoDisplayName;
  set ssoDisplayName(String? ssoDisplayName) =>
      _$this._ssoDisplayName = ssoDisplayName;

  String? _ssoIcon;
  String? get ssoIcon => _$this._ssoIcon;
  set ssoIcon(String? ssoIcon) => _$this._ssoIcon = ssoIcon;

  bool? _oidcEnabled;
  bool? get oidcEnabled => _$this._oidcEnabled;
  set oidcEnabled(bool? oidcEnabled) => _$this._oidcEnabled = oidcEnabled;

  String? _oidcDisplayName;
  String? get oidcDisplayName => _$this._oidcDisplayName;
  set oidcDisplayName(String? oidcDisplayName) =>
      _$this._oidcDisplayName = oidcDisplayName;

  String? _oidcIcon;
  String? get oidcIcon => _$this._oidcIcon;
  set oidcIcon(String? oidcIcon) => _$this._oidcIcon = oidcIcon;

  String? _logo;
  String? get logo => _$this._logo;
  set logo(String? logo) => _$this._logo = logo;

  String? _logoLight;
  String? get logoLight => _$this._logoLight;
  set logoLight(String? logoLight) => _$this._logoLight = logoLight;

  String? _tosUrl;
  String? get tosUrl => _$this._tosUrl;
  set tosUrl(String? tosUrl) => _$this._tosUrl = tosUrl;

  String? _privacyPolicyUrl;
  String? get privacyPolicyUrl => _$this._privacyPolicyUrl;
  set privacyPolicyUrl(String? privacyPolicyUrl) =>
      _$this._privacyPolicyUrl = privacyPolicyUrl;

  String? _icons;
  String? get icons => _$this._icons;
  set icons(String? icons) => _$this._icons = icons;

  String? _emojiPreset;
  String? get emojiPreset => _$this._emojiPreset;
  set emojiPreset(String? emojiPreset) => _$this._emojiPreset = emojiPreset;

  bool? _pointEnabled;
  bool? get pointEnabled => _$this._pointEnabled;
  set pointEnabled(bool? pointEnabled) => _$this._pointEnabled = pointEnabled;

  num? _sharePointGainRate;
  num? get sharePointGainRate => _$this._sharePointGainRate;
  set sharePointGainRate(num? sharePointGainRate) =>
      _$this._sharePointGainRate = sharePointGainRate;

  SiteConfigMapProviderEnum? _mapProvider;
  SiteConfigMapProviderEnum? get mapProvider => _$this._mapProvider;
  set mapProvider(SiteConfigMapProviderEnum? mapProvider) =>
      _$this._mapProvider = mapProvider;

  SiteConfigGoogleMapTileTypeEnum? _googleMapTileType;
  SiteConfigGoogleMapTileTypeEnum? get googleMapTileType =>
      _$this._googleMapTileType;
  set googleMapTileType(SiteConfigGoogleMapTileTypeEnum? googleMapTileType) =>
      _$this._googleMapTileType = googleMapTileType;

  ListBuilder<SiteConfigFileViewersInner?>? _fileViewers;
  ListBuilder<SiteConfigFileViewersInner?> get fileViewers =>
      _$this._fileViewers ??= ListBuilder<SiteConfigFileViewersInner?>();
  set fileViewers(ListBuilder<SiteConfigFileViewersInner?>? fileViewers) =>
      _$this._fileViewers = fileViewers;

  num? _maxBatchSize;
  num? get maxBatchSize => _$this._maxBatchSize;
  set maxBatchSize(num? maxBatchSize) => _$this._maxBatchSize = maxBatchSize;

  bool? _appPromotion;
  bool? get appPromotion => _$this._appPromotion;
  set appPromotion(bool? appPromotion) => _$this._appPromotion = appPromotion;

  String? _appFeedback;
  String? get appFeedback => _$this._appFeedback;
  set appFeedback(String? appFeedback) => _$this._appFeedback = appFeedback;

  String? _appForum;
  String? get appForum => _$this._appForum;
  set appForum(String? appForum) => _$this._appForum = appForum;

  PaymentSettingBuilder? _payment;
  PaymentSettingBuilder get payment =>
      _$this._payment ??= PaymentSettingBuilder();
  set payment(PaymentSettingBuilder? payment) => _$this._payment = payment;

  bool? _anonymousPurchase;
  bool? get anonymousPurchase => _$this._anonymousPurchase;
  set anonymousPurchase(bool? anonymousPurchase) =>
      _$this._anonymousPurchase = anonymousPurchase;

  num? _pointPrice;
  num? get pointPrice => _$this._pointPrice;
  set pointPrice(num? pointPrice) => _$this._pointPrice = pointPrice;

  bool? _shopNavEnabled;
  bool? get shopNavEnabled => _$this._shopNavEnabled;
  set shopNavEnabled(bool? shopNavEnabled) =>
      _$this._shopNavEnabled = shopNavEnabled;

  ListBuilder<SiteConfigStorageProductsInner?>? _storageProducts;
  ListBuilder<SiteConfigStorageProductsInner?> get storageProducts =>
      _$this._storageProducts ??=
          ListBuilder<SiteConfigStorageProductsInner?>();
  set storageProducts(
          ListBuilder<SiteConfigStorageProductsInner?>? storageProducts) =>
      _$this._storageProducts = storageProducts;

  ListBuilder<SiteConfigGroupSkusInner?>? _groupSkus;
  ListBuilder<SiteConfigGroupSkusInner?> get groupSkus =>
      _$this._groupSkus ??= ListBuilder<SiteConfigGroupSkusInner?>();
  set groupSkus(ListBuilder<SiteConfigGroupSkusInner?>? groupSkus) =>
      _$this._groupSkus = groupSkus;

  num? _thumbnailWidth;
  num? get thumbnailWidth => _$this._thumbnailWidth;
  set thumbnailWidth(num? thumbnailWidth) =>
      _$this._thumbnailWidth = thumbnailWidth;

  num? _thumbnailHeight;
  num? get thumbnailHeight => _$this._thumbnailHeight;
  set thumbnailHeight(num? thumbnailHeight) =>
      _$this._thumbnailHeight = thumbnailHeight;

  ListBuilder<CustomProps>? _customProps;
  ListBuilder<CustomProps> get customProps =>
      _$this._customProps ??= ListBuilder<CustomProps>();
  set customProps(ListBuilder<CustomProps>? customProps) =>
      _$this._customProps = customProps;

  ListBuilder<SiteConfigCustomNavItemsInner>? _customNavItems;
  ListBuilder<SiteConfigCustomNavItemsInner> get customNavItems =>
      _$this._customNavItems ??= ListBuilder<SiteConfigCustomNavItemsInner>();
  set customNavItems(
          ListBuilder<SiteConfigCustomNavItemsInner>? customNavItems) =>
      _$this._customNavItems = customNavItems;

  CustomHTMLBuilder? _customHtml;
  CustomHTMLBuilder get customHtml =>
      _$this._customHtml ??= CustomHTMLBuilder();
  set customHtml(CustomHTMLBuilder? customHtml) =>
      _$this._customHtml = customHtml;

  SiteConfigBuilder() {
    SiteConfig._defaults(this);
  }

  SiteConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceId = $v.instanceId;
      _title = $v.title;
      _loginCaptcha = $v.loginCaptcha;
      _regCaptcha = $v.regCaptcha;
      _forgetCaptcha = $v.forgetCaptcha;
      _abuseReportCaptcha = $v.abuseReportCaptcha;
      _themes = $v.themes;
      _defaultTheme = $v.defaultTheme;
      _authn = $v.authn;
      _user = $v.user?.toBuilder();
      _captchaReCaptchaKey = $v.captchaReCaptchaKey;
      _captchaCapInstanceUrl = $v.captchaCapInstanceUrl;
      _captchaCapSiteKey = $v.captchaCapSiteKey;
      _siteNotice = $v.siteNotice;
      _captchaType = $v.captchaType;
      _turnstileSiteId = $v.turnstileSiteId;
      _registerEnabled = $v.registerEnabled;
      _qqEnabled = $v.qqEnabled;
      _ssoEnabled = $v.ssoEnabled;
      _ssoDisplayName = $v.ssoDisplayName;
      _ssoIcon = $v.ssoIcon;
      _oidcEnabled = $v.oidcEnabled;
      _oidcDisplayName = $v.oidcDisplayName;
      _oidcIcon = $v.oidcIcon;
      _logo = $v.logo;
      _logoLight = $v.logoLight;
      _tosUrl = $v.tosUrl;
      _privacyPolicyUrl = $v.privacyPolicyUrl;
      _icons = $v.icons;
      _emojiPreset = $v.emojiPreset;
      _pointEnabled = $v.pointEnabled;
      _sharePointGainRate = $v.sharePointGainRate;
      _mapProvider = $v.mapProvider;
      _googleMapTileType = $v.googleMapTileType;
      _fileViewers = $v.fileViewers?.toBuilder();
      _maxBatchSize = $v.maxBatchSize;
      _appPromotion = $v.appPromotion;
      _appFeedback = $v.appFeedback;
      _appForum = $v.appForum;
      _payment = $v.payment?.toBuilder();
      _anonymousPurchase = $v.anonymousPurchase;
      _pointPrice = $v.pointPrice;
      _shopNavEnabled = $v.shopNavEnabled;
      _storageProducts = $v.storageProducts?.toBuilder();
      _groupSkus = $v.groupSkus?.toBuilder();
      _thumbnailWidth = $v.thumbnailWidth;
      _thumbnailHeight = $v.thumbnailHeight;
      _customProps = $v.customProps?.toBuilder();
      _customNavItems = $v.customNavItems?.toBuilder();
      _customHtml = $v.customHtml?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SiteConfig other) {
    _$v = other as _$SiteConfig;
  }

  @override
  void update(void Function(SiteConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SiteConfig build() => _build();

  _$SiteConfig _build() {
    _$SiteConfig _$result;
    try {
      _$result = _$v ??
          _$SiteConfig._(
            instanceId: instanceId,
            title: title,
            loginCaptcha: loginCaptcha,
            regCaptcha: regCaptcha,
            forgetCaptcha: forgetCaptcha,
            abuseReportCaptcha: abuseReportCaptcha,
            themes: themes,
            defaultTheme: defaultTheme,
            authn: authn,
            user: _user?.build(),
            captchaReCaptchaKey: captchaReCaptchaKey,
            captchaCapInstanceUrl: captchaCapInstanceUrl,
            captchaCapSiteKey: captchaCapSiteKey,
            siteNotice: siteNotice,
            captchaType: captchaType,
            turnstileSiteId: turnstileSiteId,
            registerEnabled: registerEnabled,
            qqEnabled: qqEnabled,
            ssoEnabled: ssoEnabled,
            ssoDisplayName: ssoDisplayName,
            ssoIcon: ssoIcon,
            oidcEnabled: oidcEnabled,
            oidcDisplayName: oidcDisplayName,
            oidcIcon: oidcIcon,
            logo: logo,
            logoLight: logoLight,
            tosUrl: tosUrl,
            privacyPolicyUrl: privacyPolicyUrl,
            icons: icons,
            emojiPreset: emojiPreset,
            pointEnabled: pointEnabled,
            sharePointGainRate: sharePointGainRate,
            mapProvider: mapProvider,
            googleMapTileType: googleMapTileType,
            fileViewers: _fileViewers?.build(),
            maxBatchSize: maxBatchSize,
            appPromotion: appPromotion,
            appFeedback: appFeedback,
            appForum: appForum,
            payment: _payment?.build(),
            anonymousPurchase: anonymousPurchase,
            pointPrice: pointPrice,
            shopNavEnabled: shopNavEnabled,
            storageProducts: _storageProducts?.build(),
            groupSkus: _groupSkus?.build(),
            thumbnailWidth: thumbnailWidth,
            thumbnailHeight: thumbnailHeight,
            customProps: _customProps?.build(),
            customNavItems: _customNavItems?.build(),
            customHtml: _customHtml?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();

        _$failedField = 'fileViewers';
        _fileViewers?.build();

        _$failedField = 'payment';
        _payment?.build();

        _$failedField = 'storageProducts';
        _storageProducts?.build();
        _$failedField = 'groupSkus';
        _groupSkus?.build();

        _$failedField = 'customProps';
        _customProps?.build();
        _$failedField = 'customNavItems';
        _customNavItems?.build();
        _$failedField = 'customHtml';
        _customHtml?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SiteConfig', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
