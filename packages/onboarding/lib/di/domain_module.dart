import 'package:get_it/get_it.dart';
import 'package:onboarding/data/onboarding_repository_impl.dart';
import 'package:onboarding/domain/onboarding_repository.dart';

import '../domain/use_cases/check_location_permission_use_case.dart';
import '../domain/use_cases/request_location_permission_use_case.dart';

class DomainModule {
  final getIt = GetIt.instance;

  void setup() {
    _provideOnBoardingRepository();
    _provideCheckLocationPermissionUseCase(getIt<OnBoardingRepository>());
    _provideRequestLocationPermissionUseCase(getIt<OnBoardingRepository>());
  }

  void _provideOnBoardingRepository() {
    getIt.registerLazySingleton<OnBoardingRepository>(
        () => OnBoardingRepositoryImpl());
  }

  void _provideCheckLocationPermissionUseCase(
      OnBoardingRepository onBoardingRepository) {
    getIt.registerLazySingleton<CheckLocationPermissionUseCase>(
        () => CheckLocationPermissionUseCase(onBoardingRepository));
  }

  void _provideRequestLocationPermissionUseCase(
      OnBoardingRepository onBoardingRepository) {
    getIt.registerLazySingleton<RequestLocationPermissionUseCase>(
        () => RequestLocationPermissionUseCase(onBoardingRepository));
  }
}
