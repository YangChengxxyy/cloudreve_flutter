// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_setting_get200_response_data_open_id_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UserSettingGet200ResponseDataOpenIdInnerProviderEnum
    _$userSettingGet200ResponseDataOpenIdInnerProviderEnum_number0 =
    const UserSettingGet200ResponseDataOpenIdInnerProviderEnum._('number0');
const UserSettingGet200ResponseDataOpenIdInnerProviderEnum
    _$userSettingGet200ResponseDataOpenIdInnerProviderEnum_number1 =
    const UserSettingGet200ResponseDataOpenIdInnerProviderEnum._('number1');
const UserSettingGet200ResponseDataOpenIdInnerProviderEnum
    _$userSettingGet200ResponseDataOpenIdInnerProviderEnum_number2 =
    const UserSettingGet200ResponseDataOpenIdInnerProviderEnum._('number2');

UserSettingGet200ResponseDataOpenIdInnerProviderEnum
    _$userSettingGet200ResponseDataOpenIdInnerProviderEnumValueOf(String name) {
  switch (name) {
    case 'number0':
      return _$userSettingGet200ResponseDataOpenIdInnerProviderEnum_number0;
    case 'number1':
      return _$userSettingGet200ResponseDataOpenIdInnerProviderEnum_number1;
    case 'number2':
      return _$userSettingGet200ResponseDataOpenIdInnerProviderEnum_number2;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<UserSettingGet200ResponseDataOpenIdInnerProviderEnum>
    _$userSettingGet200ResponseDataOpenIdInnerProviderEnumValues = BuiltSet<
        UserSettingGet200ResponseDataOpenIdInnerProviderEnum>(const <UserSettingGet200ResponseDataOpenIdInnerProviderEnum>[
  _$userSettingGet200ResponseDataOpenIdInnerProviderEnum_number0,
  _$userSettingGet200ResponseDataOpenIdInnerProviderEnum_number1,
  _$userSettingGet200ResponseDataOpenIdInnerProviderEnum_number2,
]);

Serializer<UserSettingGet200ResponseDataOpenIdInnerProviderEnum>
    _$userSettingGet200ResponseDataOpenIdInnerProviderEnumSerializer =
    _$UserSettingGet200ResponseDataOpenIdInnerProviderEnumSerializer();

class _$UserSettingGet200ResponseDataOpenIdInnerProviderEnumSerializer
    implements
        PrimitiveSerializer<
            UserSettingGet200ResponseDataOpenIdInnerProviderEnum> {
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
    UserSettingGet200ResponseDataOpenIdInnerProviderEnum
  ];
  @override
  final String wireName =
      'UserSettingGet200ResponseDataOpenIdInnerProviderEnum';

  @override
  Object serialize(Serializers serializers,
          UserSettingGet200ResponseDataOpenIdInnerProviderEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UserSettingGet200ResponseDataOpenIdInnerProviderEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UserSettingGet200ResponseDataOpenIdInnerProviderEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$UserSettingGet200ResponseDataOpenIdInner
    extends UserSettingGet200ResponseDataOpenIdInner {
  @override
  final UserSettingGet200ResponseDataOpenIdInnerProviderEnum? provider;
  @override
  final String? linkedAt;

  factory _$UserSettingGet200ResponseDataOpenIdInner(
          [void Function(UserSettingGet200ResponseDataOpenIdInnerBuilder)?
              updates]) =>
      (UserSettingGet200ResponseDataOpenIdInnerBuilder()..update(updates))
          ._build();

  _$UserSettingGet200ResponseDataOpenIdInner._({this.provider, this.linkedAt})
      : super._();
  @override
  UserSettingGet200ResponseDataOpenIdInner rebuild(
          void Function(UserSettingGet200ResponseDataOpenIdInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserSettingGet200ResponseDataOpenIdInnerBuilder toBuilder() =>
      UserSettingGet200ResponseDataOpenIdInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserSettingGet200ResponseDataOpenIdInner &&
        provider == other.provider &&
        linkedAt == other.linkedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, provider.hashCode);
    _$hash = $jc(_$hash, linkedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'UserSettingGet200ResponseDataOpenIdInner')
          ..add('provider', provider)
          ..add('linkedAt', linkedAt))
        .toString();
  }
}

class UserSettingGet200ResponseDataOpenIdInnerBuilder
    implements
        Builder<UserSettingGet200ResponseDataOpenIdInner,
            UserSettingGet200ResponseDataOpenIdInnerBuilder> {
  _$UserSettingGet200ResponseDataOpenIdInner? _$v;

  UserSettingGet200ResponseDataOpenIdInnerProviderEnum? _provider;
  UserSettingGet200ResponseDataOpenIdInnerProviderEnum? get provider =>
      _$this._provider;
  set provider(
          UserSettingGet200ResponseDataOpenIdInnerProviderEnum? provider) =>
      _$this._provider = provider;

  String? _linkedAt;
  String? get linkedAt => _$this._linkedAt;
  set linkedAt(String? linkedAt) => _$this._linkedAt = linkedAt;

  UserSettingGet200ResponseDataOpenIdInnerBuilder() {
    UserSettingGet200ResponseDataOpenIdInner._defaults(this);
  }

  UserSettingGet200ResponseDataOpenIdInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _provider = $v.provider;
      _linkedAt = $v.linkedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserSettingGet200ResponseDataOpenIdInner other) {
    _$v = other as _$UserSettingGet200ResponseDataOpenIdInner;
  }

  @override
  void update(
      void Function(UserSettingGet200ResponseDataOpenIdInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserSettingGet200ResponseDataOpenIdInner build() => _build();

  _$UserSettingGet200ResponseDataOpenIdInner _build() {
    final _$result = _$v ??
        _$UserSettingGet200ResponseDataOpenIdInner._(
          provider: provider,
          linkedAt: linkedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
