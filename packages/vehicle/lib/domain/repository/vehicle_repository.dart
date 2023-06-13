import '../models/vehicle.dart';

abstract class VehicleRepository {
  Future<List<Vehicle>> getVehicles();

  Future<Vehicle> getVehicleById(String id);
}
