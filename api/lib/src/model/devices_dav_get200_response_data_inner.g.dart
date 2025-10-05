// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'devices_dav_get200_response_data_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DevicesDavGet200ResponseDataInner
    extends DevicesDavGet200ResponseDataInner {
  @override
  final DevicesDavGet200ResponseDataInnerPagination? pagination;
  @override
  final BuiltList<DavAccount>? accounts;

  factory _$DevicesDavGet200ResponseDataInner(
          [void Function(DevicesDavGet200ResponseDataInnerBuilder)? updates]) =>
      (DevicesDavGet200ResponseDataInnerBuilder()..update(updates))._build();

  _$DevicesDavGet200ResponseDataInner._({this.pagination, this.accounts})
      : super._();
  @override
  DevicesDavGet200ResponseDataInner rebuild(
          void Function(DevicesDavGet200ResponseDataInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DevicesDavGet200ResponseDataInnerBuilder toBuilder() =>
      DevicesDavGet200ResponseDataInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DevicesDavGet200ResponseDataInner &&
        pagination == other.pagination &&
        accounts == other.accounts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pagination.hashCode);
    _$hash = $jc(_$hash, accounts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DevicesDavGet200ResponseDataInner')
          ..add('pagination', pagination)
          ..add('accounts', accounts))
        .toString();
  }
}

class DevicesDavGet200ResponseDataInnerBuilder
    implements
        Builder<DevicesDavGet200ResponseDataInner,
            DevicesDavGet200ResponseDataInnerBuilder> {
  _$DevicesDavGet200ResponseDataInner? _$v;

  DevicesDavGet200ResponseDataInnerPaginationBuilder? _pagination;
  DevicesDavGet200ResponseDataInnerPaginationBuilder get pagination =>
      _$this._pagination ??=
          DevicesDavGet200ResponseDataInnerPaginationBuilder();
  set pagination(
          DevicesDavGet200ResponseDataInnerPaginationBuilder? pagination) =>
      _$this._pagination = pagination;

  ListBuilder<DavAccount>? _accounts;
  ListBuilder<DavAccount> get accounts =>
      _$this._accounts ??= ListBuilder<DavAccount>();
  set accounts(ListBuilder<DavAccount>? accounts) =>
      _$this._accounts = accounts;

  DevicesDavGet200ResponseDataInnerBuilder() {
    DevicesDavGet200ResponseDataInner._defaults(this);
  }

  DevicesDavGet200ResponseDataInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pagination = $v.pagination?.toBuilder();
      _accounts = $v.accounts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DevicesDavGet200ResponseDataInner other) {
    _$v = other as _$DevicesDavGet200ResponseDataInner;
  }

  @override
  void update(
      void Function(DevicesDavGet200ResponseDataInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DevicesDavGet200ResponseDataInner build() => _build();

  _$DevicesDavGet200ResponseDataInner _build() {
    _$DevicesDavGet200ResponseDataInner _$result;
    try {
      _$result = _$v ??
          _$DevicesDavGet200ResponseDataInner._(
            pagination: _pagination?.build(),
            accounts: _accounts?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pagination';
        _pagination?.build();
        _$failedField = 'accounts';
        _accounts?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DevicesDavGet200ResponseDataInner', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
