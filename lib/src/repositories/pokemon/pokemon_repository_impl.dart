import 'package:dio/dio.dart';
import 'package:im_mottu_mobile/src/commons/helper.dart';
import 'package:im_mottu_mobile/src/commons/rest_client.dart';
import 'package:im_mottu_mobile/src/models/pokemon_detail_model.dart';
import 'package:im_mottu_mobile/src/models/pokemon_model.dart';
import 'package:im_mottu_mobile/src/repositories/pokemon/pokemon_repository.dart';
import 'package:result_dart/result_dart.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  final RestClient restClient;
  final Helper helper;

  PokemonRepositoryImpl({required this.restClient, required this.helper});

  @override
  AsyncResult<List<PokemonModel>> fetchPokemonList(int limit, int offset) async {
    try {
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
        return Failure(Exception('Failed to fetch Pokemon list. Status: ${response.statusCode}'));
      }
    } on DioException catch (e) {
      return Failure(Exception(helper.getDioErrorMessage(e)));
    } catch (e) {
      return Failure(Exception('An unexpected error occurred: $e'));
    }
  }

  @override
  AsyncResult<PokemonDetailModel> fetchPokemonDetail(String pokemonName) async {
    try {
      final response = await restClient.get(
        '/pokemon/$pokemonName',
      );

      if (response.statusCode == 200) {
        final pokemonDetail = PokemonDetailModel.fromJson(response.data);
        return Success(pokemonDetail);
      }

      return Failure(Exception('Failed to fetch Pokemon detail. Status: ${response.statusCode}'));
    } on DioException catch (e) {
      return Failure(Exception(helper.getDioErrorMessage(e)));
    } catch (e) {
      return Failure(Exception('An unexpected error occurred: $e'));
    }
  }

  @override
  AsyncResult<int> fetchPokemonCount() async {
    try {
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
        return Failure(Exception('Failed to fetch Pokemon count. Status: ${response.statusCode}'));
      }
    } on DioException catch (e) {
      return Failure(Exception(helper.getDioErrorMessage(e)));
    } catch (e) {
      return Failure(Exception('An unexpected error occurred: $e'));
    }
  }

  @override
  AsyncResult<List<PokemonModel>> fetchPokemonByAbility(String abilityName) async {
    try {
      final response = await restClient.get(
        '/ability/$abilityName',
      );

      if (response.statusCode == 200) {
        final data = response.data['pokemon'] as List;
        final pokemonList = data.map((item) => PokemonModel.fromJson(item['pokemon'])).toList();

        return Success(pokemonList);
      } else {
        return Failure(Exception('Failed to fetch Pokemon by ability. Status: ${response.statusCode}'));
      }
    } on DioException catch (e) {
      return Failure(Exception(helper.getDioErrorMessage(e)));
    } catch (e) {
      return Failure(Exception('An unexpected error occurred: $e'));
    }
  }

  @override
  AsyncResult<List<PokemonModel>> fetchPokemonByType(String typeName) async {
    try {
      final response = await restClient.get(
        '/type/$typeName',
      );

      if (response.statusCode == 200) {
        final data = response.data['pokemon'] as List;
        final pokemonList = data.map((item) => PokemonModel.fromJson(item['pokemon'])).toList();

        return Success(pokemonList);
      } else {
        return Failure(Exception('Failed to fetch Pokemon by type. Status: ${response.statusCode}'));
      }
    } on DioException catch (e) {
      return Failure(Exception(helper.getDioErrorMessage(e)));
    } catch (e) {
      return Failure(Exception('An unexpected error occurred: $e'));
    }
  }
}
