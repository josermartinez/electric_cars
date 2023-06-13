import 'package:geolocator/geolocator.dart';
import 'package:onboarding/domain/onboarding_repository.dart';

class OnBoardingRepositoryImpl implements OnBoardingRepository {
  @override
  Future<LocationPermission> checkLocationPermission() {
    return Geolocator.checkPermission();
  }

  @override
  Future<LocationPermission> requestLocationPermission() {
    return Geolocator.requestPermission();
  }
}
