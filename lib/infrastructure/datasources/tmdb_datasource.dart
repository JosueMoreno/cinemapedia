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

  @override
  Future<List<Movie>> getNowPlaying({required int page}) async {
    final Response response = await dio.get(
      '/movie/now_playing',
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
}
