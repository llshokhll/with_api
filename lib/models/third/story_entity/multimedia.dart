class Multimedia {
  Multimedia({
    required this.width,
    required this.url,
    required this.height,
    required this.caption,
    required this.copyright,
    required this.format,
    required this.subtype,
    required this.type,
  });

  final String url;
  final String format;
  final int height;
  final int width;
  final String type;
  final String subtype;
  final String caption;
  final String copyright;

  factory Multimedia.fromJson(Map<String, dynamic> json) {
    return Multimedia(
      url: json["url"] as String? ?? "",
      format: json["format"] as String? ?? "",
      height: json["height"] as int? ?? 0,
      width: json["width"] as int? ?? 0,
      type: json["type"] as String? ?? "",
      subtype: json["subtype"] as String? ?? "",
      caption: json["caption"] as String? ?? "",
      copyright: json["copyright"] as String? ?? "",
    );
  }
}
