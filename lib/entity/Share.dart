class Share {
  late List<Items> items;
  late int total;

  Share(this.items, this.total);

  Share.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items.add(new Items.fromJson(v));
      });
    }
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList();
    }
    data['total'] = this.total;
    return data;
  }
}

class Items {
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

  Items(this.key, this.isDir, this.password, this.createDate, this.downloads,
      this.remainDownloads, this.views, this.expire, this.preview, this.source);

  Items.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    isDir = json['is_dir'];
    password = json['password'];
    createDate = json['create_date'];
    downloads = json['downloads'];
    remainDownloads = json['remain_downloads'];
    views = json['views'];
    expire = json['expire'];
    preview = json['preview'];
    source = new Source.fromJson(json['source']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['size'] = this.size;
    return data;
  }
}
