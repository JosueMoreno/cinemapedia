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
    return CustomScrollView(
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
                  ref.watch(nowPlayingProvider).when(
                        data: (movies) => MoviesHorizontalListView(
                          title: 'En Cines',
                          subtitle: 'Lunes 07/Ago',
                          movies: movies,
                          loadNextPage:
                              ref.read(nowPlayingProvider.notifier).loadNextPage,
                        ),
                        loading: () => const Center(
                          child: CircularProgressIndicator.adaptive(),
                        ),
                        error: (error, stackTrace) => Text('$error'),
                      ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
