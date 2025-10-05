// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_share_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListShareResponse extends ListShareResponse {
  @override
  final BuiltList<Share>? shares;
  @override
  final ListShareResponsePagination? pagination;

  factory _$ListShareResponse(
          [void Function(ListShareResponseBuilder)? updates]) =>
      (ListShareResponseBuilder()..update(updates))._build();

  _$ListShareResponse._({this.shares, this.pagination}) : super._();
  @override
  ListShareResponse rebuild(void Function(ListShareResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListShareResponseBuilder toBuilder() =>
      ListShareResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListShareResponse &&
        shares == other.shares &&
        pagination == other.pagination;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, shares.hashCode);
    _$hash = $jc(_$hash, pagination.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListShareResponse')
          ..add('shares', shares)
          ..add('pagination', pagination))
        .toString();
  }
}

class ListShareResponseBuilder
    implements Builder<ListShareResponse, ListShareResponseBuilder> {
  _$ListShareResponse? _$v;

  ListBuilder<Share>? _shares;
  ListBuilder<Share> get shares => _$this._shares ??= ListBuilder<Share>();
  set shares(ListBuilder<Share>? shares) => _$this._shares = shares;

  ListShareResponsePaginationBuilder? _pagination;
  ListShareResponsePaginationBuilder get pagination =>
      _$this._pagination ??= ListShareResponsePaginationBuilder();
  set pagination(ListShareResponsePaginationBuilder? pagination) =>
      _$this._pagination = pagination;

  ListShareResponseBuilder() {
    ListShareResponse._defaults(this);
  }

  ListShareResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shares = $v.shares?.toBuilder();
      _pagination = $v.pagination?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListShareResponse other) {
    _$v = other as _$ListShareResponse;
  }

  @override
  void update(void Function(ListShareResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListShareResponse build() => _build();

  _$ListShareResponse _build() {
    _$ListShareResponse _$result;
    try {
      _$result = _$v ??
          _$ListShareResponse._(
            shares: _shares?.build(),
            pagination: _pagination?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'shares';
        _shares?.build();
        _$failedField = 'pagination';
        _pagination?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ListShareResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
