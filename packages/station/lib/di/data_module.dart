import 'package:get_it/get_it.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../data/remote/station_data_source.dart';

class DataModule {
  final getIt = GetIt.instance;

  void setup() {
    provideStationDataSource(getIt<GraphQLClient>());
  }

  void provideStationDataSource(GraphQLClient client) {
    getIt.registerLazySingleton<StationDataSource>(
        () => StationDataSource(client));
  }
}
