import 'performance.dart';
import 'range.dart';
import 'routing.dart';

import 'battery.dart';
import 'media.dart';
import 'naming.dart';

class Vehicle {
  final String id;
  final Naming naming;
  final Media media;
  final Battery? battery;
  final Performance? performance;
  final Range? range;
  final Routing? routing;

  Vehicle(
    this.id,
    this.naming,
    this.media,
    this.battery,
    this.performance,
    this.range,
    this.routing,
  );
}
