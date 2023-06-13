import 'package:flutter/material.dart';

import '../../domain/models/station.dart';

class StationTile extends StatelessWidget {
  final Station station;
  final Function(String) onTap;

  const StationTile({
    super.key,
    required this.station,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(station.id),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                station.name,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                station.address,
                textAlign: TextAlign.start,
              ),
              Text(
                "${station.city}, ${station.country}",
                textAlign: TextAlign.start,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  for (var amenity in station.facilities)
                    Icon(getAmenityIcon(amenity))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

IconData getAmenityIcon(String facility) {
  switch (facility) {
    case "HOTEL":
      return Icons.hotel;
    case "RESTAURANT":
      return Icons.restaurant;
    case "CAFE":
      return Icons.local_cafe;
    case "MALL":
      return Icons.local_mall;
    case "SUPERMARKET":
      return Icons.store;
    case "SPORT":
      return Icons.sports;
    case "RECREATION_AREA":
      return Icons.nature_people;
    case "NATURE":
      return Icons.nature;
    case "MUSEUM":
      return Icons.museum;
    case "BIKE_SHARING":
      return Icons.bike_scooter;
    case "BUS_STOP":
      return Icons.directions_bus_filled;
    case "TAXI_STAND":
      return Icons.local_taxi;
    case "TRAM_STOP":
      return Icons.tram;
    case "METRO_STATION":
      return Icons.train;
    case "TRAIN_STATION":
      return Icons.tram;
    case "AIRPORT":
      return Icons.airplanemode_on;
    case "PARKING_LOT":
      return Icons.local_parking;
    case "CARPOOL_PARKING":
      return Icons.local_parking;
    case "FUEL_STATION":
      return Icons.local_gas_station;
    default:
      return Icons.wifi;
  }
}
