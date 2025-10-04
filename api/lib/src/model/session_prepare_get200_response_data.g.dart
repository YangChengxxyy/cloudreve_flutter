// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_prepare_get200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SessionPrepareGet200ResponseData
    extends SessionPrepareGet200ResponseData {
  @override
  final bool? webauthnEnabled;
  @override
  final bool? ssoEnabled;
  @override
  final bool passwordEnabled;
  @override
  final bool? qqEnabled;

  factory _$SessionPrepareGet200ResponseData(
          [void Function(SessionPrepareGet200ResponseDataBuilder)? updates]) =>
      (SessionPrepareGet200ResponseDataBuilder()..update(updates))._build();

  _$SessionPrepareGet200ResponseData._(
      {this.webauthnEnabled,
      this.ssoEnabled,
      required this.passwordEnabled,
      this.qqEnabled})
      : super._();
  @override
  SessionPrepareGet200ResponseData rebuild(
          void Function(SessionPrepareGet200ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SessionPrepareGet200ResponseDataBuilder toBuilder() =>
      SessionPrepareGet200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SessionPrepareGet200ResponseData &&
        webauthnEnabled == other.webauthnEnabled &&
        ssoEnabled == other.ssoEnabled &&
        passwordEnabled == other.passwordEnabled &&
        qqEnabled == other.qqEnabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, webauthnEnabled.hashCode);
    _$hash = $jc(_$hash, ssoEnabled.hashCode);
    _$hash = $jc(_$hash, passwordEnabled.hashCode);
    _$hash = $jc(_$hash, qqEnabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SessionPrepareGet200ResponseData')
          ..add('webauthnEnabled', webauthnEnabled)
          ..add('ssoEnabled', ssoEnabled)
          ..add('passwordEnabled', passwordEnabled)
          ..add('qqEnabled', qqEnabled))
        .toString();
  }
}

class SessionPrepareGet200ResponseDataBuilder
    implements
        Builder<SessionPrepareGet200ResponseData,
            SessionPrepareGet200ResponseDataBuilder> {
  _$SessionPrepareGet200ResponseData? _$v;

  bool? _webauthnEnabled;
  bool? get webauthnEnabled => _$this._webauthnEnabled;
  set webauthnEnabled(bool? webauthnEnabled) =>
      _$this._webauthnEnabled = webauthnEnabled;

  bool? _ssoEnabled;
  bool? get ssoEnabled => _$this._ssoEnabled;
  set ssoEnabled(bool? ssoEnabled) => _$this._ssoEnabled = ssoEnabled;

  bool? _passwordEnabled;
  bool? get passwordEnabled => _$this._passwordEnabled;
  set passwordEnabled(bool? passwordEnabled) =>
      _$this._passwordEnabled = passwordEnabled;

  bool? _qqEnabled;
  bool? get qqEnabled => _$this._qqEnabled;
  set qqEnabled(bool? qqEnabled) => _$this._qqEnabled = qqEnabled;

  SessionPrepareGet200ResponseDataBuilder() {
    SessionPrepareGet200ResponseData._defaults(this);
  }

  SessionPrepareGet200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _webauthnEnabled = $v.webauthnEnabled;
      _ssoEnabled = $v.ssoEnabled;
      _passwordEnabled = $v.passwordEnabled;
      _qqEnabled = $v.qqEnabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SessionPrepareGet200ResponseData other) {
    _$v = other as _$SessionPrepareGet200ResponseData;
  }

  @override
  void update(void Function(SessionPrepareGet200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SessionPrepareGet200ResponseData build() => _build();

  _$SessionPrepareGet200ResponseData _build() {
    final _$result = _$v ??
        _$SessionPrepareGet200ResponseData._(
          webauthnEnabled: webauthnEnabled,
          ssoEnabled: ssoEnabled,
          passwordEnabled: BuiltValueNullFieldError.checkNotNull(
              passwordEnabled,
              r'SessionPrepareGet200ResponseData',
              'passwordEnabled'),
          qqEnabled: qqEnabled,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
