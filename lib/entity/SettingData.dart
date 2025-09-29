class SettingData {
  late bool homepage;
  late String preferTheme;
  late String themes;
  late bool twoFactor;
  late int uid;

  SettingData(
      this.homepage,
      this.preferTheme,
      this.themes,
      this.twoFactor,
      this.uid);

  SettingData.fromJson(Map<String, dynamic> json) {
    homepage = json['homepage'];
    preferTheme = json['prefer_theme'];
    themes = json['themes'];
    twoFactor = json['two_factor'];
    uid = json['uid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['homepage'] = this.homepage;
    data['prefer_theme'] = this.preferTheme;
    data['themes'] = this.themes;
    data['two_factor'] = this.twoFactor;
    data['uid'] = this.uid;
    return data;
  }
}
