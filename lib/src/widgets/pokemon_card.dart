import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:im_mottu_mobile/src/constants/routes_constants.dart';
import 'package:im_mottu_mobile/src/controllers/pokemons_controller.dart';
import 'package:im_mottu_mobile/src/models/pokemon_model.dart';

class PokemonCard extends StatefulWidget {
  const PokemonCard({
    super.key,
    required this.pokemonId,
    required this.imageUrl,
    required this.pokemon,
    required PokemonsController controller,
  }) : _controller = controller;

  final String pokemonId;
  final String imageUrl;
  final PokemonModel pokemon;
  final PokemonsController _controller;

  @override
  State<PokemonCard> createState() => _PokemonCardState();
}

class _PokemonCardState extends State<PokemonCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: ListTile(
        leading: Hero(
          tag: 'pokemon-${widget.pokemonId}',
          child: Image.network(
            widget.imageUrl,
            width: 60,
            height: 60,
            fit: BoxFit.contain,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return const SizedBox(
                width: 60,
                height: 60,
                child: Center(
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
              );
            },
            errorBuilder: (context, error, stackTrace) {
              return Image.asset(
                'assets/images/default_image.png',
                width: 60,
                height: 60,
                fit: BoxFit.contain,
              );
            },
          ),
        ),
        title: Text(
          widget.pokemon.name.toUpperCase(),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        subtitle: Text(
          widget._controller.getPokemonFormattedId(widget.pokemon.url),
          style: TextStyle(
            color: Colors.grey[600],
          ),
        ),
        trailing: const Icon(Icons.chevron_right),
        onTap: () async {
          await context.pushNamed(
            RoutesConstants.pokemonInfo,
            pathParameters: {
              'pokemonName': widget.pokemon.name,
            },
            queryParameters: {
              'pokemonId': widget.pokemonId,
              'imageUrl': widget.imageUrl,
              'pokemonUrl': widget.pokemon.url,
            },
          );
        },
      ),
    );
  }
}
