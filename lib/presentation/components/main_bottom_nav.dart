import 'package:common/res/l10n/generated/app_localizations.dart';
import 'package:flutter/material.dart';

class MainBottomNav extends StatelessWidget {
  MainBottomNav({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });

  int selectedIndex = 0;
  void Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: onTap,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.electric_car),
            label: AppLocalizations.of(context)!
                .main_bottom_nav_option_electric_cars,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.charging_station),
            label:
                AppLocalizations.of(context)!.main_bottom_nav_option_stations,
          ),
        ]);
  }
}
