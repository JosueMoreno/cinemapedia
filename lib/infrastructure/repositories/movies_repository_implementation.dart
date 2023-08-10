import 'package:cinemapedia/domain/entities/entities.dart';
import 'package:cinemapedia/domain/datasources/datasources.dart';
import 'package:cinemapedia/domain/repositories/repositories.dart';

class MoviesRepositoryImpl extends MoviesRepository {
  final MoviesDataSource dataSource;

  MoviesRepositoryImpl({required this.dataSource});

  @override
  Future<List<Movie>> getNowPlaying({required int page}) {
    return dataSource.getNowPlaying(page: page);
  }

  @override
  Future<List<Movie>> getPopular({required int page}) {
    return dataSource.getPopular(page: page);
  }

  @override
  Future<List<Movie>> getTopRated({required int page}) {
    return dataSource.getTopRated(page: page);
  }

  @override
  Future<List<Movie>> getUpcoming({required int page}) {
    return dataSource.getUpcoming(page: page);
  }
  
  @override
  Future<Movie> getMovieByID({required String id}) {
    return dataSource.getMovieByID(id: id);
  }
}
