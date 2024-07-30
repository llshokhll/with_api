//https://api.imgflip.com/get_memes

import 'package:with_api/models/second/data_list.dart';

class TopLevelData {
  TopLevelData({
    required this.status,
    required this.data,
  });

  final DataList data;
  final bool status;

  factory TopLevelData.fromJson(Map<String, dynamic> json) {
    return TopLevelData(
      status: json["success"] as bool? ?? false,
      data: DataList.fromJson(json["data"]),
    );
  }
}
