import 'package:get_it/get_it.dart';
import 'package:im_mottu_mobile/src/commons/helper.dart';
import 'package:im_mottu_mobile/src/commons/rest_client.dart';
import 'package:im_mottu_mobile/src/controllers/pokemons_controller.dart';
import 'package:im_mottu_mobile/src/database/database.dart';
import 'package:im_mottu_mobile/src/repositories/pokemon/pokemon_repository.dart';
import 'package:im_mottu_mobile/src/repositories/pokemon/pokemon_repository_impl.dart';
import 'package:im_mottu_mobile/src/services/pokemon/pokemon_service.dart';
import 'package:im_mottu_mobile/src/services/pokemon/pokemon_service_impl.dart';

final _getIt = GetIt.instance;

void setupDependencies() {
  _getIt.registerLazySingleton<Database>(() => Database());
  _getIt.registerLazySingleton<RestClient>(() => RestClient());
  _getIt.registerLazySingleton<Helper>(() => Helper());

  _getIt.registerLazySingleton<PokemonRepository>(
    () => PokemonRepositoryImpl(
      restClient: _getIt<RestClient>(),
      helper: _getIt<Helper>(),
    ),
  );

  _getIt.registerLazySingleton<PokemonService>(
    () => PokemonServiceImpl(
      repository: _getIt<PokemonRepository>(),
      database: _getIt<Database>(),
    ),
  );

  _getIt.registerLazySingleton<PokemonsController>(
    () => PokemonsController(
      pokemonService: _getIt<PokemonService>(),
      helper: _getIt<Helper>(),
    ),
  );
}
