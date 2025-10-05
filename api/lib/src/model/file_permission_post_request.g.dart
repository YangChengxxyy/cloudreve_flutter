// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_permission_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FilePermissionPostRequest extends FilePermissionPostRequest {
  @override
  final BuiltList<String>? uris;
  @override
  final PermissionSetting? setting;

  factory _$FilePermissionPostRequest(
          [void Function(FilePermissionPostRequestBuilder)? updates]) =>
      (FilePermissionPostRequestBuilder()..update(updates))._build();

  _$FilePermissionPostRequest._({this.uris, this.setting}) : super._();
  @override
  FilePermissionPostRequest rebuild(
          void Function(FilePermissionPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilePermissionPostRequestBuilder toBuilder() =>
      FilePermissionPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilePermissionPostRequest &&
        uris == other.uris &&
        setting == other.setting;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, uris.hashCode);
    _$hash = $jc(_$hash, setting.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FilePermissionPostRequest')
          ..add('uris', uris)
          ..add('setting', setting))
        .toString();
  }
}

class FilePermissionPostRequestBuilder
    implements
        Builder<FilePermissionPostRequest, FilePermissionPostRequestBuilder> {
  _$FilePermissionPostRequest? _$v;

  ListBuilder<String>? _uris;
  ListBuilder<String> get uris => _$this._uris ??= ListBuilder<String>();
  set uris(ListBuilder<String>? uris) => _$this._uris = uris;

  PermissionSettingBuilder? _setting;
  PermissionSettingBuilder get setting =>
      _$this._setting ??= PermissionSettingBuilder();
  set setting(PermissionSettingBuilder? setting) => _$this._setting = setting;

  FilePermissionPostRequestBuilder() {
    FilePermissionPostRequest._defaults(this);
  }

  FilePermissionPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uris = $v.uris?.toBuilder();
      _setting = $v.setting?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FilePermissionPostRequest other) {
    _$v = other as _$FilePermissionPostRequest;
  }

  @override
  void update(void Function(FilePermissionPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FilePermissionPostRequest build() => _build();

  _$FilePermissionPostRequest _build() {
    _$FilePermissionPostRequest _$result;
    try {
      _$result = _$v ??
          _$FilePermissionPostRequest._(
            uris: _uris?.build(),
            setting: _setting?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'uris';
        _uris?.build();
        _$failedField = 'setting';
        _setting?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FilePermissionPostRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
