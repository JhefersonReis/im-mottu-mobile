import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:im_mottu_mobile/src/constants/routes_constants.dart';
import 'package:im_mottu_mobile/src/pages/pokemon_detail_page.dart';
import 'package:im_mottu_mobile/src/pages/splash_page.dart';

import 'pages/home_page.dart';

final GoRouter router = GoRouter(
  initialLocation: RoutesConstants.splash,
  routes: [
    GoRoute(
      path: RoutesConstants.splash,
      name: RoutesConstants.splash,
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const SplashPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          final slideOut = Tween<Offset>(
            begin: Offset.zero,
            end: const Offset(-1.0, 0.0),
          ).animate(CurvedAnimation(parent: secondaryAnimation, curve: Curves.easeInOut));
          return SlideTransition(position: slideOut, child: child);
        },
      ),
    ),
    GoRoute(
      path: RoutesConstants.home,
      name: RoutesConstants.home,
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const HomePage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          final tween = Tween<Offset>(begin: const Offset(1.0, 0.0), end: Offset.zero);
          final curved = CurvedAnimation(parent: animation, curve: Curves.easeInOut);
          return SlideTransition(position: tween.animate(curved), child: child);
        },
      ),
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
