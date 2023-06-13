part of 'permission_bloc.dart';

@immutable
abstract class PermissionEvent {}

class RequestPermissionEvent implements PermissionEvent {}
