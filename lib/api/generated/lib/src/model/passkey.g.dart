// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passkey.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Passkey extends Passkey {
  @override
  final String id;
  @override
  final String name;
  @override
  final DateTime? usedAt;
  @override
  final DateTime createdAt;

  factory _$Passkey([void Function(PasskeyBuilder)? updates]) =>
      (PasskeyBuilder()..update(updates))._build();

  _$Passkey._(
      {required this.id,
      required this.name,
      this.usedAt,
      required this.createdAt})
      : super._();
  @override
  Passkey rebuild(void Function(PasskeyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PasskeyBuilder toBuilder() => PasskeyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Passkey &&
        id == other.id &&
        name == other.name &&
        usedAt == other.usedAt &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, usedAt.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Passkey')
          ..add('id', id)
          ..add('name', name)
          ..add('usedAt', usedAt)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class PasskeyBuilder implements Builder<Passkey, PasskeyBuilder> {
  _$Passkey? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DateTime? _usedAt;
  DateTime? get usedAt => _$this._usedAt;
  set usedAt(DateTime? usedAt) => _$this._usedAt = usedAt;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  PasskeyBuilder() {
    Passkey._defaults(this);
  }

  PasskeyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _usedAt = $v.usedAt;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Passkey other) {
    _$v = other as _$Passkey;
  }

  @override
  void update(void Function(PasskeyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Passkey build() => _build();

  _$Passkey _build() {
    final _$result = _$v ??
        _$Passkey._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'Passkey', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(name, r'Passkey', 'name'),
          usedAt: usedAt,
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'Passkey', 'createdAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
