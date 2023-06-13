import 'package:bloc/bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:meta/meta.dart';
import 'package:onboarding/domain/use_cases/request_location_permission_use_case.dart';

import '../../../domain/use_cases/check_location_permission_use_case.dart';

part 'permission_event.dart';
part 'permission_state.dart';

class PermissionBloc extends Bloc<PermissionEvent, PermissionState> {
  final CheckLocationPermissionUseCase _checkLocationPermissionUseCase;
  final RequestLocationPermissionUseCase _requestLocationPermissionUseCase;

  PermissionBloc(
    this._checkLocationPermissionUseCase,
    this._requestLocationPermissionUseCase,
  ) : super(PermissionState(null)) {
    on<RequestPermissionEvent>((event, emit) async {
      LocationPermission locationPermission =
          await _checkLocationPermissionUseCase();
      if (locationPermission == LocationPermission.denied) {
        LocationPermission permission =
            await _requestLocationPermissionUseCase();
        emit(state.copyWith(locationPermission: permission));
      } else {
        emit(state.copyWith(locationPermission: locationPermission));
      }
    });
  }
}
