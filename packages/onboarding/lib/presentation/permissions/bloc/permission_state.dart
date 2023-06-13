part of 'permission_bloc.dart';

class PermissionState {
  final LocationPermission? locationPermission;

  PermissionState(
    this.locationPermission,
  );

  PermissionState copyWith({
    LocationPermission? locationPermission,
  }) {
    return PermissionState(locationPermission ?? locationPermission);
  }
}
