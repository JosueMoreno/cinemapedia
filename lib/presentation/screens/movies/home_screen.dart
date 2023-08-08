import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cinemapedia/presentation/widgets/widgets.dart';
import 'package:cinemapedia/presentation/providers/providers.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home-screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _HomeView(),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}

class _HomeView extends ConsumerWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Visibility(
      visible: ref.watch(initialLoadingProvider),
      replacement: const FullScreenLoader(),
      child: CustomScrollView(
        slivers: [
          const SliverAppBar(
            floating: true,
            title: CustomAppBar(),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 1,
              (context, index) {
                return Column(
                  children: [
                    const MoviesSlideShow(),
                    MoviesHorizontalListView(
                      title: 'Now Playing',
                      subtitle: 'Lunes 07/Ago',
                      movies: ref.watch(nowPlayingMovies),
                      loadNextPage: ref.read(nowPlayingMovies.notifier).loadNextPage,
                    ),
                    MoviesHorizontalListView(
                      title: 'Popular',
                      //subtitle: 'Lunes 07/Ago',
                      movies: ref.watch(popularMovies),
                      loadNextPage: ref.read(popularMovies.notifier).loadNextPage,
                    ),
                    MoviesHorizontalListView(
                      title: 'Top Rated',
                      //subtitle: 'Lunes 07/Ago',
                      movies: ref.watch(topRatedMovies),
                      loadNextPage: ref.read(topRatedMovies.notifier).loadNextPage,
                    ),
                    MoviesHorizontalListView(
                      title: 'Upcoming',
                      //subtitle: 'Lunes 07/Ago',
                      movies: ref.watch(upcomingMovies),
                      loadNextPage: ref.read(upcomingMovies.notifier).loadNextPage,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
