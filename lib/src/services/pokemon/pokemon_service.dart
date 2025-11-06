import 'package:im_mottu_mobile/src/models/pokemon_detail_model.dart';
import 'package:im_mottu_mobile/src/models/pokemon_model.dart';
import 'package:result_dart/result_dart.dart';

abstract class PokemonService {
  AsyncResult<List<PokemonModel>> loadInitialPokemons();
  AsyncResult<PokemonDetailModel> loadPokemonDetail(
    String pokemonName,
    String pokemonUrl,
  );
  AsyncResult<List<PokemonModel>> fetchPokemonByType(String typeName);
  AsyncResult<List<PokemonModel>> fetchPokemonByAbility(String abilityName);
  List<PokemonModel> filterPokemonsByName(
    String query,
    List<PokemonModel> allPokemons,
  );
}
