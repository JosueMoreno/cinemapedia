import 'package:cinemapedia/domain/entities/entities.dart';

abstract class MoviesRepository {
  Future<List<Movie>> getNowPlaying({required int page});
}