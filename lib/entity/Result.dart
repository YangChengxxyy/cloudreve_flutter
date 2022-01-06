class Result {
  late int code;
  late dynamic data;
  late String msg;

  Result.fromJson(Map<String, dynamic> map) {
    code = map['code'];
    data = map['data'];
    msg = map['msg'];
  }
}
