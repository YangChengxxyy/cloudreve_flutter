import 'package:cloudreve_api_client/cloudreve_api_client.dart'
    as cloudreve_api;

class Storage {
  late int used;
  late int free;
  late int total;

  Storage(this.used, this.free, this.total);

  Storage.fromJson(Map<String, dynamic> json) {
    int _toInt(dynamic value) {
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

    final baseTotal = _toInt(json['total']);
    final packTotal = _toInt(json['storage_pack_total']);
    used = _toInt(json['used']);
    total = baseTotal + packTotal;
    final remaining = total - used;
    free = remaining > 0 ? remaining : 0;
  }

  factory Storage.fromApi(cloudreve_api.UserCapacityGet200ResponseData data) {
    final baseTotal = data.total;
    final packTotal = data.storagePackTotal ?? 0;
    final usedValue = data.used;
    final totalValue = baseTotal + packTotal;
    final remaining = totalValue - usedValue;
    return Storage(
      usedValue,
      remaining > 0 ? remaining : 0,
      totalValue,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['used'] = this.used;
    data['free'] = this.free;
    data['total'] = this.total;
    return data;
  }
}
