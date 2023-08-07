import 'package:cinemapedia/domain/entities/entities.dart';
import 'package:cinemapedia/domain/datasources/datasources.dart';
import 'package:cinemapedia/domain/repositories/repositories.dart';

class MoviesRepositoryImplementation extends MoviesRepository{
  final MoviesDataSource dataSource;

  MoviesRepositoryImplementation({required this.dataSource});

  @override
  Future<List<Movie>> getNowPlaying({required int page}) {
    return dataSource.getNowPlaying(page: page);
  }
  
}