import 'package:dio/dio.dart';

import 'package:cinemapedia/domain/entities/entities.dart';
import 'package:cinemapedia/infrastructure/models/models.dart';
import 'package:cinemapedia/config/constants/environment.dart';
import 'package:cinemapedia/infrastructure/mappers/mappers.dart';
import 'package:cinemapedia/domain/datasources/datasources.dart';

class TMDBDatasource extends MoviesDataSource {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {
        'api_key': Environment.apiKeyTMDB,
        'language': 'en-US',
      },
    ),
  );

  Future<List<Movie>> getMovies({required String path, required int page}) async {
    final Response response = await dio.get(
      path,
      queryParameters: {
        'page': page,
      },
    );

    return TMDB
        .fromJson(response.data)
        .results!
        .map((result) => MovieMapper.fromTMDBToEntity(result))
        .toList();
  }

  @override
  Future<List<Movie>> getNowPlaying({required int page}) async {
    return getMovies(path: '/movie/now_playing', page: page);
  }

  @override
  Future<List<Movie>> getPopular({required int page}) {
    return getMovies(path: '/movie/popular', page: page);
  }

  @override
  Future<List<Movie>> getTopRated({required int page}) {
    return getMovies(path: '/movie/top_rated', page: page);
  }

  @override
  Future<List<Movie>> getUpcoming({required int page}) {
    return getMovies(path: '/movie/upcoming', page: page);
  }
}
