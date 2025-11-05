import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:im_mottu_mobile/src/controllers/pokemons_controller.dart';
import 'package:im_mottu_mobile/src/widgets/pokemon_card.dart';
import 'package:signals/signals_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PokemonsController _controller = GetIt.I<PokemonsController>();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _controller.loadInitialPokemons();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent * 0.9) {
      _controller.loadMorePokemons();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokémons'),
        centerTitle: true,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
      ),
      backgroundColor: Colors.white,
      body: Watch((context) {
        final pokemons = _controller.pokemons.value;
        final isLoading = _controller.pokemonsLoading.value;

        if (pokemons == null && isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (pokemons == null || pokemons.isEmpty) {
          return const Center(
            child: Text('Nenhum pokémon encontrado'),
          );
        }

        return ListView.builder(
          controller: _scrollController,
          itemCount: pokemons.length + (isLoading ? 1 : 0),
          padding: const EdgeInsets.all(8),
          itemBuilder: (context, index) {
            if (index >= pokemons.length) {
              return const Center(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: CircularProgressIndicator(),
                ),
              );
            }

            final pokemon = pokemons[index];
            final imageUrl = _controller.getPokemonImageUrl(pokemon.url);
            final pokemonId = _controller.getPokemonId(pokemon.url);

            return PokemonCard(
              pokemonId: pokemonId,
              imageUrl: imageUrl,
              pokemon: pokemon,
              controller: _controller,
            );
          },
        );
      }),
    );
  }
}
