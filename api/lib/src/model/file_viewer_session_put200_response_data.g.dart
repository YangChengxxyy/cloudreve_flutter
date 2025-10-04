// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_viewer_session_put200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileViewerSessionPut200ResponseData
    extends FileViewerSessionPut200ResponseData {
  @override
  final FileViewerSessionPut200ResponseDataSession session;
  @override
  final String? wopiSrc;

  factory _$FileViewerSessionPut200ResponseData(
          [void Function(FileViewerSessionPut200ResponseDataBuilder)?
              updates]) =>
      (FileViewerSessionPut200ResponseDataBuilder()..update(updates))._build();

  _$FileViewerSessionPut200ResponseData._({required this.session, this.wopiSrc})
      : super._();
  @override
  FileViewerSessionPut200ResponseData rebuild(
          void Function(FileViewerSessionPut200ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileViewerSessionPut200ResponseDataBuilder toBuilder() =>
      FileViewerSessionPut200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileViewerSessionPut200ResponseData &&
        session == other.session &&
        wopiSrc == other.wopiSrc;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, session.hashCode);
    _$hash = $jc(_$hash, wopiSrc.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FileViewerSessionPut200ResponseData')
          ..add('session', session)
          ..add('wopiSrc', wopiSrc))
        .toString();
  }
}

class FileViewerSessionPut200ResponseDataBuilder
    implements
        Builder<FileViewerSessionPut200ResponseData,
            FileViewerSessionPut200ResponseDataBuilder> {
  _$FileViewerSessionPut200ResponseData? _$v;

  FileViewerSessionPut200ResponseDataSessionBuilder? _session;
  FileViewerSessionPut200ResponseDataSessionBuilder get session =>
      _$this._session ??= FileViewerSessionPut200ResponseDataSessionBuilder();
  set session(FileViewerSessionPut200ResponseDataSessionBuilder? session) =>
      _$this._session = session;

  String? _wopiSrc;
  String? get wopiSrc => _$this._wopiSrc;
  set wopiSrc(String? wopiSrc) => _$this._wopiSrc = wopiSrc;

  FileViewerSessionPut200ResponseDataBuilder() {
    FileViewerSessionPut200ResponseData._defaults(this);
  }

  FileViewerSessionPut200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _session = $v.session.toBuilder();
      _wopiSrc = $v.wopiSrc;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileViewerSessionPut200ResponseData other) {
    _$v = other as _$FileViewerSessionPut200ResponseData;
  }

  @override
  void update(
      void Function(FileViewerSessionPut200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileViewerSessionPut200ResponseData build() => _build();

  _$FileViewerSessionPut200ResponseData _build() {
    _$FileViewerSessionPut200ResponseData _$result;
    try {
      _$result = _$v ??
          _$FileViewerSessionPut200ResponseData._(
            session: session.build(),
            wopiSrc: wopiSrc,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'session';
        session.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'FileViewerSessionPut200ResponseData',
            _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
