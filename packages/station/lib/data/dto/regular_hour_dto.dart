import 'package:station/domain/models/regular_hour.dart';

class RegularHourDto {
  final int weekday;
  final String? periodBegin;
  final String? periodEnd;

  RegularHourDto({
    required this.weekday,
    this.periodBegin,
    this.periodEnd,
  });

  factory RegularHourDto.fromJson(Map<String, dynamic> json) => RegularHourDto(
        weekday: json["weekday"],
        periodBegin: json["period_begin"],
        periodEnd: json["period_end"],
      );

  Map<String, dynamic> toJson() => {
        "weekday": weekday,
        "period_begin": periodBegin,
        "period_end": periodEnd,
      };
}

extension RegularHourDtoExtension on RegularHourDto {
  RegularHour toRegularHour() {
    return RegularHour(
      weekday,
      periodBegin,
      periodEnd,
    );
  }
}
