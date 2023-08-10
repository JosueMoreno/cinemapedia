import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cinemapedia/domain/entities/entities.dart';
import 'package:cinemapedia/presentation/providers/providers.dart';

typedef MovieListCallBack = Future<List<Movie>> Function({required int page});

final nowPlayingMovies = AsyncNotifierProvider<MoviesNotifier, List<Movie>>(() {
  return MoviesNotifier(fetchMoreMovies: repository.getNowPlaying);
});

final popularMovies = AsyncNotifierProvider<MoviesNotifier, List<Movie>>(() {
  return MoviesNotifier(fetchMoreMovies: repository.getPopular);
});

final topRatedMovies = AsyncNotifierProvider<MoviesNotifier, List<Movie>>(() {
  return MoviesNotifier(fetchMoreMovies: repository.getTopRated);
});

final upcomingMovies = AsyncNotifierProvider<MoviesNotifier, List<Movie>>(() {
  return MoviesNotifier(fetchMoreMovies: repository.getUpcoming);
});

class MoviesNotifier extends AsyncNotifier<List<Movie>> {
  final MovieListCallBack fetchMoreMovies;

  MoviesNotifier({required this.fetchMoreMovies});

  bool isLoading = false;
  int currentPage = 1;

  @override
  Future<List<Movie>> build() => fetchMoreMovies(page: currentPage);

  Future<void> loadNextPage() async {
    if (isLoading) return;

    isLoading = true;

    state = await AsyncValue.guard(() async {
      return [
        ...state.asData!.value,
        ...await fetchMoreMovies(page: ++currentPage),
      ];
    });

    await Future.delayed(const Duration(milliseconds: 111));

    isLoading = false;
  }
}
