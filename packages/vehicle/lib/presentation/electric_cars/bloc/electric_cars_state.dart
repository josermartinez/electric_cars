part of 'electric_cars_bloc.dart';

class ElectricCarsState {
  final bool? isLoading;
  final String? errorMessage;
  final List<Vehicle>? vehicles;

  ElectricCarsState(
    this.isLoading,
    this.errorMessage,
    this.vehicles,
  );

  ElectricCarsState copyWith({
    bool? isLoading,
    String? errorMessage,
    List<Vehicle>? vehicles,
  }) {
    return ElectricCarsState(
      isLoading ?? this.isLoading,
      errorMessage ?? this.errorMessage,
      vehicles ?? this.vehicles,
    );
  }
}
