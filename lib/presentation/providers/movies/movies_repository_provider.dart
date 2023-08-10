import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cinemapedia/infrastructure/datasources/datasources.dart';
import 'package:cinemapedia/infrastructure/repositories/repositories.dart';

final moviesRepositoryProvider = Provider(
  (ref) => MoviesRepositoryImpl(dataSource: TMDBMoviesDatasource()),
);

final repository = MoviesRepositoryImpl(dataSource: TMDBMoviesDatasource());
