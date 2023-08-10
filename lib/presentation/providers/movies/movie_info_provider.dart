import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cinemapedia/domain/entities/entities.dart';
import 'package:cinemapedia/presentation/providers/providers.dart';

typedef MovieCallBack = Future<Movie> Function({required String id});

final movieInfoProvider = AsyncNotifierProvider<MovieMap, Map<String, Movie>>(() {
  return MovieMap(getMovie: repository.getMovieByID);
});

class MovieMap extends AsyncNotifier<Map<String, Movie>> {
  final MovieCallBack getMovie;

  MovieMap({required this.getMovie});

  @override
  Future<Map<String, Movie>> build() {
    return Future(() => {});
  }

  Future<void> loadMovie(String movieID) async {
    if (state.asData?.value.containsKey(movieID) ?? false) return;

    final Map<String, Movie> previousState = state.asData?.value ?? {};

    state = const AsyncValue.loading();

    final Movie movie = await getMovie(id: movieID);

    state = await AsyncValue.guard(
      () => Future(() => {...previousState, movieID: movie}),
    );
  }
}
