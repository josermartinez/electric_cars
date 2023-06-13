import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../domain/models/vehicle.dart';
import '../../../domain/use_cases/get_vehicles_use_case.dart';

part 'electric_cars_event.dart';

part 'electric_cars_state.dart';

class ElectricCarsBloc extends Bloc<ElectricCarsEvent, ElectricCarsState> {
  final GetVehiclesUseCase _getVehiclesUseCase;

  ElectricCarsBloc(this._getVehiclesUseCase)
      : super(ElectricCarsState(false, null, List.empty())) {
    on<GetVehiclesEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      try {
        var vehicles = await _getVehiclesUseCase();
        emit(state.copyWith(isLoading: false, vehicles: vehicles));
      } catch (e) {
        emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
      }
    });
  }
}
