import 'package:with_api/models/third/story_entity/results.dart';

class TopLevel {
  TopLevel({
    required this.status,
    required this.results,
    required this.copyright,
    required this.lastUpdated,
    required this.numResults,
    required this.section,
  });

  final String status;
  final String copyright;
  final String section;
  final String lastUpdated;
  final int numResults;
  final List<Result> results;

  factory TopLevel.fromJson(Map<String, dynamic> json) {
    return TopLevel(
      status: json["status"] as String? ?? "",
      copyright: json["copyright"] as String? ?? "",
      section: json["section"] as String? ?? "",
      lastUpdated: json["last_updated"] as String? ?? "",
      numResults: json["num_results"] as int? ?? 0,
      results: (json["results"] as List?)
              ?.map((item) => Result.fromJson(item))
              .toList() ??
          [],
    );
  }
}
