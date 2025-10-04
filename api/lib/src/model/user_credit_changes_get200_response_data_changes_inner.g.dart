// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_credit_changes_get200_response_data_changes_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserCreditChangesGet200ResponseDataChangesInner
    extends UserCreditChangesGet200ResponseDataChangesInner {
  @override
  final DateTime changedAt;
  @override
  final int diff;
  @override
  final String reason;

  factory _$UserCreditChangesGet200ResponseDataChangesInner(
          [void Function(
                  UserCreditChangesGet200ResponseDataChangesInnerBuilder)?
              updates]) =>
      (UserCreditChangesGet200ResponseDataChangesInnerBuilder()
            ..update(updates))
          ._build();

  _$UserCreditChangesGet200ResponseDataChangesInner._(
      {required this.changedAt, required this.diff, required this.reason})
      : super._();
  @override
  UserCreditChangesGet200ResponseDataChangesInner rebuild(
          void Function(UserCreditChangesGet200ResponseDataChangesInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserCreditChangesGet200ResponseDataChangesInnerBuilder toBuilder() =>
      UserCreditChangesGet200ResponseDataChangesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserCreditChangesGet200ResponseDataChangesInner &&
        changedAt == other.changedAt &&
        diff == other.diff &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, changedAt.hashCode);
    _$hash = $jc(_$hash, diff.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'UserCreditChangesGet200ResponseDataChangesInner')
          ..add('changedAt', changedAt)
          ..add('diff', diff)
          ..add('reason', reason))
        .toString();
  }
}

class UserCreditChangesGet200ResponseDataChangesInnerBuilder
    implements
        Builder<UserCreditChangesGet200ResponseDataChangesInner,
            UserCreditChangesGet200ResponseDataChangesInnerBuilder> {
  _$UserCreditChangesGet200ResponseDataChangesInner? _$v;

  DateTime? _changedAt;
  DateTime? get changedAt => _$this._changedAt;
  set changedAt(DateTime? changedAt) => _$this._changedAt = changedAt;

  int? _diff;
  int? get diff => _$this._diff;
  set diff(int? diff) => _$this._diff = diff;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  UserCreditChangesGet200ResponseDataChangesInnerBuilder() {
    UserCreditChangesGet200ResponseDataChangesInner._defaults(this);
  }

  UserCreditChangesGet200ResponseDataChangesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _changedAt = $v.changedAt;
      _diff = $v.diff;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserCreditChangesGet200ResponseDataChangesInner other) {
    _$v = other as _$UserCreditChangesGet200ResponseDataChangesInner;
  }

  @override
  void update(
      void Function(UserCreditChangesGet200ResponseDataChangesInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  UserCreditChangesGet200ResponseDataChangesInner build() => _build();

  _$UserCreditChangesGet200ResponseDataChangesInner _build() {
    final _$result = _$v ??
        _$UserCreditChangesGet200ResponseDataChangesInner._(
          changedAt: BuiltValueNullFieldError.checkNotNull(changedAt,
              r'UserCreditChangesGet200ResponseDataChangesInner', 'changedAt'),
          diff: BuiltValueNullFieldError.checkNotNull(
              diff, r'UserCreditChangesGet200ResponseDataChangesInner', 'diff'),
          reason: BuiltValueNullFieldError.checkNotNull(reason,
              r'UserCreditChangesGet200ResponseDataChangesInner', 'reason'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
