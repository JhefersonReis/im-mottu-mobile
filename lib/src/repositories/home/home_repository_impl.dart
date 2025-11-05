import 'package:im_mottu_mobile/src/commons/rest_client.dart';
import 'package:im_mottu_mobile/src/models/pokemon_model.dart';
import 'package:im_mottu_mobile/src/repositories/home/home_repository.dart';
import 'package:result_dart/result_dart.dart';

class HomeRepositoryImpl implements HomeRepository {
  final RestClient restClient;

  HomeRepositoryImpl({required this.restClient});

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
}
