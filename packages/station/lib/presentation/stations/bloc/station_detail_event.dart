part of 'station_detail_bloc.dart';

@immutable
abstract class StationDetailEvent {}

class GetStationByIdEvent implements StationDetailEvent {
  final String id;

  GetStationByIdEvent(
    this.id,
  );
}
