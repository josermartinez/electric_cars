import 'dart:convert';

import 'package:vehicle/data/dto/media_dto.dart';
import 'package:vehicle/data/dto/naming_dto.dart';
import 'package:vehicle/domain/models/vehicle.dart';

VehicleData vehicleDataFromJson(String str) =>
    VehicleData.fromJson(json.decode(str));

class VehicleData {
  final List<VehicleDto> vehicleList;

  VehicleData({
    required this.vehicleList,
  });

  factory VehicleData.fromJson(Map<String, dynamic> json) => VehicleData(
        vehicleList: List<VehicleDto>.from(
            json["vehicleList"].map((x) => VehicleDto.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "vehicleList": List<dynamic>.from(vehicleList.map((x) => x.toJson())),
      };
}

class VehicleDto {
  final String id;
  final NamingDto naming;
  final MediaDto media;

  VehicleDto({
    required this.id,
    required this.naming,
    required this.media,
  });

  factory VehicleDto.fromJson(Map<String, dynamic> json) => VehicleDto(
        id: json["id"],
        naming: NamingDto.fromJson(json["naming"]),
        media: MediaDto.fromJson(json["media"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "naming": naming.toJson(),
        "media": media.toJson(),
      };
}

extension VehicleExtension on VehicleDto {
  Vehicle toVehicle() {
    return Vehicle(
      id,
      naming.toNaming(),
      media.toMedia(),
      null,
      null,
      null,
      null,
    );
  }
}
