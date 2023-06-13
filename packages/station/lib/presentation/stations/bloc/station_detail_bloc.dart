import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../domain/models/station.dart';
import '../../../domain/use cases/get_station_by_id_use_case.dart';

part 'station_detail_event.dart';
part 'station_detail_state.dart';

class StationDetailBloc extends Bloc<StationDetailEvent, StationDetailState> {
  final GetStationByIdUseCase _getStationByIdUseCase;

  StationDetailBloc(this._getStationByIdUseCase)
      : super(StationDetailState(false, null, null)) {
    on<GetStationByIdEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      try {
        var station = await _getStationByIdUseCase(event.id);
        emit(state.copyWith(isLoading: false, station: station));
      } catch (e) {
        emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
      }
    });
  }
}
