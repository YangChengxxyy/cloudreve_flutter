// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_credit_changes_get200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserCreditChangesGet200ResponseData
    extends UserCreditChangesGet200ResponseData {
  @override
  final UserCreditChangesGet200ResponseDataPagination? pagination;
  @override
  final BuiltList<UserCreditChangesGet200ResponseDataChangesInner>? changes;

  factory _$UserCreditChangesGet200ResponseData(
          [void Function(UserCreditChangesGet200ResponseDataBuilder)?
              updates]) =>
      (UserCreditChangesGet200ResponseDataBuilder()..update(updates))._build();

  _$UserCreditChangesGet200ResponseData._({this.pagination, this.changes})
      : super._();
  @override
  UserCreditChangesGet200ResponseData rebuild(
          void Function(UserCreditChangesGet200ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserCreditChangesGet200ResponseDataBuilder toBuilder() =>
      UserCreditChangesGet200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserCreditChangesGet200ResponseData &&
        pagination == other.pagination &&
        changes == other.changes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pagination.hashCode);
    _$hash = $jc(_$hash, changes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserCreditChangesGet200ResponseData')
          ..add('pagination', pagination)
          ..add('changes', changes))
        .toString();
  }
}

class UserCreditChangesGet200ResponseDataBuilder
    implements
        Builder<UserCreditChangesGet200ResponseData,
            UserCreditChangesGet200ResponseDataBuilder> {
  _$UserCreditChangesGet200ResponseData? _$v;

  UserCreditChangesGet200ResponseDataPaginationBuilder? _pagination;
  UserCreditChangesGet200ResponseDataPaginationBuilder get pagination =>
      _$this._pagination ??=
          UserCreditChangesGet200ResponseDataPaginationBuilder();
  set pagination(
          UserCreditChangesGet200ResponseDataPaginationBuilder? pagination) =>
      _$this._pagination = pagination;

  ListBuilder<UserCreditChangesGet200ResponseDataChangesInner>? _changes;
  ListBuilder<UserCreditChangesGet200ResponseDataChangesInner> get changes =>
      _$this._changes ??=
          ListBuilder<UserCreditChangesGet200ResponseDataChangesInner>();
  set changes(
          ListBuilder<UserCreditChangesGet200ResponseDataChangesInner>?
              changes) =>
      _$this._changes = changes;

  UserCreditChangesGet200ResponseDataBuilder() {
    UserCreditChangesGet200ResponseData._defaults(this);
  }

  UserCreditChangesGet200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pagination = $v.pagination?.toBuilder();
      _changes = $v.changes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserCreditChangesGet200ResponseData other) {
    _$v = other as _$UserCreditChangesGet200ResponseData;
  }

  @override
  void update(
      void Function(UserCreditChangesGet200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserCreditChangesGet200ResponseData build() => _build();

  _$UserCreditChangesGet200ResponseData _build() {
    _$UserCreditChangesGet200ResponseData _$result;
    try {
      _$result = _$v ??
          _$UserCreditChangesGet200ResponseData._(
            pagination: _pagination?.build(),
            changes: _changes?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pagination';
        _pagination?.build();
        _$failedField = 'changes';
        _changes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'UserCreditChangesGet200ResponseData',
            _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
