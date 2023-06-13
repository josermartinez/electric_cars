import 'package:get_it/get_it.dart';

import '../data/remote/station_data_source.dart';
import '../data/station_repository_impl.dart';
import '../domain/repository/station_repository.dart';
import '../domain/use cases/get_station_by_id_use_case.dart';
import '../domain/use cases/get_stations_use_case.dart';

class DomainModule {
  final getIt = GetIt.instance;

  void setup() {
    provideStationRepository(getIt<StationDataSource>());
    provideGetStationsUseCase(getIt<StationRepository>());
    provideGetStationByIdUseCase(getIt<StationRepository>());
  }

  void provideStationRepository(StationDataSource stationDataSource) {
    getIt.registerLazySingleton<StationRepository>(
        () => StationRepositoryImpl(stationDataSource));
  }

  void provideGetStationsUseCase(StationRepository stationRepository) {
    getIt.registerLazySingleton<GetStationsUseCase>(
        () => GetStationsUseCase(stationRepository));
  }

  void provideGetStationByIdUseCase(StationRepository stationRepository) {
    getIt.registerLazySingleton<GetStationByIdUseCase>(
        () => GetStationByIdUseCase(stationRepository));
  }
}
