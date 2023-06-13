import 'package:get_it/get_it.dart';

import '../data/remote/vehicle_data_source.dart';
import '../data/vehicle_repository_impl.dart';
import '../domain/repository/vehicle_repository.dart';
import '../domain/use_cases/get_vehicle_by_id_use_case.dart';
import '../domain/use_cases/get_vehicles_use_case.dart';

class DomainModule {
  final getIt = GetIt.instance;

  void setup() {
    provideVehicleRepository(getIt<VehicleDataSource>());
    provideGetVehiclesUseCase(getIt<VehicleRepository>());
    provideGetVehicleByIdUseCase(getIt<VehicleRepository>());
  }

  void provideVehicleRepository(VehicleDataSource vehicleDataSource) {
    getIt.registerLazySingleton<VehicleRepository>(
        () => VehicleRepositoryImpl(vehicleDataSource));
  }

  void provideGetVehiclesUseCase(VehicleRepository vehicleRepository) {
    getIt.registerLazySingleton<GetVehiclesUseCase>(
        () => GetVehiclesUseCase(vehicleRepository));
  }

  void provideGetVehicleByIdUseCase(VehicleRepository vehicleRepository) {
    getIt.registerLazySingleton<GetVehicleByIdUseCase>(
        () => GetVehicleByIdUseCase(vehicleRepository));
  }
}
