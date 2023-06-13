import 'package:common/res/l10n/generated/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:station/presentation/stations/stations_page.dart';
import 'package:vehicle/presentation/electric_cars/electric_cars_page.dart';

import 'components/main_bottom_nav.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  void _onNavBarItemSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Widget _buildPage(int index) {
    switch (index) {
      case 0:
        return ElectricCarsPage();
      default:
        return StationsPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.main_app_bar_title),
      ),
      bottomNavigationBar: MainBottomNav(
        selectedIndex: selectedIndex,
        onTap: _onNavBarItemSelected,
      ),
      body: _buildPage(selectedIndex),
    );
  }
}
