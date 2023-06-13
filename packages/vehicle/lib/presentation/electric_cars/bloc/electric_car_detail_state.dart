part of 'electric_car_detail_bloc.dart';

class ElectricCarDetailState {
  final bool? isLoading;
  final Vehicle? vehicle;
  final String? errorMessage;

  ElectricCarDetailState(
    this.isLoading,
    this.vehicle,
    this.errorMessage,
  );

  ElectricCarDetailState copyWith({
    bool? isLoading,
    Vehicle? vehicle,
    String? errorMessage,
  }) {
    return ElectricCarDetailState(
      isLoading ?? this.isLoading,
      vehicle ?? this.vehicle,
      errorMessage ?? this.errorMessage,
    );
  }
}
