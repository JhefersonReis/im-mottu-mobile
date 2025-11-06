import 'package:im_mottu_mobile/src/commons/helper.dart';
import 'package:im_mottu_mobile/src/constants/constants.dart';
import 'package:im_mottu_mobile/src/models/pokemon_detail_model.dart';
import 'package:im_mottu_mobile/src/models/pokemon_model.dart';
import 'package:im_mottu_mobile/src/services/pokemon/pokemon_service.dart';
import 'package:signals/signals_core.dart';

class PokemonsController {
  final PokemonService pokemonService;
  final Helper helper;

  PokemonsController({
    required this.pokemonService,
    required this.helper,
  });

  final pokemonsLoading = signal(false);
  final pokemonDetailLoading = signal(false);
  final filteringPokemons = signal(false);
  final filteredPokemonsLoading = signal(false);

  final pokemons = signal<List<PokemonModel>?>(null);
  final pokemonDetail = signal<PokemonDetailModel?>(null);
  final allPokemons = signal<List<PokemonModel>?>(null);
  final filteredPokemons = signal<List<PokemonModel>?>(null);
  final currentPage = signal(1);
  final totalPages = signal(1);

  static const int _itemsPerPage = ValuesConstants.itemsPerPage;

  Future<void> loadInitialPokemons() async {
    pokemonsLoading.set(true);
    currentPage.set(1);
    pokemons.set(null);
    allPokemons.set(null);

    final result = await pokemonService.loadInitialPokemons();

    result.fold(
      (data) {
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

  Future<void> loadPokemonDetail(String pokemonName, String pokemonUrl) async {
    pokemonDetailLoading.set(true);
    pokemonDetail.set(null);

    final result = await pokemonService.loadPokemonDetail(
      pokemonName,
      pokemonUrl,
    );

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

  void filterPokemons(String value) {
    if (value.isEmpty) {
      _updatePaginatedList();
      filteringPokemons.set(false);
      return;
    }

    filteringPokemons.set(true);

    final all = allPokemons.value ?? [];
    final filtered = pokemonService.filterPokemonsByName(value, all);
    pokemons.set(filtered);
  }

  Future<void> loadPokemonsByAbility(String abilityName) async {
    filteredPokemonsLoading.set(true);
    filteredPokemons.set(null);

    final result = await pokemonService.fetchPokemonByAbility(abilityName);

    result.fold(
      (data) {
        filteredPokemons.set(data);
      },
      (error) {
        filteredPokemons.set(null);
        helper.showToast(
          message: error.toString(),
          status: ToastStatus.error,
        );
      },
    );

    filteredPokemonsLoading.set(false);
  }

  Future<void> loadPokemonsByType(String typeName) async {
    filteredPokemonsLoading.set(true);
    filteredPokemons.set(null);

    final result = await pokemonService.fetchPokemonByType(typeName);

    result.fold(
      (data) {
        filteredPokemons.set(data);
      },
      (error) {
        filteredPokemons.set(null);
        helper.showToast(
          message: error.toString(),
          status: ToastStatus.error,
        );
      },
    );

    filteredPokemonsLoading.set(false);
  }
}
