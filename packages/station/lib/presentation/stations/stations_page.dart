import 'package:common/components/error_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:station/presentation/stations/station_detail_page.dart';

import '../components/station_tile.dart';
import 'bloc/stations_bloc.dart';

class StationsPage extends StatefulWidget {
  const StationsPage({super.key});

  @override
  State<StationsPage> createState() => _StationsPageState();
}

class _StationsPageState extends State<StationsPage> {
  late StationsBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = GetIt.instance<StationsBloc>()..add(GetStationsEvent());
  }

  void _onStationTapped(String id) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return StationDetailPage(id: id);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<StationsBloc, StationsState>(
        bloc: bloc,
        builder: (context, state) {
          if (state.isLoading == true) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.stations.isNotEmpty) {
            return ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: state.stations.length,
              itemBuilder: (context, index) {
                return StationTile(
                  station: state.stations[index],
                  onTap: _onStationTapped,
                );
              },
            );
          } else {
            return ErrorView(errorMessage: state.errorMessage);
          }
        },
      ),
    );
  }
}
