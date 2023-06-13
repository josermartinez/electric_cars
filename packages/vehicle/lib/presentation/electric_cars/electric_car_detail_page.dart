import 'package:common/components/error_view.dart';
import 'package:common/di/common_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../components/vehicle_detail_section.dart';
import '../components/vehicle_title_header.dart';
import 'bloc/electric_car_detail_bloc.dart';

class ElectricCardDetailPage extends StatefulWidget {
  final String id;

  const ElectricCardDetailPage({
    super.key,
    required this.id,
  });

  @override
  State<ElectricCardDetailPage> createState() => _ElectricCardDetailPageState();
}

class _ElectricCardDetailPageState extends State<ElectricCardDetailPage> {
  late final ElectricCarDetailBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = GetIt.instance<ElectricCarDetailBloc>()
      ..add(GetElectricCarDetail(widget.id));
  }

  @override
  Widget build(BuildContext context) {
    AppLocalizations appLocation = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.vehicle_details_bar_title),
      ),
      body: BlocBuilder<ElectricCarDetailBloc, ElectricCarDetailState>(
          bloc: bloc,
          builder: (context, state) {
            if (state.isLoading == true) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.vehicle != null) {
              return ListView(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                    ),
                    child: Image.network(
                      state.vehicle?.media.image.url ?? "",
                      width: double.infinity,
                      height: 200,
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: VehicleTitleHeader(
                        title:
                            "${state.vehicle?.naming.make} - ${state.vehicle?.naming.model}",
                        description:
                            "${state.vehicle?.naming.chargetripVersion}"),
                  ),
                  const Divider(),
                  VehicleDetailSection(
                    title: appLocation.vehicle_detail_general_section_title,
                    properties: {
                      appLocation.vehicle_detail_range_property_label:
                          "${state.vehicle?.range?.chargetripRange.worst} - ${state.vehicle?.range?.chargetripRange.best} km",
                      appLocation.vehicle_detail_battery_property_label:
                          "${state.vehicle?.battery?.usableKwh} kWh",
                      appLocation
                              .vehicle_detail_charging_support_property_label:
                          "${state.vehicle?.routing?.fastChargingSupport}",
                    },
                  ),
                  const Divider(),
                  VehicleDetailSection(
                    title: appLocation.vehicle_detail_performance_section_title,
                    properties: {
                      appLocation.vehicle_detail_speed_property_label:
                          "${state.vehicle?.performance?.topSpeed} km / u",
                      appLocation.vehicle_detail_acceleration_property_label:
                          "${state.vehicle?.performance?.acceleration} s",
                    },
                  ),
                ],
              );
            } else {
              return ErrorView(errorMessage: state.errorMessage);
            }
          }),
    );
  }
}
