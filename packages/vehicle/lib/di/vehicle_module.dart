import 'package:get_it/get_it.dart';
import 'package:vehicle/di/data_module.dart';
import 'package:vehicle/di/domain_module.dart';

import '../domain/use_cases/get_vehicle_by_id_use_case.dart';
import '../domain/use_cases/get_vehicles_use_case.dart';
import '../presentation/electric_cars/bloc/electric_car_detail_bloc.dart';
import '../presentation/electric_cars/bloc/electric_cars_bloc.dart';

class VehicleModule {
  final getIt = GetIt.instance;

  void setup() {
    DataModule().setup();
    DomainModule().setup();

    provideElectricCarsBloc(getIt<GetVehiclesUseCase>());
    provideElectricCarDetailBloc(getIt<GetVehicleByIdUseCase>());
  }

  void provideElectricCarsBloc(GetVehiclesUseCase getVehiclesUseCase) {
    getIt.registerFactory<ElectricCarsBloc>(
        () => ElectricCarsBloc(getVehiclesUseCase));
  }

  void provideElectricCarDetailBloc(
      GetVehicleByIdUseCase getVehicleByIdUseCase) {
    getIt.registerFactory<ElectricCarDetailBloc>(
        () => ElectricCarDetailBloc(getVehicleByIdUseCase));
  }
}
