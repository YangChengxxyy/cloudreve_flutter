// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_openid_put_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SessionOpenidPutRequestProviderEnum
    _$sessionOpenidPutRequestProviderEnum_number0 =
    const SessionOpenidPutRequestProviderEnum._('number0');
const SessionOpenidPutRequestProviderEnum
    _$sessionOpenidPutRequestProviderEnum_number1 =
    const SessionOpenidPutRequestProviderEnum._('number1');
const SessionOpenidPutRequestProviderEnum
    _$sessionOpenidPutRequestProviderEnum_number2 =
    const SessionOpenidPutRequestProviderEnum._('number2');

SessionOpenidPutRequestProviderEnum
    _$sessionOpenidPutRequestProviderEnumValueOf(String name) {
  switch (name) {
    case 'number0':
      return _$sessionOpenidPutRequestProviderEnum_number0;
    case 'number1':
      return _$sessionOpenidPutRequestProviderEnum_number1;
    case 'number2':
      return _$sessionOpenidPutRequestProviderEnum_number2;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SessionOpenidPutRequestProviderEnum>
    _$sessionOpenidPutRequestProviderEnumValues = BuiltSet<
        SessionOpenidPutRequestProviderEnum>(const <SessionOpenidPutRequestProviderEnum>[
  _$sessionOpenidPutRequestProviderEnum_number0,
  _$sessionOpenidPutRequestProviderEnum_number1,
  _$sessionOpenidPutRequestProviderEnum_number2,
]);

Serializer<SessionOpenidPutRequestProviderEnum>
    _$sessionOpenidPutRequestProviderEnumSerializer =
    _$SessionOpenidPutRequestProviderEnumSerializer();

class _$SessionOpenidPutRequestProviderEnumSerializer
    implements PrimitiveSerializer<SessionOpenidPutRequestProviderEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number0': 0,
    'number1': 1,
    'number2': 2,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    0: 'number0',
    1: 'number1',
    2: 'number2',
  };

  @override
  final Iterable<Type> types = const <Type>[
    SessionOpenidPutRequestProviderEnum
  ];
  @override
  final String wireName = 'SessionOpenidPutRequestProviderEnum';

  @override
  Object serialize(
          Serializers serializers, SessionOpenidPutRequestProviderEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SessionOpenidPutRequestProviderEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SessionOpenidPutRequestProviderEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SessionOpenidPutRequest extends SessionOpenidPutRequest {
  @override
  final String? hint;
  @override
  final bool? linking;
  @override
  final SessionOpenidPutRequestProviderEnum? provider;

  factory _$SessionOpenidPutRequest(
          [void Function(SessionOpenidPutRequestBuilder)? updates]) =>
      (SessionOpenidPutRequestBuilder()..update(updates))._build();

  _$SessionOpenidPutRequest._({this.hint, this.linking, this.provider})
      : super._();
  @override
  SessionOpenidPutRequest rebuild(
          void Function(SessionOpenidPutRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SessionOpenidPutRequestBuilder toBuilder() =>
      SessionOpenidPutRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SessionOpenidPutRequest &&
        hint == other.hint &&
        linking == other.linking &&
        provider == other.provider;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hint.hashCode);
    _$hash = $jc(_$hash, linking.hashCode);
    _$hash = $jc(_$hash, provider.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SessionOpenidPutRequest')
          ..add('hint', hint)
          ..add('linking', linking)
          ..add('provider', provider))
        .toString();
  }
}

class SessionOpenidPutRequestBuilder
    implements
        Builder<SessionOpenidPutRequest, SessionOpenidPutRequestBuilder> {
  _$SessionOpenidPutRequest? _$v;

  String? _hint;
  String? get hint => _$this._hint;
  set hint(String? hint) => _$this._hint = hint;

  bool? _linking;
  bool? get linking => _$this._linking;
  set linking(bool? linking) => _$this._linking = linking;

  SessionOpenidPutRequestProviderEnum? _provider;
  SessionOpenidPutRequestProviderEnum? get provider => _$this._provider;
  set provider(SessionOpenidPutRequestProviderEnum? provider) =>
      _$this._provider = provider;

  SessionOpenidPutRequestBuilder() {
    SessionOpenidPutRequest._defaults(this);
  }

  SessionOpenidPutRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hint = $v.hint;
      _linking = $v.linking;
      _provider = $v.provider;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SessionOpenidPutRequest other) {
    _$v = other as _$SessionOpenidPutRequest;
  }

  @override
  void update(void Function(SessionOpenidPutRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SessionOpenidPutRequest build() => _build();

  _$SessionOpenidPutRequest _build() {
    final _$result = _$v ??
        _$SessionOpenidPutRequest._(
          hint: hint,
          linking: linking,
          provider: provider,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
