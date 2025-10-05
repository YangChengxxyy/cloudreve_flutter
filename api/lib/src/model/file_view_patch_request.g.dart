// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_view_patch_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileViewPatchRequest extends FileViewPatchRequest {
  @override
  final String? uri;
  @override
  final ExplorerView? view;

  factory _$FileViewPatchRequest(
          [void Function(FileViewPatchRequestBuilder)? updates]) =>
      (FileViewPatchRequestBuilder()..update(updates))._build();

  _$FileViewPatchRequest._({this.uri, this.view}) : super._();
  @override
  FileViewPatchRequest rebuild(
          void Function(FileViewPatchRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileViewPatchRequestBuilder toBuilder() =>
      FileViewPatchRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileViewPatchRequest &&
        uri == other.uri &&
        view == other.view;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, uri.hashCode);
    _$hash = $jc(_$hash, view.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FileViewPatchRequest')
          ..add('uri', uri)
          ..add('view', view))
        .toString();
  }
}

class FileViewPatchRequestBuilder
    implements Builder<FileViewPatchRequest, FileViewPatchRequestBuilder> {
  _$FileViewPatchRequest? _$v;

  String? _uri;
  String? get uri => _$this._uri;
  set uri(String? uri) => _$this._uri = uri;

  ExplorerViewBuilder? _view;
  ExplorerViewBuilder get view => _$this._view ??= ExplorerViewBuilder();
  set view(ExplorerViewBuilder? view) => _$this._view = view;

  FileViewPatchRequestBuilder() {
    FileViewPatchRequest._defaults(this);
  }

  FileViewPatchRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uri = $v.uri;
      _view = $v.view?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileViewPatchRequest other) {
    _$v = other as _$FileViewPatchRequest;
  }

  @override
  void update(void Function(FileViewPatchRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileViewPatchRequest build() => _build();

  _$FileViewPatchRequest _build() {
    _$FileViewPatchRequest _$result;
    try {
      _$result = _$v ??
          _$FileViewPatchRequest._(
            uri: uri,
            view: _view?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'view';
        _view?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FileViewPatchRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
