import 'package:common/di/common_module.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PermissionStateView extends StatelessWidget {
  final String title;
  final String message;
  final String lottieFile;
  final VoidCallback onButtonClicked;

  const PermissionStateView({
    super.key,
    required this.title,
    required this.message,
    required this.lottieFile,
    required this.onButtonClicked,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              height: 260,
              child: Lottie.asset(
                lottieFile,
                package: "onboarding",
                repeat: false,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              message,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: onButtonClicked,
              child:
                  Text(AppLocalizations.of(context)!.on_boarding_button_label),
            ),
          ],
        ),
      ),
    );
  }
}
