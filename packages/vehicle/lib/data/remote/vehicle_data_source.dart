import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:vehicle/data/dto/vehicle_detail_dto.dart';
import 'package:vehicle/data/dto/vehicle_dto.dart';
import 'package:vehicle/data/remote/queries/vehicle_query.dart';

class VehicleDataSource {
  final GraphQLClient _client;

  VehicleDataSource(this._client);

  Future<List<VehicleDto>> getVehicleList() async {
    try {
      QueryResult result = await _client.query(
        QueryOptions(
          document: gql(VehicleQueries.vehicleListQuery),
          fetchPolicy: FetchPolicy.noCache,
        ),
      );

      if (result.hasException) {
        throw Exception(result.exception);
      }

      VehicleData data = VehicleData.fromJson(result.data!);
      return data.vehicleList;
    } catch (error) {
      throw Exception(error);
    }
  }

  Future<VehicleDetailDto> getVehicleById(String id) async {
    try {
      QueryResult result = await _client.query(
        QueryOptions(
            document: gql(VehicleQueries.vehicleQuery),
            fetchPolicy: FetchPolicy.noCache,
            variables: {"id": id}),
      );

      if (result.hasException) {
        throw Exception(result.exception);
      }

      VehicleDetailDataDto data = VehicleDetailDataDto.fromJson(result.data!);
      return data.vehicle;
    } catch (error) {
      throw Exception(error);
    }
  }
}
