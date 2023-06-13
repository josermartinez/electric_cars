import 'package:common/res/l10n/generated/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  final VoidCallback onContinueClicked;

  const WelcomePage({super.key, required this.onContinueClicked});

  @override
  Widget build(BuildContext context) {
    final locations = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 32.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: 260,
            child: Lottie.asset(
              "assets/lottie/electric_car_lottie.json",
              package: "onboarding",
              repeat: false,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Text(
            locations.on_boarding_welcome_title,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(
            height: 32,
          ),
          Text(
            locations.on_boarding_welcome_message,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: onContinueClicked,
            child: Text(locations.on_boarding_button_label),
          ),
        ],
      ),
    );
  }
}
