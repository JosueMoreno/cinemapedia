import 'package:cinemapedia/domain/entities/entities.dart';

abstract class ActorsRepository {
  Future<List<Actor>> getActorsByMovieID({required String id});
}
