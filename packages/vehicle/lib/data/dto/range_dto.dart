import '../../domain/models/range.dart';
import 'chargetrip_rage_dto.dart';

class RangeDto {
  final ChargetripRangeDto chargetripRange;

  RangeDto({
    required this.chargetripRange,
  });

  factory RangeDto.fromJson(Map<String, dynamic> json) => RangeDto(
        chargetripRange: ChargetripRangeDto.fromJson(json["chargetrip_range"]),
      );

  Map<String, dynamic> toJson() => {
        "chargetrip_range": chargetripRange.toJson(),
      };
}

extension RangeDtoExtension on RangeDto {
  Range toRange() {
    return Range(
      chargetripRange.toChargeTripRange(),
    );
  }
}
