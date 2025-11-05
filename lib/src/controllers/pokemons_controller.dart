import 'package:im_mottu_mobile/src/commons/helper.dart';
import 'package:im_mottu_mobile/src/database/database.dart';
import 'package:im_mottu_mobile/src/models/pokemon_detail_model.dart';
import 'package:im_mottu_mobile/src/models/pokemon_model.dart';
import 'package:im_mottu_mobile/src/repositories/home/home_repository.dart';
import 'package:signals/signals_core.dart';

class PokemonsController {
  final HomeRepository homeRepository;
  final Helper helper;
  final Database database;

  PokemonsController({
    required this.homeRepository,
    required this.helper,
    required this.database,
  });

  final pokemonsLoading = signal(false);
  final pokemonDetailLoading = signal(false);

  final pokemons = signal<List<PokemonModel>?>(null);
  final pokemonDetail = signal<PokemonDetailModel?>(null);
  final allPokemons = signal<List<PokemonModel>?>(null);
  final currentPage = signal(1);
  final totalPages = signal(1);

  static const int _itemsPerPage = 20;
  static const int _maxPokemonLimit = 2000;

  Future<void> loadInitialPokemons() async {
    pokemonsLoading.set(true);
    currentPage.set(1);
    pokemons.set(null);
    allPokemons.set(null);

    try {
      // Verify count from API
      final countResult = await homeRepository.fetchPokemonCount();

      await countResult.fold(
        (apiCount) async {
          // Verify local count
          final localCount = await database.countPokemons();

          if (apiCount == localCount && localCount > 0) {
            // Use cached data
            final cachedPokemons = await database.getAllPokemons();
            allPokemons.set(cachedPokemons);
            _updatePaginatedList();
          } else {
            // Fetch all pokémons from API and save to cache
            await _fetchAndCacheAllPokemons();
          }
        },
        (error) {
          helper.showToast(
            message: error.toString(),
            status: ToastStatus.error,
          );
        },
      );
    } catch (e) {
      helper.showToast(
        message: 'Error loading pokémons: $e',
        status: ToastStatus.error,
      );
    }

    pokemonsLoading.set(false);
  }

  void _updatePaginatedList() {
    final list = allPokemons.value;

    if (list == null || list.isEmpty) {
      pokemons.set([]);
      totalPages.set(1);
      return;
    }

    final total = (list.length / _itemsPerPage).ceil();
    totalPages.set(total);

    final start = (currentPage.value - 1) * _itemsPerPage;
    final end = start + _itemsPerPage;

    final pageItems = list.sublist(
      start,
      end > list.length ? list.length : end,
    );

    pokemons.set(pageItems);
  }

  void goToNextPage() {
    if (currentPage.value < totalPages.value) {
      currentPage.set(currentPage.value + 1);
      _updatePaginatedList();
    }
  }

  void goToPreviousPage() {
    if (currentPage.value > 1) {
      currentPage.set(currentPage.value - 1);
      _updatePaginatedList();
    }
  }

  Future<void> _fetchAndCacheAllPokemons() async {
    final result = await homeRepository.fetchPokemonList(_maxPokemonLimit, 0);

    await result.fold(
      (data) async {
        await database.saveAllPokemons(data);
        allPokemons.set(data);
        _updatePaginatedList();
      },
      (error) {
        helper.showToast(
          message: error.toString(),
          status: ToastStatus.error,
        );
      },
    );
  }

  Future<void> loadPokemonDetail(String pokemonName) async {
    pokemonDetailLoading.set(true);
    pokemonDetail.set(null);

    final result = await homeRepository.fetchPokemonDetail(pokemonName);

    result.fold(
      (data) {
        pokemonDetail.set(data);
      },
      (error) {
        pokemonDetail.set(null);
        helper.showToast(
          message: error.toString(),
          status: ToastStatus.error,
        );
      },
    );

    pokemonDetailLoading.set(false);
  }

  String getPokemonId(String url) {
    final uri = Uri.parse(url);
    final segments = uri.pathSegments;
    return segments[segments.length - 2];
  }

  String getPokemonImageUrl(String url) {
    final id = getPokemonId(url);
    return 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$id.png';
  }

  String getPokemonFormattedId(String url) {
    return '#${getPokemonId(url).padLeft(3, '0')}';
  }
}
