import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../domain/models/station.dart';
import '../../../domain/use cases/get_stations_use_case.dart';

part 'stations_event.dart';

part 'stations_state.dart';

class StationsBloc extends Bloc<StationsEvent, StationsState> {
  final GetStationsUseCase _getStationsUseCase;

  StationsBloc(this._getStationsUseCase)
      : super(StationsState(false, List.empty(), null)) {
    on<StationsEvent>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        try {
          var stations = await _getStationsUseCase();
          emit(state.copyWith(isLoading: false, stations: stations));
        } catch (e) {
          emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
        }
      },
    );
  }
}
