part of 'electric_car_detail_bloc.dart';

@immutable
abstract class ElectricCarDetailEvent {}

class GetElectricCarDetail implements ElectricCarDetailEvent {
  final String id;

  GetElectricCarDetail(
    this.id,
  );
}
