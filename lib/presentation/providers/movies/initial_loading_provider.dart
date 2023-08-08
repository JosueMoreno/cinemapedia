import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cinemapedia/presentation/providers/providers.dart';

final initialLoadingProvider = Provider<bool>((ref) {
  if (!ref.watch(nowPlayingMovies).hasValue) return false;
  if (!ref.watch(popularMovies).hasValue) return false;
  if (!ref.watch(topRatedMovies).hasValue) return false;
  if (!ref.watch(upcomingMovies).hasValue) return false;

  return true;
});
