import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:im_mottu_mobile/src/commons/helper.dart';
import 'package:im_mottu_mobile/src/constants/routes_constants.dart';
import 'package:im_mottu_mobile/src/models/pokemon_detail_model.dart';

class PokemonTypeWidget extends StatelessWidget {
  final PokemonDetailModel pokemonDetail;
  final Helper helper;

  const PokemonTypeWidget({super.key, required this.pokemonDetail, required this.helper});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ExpansionTile(
        leading: Icon(Icons.style, color: Colors.blue[700]),
        title: const Text(
          'Types',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: pokemonDetail.types.map<Widget>((type) {
                final typeName = type.type?.name ?? 'Unknown';
                return InkWell(
                  onTap: () async {
                    await context.pushNamed(
                      RoutesConstants.pokemonFilteredList,
                      pathParameters: {
                        'by': 'type',
                      },
                      queryParameters: {
                        'type': typeName,
                      },
                    );
                  },
                  child: Chip(
                    label: Text(
                      typeName.toUpperCase(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    backgroundColor: helper.getTypeColor(typeName),
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
