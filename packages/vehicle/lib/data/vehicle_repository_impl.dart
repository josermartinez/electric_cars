import 'package:vehicle/data/dto/vehicle_detail_dto.dart';
import 'package:vehicle/data/dto/vehicle_dto.dart';
import 'package:vehicle/data/remote/vehicle_data_source.dart';
import 'package:vehicle/domain/models/vehicle.dart';

import '../domain/repository/vehicle_repository.dart';

class VehicleRepositoryImpl implements VehicleRepository {
  final VehicleDataSource _vehicleDataSource;

  VehicleRepositoryImpl(this._vehicleDataSource);

  @override
  Future<List<Vehicle>> getVehicles() async {
    var vehicles = await _vehicleDataSource.getVehicleList();
    return vehicles.map((e) => e.toVehicle()).toList();
  }

  @override
  Future<Vehicle> getVehicleById(String id) async {
    var vehicle = await _vehicleDataSource.getVehicleById(id);
    return vehicle.toVehicle();
  }
}
