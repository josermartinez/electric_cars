import 'package:geolocator/geolocator.dart';
import 'package:onboarding/domain/onboarding_repository.dart';

class CheckLocationPermissionUseCase {
  final OnBoardingRepository _repository;

  CheckLocationPermissionUseCase(this._repository);

  Future<LocationPermission> call() {
    return _repository.checkLocationPermission();
  }
}
