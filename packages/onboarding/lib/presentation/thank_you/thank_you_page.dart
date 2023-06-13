import 'package:common/di/common_module.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ThankYouPage extends StatelessWidget {
  final VoidCallback onContinueClicked;

  const ThankYouPage({super.key, required this.onContinueClicked});

  @override
  Widget build(BuildContext context) {
    final locations = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 260,
            child: Lottie.asset(
              "assets/lottie/task_completed.json",
              package: "onboarding",
              repeat: false,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Text(
            locations.on_boarding_thank_you_title,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(
            height: 32,
          ),
          Text(
            locations.on_boarding_thank_you_message,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 48,
          ),
          ElevatedButton(
            onPressed: onContinueClicked,
            child: Text(locations.on_boarding_thank_you_button_label),
          ),
        ],
      ),
    );
  }
}
