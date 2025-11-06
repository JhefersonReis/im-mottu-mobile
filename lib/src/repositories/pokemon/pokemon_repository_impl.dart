import 'package:im_mottu_mobile/src/commons/rest_client.dart';
import 'package:im_mottu_mobile/src/models/pokemon_detail_model.dart';
import 'package:im_mottu_mobile/src/models/pokemon_model.dart';
import 'package:im_mottu_mobile/src/repositories/pokemon/pokemon_repository.dart';
import 'package:result_dart/result_dart.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  final RestClient restClient;

  PokemonRepositoryImpl({required this.restClient});

  @override
  AsyncResult<List<PokemonModel>> fetchPokemonList(int limit, int offset) async {
    final response = await restClient.get(
      '/pokemon',
      queryParameters: {
        'limit': limit,
        'offset': offset,
      },
    );

    if (response.statusCode == 200) {
      final data = response.data['results'] as List;
      final pokemonList = data.map((item) => PokemonModel.fromJson(item)).toList();

      return Success(pokemonList);
    } else {
      return Failure(Exception('Failed to fetch Pokemon list'));
    }
  }

  @override
  AsyncResult<PokemonDetailModel> fetchPokemonDetail(String pokemonName) async {
    final response = await restClient.get('/pokemon/$pokemonName');

    if (response.statusCode == 200) {
      final data = response.data;
      final pokemonDetail = PokemonDetailModel.fromJson(data);

      return Success(pokemonDetail);
    } else {
      return Failure(Exception('Failed to fetch Pokemon detail'));
    }
  }

  @override
  AsyncResult<int> fetchPokemonCount() async {
    final response = await restClient.get(
      '/pokemon',
      queryParameters: {
        'limit': 1,
        'offset': 0,
      },
    );

    if (response.statusCode == 200) {
      final count = response.data['count'] as int;
      return Success(count);
    } else {
      return Failure(Exception('Failed to fetch Pokemon count'));
    }
  }

  @override
  AsyncResult<List<PokemonModel>> fetchPokemonByAbility(String abilityName) async {
    final response = await restClient.get(
      '/ability/$abilityName',
    );

    if (response.statusCode == 200) {
      final data = response.data['pokemon'] as List;
      final pokemonList = data.map((item) => PokemonModel.fromJson(item['pokemon'])).toList();

      return Success(pokemonList);
    } else {
      return Failure(Exception('Failed to fetch Pokemon by ability'));
    }
  }

  @override
  AsyncResult<List<PokemonModel>> fetchPokemonByType(String typeName) async {
    final response = await restClient.get(
      '/type/$typeName',
    );

    if (response.statusCode == 200) {
      final data = response.data['pokemon'] as List;
      final pokemonList = data.map((item) => PokemonModel.fromJson(item['pokemon'])).toList();

      return Success(pokemonList);
    } else {
      return Failure(Exception('Failed to fetch Pokemon by type'));
    }
  }
}
