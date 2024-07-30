import 'package:json_annotation/json_annotation.dart';

part 'my_file.g.dart';

@JsonSerializable(explicitToJson: true)
class MyFile {
  @JsonKey(defaultValue: '', name: 'name')
  String name;

  @JsonKey(defaultValue: '', name: 'source')
  String source;

  @JsonKey(defaultValue: '', name: 'format')
  String format;

  @JsonKey(defaultValue: '', name: 'original')
  String original;

  @JsonKey(defaultValue: '', name: 'mtime')
  String mtime;

  @JsonKey(defaultValue: '', name: 'size')
  String size;

  @JsonKey(defaultValue: '', name: 'md5')
  String md5;

  @JsonKey(defaultValue: '', name: 'crc32')
  String crc32;

  @JsonKey(defaultValue: '', name: 'sha1')
  String sha1;

  @JsonKey(defaultValue: '', name: 'btih')
  String btih;

  @JsonKey(defaultValue: '', name: 'rotation')
  String rotation;

  @JsonKey(defaultValue: '', name: 'summation')
  String summation;

  MyFile({
    required this.format,
    required this.size,
    required this.name,
    required this.btih,
    required this.crc32,
    required this.md5,
    required this.mtime,
    required this.original,
    required this.rotation,
    required this.sha1,
    required this.source,
    required this.summation,
  });

  factory MyFile.fromJson(Map<String, dynamic> json) => _$MyFileFromJson(json);

  Map<String, dynamic> toJson() => _$MyFileToJson(this);
}


