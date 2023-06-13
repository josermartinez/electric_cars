import '../repository/station_repository.dart';

import '../models/station.dart';

class GetStationByIdUseCase {
  final StationRepository _stationRepository;

  GetStationByIdUseCase(
    this._stationRepository,
  );

  Future<Station> call(String id) {
    return _stationRepository.getStationById(id);
  }
}
