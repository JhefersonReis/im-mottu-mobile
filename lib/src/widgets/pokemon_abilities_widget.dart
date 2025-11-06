import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:im_mottu_mobile/src/constants/routes_constants.dart';
import 'package:im_mottu_mobile/src/models/pokemon_detail_model.dart';

class PokemonAbilitiesWidget extends StatelessWidget {
  final PokemonDetailModel pokemonDetail;

  const PokemonAbilitiesWidget({super.key, required this.pokemonDetail});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ExpansionTile(
        leading: Icon(Icons.flash_on, color: Colors.orange[700]),
        title: const Text(
          'Abilities',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: pokemonDetail.abilities.map<Widget>((ability) {
                final abilityName = ability.ability?.name ?? 'Unknown';
                final isHidden = ability.isHidden ?? false;
                return InkWell(
                  onTap: () async {
                    await context.pushNamed(
                      RoutesConstants.pokemonFilteredList,
                      pathParameters: {
                        'by': 'ability',
                      },
                      queryParameters: {
                        'type': abilityName,
                      },
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Row(
                      children: [
                        Icon(
                          isHidden ? Icons.visibility_off : Icons.check_circle,
                          size: 20,
                          color: isHidden ? Colors.grey : Colors.green,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            abilityName.replaceAll('-', ' ').toUpperCase(),
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: isHidden ? Colors.grey[600] : Colors.black87,
                            ),
                          ),
                        ),
                        if (isHidden)
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Text(
                              'HIDDEN',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
