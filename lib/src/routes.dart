import 'package:go_router/go_router.dart';
import 'package:im_mottu_mobile/src/constants/routes_constants.dart';
import 'package:im_mottu_mobile/src/pages/pokemon_detail_page.dart';

import 'pages/home_page.dart';

final GoRouter router = GoRouter(
  initialLocation: RoutesConstants.home,
  routes: [
    GoRoute(
      path: RoutesConstants.home,
      name: RoutesConstants.home,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: RoutesConstants.pokemonInfo,
      name: RoutesConstants.pokemonInfo,
      builder: (context, state) {
        final pokemonName = state.pathParameters['pokemonName'];
        final pokemonId = state.uri.queryParameters['pokemonId'];
        final imageUrl = state.uri.queryParameters['imageUrl'];

        return PokemonInfoPage(
          pokemonName: pokemonName!,
          pokemonId: pokemonId!,
          imageUrl: imageUrl!,
        );
      },
    ),
  ],
);
