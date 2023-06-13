import 'package:common/components/error_view.dart';
import 'package:common/di/common_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get_it/get_it.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../domain/models/station.dart';
import '../components/information_attribute.dart';
import 'bloc/station_detail_bloc.dart';

class StationDetailPage extends StatefulWidget {
  final String id;

  const StationDetailPage({super.key, required this.id});

  @override
  State<StationDetailPage> createState() => _StationDetailPageState();
}

class _StationDetailPageState extends State<StationDetailPage> {
  late GoogleMapController _mapController;
  late StationDetailBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = GetIt.instance<StationDetailBloc>()
      ..add(GetStationByIdEvent(widget.id));
  }

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
  }

  Set<Marker> getMarkers(Station? station) {
    final Map<String, Marker> markers = {};
    Marker marker = Marker(
        markerId: MarkerId(station?.id ?? ""),
        position: LatLng(
          double.parse(station?.coordinates.latitude ?? "0.0"),
          double.parse(station?.coordinates.longitude ?? "0.0"),
        ),
        infoWindow: InfoWindow(
          title: station?.name,
          snippet: station?.address,
        ));
    if (station != null) {
      markers[station.name] = marker;
    }
    return markers.values.toSet();
  }

  @override
  Widget build(BuildContext context) {
    AppLocalizations appLocalization = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(appLocalization.station_details_bar_title),
      ),
      body: BlocBuilder<StationDetailBloc, StationDetailState>(
        bloc: bloc,
        builder: (context, state) {
          if (state.isLoading == true) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.station != null) {
            return Column(
              children: [
                SizedBox(
                  height: 200,
                  child: GoogleMap(
                    myLocationButtonEnabled: false,
                    onMapCreated: _onMapCreated,
                    initialCameraPosition: CameraPosition(
                      target: LatLng(
                        double.parse(
                            state.station?.coordinates.latitude ?? "0.0"),
                        double.parse(
                            state.station?.coordinates.longitude ?? "0.0"),
                      ),
                      zoom: 11.0,
                    ),
                    markers: getMarkers(state.station),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            appLocalization.station_details_bar_title,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Divider(),
                          const SizedBox(
                            height: 8,
                          ),
                          InformationAttribute(
                            attributeName: appLocalization
                                .station_detail_name_property_label,
                            attributeValue: Text(state.station?.name ?? ""),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          InformationAttribute(
                            attributeName: appLocalization
                                .station_detail_address_property_label,
                            attributeValue: Text(state.station?.address ?? ""),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          InformationAttribute(
                            attributeName: appLocalization
                                .station_detail_rating_property_label,
                            attributeValue: RatingBar(
                              itemSize: 30,
                              ignoreGestures: true,
                              initialRating: (state.station?.review.rating ?? 0)
                                  .toDouble(),
                              ratingWidget: RatingWidget(
                                  full: const Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                  ),
                                  half: const Icon(
                                    Icons.star_half,
                                    color: Colors.orange,
                                  ),
                                  empty: const Icon(
                                    Icons.star_outline,
                                    color: Colors.orange,
                                  )),
                              onRatingUpdate: (rating) {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          } else {
            return ErrorView(errorMessage: state.errorMessage);
          }
        },
      ),
    );
  }
}
