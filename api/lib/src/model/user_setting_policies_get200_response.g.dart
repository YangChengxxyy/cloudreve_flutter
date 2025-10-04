// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_setting_policies_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserSettingPoliciesGet200Response
    extends UserSettingPoliciesGet200Response {
  @override
  final BuiltList<StoragePolicy>? data;
  @override
  final int code;
  @override
  final String? msg;
  @override
  final String? error;
  @override
  final String? correlationId;

  factory _$UserSettingPoliciesGet200Response(
          [void Function(UserSettingPoliciesGet200ResponseBuilder)? updates]) =>
      (UserSettingPoliciesGet200ResponseBuilder()..update(updates))._build();

  _$UserSettingPoliciesGet200Response._(
      {this.data, required this.code, this.msg, this.error, this.correlationId})
      : super._();
  @override
  UserSettingPoliciesGet200Response rebuild(
          void Function(UserSettingPoliciesGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserSettingPoliciesGet200ResponseBuilder toBuilder() =>
      UserSettingPoliciesGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserSettingPoliciesGet200Response &&
        data == other.data &&
        code == other.code &&
        msg == other.msg &&
        error == other.error &&
        correlationId == other.correlationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, msg.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, correlationId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserSettingPoliciesGet200Response')
          ..add('data', data)
          ..add('code', code)
          ..add('msg', msg)
          ..add('error', error)
          ..add('correlationId', correlationId))
        .toString();
  }
}

class UserSettingPoliciesGet200ResponseBuilder
    implements
        Builder<UserSettingPoliciesGet200Response,
            UserSettingPoliciesGet200ResponseBuilder> {
  _$UserSettingPoliciesGet200Response? _$v;

  ListBuilder<StoragePolicy>? _data;
  ListBuilder<StoragePolicy> get data =>
      _$this._data ??= ListBuilder<StoragePolicy>();
  set data(ListBuilder<StoragePolicy>? data) => _$this._data = data;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

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

  UserSettingPoliciesGet200ResponseBuilder() {
    UserSettingPoliciesGet200Response._defaults(this);
  }

  UserSettingPoliciesGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _code = $v.code;
      _msg = $v.msg;
      _error = $v.error;
      _correlationId = $v.correlationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserSettingPoliciesGet200Response other) {
    _$v = other as _$UserSettingPoliciesGet200Response;
  }

  @override
  void update(
      void Function(UserSettingPoliciesGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserSettingPoliciesGet200Response build() => _build();

  _$UserSettingPoliciesGet200Response _build() {
    _$UserSettingPoliciesGet200Response _$result;
    try {
      _$result = _$v ??
          _$UserSettingPoliciesGet200Response._(
            data: _data?.build(),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'UserSettingPoliciesGet200Response', 'code'),
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
            r'UserSettingPoliciesGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
