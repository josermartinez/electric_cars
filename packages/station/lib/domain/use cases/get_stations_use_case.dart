import '../models/station.dart';
import '../repository/station_repository.dart';

class GetStationsUseCase {
  final StationRepository _stationRepository;

  GetStationsUseCase(this._stationRepository);

  Future<List<Station>> call() {
    return _stationRepository.getStations();
  }
}
