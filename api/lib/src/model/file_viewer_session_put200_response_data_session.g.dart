// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_viewer_session_put200_response_data_session.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileViewerSessionPut200ResponseDataSession
    extends FileViewerSessionPut200ResponseDataSession {
  @override
  final String? id;
  @override
  final String? accessToken;
  @override
  final int? expires;

  factory _$FileViewerSessionPut200ResponseDataSession(
          [void Function(FileViewerSessionPut200ResponseDataSessionBuilder)?
              updates]) =>
      (FileViewerSessionPut200ResponseDataSessionBuilder()..update(updates))
          ._build();

  _$FileViewerSessionPut200ResponseDataSession._(
      {this.id, this.accessToken, this.expires})
      : super._();
  @override
  FileViewerSessionPut200ResponseDataSession rebuild(
          void Function(FileViewerSessionPut200ResponseDataSessionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileViewerSessionPut200ResponseDataSessionBuilder toBuilder() =>
      FileViewerSessionPut200ResponseDataSessionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileViewerSessionPut200ResponseDataSession &&
        id == other.id &&
        accessToken == other.accessToken &&
        expires == other.expires;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, expires.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'FileViewerSessionPut200ResponseDataSession')
          ..add('id', id)
          ..add('accessToken', accessToken)
          ..add('expires', expires))
        .toString();
  }
}

class FileViewerSessionPut200ResponseDataSessionBuilder
    implements
        Builder<FileViewerSessionPut200ResponseDataSession,
            FileViewerSessionPut200ResponseDataSessionBuilder> {
  _$FileViewerSessionPut200ResponseDataSession? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  int? _expires;
  int? get expires => _$this._expires;
  set expires(int? expires) => _$this._expires = expires;

  FileViewerSessionPut200ResponseDataSessionBuilder() {
    FileViewerSessionPut200ResponseDataSession._defaults(this);
  }

  FileViewerSessionPut200ResponseDataSessionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _accessToken = $v.accessToken;
      _expires = $v.expires;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileViewerSessionPut200ResponseDataSession other) {
    _$v = other as _$FileViewerSessionPut200ResponseDataSession;
  }

  @override
  void update(
      void Function(FileViewerSessionPut200ResponseDataSessionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  FileViewerSessionPut200ResponseDataSession build() => _build();

  _$FileViewerSessionPut200ResponseDataSession _build() {
    final _$result = _$v ??
        _$FileViewerSessionPut200ResponseDataSession._(
          id: id,
          accessToken: accessToken,
          expires: expires,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
