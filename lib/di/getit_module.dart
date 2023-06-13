import 'package:common/di/common_module.dart';
import 'package:get_it/get_it.dart';
import 'package:onboarding/di/onboarding_module.dart';
import 'package:station/di/station_module.dart';
import 'package:vehicle/di/vehicle_module.dart';

class GetItModule {
  final getIt = GetIt.instance;

  void setup() {
    CommonModule().setup();
    StationModule().setup();
    VehicleModule().setup();
    OnBoardingModule().setup();
  }
}
