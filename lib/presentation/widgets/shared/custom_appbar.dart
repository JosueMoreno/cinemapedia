import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cinemapedia/presentation/providers/providers.dart';
import 'package:cinemapedia/presentation/delegates/search_movies_delegate.dart';

class CustomAppBar extends ConsumerWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 11),
        child: SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              Icon(
                Icons.movie_outlined,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(width: 7),
              Text(
                'Cinemapedia',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.search_outlined),
                onPressed: () {
                  showSearch(
                    context: context,
                    delegate: SearchMovieDelegate(
                      searchMovies: ref.read(moviesRepositoryProvider).searchMovies,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
