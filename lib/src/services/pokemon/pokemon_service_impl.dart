import 'package:im_mottu_mobile/src/constants/constants.dart';
import 'package:im_mottu_mobile/src/database/database.dart';
import 'package:im_mottu_mobile/src/models/pokemon_detail_model.dart';
import 'package:im_mottu_mobile/src/models/pokemon_model.dart';
import 'package:im_mottu_mobile/src/repositories/pokemon/pokemon_repository.dart';
import 'package:im_mottu_mobile/src/services/pokemon/pokemon_service.dart';
import 'package:result_dart/result_dart.dart';

class PokemonServiceImpl implements PokemonService {
  final PokemonRepository repository;
  final Database database;

  static const int _maxPokemonLimit = ValuesConstants.maxPokemonLimit;

  PokemonServiceImpl({
    required this.repository,
    required this.database,
  });

  @override
  AsyncResult<List<PokemonModel>> loadInitialPokemons() async {
    try {
      final countResult = await repository.fetchPokemonCount();

      final apiCount = countResult.getOrNull();

      if (apiCount == null) {
        final cachedPokemons = await database.getAllPokemons();

        if (cachedPokemons.isNotEmpty) {
          return Success(cachedPokemons);
        }

        return countResult.map((count) => <PokemonModel>[]);
      }

      final localCount = await database.countPokemons();

      if (apiCount == localCount && localCount > 0) {
        final cachedPokemons = await database.getAllPokemons();
        return Success(cachedPokemons);
      }

      return await _fetchAndCacheAllPokemons();
    } catch (e) {
      return Failure(Exception('Error loading pokémons: $e'));
    }
  }

  AsyncResult<List<PokemonModel>> _fetchAndCacheAllPokemons() async {
    final result = await repository.fetchPokemonList(_maxPokemonLimit, 0);

    if (result.isSuccess()) {
      final data = result.getOrThrow();
      await database.saveAllPokemons(data);
    }

    return result;
  }

  @override
  AsyncResult<PokemonDetailModel> loadPokemonDetail(
    String pokemonName,
    String pokemonUrl,
  ) async {
    try {
      final pokemonId = _extractPokemonId(pokemonUrl);

      if (pokemonId != null) {
        final cachedDetail = await database.getPokemonDetail(pokemonId);

        if (cachedDetail != null) {
          return Success(cachedDetail);
        }
      }

      final result = await repository.fetchPokemonDetail(pokemonName);

      if (result.isSuccess()) {
        final data = result.getOrThrow();
        await database.savePokemonDetail(data);
      }

      return result;
    } catch (e) {
      return Failure(Exception('Error loading pokémon details: $e'));
    }
  }

  @override
  AsyncResult<List<PokemonModel>> fetchPokemonByType(String typeName) async {
    try {
      return await repository.fetchPokemonByType(typeName);
    } catch (e) {
      return Failure(Exception('Error fetching pokémons by type: $e'));
    }
  }

  @override
  AsyncResult<List<PokemonModel>> fetchPokemonByAbility(String abilityName) async {
    try {
      return await repository.fetchPokemonByAbility(abilityName);
    } catch (e) {
      return Failure(Exception('Error fetching pokémons by ability: $e'));
    }
  }

  @override
  List<PokemonModel> filterPokemonsByName(
    String query,
    List<PokemonModel> allPokemons,
  ) {
    if (query.isEmpty) {
      return allPokemons;
    }

    return allPokemons.where((pokemon) {
      return pokemon.name.toLowerCase().contains(query.toLowerCase());
    }).toList();
  }

  int? _extractPokemonId(String url) {
    try {
      final uri = Uri.parse(url);
      final segments = uri.pathSegments;
      return int.tryParse(segments[segments.length - 2]);
    } catch (e) {
      return null;
    }
  }
}
