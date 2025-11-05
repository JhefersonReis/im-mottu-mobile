import 'package:im_mottu_mobile/src/models/pokemon_detail_model.dart';
import 'package:im_mottu_mobile/src/models/pokemon_model.dart';
import 'package:result_dart/result_dart.dart';

abstract interface class HomeRepository {
  AsyncResult<List<PokemonModel>> fetchPokemonList(int limit, int offset);
  AsyncResult<PokemonDetailModel> fetchPokemonDetail(String pokemonName);
  AsyncResult<int> fetchPokemonCount();
}
