import '../../domain/models/media.dart';

import 'brand_dto.dart';

class MediaDto {
  final BrandDto image;
  final BrandDto brand;

  MediaDto({
    required this.image,
    required this.brand,
  });

  factory MediaDto.fromJson(Map<String, dynamic> json) => MediaDto(
        image: BrandDto.fromJson(json["image"]),
        brand: BrandDto.fromJson(json["brand"]),
      );

  Map<String, dynamic> toJson() => {
        "image": image.toJson(),
        "brand": brand.toJson(),
      };
}

extension MediaExtension on MediaDto {
  Media toMedia() {
    return Media(
      this.image.toBrand(),
      this.brand.toBrand(),
    );
  }
}
