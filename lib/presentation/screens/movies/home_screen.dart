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
    );
  }
}

class _HomeView extends ConsumerWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const CustomAppBar(),
        Expanded(
          child: ref.watch(nowPlayingProvider).when(
                data: (movies) => ListView.builder(
                  itemCount: movies.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(title: Text(movies[index].title));
                  },
                ),
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                error: (error, stackTrace) => Text('$error'),
              ),
        ),
      ],
    );
  }
}
