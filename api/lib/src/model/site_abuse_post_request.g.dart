// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'site_abuse_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SiteAbusePostRequestCategoryEnum _$siteAbusePostRequestCategoryEnum_n0 =
    const SiteAbusePostRequestCategoryEnum._('n0');
const SiteAbusePostRequestCategoryEnum _$siteAbusePostRequestCategoryEnum_n1 =
    const SiteAbusePostRequestCategoryEnum._('n1');
const SiteAbusePostRequestCategoryEnum _$siteAbusePostRequestCategoryEnum_n2 =
    const SiteAbusePostRequestCategoryEnum._('n2');
const SiteAbusePostRequestCategoryEnum _$siteAbusePostRequestCategoryEnum_n3 =
    const SiteAbusePostRequestCategoryEnum._('n3');

SiteAbusePostRequestCategoryEnum _$siteAbusePostRequestCategoryEnumValueOf(
    String name) {
  switch (name) {
    case 'n0':
      return _$siteAbusePostRequestCategoryEnum_n0;
    case 'n1':
      return _$siteAbusePostRequestCategoryEnum_n1;
    case 'n2':
      return _$siteAbusePostRequestCategoryEnum_n2;
    case 'n3':
      return _$siteAbusePostRequestCategoryEnum_n3;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SiteAbusePostRequestCategoryEnum>
    _$siteAbusePostRequestCategoryEnumValues = BuiltSet<
        SiteAbusePostRequestCategoryEnum>(const <SiteAbusePostRequestCategoryEnum>[
  _$siteAbusePostRequestCategoryEnum_n0,
  _$siteAbusePostRequestCategoryEnum_n1,
  _$siteAbusePostRequestCategoryEnum_n2,
  _$siteAbusePostRequestCategoryEnum_n3,
]);

Serializer<SiteAbusePostRequestCategoryEnum>
    _$siteAbusePostRequestCategoryEnumSerializer =
    _$SiteAbusePostRequestCategoryEnumSerializer();

class _$SiteAbusePostRequestCategoryEnumSerializer
    implements PrimitiveSerializer<SiteAbusePostRequestCategoryEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'n0': '0',
    'n1': '1',
    'n2': '2',
    'n3': '3',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    '0': 'n0',
    '1': 'n1',
    '2': 'n2',
    '3': 'n3',
  };

  @override
  final Iterable<Type> types = const <Type>[SiteAbusePostRequestCategoryEnum];
  @override
  final String wireName = 'SiteAbusePostRequestCategoryEnum';

  @override
  Object serialize(
          Serializers serializers, SiteAbusePostRequestCategoryEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SiteAbusePostRequestCategoryEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SiteAbusePostRequestCategoryEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SiteAbusePostRequest extends SiteAbusePostRequest {
  @override
  final String? captcha;
  @override
  final String? ticket;
  @override
  final String? fileUri;
  @override
  final SiteAbusePostRequestCategoryEnum category;
  @override
  final String? description;
  @override
  final String? shareId;
  @override
  final String? userId;

  factory _$SiteAbusePostRequest(
          [void Function(SiteAbusePostRequestBuilder)? updates]) =>
      (SiteAbusePostRequestBuilder()..update(updates))._build();

  _$SiteAbusePostRequest._(
      {this.captcha,
      this.ticket,
      this.fileUri,
      required this.category,
      this.description,
      this.shareId,
      this.userId})
      : super._();
  @override
  SiteAbusePostRequest rebuild(
          void Function(SiteAbusePostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SiteAbusePostRequestBuilder toBuilder() =>
      SiteAbusePostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SiteAbusePostRequest &&
        captcha == other.captcha &&
        ticket == other.ticket &&
        fileUri == other.fileUri &&
        category == other.category &&
        description == other.description &&
        shareId == other.shareId &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, captcha.hashCode);
    _$hash = $jc(_$hash, ticket.hashCode);
    _$hash = $jc(_$hash, fileUri.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, shareId.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SiteAbusePostRequest')
          ..add('captcha', captcha)
          ..add('ticket', ticket)
          ..add('fileUri', fileUri)
          ..add('category', category)
          ..add('description', description)
          ..add('shareId', shareId)
          ..add('userId', userId))
        .toString();
  }
}

class SiteAbusePostRequestBuilder
    implements Builder<SiteAbusePostRequest, SiteAbusePostRequestBuilder> {
  _$SiteAbusePostRequest? _$v;

  String? _captcha;
  String? get captcha => _$this._captcha;
  set captcha(String? captcha) => _$this._captcha = captcha;

  String? _ticket;
  String? get ticket => _$this._ticket;
  set ticket(String? ticket) => _$this._ticket = ticket;

  String? _fileUri;
  String? get fileUri => _$this._fileUri;
  set fileUri(String? fileUri) => _$this._fileUri = fileUri;

  SiteAbusePostRequestCategoryEnum? _category;
  SiteAbusePostRequestCategoryEnum? get category => _$this._category;
  set category(SiteAbusePostRequestCategoryEnum? category) =>
      _$this._category = category;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _shareId;
  String? get shareId => _$this._shareId;
  set shareId(String? shareId) => _$this._shareId = shareId;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  SiteAbusePostRequestBuilder() {
    SiteAbusePostRequest._defaults(this);
  }

  SiteAbusePostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _captcha = $v.captcha;
      _ticket = $v.ticket;
      _fileUri = $v.fileUri;
      _category = $v.category;
      _description = $v.description;
      _shareId = $v.shareId;
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SiteAbusePostRequest other) {
    _$v = other as _$SiteAbusePostRequest;
  }

  @override
  void update(void Function(SiteAbusePostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SiteAbusePostRequest build() => _build();

  _$SiteAbusePostRequest _build() {
    final _$result = _$v ??
        _$SiteAbusePostRequest._(
          captcha: captcha,
          ticket: ticket,
          fileUri: fileUri,
          category: BuiltValueNullFieldError.checkNotNull(
              category, r'SiteAbusePostRequest', 'category'),
          description: description,
          shareId: shareId,
          userId: userId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
