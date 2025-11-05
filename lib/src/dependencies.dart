import 'package:get_it/get_it.dart';
import 'package:im_mottu_mobile/src/commons/helper.dart';
import 'package:im_mottu_mobile/src/commons/rest_client.dart';
import 'package:im_mottu_mobile/src/controllers/pokemons_controller.dart';
import 'package:im_mottu_mobile/src/repositories/home/home_repository.dart';
import 'package:im_mottu_mobile/src/repositories/home/home_repository_impl.dart';

final _getIt = GetIt.instance;

void setupDependencies() {
  _getIt.registerLazySingleton<RestClient>(() => RestClient());
  _getIt.registerLazySingleton<Helper>(() => Helper());

  _getIt.registerLazySingleton<HomeRepository>(
    () => HomeRepositoryImpl(
      restClient: _getIt<RestClient>(),
    ),
  );
  _getIt.registerLazySingleton<PokemonsController>(
    () => PokemonsController(
      homeRepository: _getIt<HomeRepository>(),
      helper: _getIt<Helper>(),
    ),
  );
}
