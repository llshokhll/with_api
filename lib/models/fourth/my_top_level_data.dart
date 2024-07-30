import 'package:json_annotation/json_annotation.dart';
import 'package:with_api/models/fourth/metadata/my_meta_data.dart';

part 'my_top_level_data.g.dart';

@JsonSerializable()
class MyTopLevelData {
  @JsonKey(defaultValue: 0, name: 'created')
  int created;

  @JsonKey(defaultValue: '', name: 'd1')
  String d1;

  @JsonKey(defaultValue: '', name: 'd2')
  String d2;

  @JsonKey(defaultValue: '', name: 'dir')
  String dir;

  @JsonKey(defaultValue: 0, name: 'files_count')
  int filesCount;

  @JsonKey(
    name: 'metadata',
  )
  MyMetaData myMetadata;

  @JsonKey(defaultValue: const [], name: 'workable_servers')
  List<String> workableServers;

  MyTopLevelData({
    required this.myMetadata,
    required this.created,
    required this.d1,
    required this.d2,
    required this.dir,
    required this.filesCount,
    required this.workableServers,
  });

  factory MyTopLevelData.fromJson(Map<String, dynamic> json) =>
      _$MyTopLevelDataFromJson(json);

  Map<String, dynamic> toJson() => _$MyTopLevelDataToJson(this);
}
