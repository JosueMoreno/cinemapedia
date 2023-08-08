import 'package:cinemapedia/domain/entities/entities.dart';

abstract class MoviesDataSource {
  Future<List<Movie>> getNowPlaying({required int page});

  Future<List<Movie>> getPopular({required int page});

  Future<List<Movie>> getTopRated({required int page});

  Future<List<Movie>> getUpcoming({required int page});
}
