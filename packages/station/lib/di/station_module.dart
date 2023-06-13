import 'package:get_it/get_it.dart';
import 'package:station/di/data_module.dart';
import 'package:station/di/domain_module.dart';

import '../domain/use cases/get_station_by_id_use_case.dart';
import '../domain/use cases/get_stations_use_case.dart';
import '../presentation/stations/bloc/station_detail_bloc.dart';
import '../presentation/stations/bloc/stations_bloc.dart';

class StationModule {
  final getIt = GetIt.instance;

  void setup() {
    DataModule().setup();
    DomainModule().setup();

    provideStationsBloc(getIt<GetStationsUseCase>());
    provideStationDetailBloc(getIt<GetStationByIdUseCase>());
  }

  void provideStationsBloc(GetStationsUseCase getStationsUseCase) {
    getIt.registerFactory<StationsBloc>(() => StationsBloc(getStationsUseCase));
  }

  void provideStationDetailBloc(GetStationByIdUseCase getStationByIdUseCase) {
    getIt.registerFactory<StationDetailBloc>(
        () => StationDetailBloc(getStationByIdUseCase));
  }
}
