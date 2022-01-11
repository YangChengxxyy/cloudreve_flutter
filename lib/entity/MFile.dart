class MFile {
  MFile(
      this.date, this.id, this.name, this.path, this.pic, this.size, this.type);
  late String date;
  late String id;
  late String name;
  late String path;
  late String pic;
  late int size;
  late String type;

  MFile.fromJson(Map<String, dynamic> map) {
    this.date = map["date"];
    this.id = map["id"];
    this.name = map["name"];
    this.path = map["path"];
    this.pic = map["pic"];
    this.size = map["size"];
    this.type = map["type"];
  }

  String getFormatDate() {
    return date.substring(0, 10) + " " + date.substring(11, 11 + 8);
  }

  static List<MFile> getFileList(List<dynamic> list,
      [int Function(MFile, MFile)? compare]) {
    var fileList = <MFile>[];
    for (var item in list) {
      if (item is Map<String, dynamic>) {
        var file = MFile.fromJson(item);
        fileList.add(file);
      }
    }
    if (compare != null) {
      fileList.sort(compare);
    }
    return fileList;
  }

  static final sizeList = <String>["B", "KB", "MB", "GB"];

  static String getFileSize(double B, int after) {
    int index = 0;
    while (B > 1024) {
      B /= 1024;
      index++;
    }
    return "${B.toStringAsFixed(after)}${sizeList[index]}";
  }
}
