import 'package:im_mottu_mobile/src/models/pokemon_detail_model.dart';
import 'package:im_mottu_mobile/src/models/pokemon_model.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class Database {
  static Isar? _isarInstance;

  Future<void> initialize() async {
    if (_isarInstance != null) return;

    final dir = await getApplicationSupportDirectory();
    _isarInstance = await Isar.open(
      [
        PokemonModelSchema,
        PokemonDetailModelSchema,
      ],
      directory: dir.path,
    );
  }

  Isar get isar => _isarInstance!;

  Future<void> saveAllPokemons(List<PokemonModel> pokemons) async {
    await isar.writeTxn(() async {
      await isar.pokemonModels.clear();
      await isar.pokemonModels.putAll(pokemons);
    });
  }

  Future<List<PokemonModel>> getAllPokemons() async {
    return await isar.pokemonModels.where().findAll();
  }

  Future<int> countPokemons() async {
    return await isar.pokemonModels.count();
  }

  Future<void> savePokemonDetail(PokemonDetailModel pokemonDetail) async {
    await isar.writeTxn(() async {
      await isar.pokemonDetailModels.put(pokemonDetail);
    });
  }

  Future<PokemonDetailModel?> getPokemonDetail(int pokemonId) async {
    return await isar.pokemonDetailModels.get(pokemonId);
  }

  Future<bool> hasPokemonDetail(int pokemonId) async {
    final detail = await isar.pokemonDetailModels.get(pokemonId);
    return detail != null;
  }

  Future<void> clearPokemonDetails() async {
    await isar.writeTxn(() async {
      await isar.pokemonDetailModels.clear();
    });
  }
}
