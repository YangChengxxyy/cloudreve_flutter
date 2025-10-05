// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dav_account.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DavAccount extends DavAccount {
  @override
  final String? id;
  @override
  final DateTime? createdAt;
  @override
  final String? name;
  @override
  final String? uri;
  @override
  final String? password;
  @override
  final String? options;

  factory _$DavAccount([void Function(DavAccountBuilder)? updates]) =>
      (DavAccountBuilder()..update(updates))._build();

  _$DavAccount._(
      {this.id,
      this.createdAt,
      this.name,
      this.uri,
      this.password,
      this.options})
      : super._();
  @override
  DavAccount rebuild(void Function(DavAccountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DavAccountBuilder toBuilder() => DavAccountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DavAccount &&
        id == other.id &&
        createdAt == other.createdAt &&
        name == other.name &&
        uri == other.uri &&
        password == other.password &&
        options == other.options;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, uri.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DavAccount')
          ..add('id', id)
          ..add('createdAt', createdAt)
          ..add('name', name)
          ..add('uri', uri)
          ..add('password', password)
          ..add('options', options))
        .toString();
  }
}

class DavAccountBuilder implements Builder<DavAccount, DavAccountBuilder> {
  _$DavAccount? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _uri;
  String? get uri => _$this._uri;
  set uri(String? uri) => _$this._uri = uri;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _options;
  String? get options => _$this._options;
  set options(String? options) => _$this._options = options;

  DavAccountBuilder() {
    DavAccount._defaults(this);
  }

  DavAccountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _createdAt = $v.createdAt;
      _name = $v.name;
      _uri = $v.uri;
      _password = $v.password;
      _options = $v.options;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DavAccount other) {
    _$v = other as _$DavAccount;
  }

  @override
  void update(void Function(DavAccountBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DavAccount build() => _build();

  _$DavAccount _build() {
    final _$result = _$v ??
        _$DavAccount._(
          id: id,
          createdAt: createdAt,
          name: name,
          uri: uri,
          password: password,
          options: options,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
