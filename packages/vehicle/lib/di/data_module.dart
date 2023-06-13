import 'package:get_it/get_it.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../data/remote/vehicle_data_source.dart';

class DataModule {
  final getIt = GetIt.instance;

  void setup() {
    provideVehicleDataSource(getIt<GraphQLClient>());
  }

  void provideVehicleDataSource(GraphQLClient client) {
    getIt.registerLazySingleton<VehicleDataSource>(
        () => VehicleDataSource(client));
  }
}
