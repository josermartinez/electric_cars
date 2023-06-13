import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../domain/models/vehicle.dart';
import '../../../domain/use_cases/get_vehicle_by_id_use_case.dart';

part 'electric_car_detail_event.dart';
part 'electric_car_detail_state.dart';

class ElectricCarDetailBloc
    extends Bloc<ElectricCarDetailEvent, ElectricCarDetailState> {
  final GetVehicleByIdUseCase _getVehicleByIdUseCase;

  ElectricCarDetailBloc(this._getVehicleByIdUseCase)
      : super(ElectricCarDetailState(
          true,
          null,
          null,
        )) {
    on<GetElectricCarDetail>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      try {
        var vehicle = await _getVehicleByIdUseCase.call(event.id);
        emit(state.copyWith(isLoading: false, vehicle: vehicle));
      } catch (e) {
        emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
      }
    });
  }
}
