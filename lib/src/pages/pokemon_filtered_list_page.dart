import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:im_mottu_mobile/src/controllers/pokemons_controller.dart';
import 'package:im_mottu_mobile/src/widgets/pokemon_card.dart';
import 'package:signals/signals_flutter.dart';

class PokemonFilteredListPage extends StatefulWidget {
  final String filterBy;
  final String type;

  const PokemonFilteredListPage({
    super.key,
    required this.filterBy,
    required this.type,
  });

  @override
  State<PokemonFilteredListPage> createState() => _PokemonFilteredListPageState();
}

class _PokemonFilteredListPageState extends State<PokemonFilteredListPage> {
  final PokemonsController _controller = GetIt.I<PokemonsController>();

  @override
  void initState() {
    super.initState();
    _loadFilteredPokemons();
  }

  void _loadFilteredPokemons() {
    if (widget.filterBy == 'ability') {
      _controller.loadPokemonsByAbility(widget.type);
    } else if (widget.filterBy == 'type') {
      _controller.loadPokemonsByType(widget.type);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pokémons by ${widget.filterBy}: ${widget.type.replaceAll('-', ' ').toUpperCase()}',
        ),
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
      ),
      backgroundColor: Colors.white,
      body: Watch((context) {
        final filteredPokemons = _controller.filteredPokemons.value;
        final isLoading = _controller.filteredPokemonsLoading.value;

        if (isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (filteredPokemons == null || filteredPokemons.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.search_off,
                  size: 64,
                  color: Colors.grey[400],
                ),
                const SizedBox(height: 16),
                Text(
                  'No Pokémons found for this ${widget.filterBy}',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          );
        }

        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(
                    widget.filterBy == 'ability' ? Icons.flash_on : Icons.category,
                    color: widget.filterBy == 'ability' ? Colors.orange[700] : Colors.blue[700],
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '${filteredPokemons.length} Pokémons found',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filteredPokemons.length,
                padding: const EdgeInsets.all(8),
                itemBuilder: (context, index) {
                  final pokemon = filteredPokemons[index];
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
          ],
        );
      }),
    );
  }
}
