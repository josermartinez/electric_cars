import '../../domain/models/coordinates.dart';

class CoordinatesDto {
  final String latitude;
  final String longitude;

  CoordinatesDto({
    required this.latitude,
    required this.longitude,
  });

  factory CoordinatesDto.fromJson(Map<String, dynamic> json) => CoordinatesDto(
        latitude: json["latitude"],
        longitude: json["longitude"],
      );

  Map<String, dynamic> toJson() => {
        "latitude": latitude,
        "longitude": longitude,
      };
}

extension CoordinatesDtoExtension on CoordinatesDto {
  Coordinates toCoordinates() {
    return Coordinates(
      latitude,
      longitude,
    );
  }
}
