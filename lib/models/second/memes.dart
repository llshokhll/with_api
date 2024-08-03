class Memes {
  Memes({
    required this.width,
    required this.height,
    required this.name,
    required this.url,
    required this.boxCount,
    required this.id,
    required this.captions,
  });

  final String id;
  final String name;
  final String url;
  final int width;
  final int height;
  final int boxCount;
  final int captions;

  factory Memes.fromJson(Map<String, Object?> json) => Memes(
        name: json["name"] as String? ?? "",
        id: json["id"] as String? ?? "",
        url: json["url"] as String? ?? "",
        width: json["width"] as int? ?? 0,
        height: json["height"] as int? ?? 0,
        boxCount: json["box_count"] as int? ?? 0,
        captions: json["captions"] as int? ?? 0,
      );
}
