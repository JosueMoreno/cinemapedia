import 'package:cinemapedia/domain/entities/entities.dart';

abstract class MoviesDataSource {
  Future<List<Movie>> getNowPlaying({required int page});
}