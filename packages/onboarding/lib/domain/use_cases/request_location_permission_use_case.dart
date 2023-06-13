import 'package:geolocator/geolocator.dart';
import 'package:onboarding/domain/onboarding_repository.dart';

class RequestLocationPermissionUseCase {
  final OnBoardingRepository _onBoardingRepository;

  RequestLocationPermissionUseCase(this._onBoardingRepository);

  Future<LocationPermission> call() {
    return _onBoardingRepository.requestLocationPermission();
  }
}
