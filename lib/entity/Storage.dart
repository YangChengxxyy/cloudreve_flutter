class Storage {
  late int used;
  late int free;
  late int total;

  Storage(this.used, this.free, this.total);

  Storage.fromJson(Map<String, dynamic> json) {
    used = json['used'];
    free = json['free'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['used'] = this.used;
    data['free'] = this.free;
    data['total'] = this.total;
    return data;
  }
}
