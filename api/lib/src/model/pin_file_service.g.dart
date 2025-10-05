// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pin_file_service.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PinFileService extends PinFileService {
  @override
  final String? uri;
  @override
  final String? name;

  factory _$PinFileService([void Function(PinFileServiceBuilder)? updates]) =>
      (PinFileServiceBuilder()..update(updates))._build();

  _$PinFileService._({this.uri, this.name}) : super._();
  @override
  PinFileService rebuild(void Function(PinFileServiceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinFileServiceBuilder toBuilder() => PinFileServiceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PinFileService && uri == other.uri && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, uri.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PinFileService')
          ..add('uri', uri)
          ..add('name', name))
        .toString();
  }
}

class PinFileServiceBuilder
    implements Builder<PinFileService, PinFileServiceBuilder> {
  _$PinFileService? _$v;

  String? _uri;
  String? get uri => _$this._uri;
  set uri(String? uri) => _$this._uri = uri;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PinFileServiceBuilder() {
    PinFileService._defaults(this);
  }

  PinFileServiceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uri = $v.uri;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PinFileService other) {
    _$v = other as _$PinFileService;
  }

  @override
  void update(void Function(PinFileServiceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PinFileService build() => _build();

  _$PinFileService _build() {
    final _$result = _$v ??
        _$PinFileService._(
          uri: uri,
          name: name,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
