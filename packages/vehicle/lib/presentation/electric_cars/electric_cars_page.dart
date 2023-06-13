import 'package:common/components/error_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../components/electric_car_tile.dart';
import 'bloc/electric_cars_bloc.dart';
import 'electric_car_detail_page.dart';

class ElectricCarsPage extends StatefulWidget {
  const ElectricCarsPage({super.key});

  @override
  State<ElectricCarsPage> createState() => _ElectricCarsPageState();
}

class _ElectricCarsPageState extends State<ElectricCarsPage> {
  late final ElectricCarsBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = GetIt.instance<ElectricCarsBloc>()..add(GetVehiclesEvent());
  }

  void _onVehicleTapped(String id) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return ElectricCardDetailPage(
          id: id,
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ElectricCarsBloc, ElectricCarsState>(
        bloc: bloc,
        builder: (context, state) {
          if (state.isLoading == true) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.vehicles != null && state.vehicles!.isNotEmpty) {
            return ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: state.vehicles?.length,
                itemBuilder: (context, index) {
                  var vehicle = state.vehicles![index];
                  return ElectricCarTile(
                    id: vehicle.id,
                    imageUrl: vehicle.media.image.thumbnailUrl,
                    carName: vehicle.naming.model,
                    carMaker: vehicle.naming.make,
                    onTap: _onVehicleTapped,
                  );
                });
          } else {
            return ErrorView(
              errorMessage: state.errorMessage,
            );
          }
        });
  }
}
