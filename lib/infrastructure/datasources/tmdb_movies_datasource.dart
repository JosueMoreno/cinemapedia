import 'package:dio/dio.dart';

import 'package:cinemapedia/config/utils/extensions.dart';
import 'package:cinemapedia/domain/entities/entities.dart';
import 'package:cinemapedia/infrastructure/models/models.dart';
import 'package:cinemapedia/config/constants/environment.dart';
import 'package:cinemapedia/infrastructure/mappers/mappers.dart';
import 'package:cinemapedia/domain/datasources/datasources.dart';

class TMDBMoviesDatasource extends MoviesDataSource {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {
        'api_key': Environment.apiKeyTMDB,
        'language': 'en-US',
      },
    ),
  );

  Future<List<Movie>> getMovies({required String path, int? page, String? query}) async {
    final Response response = await dio.get(
      path,
      queryParameters: {
        if(page.isNotNull) 'page': page,
        if(query.isNotNull) 'query': query,
      },
    );

    return MovieList
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

  @override
  Future<Movie> getMovieByID({required String id}) async {
    final Response response = await dio.get('/movie/$id');

    if (response.statusCode != 200) throw Exception('Movie with id: $id not found');

    return MovieMapper.fromTMDBMovieDetailsToEntity(
      MovieDetails.fromJson(response.data),
    );
  }
  
  @override
  Future<List<Movie>> searchMovies({required String query}) async {
    return getMovies(path: '/search/movie', query: query);
  }
}
