import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:station/data/dto/station_dto.dart';
import 'package:station/data/dto/station_list_dto.dart';

import 'queries/station_query.dart';

class StationDataSource {
  final GraphQLClient _client;

  StationDataSource(
    this._client,
  );

  Future<List<StationDto>> getStations() async {
    try {
      QueryResult result = await _client.query(QueryOptions(
        document: gql(StationQuery.stationListQuery),
        fetchPolicy: FetchPolicy.noCache,
      ));

      if (result.hasException) {
        throw Exception(result.exception);
      }

      StationListDataDto stationDataDto =
          StationListDataDto.fromJson(result.data!);
      return stationDataDto.stationList;
    } catch (error) {
      throw Exception(error);
    }
  }

  Future<StationDto> getStationById(String id) async {
    try {
      QueryResult result = await _client.query(
        QueryOptions(
          document: gql(StationQuery.stationDetailQuery),
          fetchPolicy: FetchPolicy.noCache,
          variables: {"id": id},
        ),
      );

      if (result.hasException) {
        throw Exception(result.exception);
      }

      return StationData.fromJson(result.data!).station;
    } catch (error) {
      throw Exception(error);
    }
  }
}
