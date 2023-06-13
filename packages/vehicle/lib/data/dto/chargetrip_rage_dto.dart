import '../../domain/models/chargetrip_range.dart';

class ChargetripRangeDto {
  final int best;
  final int worst;

  ChargetripRangeDto({
    required this.best,
    required this.worst,
  });

  factory ChargetripRangeDto.fromJson(Map<String, dynamic> json) =>
      ChargetripRangeDto(
        best: json["best"],
        worst: json["worst"],
      );

  Map<String, dynamic> toJson() => {
        "best": best,
        "worst": worst,
      };
}

extension ChargetripRangeDtoExtension on ChargetripRangeDto {
  ChargeTripRange toChargeTripRange() {
    return ChargeTripRange(
      best,
      worst,
    );
  }
}
