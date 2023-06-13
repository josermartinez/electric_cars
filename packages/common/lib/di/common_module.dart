import 'package:get_it/get_it.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

export 'package:common/res/l10n/generated/app_localizations.dart';

class CommonModule {
  final getIt = GetIt.instance;

  void setup() {
    _provideGraphqlClient();
  }

  void _provideGraphqlClient() {
    getIt.registerLazySingleton<GraphQLClient>(
      () => GraphQLClient(
        link: HttpLink(
          "https://api.chargetrip.io/graphql",
          defaultHeaders: {
            "x-client-id": "62ba4e6db0d2b6c85e3b9a46",
            "x-app-id": "62ba4e6db0d2b6c85e3b9a48"
          },
        ),
        cache: GraphQLCache(),
      ),
    );
  }
}
