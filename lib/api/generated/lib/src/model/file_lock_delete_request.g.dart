// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_lock_delete_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileLockDeleteRequest extends FileLockDeleteRequest {
  @override
  final BuiltList<String> tokens;

  factory _$FileLockDeleteRequest(
          [void Function(FileLockDeleteRequestBuilder)? updates]) =>
      (FileLockDeleteRequestBuilder()..update(updates))._build();

  _$FileLockDeleteRequest._({required this.tokens}) : super._();
  @override
  FileLockDeleteRequest rebuild(
          void Function(FileLockDeleteRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileLockDeleteRequestBuilder toBuilder() =>
      FileLockDeleteRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileLockDeleteRequest && tokens == other.tokens;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tokens.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FileLockDeleteRequest')
          ..add('tokens', tokens))
        .toString();
  }
}

class FileLockDeleteRequestBuilder
    implements Builder<FileLockDeleteRequest, FileLockDeleteRequestBuilder> {
  _$FileLockDeleteRequest? _$v;

  ListBuilder<String>? _tokens;
  ListBuilder<String> get tokens => _$this._tokens ??= ListBuilder<String>();
  set tokens(ListBuilder<String>? tokens) => _$this._tokens = tokens;

  FileLockDeleteRequestBuilder() {
    FileLockDeleteRequest._defaults(this);
  }

  FileLockDeleteRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokens = $v.tokens.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileLockDeleteRequest other) {
    _$v = other as _$FileLockDeleteRequest;
  }

  @override
  void update(void Function(FileLockDeleteRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileLockDeleteRequest build() => _build();

  _$FileLockDeleteRequest _build() {
    _$FileLockDeleteRequest _$result;
    try {
      _$result = _$v ??
          _$FileLockDeleteRequest._(
            tokens: tokens.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tokens';
        tokens.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FileLockDeleteRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
