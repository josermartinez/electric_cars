import '../models/vehicle.dart';
import '../repository/vehicle_repository.dart';

class GetVehicleByIdUseCase {
  final VehicleRepository _vehicleRepository;

  GetVehicleByIdUseCase(
    this._vehicleRepository,
  );

  Future<Vehicle> call(String id) {
    return _vehicleRepository.getVehicleById(id);
  }
}
