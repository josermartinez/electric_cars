import '../../domain/models/battery.dart';

class BatteryDto {
  final double usableKwh;
  final double fullKwh;

  BatteryDto({
    required this.usableKwh,
    required this.fullKwh,
  });

  factory BatteryDto.fromJson(Map<String, dynamic> json) => BatteryDto(
        usableKwh: json["usable_kwh"]?.toDouble(),
        fullKwh: json["full_kwh"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "usable_kwh": usableKwh,
        "full_kwh": fullKwh,
      };
}

extension BatteryExtension on BatteryDto {
  Battery toBattery() {
    return Battery(
      usableKwh,
      fullKwh,
    );
  }
}
