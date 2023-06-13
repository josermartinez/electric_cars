part of 'station_detail_bloc.dart';

class StationDetailState {
  final bool? isLoading;
  final Station? station;
  final String? errorMessage;

  StationDetailState(
    this.isLoading,
    this.station,
    this.errorMessage,
  );

  StationDetailState copyWith({
    bool? isLoading,
    Station? station,
    String? errorMessage,
  }) {
    return StationDetailState(
      isLoading ?? this.isLoading,
      station ?? this.station,
      errorMessage ?? this.errorMessage,
    );
  }
}
