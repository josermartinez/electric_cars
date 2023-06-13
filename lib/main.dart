import 'package:common/res/l10n/generated/app_localizations.dart';
import 'package:electric_cars/di/getit_module.dart';
import 'package:electric_cars/presentation/home_page.dart';
import 'package:flutter/material.dart';
import 'package:onboarding/presentation/main/onboarding_page.dart';

void main() {
  GetItModule().setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: Builder(
        builder: (context) => OnBoardingPage(
          onFinished: () {
            Navigator.of(context)
                .pushReplacement(MaterialPageRoute(builder: (context) {
              return HomePage();
            }));
          },
        ),
      ),
    );
  }
}
