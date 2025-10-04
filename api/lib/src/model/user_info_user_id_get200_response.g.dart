// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_user_id_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserInfoUserIdGet200Response extends UserInfoUserIdGet200Response {
  @override
  final UserInfoUserIdGet200ResponseData data;
  @override
  final int code;
  @override
  final String? msg;
  @override
  final String? error;
  @override
  final String? correlationId;

  factory _$UserInfoUserIdGet200Response(
          [void Function(UserInfoUserIdGet200ResponseBuilder)? updates]) =>
      (UserInfoUserIdGet200ResponseBuilder()..update(updates))._build();

  _$UserInfoUserIdGet200Response._(
      {required this.data,
      required this.code,
      this.msg,
      this.error,
      this.correlationId})
      : super._();
  @override
  UserInfoUserIdGet200Response rebuild(
          void Function(UserInfoUserIdGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserInfoUserIdGet200ResponseBuilder toBuilder() =>
      UserInfoUserIdGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserInfoUserIdGet200Response &&
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
    return (newBuiltValueToStringHelper(r'UserInfoUserIdGet200Response')
          ..add('data', data)
          ..add('code', code)
          ..add('msg', msg)
          ..add('error', error)
          ..add('correlationId', correlationId))
        .toString();
  }
}

class UserInfoUserIdGet200ResponseBuilder
    implements
        Builder<UserInfoUserIdGet200Response,
            UserInfoUserIdGet200ResponseBuilder> {
  _$UserInfoUserIdGet200Response? _$v;

  UserInfoUserIdGet200ResponseDataBuilder? _data;
  UserInfoUserIdGet200ResponseDataBuilder get data =>
      _$this._data ??= UserInfoUserIdGet200ResponseDataBuilder();
  set data(UserInfoUserIdGet200ResponseDataBuilder? data) =>
      _$this._data = data;

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

  UserInfoUserIdGet200ResponseBuilder() {
    UserInfoUserIdGet200Response._defaults(this);
  }

  UserInfoUserIdGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _code = $v.code;
      _msg = $v.msg;
      _error = $v.error;
      _correlationId = $v.correlationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserInfoUserIdGet200Response other) {
    _$v = other as _$UserInfoUserIdGet200Response;
  }

  @override
  void update(void Function(UserInfoUserIdGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserInfoUserIdGet200Response build() => _build();

  _$UserInfoUserIdGet200Response _build() {
    _$UserInfoUserIdGet200Response _$result;
    try {
      _$result = _$v ??
          _$UserInfoUserIdGet200Response._(
            data: data.build(),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'UserInfoUserIdGet200Response', 'code'),
            msg: msg,
            error: error,
            correlationId: correlationId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UserInfoUserIdGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
