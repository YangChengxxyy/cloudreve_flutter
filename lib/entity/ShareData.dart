class ShareData {
  late List<ShareItems> items;
  late int total;

  ShareData(this.items, this.total);

  ShareData.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = <ShareItems>[];
      json['items'].forEach((v) {
        items.add(ShareItems.fromJson(v));
      });
    }
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList();
    }
    data['total'] = this.total;
    return data;
  }
}

class ShareItems {
  late String key;
  late bool isDir;
  late String password;
  late String createDate;
  late int downloads;
  late int remainDownloads;
  late int views;
  late int expire;
  late bool preview;
  late Source source;

  ShareItems(this.key, this.isDir, this.password, this.createDate, this.downloads,
      this.remainDownloads, this.views, this.expire, this.preview, this.source);

  ShareItems.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    isDir = json['is_dir'];
    password = json['password'];
    createDate = json['create_date'];
    downloads = json['downloads'];
    remainDownloads = json['remain_downloads'];
    views = json['views'];
    expire = json['expire'];
    preview = json['preview'];
    source = Source.fromJson(json['source']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['key'] = this.key;
    data['is_dir'] = this.isDir;
    data['password'] = this.password;
    data['create_date'] = this.createDate;
    data['downloads'] = this.downloads;
    data['remain_downloads'] = this.remainDownloads;
    data['views'] = this.views;
    data['expire'] = this.expire;
    data['preview'] = this.preview;
    if (this.source != null) {
      data['source'] = this.source.toJson();
    }
    return data;
  }
}

class Source {
  late String name;
  late int size;

  Source(this.name, this.size);

  Source.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    size = json['size'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = this.name;
    data['size'] = this.size;
    return data;
  }
}
