//https://api.nytimes.com/svc/topstories/v2/arts.json?api-key=mD46rKtYMNXAYpzZSyvAXK3u2ANtQd4A

import 'package:with_api/models/third/story_entity/multimedia.dart';

class Result {
  Result({
    required this.section,
    required this.desFacet,
    required this.geoFacet,
    required this.multimedia,
    required this.orgFacet,
    required this.perFacet,
    required this.title,
    required this.abstract,
    required this.byline,
    required this.createdDate,
    required this.itemType,
    required this.publishedDate,
    required this.subsection,
    required this.updatedDate,
    required this.uri,
    required this.url,
  });

  final String section;
  final String subsection;
  final String title;
  final String abstract;
  final String url;
  final String uri;
  final String byline;
  final String itemType;
  final String updatedDate;
  final String createdDate;
  final String publishedDate;
  final List<String> desFacet;
  final List<String> orgFacet;
  final List<String> perFacet;
  final List<String> geoFacet;
  final List<Multimedia> multimedia;

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(
      desFacet: (json["des_facet"] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      geoFacet: (json["geo_facet"] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      multimedia: (json["multimedia"] as List?)
              ?.map((item) => Multimedia.fromJson(item))
              .toList() ??
          [],
      orgFacet: (json["org_facet"] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      perFacet: (json["per_facet"] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      section: json["section"] as String? ?? "",
      subsection: json["subsection"] as String? ?? "",
      title: json["title"] as String? ?? "",
      abstract: json["abstract"] as String? ?? "",
      uri: json["uri"] as String? ?? "",
      url: json["url"] as String? ?? "",
      byline: json["byline"] as String? ?? "",
      itemType: json["item_type"] as String? ?? "",
      updatedDate: json["updated_date"] as String? ?? "",
      createdDate: json["created_date"] as String? ?? "",
      publishedDate: json["published_date"] as String? ?? "",
    );
  }
}
