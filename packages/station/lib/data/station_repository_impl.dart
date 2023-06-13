import 'package:station/data/dto/station_list_dto.dart';

import '../domain/models/station.dart';
import '../domain/repository/station_repository.dart';
import 'remote/station_data_source.dart';

class StationRepositoryImpl implements StationRepository {
  final StationDataSource _stationDataSource;

  StationRepositoryImpl(this._stationDataSource);

  @override
  Future<List<Station>> getStations() async {
    var stationList = await _stationDataSource.getStations();
    return stationList.map((e) => e.toStation()).toList();
  }

  @override
  Future<Station> getStationById(String id) async {
    var stationDto = await _stationDataSource.getStationById(id);
    return stationDto.toStation();
  }
}
