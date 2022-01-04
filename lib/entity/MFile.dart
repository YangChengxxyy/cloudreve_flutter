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

  MFile.fromMap(Map<String, dynamic> map) {
    this.date = map["date"];
    this.id = map["id"];
    this.name = map["name"];
    this.path = map["path"];
    this.pic = map["pic"];
    this.size = map["size"];
    this.type = map["type"];
  }

  static List<MFile> getFileList(List<dynamic> list) {
    var fileList = <MFile>[];
    for (var item in list) {
      if (item is Map<String, dynamic>) {
        var file = MFile.fromMap(item);
        fileList.add(file);
      }
    }

    return fileList;
  }
}
