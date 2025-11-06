import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:im_mottu_mobile/src/controllers/pokemons_controller.dart';
import 'package:im_mottu_mobile/src/widgets/custom_progress_indicator.dart';
import 'package:im_mottu_mobile/src/widgets/pokemon_abilities_widget.dart';
import 'package:im_mottu_mobile/src/widgets/pokemon_type_widget.dart';
import 'package:signals/signals_flutter.dart';

class PokemonInfoPage extends StatefulWidget {
  final String pokemonName;
  final String pokemonId;
  final String imageUrl;

  const PokemonInfoPage({
    super.key,
    required this.pokemonName,
    required this.pokemonId,
    required this.imageUrl,
  });

  @override
  State<PokemonInfoPage> createState() => _PokemonInfoPageState();
}

class _PokemonInfoPageState extends State<PokemonInfoPage> {
  final controller = GetIt.I<PokemonsController>();

  @override
  void initState() {
    super.initState();
    controller.loadPokemonDetail(widget.pokemonName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
      ),
      backgroundColor: Colors.white,
      body: Watch((context) {
        final pokemonDetail = controller.pokemonDetail.value;
        final isLoading = controller.pokemonDetailLoading.value;

        return SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(32),
                child: Hero(
                  tag: 'pokemon-${widget.pokemonId}',
                  child: Image.network(
                    widget.imageUrl,
                    height: 200,
                    fit: BoxFit.contain,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return SizedBox(
                        height: 200,
                        child: Center(
                          child: CircularProgressIndicator(),
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
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      '#${widget.pokemonId.padLeft(3, '0')}',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      widget.pokemonName.toUpperCase(),
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              if (isLoading)
                const Padding(
                  padding: EdgeInsets.all(32.0),
                  child: CustomProgressIndicator(),
                )
              else if (pokemonDetail != null)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: _InfoCard(
                              icon: Icons.height,
                              label: 'Height',
                              value: '${(pokemonDetail.height ?? 0) / 10} m',
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: _InfoCard(
                              icon: Icons.monitor_weight,
                              label: 'Weight',
                              value: '${(pokemonDetail.weight ?? 0) / 10} kg',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      PokemonTypeWidget(
                        pokemonDetail: pokemonDetail,
                        helper: controller.helper,
                      ),
                      const SizedBox(height: 16),
                      PokemonAbilitiesWidget(
                        pokemonDetail: pokemonDetail,
                      ),
                    ],
                  ),
                )
              else
                const Padding(
                  padding: EdgeInsets.all(32.0),
                  child: Text('Unable to load pokemon details'),
                ),
            ],
          ),
        );
      }),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _InfoCard({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Icon(
              icon,
              size: 32,
              color: Colors.blue[700],
            ),
            const SizedBox(height: 8),
            Text(
              label,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              value,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
