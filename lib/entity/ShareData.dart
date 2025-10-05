import 'package:cloudreve_api_client/cloudreve_api_client.dart'
    as cloudreve_api;

class ShareData {
  ShareData({required this.items, this.nextToken});

  factory ShareData.fromApi(
    List<cloudreve_api.Share> shares, {
    cloudreve_api.ListShareResponsePagination? pagination,
  }) {
    final nextTokenValue = pagination?.nextToken;
    return ShareData(
      items: shares.map(ShareItems.fromApi).toList(),
      nextToken:
          (nextTokenValue == null || nextTokenValue.isEmpty) ? null : nextTokenValue,
    );
  }

  final List<ShareItems> items;
  final String? nextToken;
}

class ShareItems {
  ShareItems({
    required this.key,
    required this.isDir,
    required this.password,
    required this.createDate,
    required this.downloads,
    required this.views,
    required this.preview,
    required this.source,
    required this.expired,
    this.url,
  });

  factory ShareItems.fromApi(cloudreve_api.Share share) {
    final isDirectory =
        share.sourceType == cloudreve_api.ShareSourceTypeEnum.number1;
    final ownerName = share.name ?? '';
    return ShareItems(
      key: share.id ?? '',
      isDir: isDirectory,
      password: share.password ?? '',
      createDate: share.createdAt?.toIso8601String() ?? '',
      downloads: share.downloaded ?? 0,
      views: share.visited ?? 0,
      preview: share.shareView ?? false,
      source: Source(name: ownerName, size: 0),
      expired: share.expired ?? false,
      url: share.url,
    );
  }

  final String key;
  final bool isDir;
  final String password;
  final String createDate;
  final int downloads;
  final int views;
  final bool preview;
  final Source source;
  final bool expired;
  final String? url;
}

class Source {
  Source({required this.name, required this.size});

  final String name;
  final int size;
}
