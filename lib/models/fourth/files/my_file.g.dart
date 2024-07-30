// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyFile _$MyFileFromJson(Map<String, dynamic> json) => MyFile(
      format: json['format'] as String? ?? '',
      size: json['size'] as String? ?? '',
      name: json['name'] as String? ?? '',
      btih: json['btih'] as String? ?? '',
      crc32: json['crc32'] as String? ?? '',
      md5: json['md5'] as String? ?? '',
      mtime: json['mtime'] as String? ?? '',
      original: json['original'] as String? ?? '',
      rotation: json['rotation'] as String? ?? '',
      sha1: json['sha1'] as String? ?? '',
      source: json['source'] as String? ?? '',
      summation: json['summation'] as String? ?? '',
    );

Map<String, dynamic> _$MyFileToJson(MyFile instance) => <String, dynamic>{
      'name': instance.name,
      'source': instance.source,
      'format': instance.format,
      'original': instance.original,
      'mtime': instance.mtime,
      'size': instance.size,
      'md5': instance.md5,
      'crc32': instance.crc32,
      'sha1': instance.sha1,
      'btih': instance.btih,
      'rotation': instance.rotation,
      'summation': instance.summation,
    };
