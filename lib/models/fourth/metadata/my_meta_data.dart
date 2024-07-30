import 'package:json_annotation/json_annotation.dart';

part 'my_meta_data.g.dart';

@JsonSerializable()
class MyMetaData {
  @JsonKey(defaultValue: '', name: 'openlibrary_work')
  String openLibraryWork;

  @JsonKey(defaultValue: '', name: 'openlibrary_edition')
  String openLibraryEdition;

  @JsonKey(defaultValue: '', name: 'backup_location')
  String backupLocation;

  @JsonKey(defaultValue: const [], name: 'collection')
  List<String> collection;

  @JsonKey(defaultValue: const [], name: 'subject')
  List<String> subject;

  @JsonKey(defaultValue: '', name: 'curation')
  String curation;

  @JsonKey(defaultValue: '', name: 'creator')
  String creator;

  @JsonKey(defaultValue: '', name: 'repub_state')
  String repubState;

  @JsonKey(defaultValue: '', name: 'identifier')
  String identifier;

  @JsonKey(defaultValue: '', name: 'mediatype')
  String mediatype;

  @JsonKey(defaultValue: '', name: 'description')
  String description;

  @JsonKey(defaultValue: '', name: 'language')
  String language;

  @JsonKey(defaultValue: '', name: 'scanner')
  String scanner;

  @JsonKey(defaultValue: '', name: 'title')
  String title;

  @JsonKey(defaultValue: '', name: 'publicdate')
  String publicdate;

  @JsonKey(defaultValue: '', name: 'addeddate')
  String addeddate;

  @JsonKey(defaultValue: '', name: 'uploader')
  String uploader;

  @JsonKey(defaultValue: '', name: 'identifier-access')
  String identifierAccess;

  @JsonKey(defaultValue: '', name: 'identifier-ark')
  String identifierArk;

  @JsonKey(defaultValue: '', name: 'ppi')
  String ppi;

  @JsonKey(defaultValue: '', name: 'ocr')
  String ocr;

  MyMetaData({
    required this.title,
    required this.addeddate,
    required this.backupLocation,
    required this.collection,
    required this.creator,
    required this.curation,
    required this.description,
    required this.identifier,
    required this.identifierAccess,
    required this.identifierArk,
    required this.language,
    required this.mediatype,
    required this.openLibraryEdition,
    required this.ocr,
    required this.openLibraryWork,
    required this.ppi,
    required this.publicdate,
    required this.repubState,
    required this.scanner,
    required this.subject,
    required this.uploader,
  });

  factory MyMetaData.fromJson(Map<String, dynamic> json) =>
      _$MyMetaDataFromJson(json);

  Map<String, dynamic> toJson() => _$MyMetaDataToJson(this);
}
