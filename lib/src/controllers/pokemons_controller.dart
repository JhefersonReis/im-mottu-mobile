import 'package:im_mottu_mobile/src/commons/helper.dart';
import 'package:im_mottu_mobile/src/models/pokemon_detail_model.dart';
import 'package:im_mottu_mobile/src/models/pokemon_model.dart';
import 'package:im_mottu_mobile/src/repositories/home/home_repository.dart';
import 'package:signals/signals_core.dart';

class PokemonsController {
  final HomeRepository homeRepository;
  final Helper helper;

  PokemonsController({required this.homeRepository, required this.helper});

  final pokemonsLoading = signal(false);
  final pokemonDetailLoading = signal(false);

  final pokemons = signal<List<PokemonModel>?>(null);
  final pokemonDetail = signal<PokemonDetailModel?>(null);

  static const int _limit = 20;
  int _offset = 0;

  Future<void> loadInitialPokemons() async {
    _offset = 0;
    pokemons.set(null);
    await _loadPokemons();
  }

  Future<void> loadMorePokemons() async {
    if (pokemonsLoading.value) return;

    _offset += _limit;
    await _loadPokemons();
  }

  Future<void> _loadPokemons() async {
    pokemonsLoading.set(true);

    final result = await homeRepository.fetchPokemonList(_limit, _offset);

    result.fold(
      (data) {
        final currentPokemons = pokemons.value ?? [];
        pokemons.set([...currentPokemons, ...data]);
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

  Future<void> loadPokemonDetail(String pokemonName) async {
    pokemonDetailLoading.set(true);

    // final result = await homeRepository.fetchPokemonDetail(pokemonName);
    final result = await homeRepository.fetchPokemonDetail('paowdpaw');

    result.fold(
      (data) {
        pokemonDetail.set(data);
      },
      (error) {
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
