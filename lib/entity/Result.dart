class Result<T> {
  Result(this.code, this.data, this.msg);

  int code;
  T data;
  String msg;
}
