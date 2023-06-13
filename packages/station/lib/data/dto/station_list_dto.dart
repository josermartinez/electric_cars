import 'dart:convert';

import 'package:station/data/dto/coordinates_dto.dart';
import 'package:station/data/dto/opening_times_dto.dart';
import 'package:station/data/dto/operator_dto.dart';
import 'package:station/data/dto/review_dto.dart';
import 'package:station/domain/models/station.dart';

StationListDataDto stationDataFromJson(String str) =>
    StationListDataDto.fromJson(json.decode(str));

class StationListDataDto {
  final List<StationDto> stationList;

  StationListDataDto({
    required this.stationList,
  });

  factory StationListDataDto.fromJson(Map<String, dynamic> json) =>
      StationListDataDto(
        stationList: List<StationDto>.from(
            json["stationList"].map((x) => StationDto.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "stationList": List<dynamic>.from(stationList.map((x) => x.toJson())),
      };
}

class StationDto {
  final String id;
  final String name;
  final String address;
  final String city;
  final String postalCode;
  final String? state;
  final String country;
  final CoordinatesDto coordinates;
  final OperatorDto stationListOperator;
  final List<String> facilities;
  final String timeZone;
  final OpeningTimesDto openingTimes;
  final String speed;
  final String status;
  final ReviewDto review;

  StationDto({
    required this.id,
    required this.name,
    required this.address,
    required this.city,
    required this.postalCode,
    this.state,
    required this.country,
    required this.coordinates,
    required this.stationListOperator,
    required this.facilities,
    required this.timeZone,
    required this.openingTimes,
    required this.speed,
    required this.status,
    required this.review,
  });

  factory StationDto.fromJson(Map<String, dynamic> json) => StationDto(
        id: json["id"],
        name: json["name"],
        address: json["address"],
        city: json["city"],
        postalCode: json["postal_code"],
        state: json["state"],
        country: json["country"],
        coordinates: CoordinatesDto.fromJson(json["coordinates"]),
        stationListOperator: OperatorDto.fromJson(json["operator"]),
        facilities: List<String>.from(json["facilities"].map((x) => x)),
        timeZone: json["time_zone"],
        openingTimes: OpeningTimesDto.fromJson(json["opening_times"]),
        speed: json["speed"],
        status: json["status"],
        review: ReviewDto.fromJson(json["review"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "address": address,
        "city": city,
        "postal_code": postalCode,
        "state": state,
        "country": country,
        "coordinates": coordinates.toJson(),
        "operator": stationListOperator.toJson(),
        "facilities": List<dynamic>.from(facilities.map((x) => x)),
        "time_zone": timeZone,
        "opening_times": openingTimes.toJson(),
        "speed": speed,
        "status": status,
        "review": review.toJson(),
      };
}

extension StationDtoExtension on StationDto {
  Station toStation() {
    return Station(
      id,
      name,
      address,
      city,
      postalCode,
      state,
      country,
      coordinates.toCoordinates(),
      stationListOperator.toOperator(),
      facilities,
      timeZone,
      openingTimes.toOpeningTimes(),
      speed,
      status,
      review.toReview(),
    );
  }
}
