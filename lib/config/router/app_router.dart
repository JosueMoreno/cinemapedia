import 'package:go_router/go_router.dart';
import 'package:cinemapedia/presentation/screens/screens.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/movie/:id',
      name: MovieScreen.name,
      builder: (context, state) {
        return MovieScreen(
          movieID: state.pathParameters['id'] ?? 'no-id',
        );
      },
    ),
  ],
);
