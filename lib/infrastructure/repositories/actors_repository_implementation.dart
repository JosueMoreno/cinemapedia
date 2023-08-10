import 'package:cinemapedia/domain/entities/entities.dart';
import 'package:cinemapedia/domain/datasources/datasources.dart';
import 'package:cinemapedia/domain/repositories/repositories.dart';

class ActorsRepositoryImpl extends ActorsRepository {
  final ActorsDatasource datasource;

  ActorsRepositoryImpl({required this.datasource});

  @override
  Future<List<Actor>> getActorsByMovieID({required String id}) {
    return datasource.getActorsByMovieID(id: id);
  }
}
