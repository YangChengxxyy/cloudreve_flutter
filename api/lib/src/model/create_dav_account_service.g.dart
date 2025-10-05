// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_dav_account_service.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateDavAccountService extends CreateDavAccountService {
  @override
  final String? uri;
  @override
  final String? name;
  @override
  final bool? readonly;
  @override
  final bool? proxy;

  factory _$CreateDavAccountService(
          [void Function(CreateDavAccountServiceBuilder)? updates]) =>
      (CreateDavAccountServiceBuilder()..update(updates))._build();

  _$CreateDavAccountService._({this.uri, this.name, this.readonly, this.proxy})
      : super._();
  @override
  CreateDavAccountService rebuild(
          void Function(CreateDavAccountServiceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateDavAccountServiceBuilder toBuilder() =>
      CreateDavAccountServiceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateDavAccountService &&
        uri == other.uri &&
        name == other.name &&
        readonly == other.readonly &&
        proxy == other.proxy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, uri.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, readonly.hashCode);
    _$hash = $jc(_$hash, proxy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateDavAccountService')
          ..add('uri', uri)
          ..add('name', name)
          ..add('readonly', readonly)
          ..add('proxy', proxy))
        .toString();
  }
}

class CreateDavAccountServiceBuilder
    implements
        Builder<CreateDavAccountService, CreateDavAccountServiceBuilder> {
  _$CreateDavAccountService? _$v;

  String? _uri;
  String? get uri => _$this._uri;
  set uri(String? uri) => _$this._uri = uri;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _readonly;
  bool? get readonly => _$this._readonly;
  set readonly(bool? readonly) => _$this._readonly = readonly;

  bool? _proxy;
  bool? get proxy => _$this._proxy;
  set proxy(bool? proxy) => _$this._proxy = proxy;

  CreateDavAccountServiceBuilder() {
    CreateDavAccountService._defaults(this);
  }

  CreateDavAccountServiceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uri = $v.uri;
      _name = $v.name;
      _readonly = $v.readonly;
      _proxy = $v.proxy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateDavAccountService other) {
    _$v = other as _$CreateDavAccountService;
  }

  @override
  void update(void Function(CreateDavAccountServiceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateDavAccountService build() => _build();

  _$CreateDavAccountService _build() {
    final _$result = _$v ??
        _$CreateDavAccountService._(
          uri: uri,
          name: name,
          readonly: readonly,
          proxy: proxy,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
