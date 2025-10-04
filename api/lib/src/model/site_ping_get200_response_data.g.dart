// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'site_ping_get200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SitePingGet200ResponseData extends SitePingGet200ResponseData {
  @override
  final bool? webauthnEnabled;
  @override
  final bool passwordEnabled;
  @override
  final bool? qqEnabled;
  @override
  final bool? ssoEnabled;
  @override
  final JsonObject publicKey;
  @override
  final String sessionId;
  @override
  final SitePingGet200ResponseDataOptions options;

  factory _$SitePingGet200ResponseData(
          [void Function(SitePingGet200ResponseDataBuilder)? updates]) =>
      (SitePingGet200ResponseDataBuilder()..update(updates))._build();

  _$SitePingGet200ResponseData._(
      {this.webauthnEnabled,
      required this.passwordEnabled,
      this.qqEnabled,
      this.ssoEnabled,
      required this.publicKey,
      required this.sessionId,
      required this.options})
      : super._();
  @override
  SitePingGet200ResponseData rebuild(
          void Function(SitePingGet200ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SitePingGet200ResponseDataBuilder toBuilder() =>
      SitePingGet200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SitePingGet200ResponseData &&
        webauthnEnabled == other.webauthnEnabled &&
        passwordEnabled == other.passwordEnabled &&
        qqEnabled == other.qqEnabled &&
        ssoEnabled == other.ssoEnabled &&
        publicKey == other.publicKey &&
        sessionId == other.sessionId &&
        options == other.options;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, webauthnEnabled.hashCode);
    _$hash = $jc(_$hash, passwordEnabled.hashCode);
    _$hash = $jc(_$hash, qqEnabled.hashCode);
    _$hash = $jc(_$hash, ssoEnabled.hashCode);
    _$hash = $jc(_$hash, publicKey.hashCode);
    _$hash = $jc(_$hash, sessionId.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SitePingGet200ResponseData')
          ..add('webauthnEnabled', webauthnEnabled)
          ..add('passwordEnabled', passwordEnabled)
          ..add('qqEnabled', qqEnabled)
          ..add('ssoEnabled', ssoEnabled)
          ..add('publicKey', publicKey)
          ..add('sessionId', sessionId)
          ..add('options', options))
        .toString();
  }
}

class SitePingGet200ResponseDataBuilder
    implements
        Builder<SitePingGet200ResponseData, SitePingGet200ResponseDataBuilder> {
  _$SitePingGet200ResponseData? _$v;

  bool? _webauthnEnabled;
  bool? get webauthnEnabled => _$this._webauthnEnabled;
  set webauthnEnabled(bool? webauthnEnabled) =>
      _$this._webauthnEnabled = webauthnEnabled;

  bool? _passwordEnabled;
  bool? get passwordEnabled => _$this._passwordEnabled;
  set passwordEnabled(bool? passwordEnabled) =>
      _$this._passwordEnabled = passwordEnabled;

  bool? _qqEnabled;
  bool? get qqEnabled => _$this._qqEnabled;
  set qqEnabled(bool? qqEnabled) => _$this._qqEnabled = qqEnabled;

  bool? _ssoEnabled;
  bool? get ssoEnabled => _$this._ssoEnabled;
  set ssoEnabled(bool? ssoEnabled) => _$this._ssoEnabled = ssoEnabled;

  JsonObject? _publicKey;
  JsonObject? get publicKey => _$this._publicKey;
  set publicKey(JsonObject? publicKey) => _$this._publicKey = publicKey;

  String? _sessionId;
  String? get sessionId => _$this._sessionId;
  set sessionId(String? sessionId) => _$this._sessionId = sessionId;

  SitePingGet200ResponseDataOptionsBuilder? _options;
  SitePingGet200ResponseDataOptionsBuilder get options =>
      _$this._options ??= SitePingGet200ResponseDataOptionsBuilder();
  set options(SitePingGet200ResponseDataOptionsBuilder? options) =>
      _$this._options = options;

  SitePingGet200ResponseDataBuilder() {
    SitePingGet200ResponseData._defaults(this);
  }

  SitePingGet200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _webauthnEnabled = $v.webauthnEnabled;
      _passwordEnabled = $v.passwordEnabled;
      _qqEnabled = $v.qqEnabled;
      _ssoEnabled = $v.ssoEnabled;
      _publicKey = $v.publicKey;
      _sessionId = $v.sessionId;
      _options = $v.options.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SitePingGet200ResponseData other) {
    _$v = other as _$SitePingGet200ResponseData;
  }

  @override
  void update(void Function(SitePingGet200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SitePingGet200ResponseData build() => _build();

  _$SitePingGet200ResponseData _build() {
    _$SitePingGet200ResponseData _$result;
    try {
      _$result = _$v ??
          _$SitePingGet200ResponseData._(
            webauthnEnabled: webauthnEnabled,
            passwordEnabled: BuiltValueNullFieldError.checkNotNull(
                passwordEnabled,
                r'SitePingGet200ResponseData',
                'passwordEnabled'),
            qqEnabled: qqEnabled,
            ssoEnabled: ssoEnabled,
            publicKey: BuiltValueNullFieldError.checkNotNull(
                publicKey, r'SitePingGet200ResponseData', 'publicKey'),
            sessionId: BuiltValueNullFieldError.checkNotNull(
                sessionId, r'SitePingGet200ResponseData', 'sessionId'),
            options: options.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        options.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SitePingGet200ResponseData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
