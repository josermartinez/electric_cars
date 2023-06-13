import 'package:station/domain/models/regular_hour.dart';

class OpeningTimes {
  final bool twentyfourseven;
  final List<RegularHour> regularHours;

  OpeningTimes(
    this.twentyfourseven,
    this.regularHours,
  );
}
