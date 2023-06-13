import 'dart:convert';

import 'package:station/data/dto/station_list_dto.dart';

StationData stationDataFromJson(String str) =>
    StationData.fromJson(json.decode(str));

class StationData {
  final StationDto station;

  StationData({
    required this.station,
  });

  factory StationData.fromJson(Map<String, dynamic> json) => StationData(
        station: StationDto.fromJson(json["station"]),
      );

  Map<String, dynamic> toJson() => {
        "station": station.toJson(),
      };
}
