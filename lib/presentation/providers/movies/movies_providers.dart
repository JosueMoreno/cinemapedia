import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cinemapedia/domain/entities/entities.dart';
import 'package:cinemapedia/presentation/providers/providers.dart';

final nowPlayingProvider = AsyncNotifierProvider<MoviesNotifier, List<Movie>>(() {
  return MoviesNotifier();
});

class MoviesNotifier extends AsyncNotifier<List<Movie>> {
  bool isLoading = false;
  int currentPage = 1;

  @override
  Future<List<Movie>> build() {
    return ref.read(moviesRepositoryProvider).getNowPlaying(page: currentPage);
  }

  Future<void> loadNextPage() async {
    if (isLoading) return;

    isLoading = true;

    state = await AsyncValue.guard(() async {
      return [
        ...state.asData!.value,
        ...await ref.read(moviesRepositoryProvider).getNowPlaying(page: ++currentPage),
      ];
    });

    await Future.delayed(const Duration(milliseconds: 111));
    isLoading = false;
  }
}
