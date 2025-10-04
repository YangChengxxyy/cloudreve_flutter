// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_setting_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserSettingGet200Response extends UserSettingGet200Response {
  @override
  final UserSettingGet200ResponseData? data;
  @override
  final String? msg;
  @override
  final String? error;
  @override
  final String? correlationId;

  factory _$UserSettingGet200Response(
          [void Function(UserSettingGet200ResponseBuilder)? updates]) =>
      (UserSettingGet200ResponseBuilder()..update(updates))._build();

  _$UserSettingGet200Response._(
      {this.data, this.msg, this.error, this.correlationId})
      : super._();
  @override
  UserSettingGet200Response rebuild(
          void Function(UserSettingGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserSettingGet200ResponseBuilder toBuilder() =>
      UserSettingGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserSettingGet200Response &&
        data == other.data &&
        msg == other.msg &&
        error == other.error &&
        correlationId == other.correlationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, msg.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, correlationId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserSettingGet200Response')
          ..add('data', data)
          ..add('msg', msg)
          ..add('error', error)
          ..add('correlationId', correlationId))
        .toString();
  }
}

class UserSettingGet200ResponseBuilder
    implements
        Builder<UserSettingGet200Response, UserSettingGet200ResponseBuilder> {
  _$UserSettingGet200Response? _$v;

  UserSettingGet200ResponseDataBuilder? _data;
  UserSettingGet200ResponseDataBuilder get data =>
      _$this._data ??= UserSettingGet200ResponseDataBuilder();
  set data(UserSettingGet200ResponseDataBuilder? data) => _$this._data = data;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  String? _correlationId;
  String? get correlationId => _$this._correlationId;
  set correlationId(String? correlationId) =>
      _$this._correlationId = correlationId;

  UserSettingGet200ResponseBuilder() {
    UserSettingGet200Response._defaults(this);
  }

  UserSettingGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _msg = $v.msg;
      _error = $v.error;
      _correlationId = $v.correlationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserSettingGet200Response other) {
    _$v = other as _$UserSettingGet200Response;
  }

  @override
  void update(void Function(UserSettingGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserSettingGet200Response build() => _build();

  _$UserSettingGet200Response _build() {
    _$UserSettingGet200Response _$result;
    try {
      _$result = _$v ??
          _$UserSettingGet200Response._(
            data: _data?.build(),
            msg: msg,
            error: error,
            correlationId: correlationId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UserSettingGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
