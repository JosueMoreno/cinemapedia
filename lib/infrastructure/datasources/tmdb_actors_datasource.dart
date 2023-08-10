import 'package:dio/dio.dart';

import 'package:cinemapedia/domain/entities/entities.dart';
import 'package:cinemapedia/infrastructure/models/models.dart';
import 'package:cinemapedia/config/constants/environment.dart';
import 'package:cinemapedia/infrastructure/mappers/mappers.dart';
import 'package:cinemapedia/domain/datasources/datasources.dart';

class TMDBActorsDatasource extends ActorsDatasource {
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
  Future<List<Actor>> getActorsByMovieID({required String id}) async {
    final Response response = await dio.get('/movie/$id/credits');

    return MovieCredits.fromJson(response.data)
        .cast!
        .map((actor) => ActorMapper.fromTMDBToEntity(actor))
        .toList();
  }
}
