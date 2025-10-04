// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_credit_changes_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserCreditChangesGet200Response
    extends UserCreditChangesGet200Response {
  @override
  final UserCreditChangesGet200ResponseData data;
  @override
  final int code;
  @override
  final String? msg;
  @override
  final String? error;
  @override
  final String? correlationId;

  factory _$UserCreditChangesGet200Response(
          [void Function(UserCreditChangesGet200ResponseBuilder)? updates]) =>
      (UserCreditChangesGet200ResponseBuilder()..update(updates))._build();

  _$UserCreditChangesGet200Response._(
      {required this.data,
      required this.code,
      this.msg,
      this.error,
      this.correlationId})
      : super._();
  @override
  UserCreditChangesGet200Response rebuild(
          void Function(UserCreditChangesGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserCreditChangesGet200ResponseBuilder toBuilder() =>
      UserCreditChangesGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserCreditChangesGet200Response &&
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
    return (newBuiltValueToStringHelper(r'UserCreditChangesGet200Response')
          ..add('data', data)
          ..add('code', code)
          ..add('msg', msg)
          ..add('error', error)
          ..add('correlationId', correlationId))
        .toString();
  }
}

class UserCreditChangesGet200ResponseBuilder
    implements
        Builder<UserCreditChangesGet200Response,
            UserCreditChangesGet200ResponseBuilder> {
  _$UserCreditChangesGet200Response? _$v;

  UserCreditChangesGet200ResponseDataBuilder? _data;
  UserCreditChangesGet200ResponseDataBuilder get data =>
      _$this._data ??= UserCreditChangesGet200ResponseDataBuilder();
  set data(UserCreditChangesGet200ResponseDataBuilder? data) =>
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

  UserCreditChangesGet200ResponseBuilder() {
    UserCreditChangesGet200Response._defaults(this);
  }

  UserCreditChangesGet200ResponseBuilder get _$this {
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
  void replace(UserCreditChangesGet200Response other) {
    _$v = other as _$UserCreditChangesGet200Response;
  }

  @override
  void update(void Function(UserCreditChangesGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserCreditChangesGet200Response build() => _build();

  _$UserCreditChangesGet200Response _build() {
    _$UserCreditChangesGet200Response _$result;
    try {
      _$result = _$v ??
          _$UserCreditChangesGet200Response._(
            data: data.build(),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'UserCreditChangesGet200Response', 'code'),
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
            r'UserCreditChangesGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
