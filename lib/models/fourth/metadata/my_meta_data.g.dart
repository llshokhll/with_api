// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_meta_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyMetaData _$MyMetaDataFromJson(Map<String, dynamic> json) => MyMetaData(
      title: json['title'] as String? ?? '',
      addeddate: json['addeddate'] as String? ?? '',
      backupLocation: json['backup_location'] as String? ?? '',
      collection: (json['collection'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      creator: json['creator'] as String? ?? '',
      curation: json['curation'] as String? ?? '',
      description: json['description'] as String? ?? '',
      identifier: json['identifier'] as String? ?? '',
      identifierAccess: json['identifier-access'] as String? ?? '',
      identifierArk: json['identifier-ark'] as String? ?? '',
      language: json['language'] as String? ?? '',
      mediatype: json['mediatype'] as String? ?? '',
      openLibraryEdition: json['openlibrary_edition'] as String? ?? '',
      ocr: json['ocr'] as String? ?? '',
      openLibraryWork: json['openlibrary_work'] as String? ?? '',
      ppi: json['ppi'] as String? ?? '',
      publicdate: json['publicdate'] as String? ?? '',
      repubState: json['repub_state'] as String? ?? '',
      scanner: json['scanner'] as String? ?? '',
      subject: (json['subject'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      uploader: json['uploader'] as String? ?? '',
    );

Map<String, dynamic> _$MyMetaDataToJson(MyMetaData instance) =>
    <String, dynamic>{
      'openlibrary_work': instance.openLibraryWork,
      'openlibrary_edition': instance.openLibraryEdition,
      'backup_location': instance.backupLocation,
      'collection': instance.collection,
      'subject': instance.subject,
      'curation': instance.curation,
      'creator': instance.creator,
      'repub_state': instance.repubState,
      'identifier': instance.identifier,
      'mediatype': instance.mediatype,
      'description': instance.description,
      'language': instance.language,
      'scanner': instance.scanner,
      'title': instance.title,
      'publicdate': instance.publicdate,
      'addeddate': instance.addeddate,
      'uploader': instance.uploader,
      'identifier-access': instance.identifierAccess,
      'identifier-ark': instance.identifierArk,
      'ppi': instance.ppi,
      'ocr': instance.ocr,
    };
