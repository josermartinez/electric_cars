import 'package:station/data/dto/regular_hour_dto.dart';
import 'package:station/domain/models/opening_times.dart';

class OpeningTimesDto {
  final bool twentyfourseven;
  final List<RegularHourDto> regularHours;

  OpeningTimesDto({
    required this.twentyfourseven,
    required this.regularHours,
  });

  factory OpeningTimesDto.fromJson(Map<String, dynamic> json) =>
      OpeningTimesDto(
        twentyfourseven: json["twentyfourseven"],
        regularHours: List<RegularHourDto>.from(
            json["regular_hours"].map((x) => RegularHourDto.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "twentyfourseven": twentyfourseven,
        "regular_hours":
            List<dynamic>.from(regularHours.map((x) => x.toJson())),
      };
}

extension OpeningTimesDtoExtension on OpeningTimesDto {
  OpeningTimes toOpeningTimes() {
    return OpeningTimes(
      twentyfourseven,
      regularHours.map((e) => e.toRegularHour()).toList(),
    );
  }
}
