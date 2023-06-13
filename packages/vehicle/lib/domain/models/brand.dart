import 'package:vehicle/data/dto/brand_dto.dart';

class Brand {
  final String id;
  final BrandType type;
  final String url;
  final int height;
  final int width;
  final String thumbnailUrl;
  final int thumbnailHeight;
  final int thumbnailWidth;

  Brand(
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
