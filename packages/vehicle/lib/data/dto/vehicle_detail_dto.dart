import 'dart:convert';

import 'package:vehicle/data/dto/battery_dto.dart';
import 'package:vehicle/data/dto/media_dto.dart';
import 'package:vehicle/data/dto/naming_dto.dart';
import 'package:vehicle/data/dto/performance_dto.dart';
import 'package:vehicle/data/dto/range_dto.dart';
import 'package:vehicle/data/dto/routing_dto.dart';
import 'package:vehicle/domain/models/vehicle.dart';

VehicleDetailDataDto vehicleDetailFromJson(String str) =>
    VehicleDetailDataDto.fromJson(json.decode(str));

class VehicleDetailDataDto {
  final VehicleDetailDto vehicle;

  VehicleDetailDataDto({
    required this.vehicle,
  });

  factory VehicleDetailDataDto.fromJson(Map<String, dynamic> json) =>
      VehicleDetailDataDto(
        vehicle: VehicleDetailDto.fromJson(json["vehicle"]),
      );

  Map<String, dynamic> toJson() => {
        "vehicle": vehicle.toJson(),
      };
}

class VehicleDetailDto {
  final String id;
  final NamingDto naming;
  final BatteryDto battery;
  final PerformanceDto performance;
  final RangeDto range;
  final MediaDto media;
  final RoutingDto routing;

  VehicleDetailDto({
    required this.id,
    required this.naming,
    required this.battery,
    required this.performance,
    required this.range,
    required this.media,
    required this.routing,
  });

  factory VehicleDetailDto.fromJson(Map<String, dynamic> json) =>
      VehicleDetailDto(
        id: json["id"],
        naming: NamingDto.fromJson(json["naming"]),
        battery: BatteryDto.fromJson(json["battery"]),
        performance: PerformanceDto.fromJson(json["performance"]),
        range: RangeDto.fromJson(json["range"]),
        media: MediaDto.fromJson(json["media"]),
        routing: RoutingDto.fromJson(json["routing"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "naming": naming.toJson(),
        "battery": battery.toJson(),
        "performance": performance.toJson(),
        "range": range.toJson(),
        "media": media.toJson(),
        "routing": routing.toJson(),
      };
}

extension VehicleDetailDtoExtension on VehicleDetailDto {
  Vehicle toVehicle() {
    return Vehicle(
      this.id,
      this.naming.toNaming(),
      this.media.toMedia(),
      this.battery.toBattery(),
      this.performance.toPerformance(),
      this.range.toRange(),
      this.routing.toRouting(),
    );
  }
}
