import 'package:common/res/l10n/generated/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get_it/get_it.dart';
import 'package:onboarding/presentation/components/permission_state_view.dart';
import 'package:onboarding/presentation/permissions/bloc/permission_bloc.dart';

class PermissionsPage extends StatefulWidget {
  final VoidCallback onContinueClicked;

  const PermissionsPage({
    super.key,
    required this.onContinueClicked,
  });

  @override
  State<PermissionsPage> createState() => _PermissionsPageState();
}

class _PermissionsPageState extends State<PermissionsPage> {
  late PermissionBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = GetIt.instance<PermissionBloc>();
  }

  void _onPermissionButtonPressed() {
    bloc.add(RequestPermissionEvent());
  }

  @override
  Widget build(BuildContext context) {
    final locations = AppLocalizations.of(context)!;
    return BlocBuilder<PermissionBloc, PermissionState>(
      bloc: bloc,
      builder: (context, state) {
        if (state.locationPermission == null ||
            state.locationPermission == LocationPermission.denied) {
          return PermissionStateView(
            title: locations.on_boarding_ask_permission_title,
            message: locations.on_boarding_ask_permission_message,
            lottieFile: "assets/lottie/permission_location.json",
            onButtonClicked: _onPermissionButtonPressed,
          );
        } else if (state.locationPermission == LocationPermission.whileInUse ||
            state.locationPermission == LocationPermission.always) {
          return PermissionStateView(
            title: locations.on_boarding_permission_success_title,
            message: locations.on_boarding_permission_success_message,
            lottieFile: "assets/lottie/success.json",
            onButtonClicked: widget.onContinueClicked,
          );
        } else {
          return PermissionStateView(
            title: locations.on_boarding_permission_denied_title,
            message: locations.on_boarding_permission_denied_message,
            lottieFile: "assets/lottie/warning_alert.json",
            onButtonClicked: () {},
          );
        }
      },
    );
  }
}
