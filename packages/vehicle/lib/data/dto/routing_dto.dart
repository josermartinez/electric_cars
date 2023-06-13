import '../../domain/models/routing.dart';

class RoutingDto {
  final bool fastChargingSupport;

  RoutingDto({
    required this.fastChargingSupport,
  });

  factory RoutingDto.fromJson(Map<String, dynamic> json) => RoutingDto(
        fastChargingSupport: json["fast_charging_support"],
      );

  Map<String, dynamic> toJson() => {
        "fast_charging_support": fastChargingSupport,
      };
}

extension RoutingDtoExtension on RoutingDto {
  Routing toRouting() {
    return Routing(
      fastChargingSupport,
    );
  }
}
