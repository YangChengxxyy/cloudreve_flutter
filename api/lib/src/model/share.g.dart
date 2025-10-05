// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ShareSourceTypeEnum _$shareSourceTypeEnum_number0 =
    const ShareSourceTypeEnum._('number0');
const ShareSourceTypeEnum _$shareSourceTypeEnum_number1 =
    const ShareSourceTypeEnum._('number1');

ShareSourceTypeEnum _$shareSourceTypeEnumValueOf(String name) {
  switch (name) {
    case 'number0':
      return _$shareSourceTypeEnum_number0;
    case 'number1':
      return _$shareSourceTypeEnum_number1;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ShareSourceTypeEnum> _$shareSourceTypeEnumValues =
    BuiltSet<ShareSourceTypeEnum>(const <ShareSourceTypeEnum>[
  _$shareSourceTypeEnum_number0,
  _$shareSourceTypeEnum_number1,
]);

Serializer<ShareSourceTypeEnum> _$shareSourceTypeEnumSerializer =
    _$ShareSourceTypeEnumSerializer();

class _$ShareSourceTypeEnumSerializer
    implements PrimitiveSerializer<ShareSourceTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number0': 0,
    'number1': 1,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    0: 'number0',
    1: 'number1',
  };

  @override
  final Iterable<Type> types = const <Type>[ShareSourceTypeEnum];
  @override
  final String wireName = 'ShareSourceTypeEnum';

  @override
  Object serialize(Serializers serializers, ShareSourceTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ShareSourceTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ShareSourceTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Share extends Share {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final int? visited;
  @override
  final int? downloaded;
  @override
  final int? price;
  @override
  final bool? unlocked;
  @override
  final ShareSourceTypeEnum? sourceType;
  @override
  final ShareOwner? owner;
  @override
  final DateTime? createdAt;
  @override
  final bool? expired;
  @override
  final String? url;
  @override
  final SharePermissionSetting? permissionSetting;
  @override
  final bool? isPrivate;
  @override
  final String? password;
  @override
  final String? sourceUri;
  @override
  final bool? shareView;
  @override
  final bool? showReadme;
  @override
  final bool? passwordProtected;

  factory _$Share([void Function(ShareBuilder)? updates]) =>
      (ShareBuilder()..update(updates))._build();

  _$Share._(
      {this.id,
      this.name,
      this.visited,
      this.downloaded,
      this.price,
      this.unlocked,
      this.sourceType,
      this.owner,
      this.createdAt,
      this.expired,
      this.url,
      this.permissionSetting,
      this.isPrivate,
      this.password,
      this.sourceUri,
      this.shareView,
      this.showReadme,
      this.passwordProtected})
      : super._();
  @override
  Share rebuild(void Function(ShareBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShareBuilder toBuilder() => ShareBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Share &&
        id == other.id &&
        name == other.name &&
        visited == other.visited &&
        downloaded == other.downloaded &&
        price == other.price &&
        unlocked == other.unlocked &&
        sourceType == other.sourceType &&
        owner == other.owner &&
        createdAt == other.createdAt &&
        expired == other.expired &&
        url == other.url &&
        permissionSetting == other.permissionSetting &&
        isPrivate == other.isPrivate &&
        password == other.password &&
        sourceUri == other.sourceUri &&
        shareView == other.shareView &&
        showReadme == other.showReadme &&
        passwordProtected == other.passwordProtected;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, visited.hashCode);
    _$hash = $jc(_$hash, downloaded.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, unlocked.hashCode);
    _$hash = $jc(_$hash, sourceType.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, expired.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, permissionSetting.hashCode);
    _$hash = $jc(_$hash, isPrivate.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, sourceUri.hashCode);
    _$hash = $jc(_$hash, shareView.hashCode);
    _$hash = $jc(_$hash, showReadme.hashCode);
    _$hash = $jc(_$hash, passwordProtected.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Share')
          ..add('id', id)
          ..add('name', name)
          ..add('visited', visited)
          ..add('downloaded', downloaded)
          ..add('price', price)
          ..add('unlocked', unlocked)
          ..add('sourceType', sourceType)
          ..add('owner', owner)
          ..add('createdAt', createdAt)
          ..add('expired', expired)
          ..add('url', url)
          ..add('permissionSetting', permissionSetting)
          ..add('isPrivate', isPrivate)
          ..add('password', password)
          ..add('sourceUri', sourceUri)
          ..add('shareView', shareView)
          ..add('showReadme', showReadme)
          ..add('passwordProtected', passwordProtected))
        .toString();
  }
}

class ShareBuilder implements Builder<Share, ShareBuilder> {
  _$Share? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _visited;
  int? get visited => _$this._visited;
  set visited(int? visited) => _$this._visited = visited;

  int? _downloaded;
  int? get downloaded => _$this._downloaded;
  set downloaded(int? downloaded) => _$this._downloaded = downloaded;

  int? _price;
  int? get price => _$this._price;
  set price(int? price) => _$this._price = price;

  bool? _unlocked;
  bool? get unlocked => _$this._unlocked;
  set unlocked(bool? unlocked) => _$this._unlocked = unlocked;

  ShareSourceTypeEnum? _sourceType;
  ShareSourceTypeEnum? get sourceType => _$this._sourceType;
  set sourceType(ShareSourceTypeEnum? sourceType) =>
      _$this._sourceType = sourceType;

  ShareOwnerBuilder? _owner;
  ShareOwnerBuilder get owner => _$this._owner ??= ShareOwnerBuilder();
  set owner(ShareOwnerBuilder? owner) => _$this._owner = owner;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  bool? _expired;
  bool? get expired => _$this._expired;
  set expired(bool? expired) => _$this._expired = expired;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  SharePermissionSettingBuilder? _permissionSetting;
  SharePermissionSettingBuilder get permissionSetting =>
      _$this._permissionSetting ??= SharePermissionSettingBuilder();
  set permissionSetting(SharePermissionSettingBuilder? permissionSetting) =>
      _$this._permissionSetting = permissionSetting;

  bool? _isPrivate;
  bool? get isPrivate => _$this._isPrivate;
  set isPrivate(bool? isPrivate) => _$this._isPrivate = isPrivate;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _sourceUri;
  String? get sourceUri => _$this._sourceUri;
  set sourceUri(String? sourceUri) => _$this._sourceUri = sourceUri;

  bool? _shareView;
  bool? get shareView => _$this._shareView;
  set shareView(bool? shareView) => _$this._shareView = shareView;

  bool? _showReadme;
  bool? get showReadme => _$this._showReadme;
  set showReadme(bool? showReadme) => _$this._showReadme = showReadme;

  bool? _passwordProtected;
  bool? get passwordProtected => _$this._passwordProtected;
  set passwordProtected(bool? passwordProtected) =>
      _$this._passwordProtected = passwordProtected;

  ShareBuilder() {
    Share._defaults(this);
  }

  ShareBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _visited = $v.visited;
      _downloaded = $v.downloaded;
      _price = $v.price;
      _unlocked = $v.unlocked;
      _sourceType = $v.sourceType;
      _owner = $v.owner?.toBuilder();
      _createdAt = $v.createdAt;
      _expired = $v.expired;
      _url = $v.url;
      _permissionSetting = $v.permissionSetting?.toBuilder();
      _isPrivate = $v.isPrivate;
      _password = $v.password;
      _sourceUri = $v.sourceUri;
      _shareView = $v.shareView;
      _showReadme = $v.showReadme;
      _passwordProtected = $v.passwordProtected;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Share other) {
    _$v = other as _$Share;
  }

  @override
  void update(void Function(ShareBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Share build() => _build();

  _$Share _build() {
    _$Share _$result;
    try {
      _$result = _$v ??
          _$Share._(
            id: id,
            name: name,
            visited: visited,
            downloaded: downloaded,
            price: price,
            unlocked: unlocked,
            sourceType: sourceType,
            owner: _owner?.build(),
            createdAt: createdAt,
            expired: expired,
            url: url,
            permissionSetting: _permissionSetting?.build(),
            isPrivate: isPrivate,
            password: password,
            sourceUri: sourceUri,
            shareView: shareView,
            showReadme: showReadme,
            passwordProtected: passwordProtected,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'owner';
        _owner?.build();

        _$failedField = 'permissionSetting';
        _permissionSetting?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Share', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
