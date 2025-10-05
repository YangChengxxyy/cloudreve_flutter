// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Activity extends Activity {
  @override
  final String? id;
  @override
  final LogEntry? content;
  @override
  final DateTime? createdAt;
  @override
  final ActivityUser? user;
  @override
  final String? versionId;

  factory _$Activity([void Function(ActivityBuilder)? updates]) =>
      (ActivityBuilder()..update(updates))._build();

  _$Activity._(
      {this.id, this.content, this.createdAt, this.user, this.versionId})
      : super._();
  @override
  Activity rebuild(void Function(ActivityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActivityBuilder toBuilder() => ActivityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Activity &&
        id == other.id &&
        content == other.content &&
        createdAt == other.createdAt &&
        user == other.user &&
        versionId == other.versionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, versionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Activity')
          ..add('id', id)
          ..add('content', content)
          ..add('createdAt', createdAt)
          ..add('user', user)
          ..add('versionId', versionId))
        .toString();
  }
}

class ActivityBuilder implements Builder<Activity, ActivityBuilder> {
  _$Activity? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  LogEntryBuilder? _content;
  LogEntryBuilder get content => _$this._content ??= LogEntryBuilder();
  set content(LogEntryBuilder? content) => _$this._content = content;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  ActivityUserBuilder? _user;
  ActivityUserBuilder get user => _$this._user ??= ActivityUserBuilder();
  set user(ActivityUserBuilder? user) => _$this._user = user;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  ActivityBuilder() {
    Activity._defaults(this);
  }

  ActivityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _content = $v.content?.toBuilder();
      _createdAt = $v.createdAt;
      _user = $v.user?.toBuilder();
      _versionId = $v.versionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Activity other) {
    _$v = other as _$Activity;
  }

  @override
  void update(void Function(ActivityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Activity build() => _build();

  _$Activity _build() {
    _$Activity _$result;
    try {
      _$result = _$v ??
          _$Activity._(
            id: id,
            content: _content?.build(),
            createdAt: createdAt,
            user: _user?.build(),
            versionId: versionId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'content';
        _content?.build();

        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Activity', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
