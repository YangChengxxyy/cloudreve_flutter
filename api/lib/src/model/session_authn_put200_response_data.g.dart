// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_authn_put200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SessionAuthnPut200ResponseData extends SessionAuthnPut200ResponseData {
  @override
  final String? sessionId;
  @override
  final BuiltMap<String, JsonObject?>? options;

  factory _$SessionAuthnPut200ResponseData(
          [void Function(SessionAuthnPut200ResponseDataBuilder)? updates]) =>
      (SessionAuthnPut200ResponseDataBuilder()..update(updates))._build();

  _$SessionAuthnPut200ResponseData._({this.sessionId, this.options})
      : super._();
  @override
  SessionAuthnPut200ResponseData rebuild(
          void Function(SessionAuthnPut200ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SessionAuthnPut200ResponseDataBuilder toBuilder() =>
      SessionAuthnPut200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SessionAuthnPut200ResponseData &&
        sessionId == other.sessionId &&
        options == other.options;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sessionId.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SessionAuthnPut200ResponseData')
          ..add('sessionId', sessionId)
          ..add('options', options))
        .toString();
  }
}

class SessionAuthnPut200ResponseDataBuilder
    implements
        Builder<SessionAuthnPut200ResponseData,
            SessionAuthnPut200ResponseDataBuilder> {
  _$SessionAuthnPut200ResponseData? _$v;

  String? _sessionId;
  String? get sessionId => _$this._sessionId;
  set sessionId(String? sessionId) => _$this._sessionId = sessionId;

  MapBuilder<String, JsonObject?>? _options;
  MapBuilder<String, JsonObject?> get options =>
      _$this._options ??= MapBuilder<String, JsonObject?>();
  set options(MapBuilder<String, JsonObject?>? options) =>
      _$this._options = options;

  SessionAuthnPut200ResponseDataBuilder() {
    SessionAuthnPut200ResponseData._defaults(this);
  }

  SessionAuthnPut200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sessionId = $v.sessionId;
      _options = $v.options?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SessionAuthnPut200ResponseData other) {
    _$v = other as _$SessionAuthnPut200ResponseData;
  }

  @override
  void update(void Function(SessionAuthnPut200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SessionAuthnPut200ResponseData build() => _build();

  _$SessionAuthnPut200ResponseData _build() {
    _$SessionAuthnPut200ResponseData _$result;
    try {
      _$result = _$v ??
          _$SessionAuthnPut200ResponseData._(
            sessionId: sessionId,
            options: _options?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        _options?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SessionAuthnPut200ResponseData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
