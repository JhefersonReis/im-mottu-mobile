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
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToTop() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        0,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
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

        return Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: _scrollController,
                itemCount: pokemons.length,
                padding: const EdgeInsets.all(8),
                itemBuilder: (context, index) {
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
              ),
            ),
            Watch((context) {
              final currentPage = _controller.currentPage.value;
              final totalPages = _controller.totalPages.value;

              return Container(
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withAlpha(1),
                      blurRadius: 4,
                      offset: const Offset(0, -2),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton.icon(
                      onPressed: currentPage > 1
                          ? () {
                              _controller.goToPreviousPage();
                              _scrollToTop();
                            }
                          : null,
                      icon: const Icon(Icons.arrow_back),
                      label: const Text('Anterior'),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      ),
                    ),
                    Text(
                      'Página $currentPage de $totalPages',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: currentPage < totalPages
                          ? () {
                              _controller.goToNextPage();
                              _scrollToTop();
                            }
                          : null,
                      icon: const Icon(Icons.arrow_forward),
                      label: const Text('Próxima'),
                      iconAlignment: IconAlignment.end,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      ),
                    ),
                  ],
                ),
              );
            }),
          ],
        );
      }),
    );
  }
}
