// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_top_level_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyTopLevelData _$MyTopLevelDataFromJson(Map<String, dynamic> json) =>
    MyTopLevelData(
      myMetadata: MyMetaData.fromJson(json['metadata'] as Map<String, dynamic>),
      created: json['created'] as int? ?? 0,
      d1: json['d1'] as String? ?? '',
      d2: json['d2'] as String? ?? '',
      dir: json['dir'] as String? ?? '',
      filesCount: json['files_count'] as int? ?? 0,
      workableServers: (json['workable_servers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$MyTopLevelDataToJson(MyTopLevelData instance) =>
    <String, dynamic>{
      'created': instance.created,
      'd1': instance.d1,
      'd2': instance.d2,
      'dir': instance.dir,
      'files_count': instance.filesCount,
      'metadata': instance.myMetadata,
      'workable_servers': instance.workableServers,
    };
