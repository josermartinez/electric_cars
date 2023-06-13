import '../../domain/models/performance.dart';

class PerformanceDto {
  final double acceleration;
  final int topSpeed;

  PerformanceDto({
    required this.acceleration,
    required this.topSpeed,
  });

  factory PerformanceDto.fromJson(Map<String, dynamic> json) => PerformanceDto(
        acceleration: json["acceleration"]?.toDouble(),
        topSpeed: json["top_speed"],
      );

  Map<String, dynamic> toJson() => {
        "acceleration": acceleration,
        "top_speed": topSpeed,
      };
}

extension PerformanceExtension on PerformanceDto {
  Performance toPerformance() {
    return Performance(
      acceleration,
      topSpeed,
    );
  }
}
