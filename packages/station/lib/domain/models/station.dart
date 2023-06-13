import 'review.dart';

import 'coordinates.dart';
import 'opening_times.dart';
import 'operator.dart';

class Station {
  final String id;
  final String name;
  final String address;
  final String city;
  final String postalCode;
  final String? state;
  final String country;
  final Coordinates coordinates;
  final Operator stationListOperator;
  final List<String> facilities;
  final String timeZone;
  final OpeningTimes openingTimes;
  final String speed;
  final String status;
  final Review review;

  Station(
    this.id,
    this.name,
    this.address,
    this.city,
    this.postalCode,
    this.state,
    this.country,
    this.coordinates,
    this.stationListOperator,
    this.facilities,
    this.timeZone,
    this.openingTimes,
    this.speed,
    this.status,
    this.review,
  );
}
