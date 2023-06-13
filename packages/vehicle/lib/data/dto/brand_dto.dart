import '../../domain/models/brand.dart';

class BrandDto {
  final String id;
  final BrandType type;
  final String url;
  final int height;
  final int width;
  final String thumbnailUrl;
  final int thumbnailHeight;
  final int thumbnailWidth;

  BrandDto({
    required this.id,
    required this.type,
    required this.url,
    required this.height,
    required this.width,
    required this.thumbnailUrl,
    required this.thumbnailHeight,
    required this.thumbnailWidth,
  });

  factory BrandDto.fromJson(Map<String, dynamic> json) => BrandDto(
        id: json["id"],
        type: typeValues.map[json["type"]]!,
        url: json["url"],
        height: json["height"],
        width: json["width"],
        thumbnailUrl: json["thumbnail_url"],
        thumbnailHeight: json["thumbnail_height"],
        thumbnailWidth: json["thumbnail_width"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": typeValues.reverse[type],
        "url": url,
        "height": height,
        "width": width,
        "thumbnail_url": thumbnailUrl,
        "thumbnail_height": thumbnailHeight,
        "thumbnail_width": thumbnailWidth,
      };
}

enum BrandType { BRAND, IMAGE }

final typeValues =
    EnumValues({"brand": BrandType.BRAND, "image": BrandType.IMAGE});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}

extension BrandExtension on BrandDto {
  Brand toBrand() {
    return Brand(
      this.id,
      this.type,
      this.url,
      this.height,
      this.width,
      this.thumbnailUrl,
      this.thumbnailHeight,
      this.thumbnailWidth,
    );
  }
}
