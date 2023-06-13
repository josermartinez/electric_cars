import 'package:get_it/get_it.dart';
import 'package:onboarding/di/domain_module.dart';
import 'package:onboarding/domain/use_cases/check_location_permission_use_case.dart';
import 'package:onboarding/domain/use_cases/request_location_permission_use_case.dart';
import 'package:onboarding/presentation/permissions/bloc/permission_bloc.dart';

class OnBoardingModule {
  final getIt = GetIt.instance;

  void setup() {
    DomainModule().setup();
    _provideOnBoardingBloc(
      getIt<CheckLocationPermissionUseCase>(),
      getIt<RequestLocationPermissionUseCase>(),
    );
  }

  void _provideOnBoardingBloc(
      CheckLocationPermissionUseCase checkLocationPermissionUseCase,
      RequestLocationPermissionUseCase requestLocationPermissionUseCase) {
    getIt.registerFactory<PermissionBloc>(() => PermissionBloc(
        checkLocationPermissionUseCase, requestLocationPermissionUseCase));
  }
}
