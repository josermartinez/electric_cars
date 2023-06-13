part of 'stations_bloc.dart';

class StationsState {
  final bool? isLoading;
  final List<Station> stations;
  final String? errorMessage;

  StationsState(
    this.isLoading,
    this.stations,
    this.errorMessage,
  );

  StationsState copyWith({
    bool? isLoading,
    List<Station>? stations,
    String? errorMessage,
  }) {
    return StationsState(
      isLoading ?? this.isLoading,
      stations ?? this.stations,
      errorMessage ?? this.errorMessage,
    );
  }
}
