import 'package:go_router/go_router.dart';
import 'package:im_mottu_mobile/src/constants/routes_constants.dart';

import 'pages/home_page.dart';

final GoRouter router = GoRouter(
  initialLocation: RoutesConstants.home,
  routes: [
    GoRoute(path: RoutesConstants.home, builder: (context, state) => const HomePage()),
  ],
);
