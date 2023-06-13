import 'package:geolocator/geolocator.dart';

abstract class OnBoardingRepository {
  Future<LocationPermission> checkLocationPermission();

  Future<LocationPermission> requestLocationPermission();
}
