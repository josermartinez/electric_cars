import '../models/vehicle.dart';
import '../repository/vehicle_repository.dart';

class GetVehiclesUseCase {
  final VehicleRepository _vehicleRepository;

  GetVehiclesUseCase(this._vehicleRepository);

  Future<List<Vehicle>> call() => _vehicleRepository.getVehicles();
}
