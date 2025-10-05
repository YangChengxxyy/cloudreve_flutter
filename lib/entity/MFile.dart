import 'dart:convert';

import 'package:cloudreve_api_client/cloudreve_api_client.dart'
    as cloudreve_api;

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
    date = map['updated_at']?.toString() ?? map['created_at']?.toString() ?? '';
    id = (map['id'] ?? '').toString();
    name = map['name']?.toString() ?? '';
    path = map['path']?.toString() ?? '';
    pic = map['metadata']?.toString() ?? '';
    size = _toInt(map['size']);
    type = map['type'] == 1 ? 'dir' : 'file';
  }

  factory MFile.fromFileResponse(cloudreve_api.FileResponse file) {
    final metadata = file.metadata?.asMap() ?? const <String, String>{};
    final updatedAt = file.updatedAt ?? file.createdAt;
    return MFile(
      updatedAt?.toIso8601String() ?? '',
      file.id ?? '',
      file.name ?? '',
      file.path ?? '',
      metadata.isEmpty ? '' : jsonEncode(metadata),
      file.size ?? 0,
      file.type == cloudreve_api.FileResponseTypeEnum.number1 ? 'dir' : 'file',
    );
  }

  static int _toInt(dynamic value) {
    if (value is int) {
      return value;
    }
    if (value is String) {
      return int.tryParse(value) ?? 0;
    }
    if (value is double) {
      return value.toInt();
    }
    return 0;
  }

  String getFormatDate() {
    if (date.length >= 19) {
      return date.substring(0, 10) + " " + date.substring(11, 19);
    }
    return date;
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

  static final sizeList = <String>[
    "B",
    "KB",
    "MB",
    "GB",
    "TB",
    "PB",
    "EB",
    "ZB",
    "YB"
  ];

  static String getFileSize(double B, [int after = 1]) {
    int index = 0;
    while (B > 1024) {
      B /= 1024;
      index++;
    }
    return "${B.toStringAsFixed(after)}${sizeList[index]}";
  }
}

String getFormatDate(String date) {
  if (date.length >= 19) {
    return date.substring(0, 10) + " " + date.substring(11, 19);
  }
  return date;
}
