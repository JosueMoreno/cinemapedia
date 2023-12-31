import 'package:cinemapedia/domain/entities/entities.dart';

abstract class MoviesRepository {
  Future<List<Movie>> getNowPlaying({required int page});

  Future<List<Movie>> getPopular({required int page});

  Future<List<Movie>> getTopRated({required int page});

  Future<List<Movie>> getUpcoming({required int page});

  Future<Movie> getMovieByID({required String id});

  Future<List<Movie>> searchMovies({required String query});
}
