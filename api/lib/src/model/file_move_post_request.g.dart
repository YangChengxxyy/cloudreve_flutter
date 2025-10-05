// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_move_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileMovePostRequest extends FileMovePostRequest {
  @override
  final BuiltList<String>? uris;
  @override
  final String? dst;
  @override
  final bool? copy;

  factory _$FileMovePostRequest(
          [void Function(FileMovePostRequestBuilder)? updates]) =>
      (FileMovePostRequestBuilder()..update(updates))._build();

  _$FileMovePostRequest._({this.uris, this.dst, this.copy}) : super._();
  @override
  FileMovePostRequest rebuild(
          void Function(FileMovePostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileMovePostRequestBuilder toBuilder() =>
      FileMovePostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileMovePostRequest &&
        uris == other.uris &&
        dst == other.dst &&
        copy == other.copy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, uris.hashCode);
    _$hash = $jc(_$hash, dst.hashCode);
    _$hash = $jc(_$hash, copy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FileMovePostRequest')
          ..add('uris', uris)
          ..add('dst', dst)
          ..add('copy', copy))
        .toString();
  }
}

class FileMovePostRequestBuilder
    implements Builder<FileMovePostRequest, FileMovePostRequestBuilder> {
  _$FileMovePostRequest? _$v;

  ListBuilder<String>? _uris;
  ListBuilder<String> get uris => _$this._uris ??= ListBuilder<String>();
  set uris(ListBuilder<String>? uris) => _$this._uris = uris;

  String? _dst;
  String? get dst => _$this._dst;
  set dst(String? dst) => _$this._dst = dst;

  bool? _copy;
  bool? get copy => _$this._copy;
  set copy(bool? copy) => _$this._copy = copy;

  FileMovePostRequestBuilder() {
    FileMovePostRequest._defaults(this);
  }

  FileMovePostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uris = $v.uris?.toBuilder();
      _dst = $v.dst;
      _copy = $v.copy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileMovePostRequest other) {
    _$v = other as _$FileMovePostRequest;
  }

  @override
  void update(void Function(FileMovePostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileMovePostRequest build() => _build();

  _$FileMovePostRequest _build() {
    _$FileMovePostRequest _$result;
    try {
      _$result = _$v ??
          _$FileMovePostRequest._(
            uris: _uris?.build(),
            dst: dst,
            copy: copy,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'uris';
        _uris?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FileMovePostRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
