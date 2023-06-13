import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  final String? errorMessage;

  const ErrorView({
    super.key,
    required this.errorMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Icon(
              Icons.error_outline,
              color: Colors.red,
              size: 100,
            ),
            const SizedBox(
              height: 32,
            ),
            Text(errorMessage ?? ""),
          ],
        ),
      ),
    );
  }
}
