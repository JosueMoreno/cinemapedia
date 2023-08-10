import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cinemapedia/domain/entities/entities.dart';
import 'package:cinemapedia/infrastructure/datasources/datasources.dart';
import 'package:cinemapedia/infrastructure/repositories/repositories.dart';

typedef ActorsCallBack = Future<List<Actor>> Function({required String id});

final actorsRepository = ActorsRepositoryImpl(datasource: TMDBActorsDatasource());

final actorsByMovieProvider =
    AsyncNotifierProvider<ActorsNotifier, Map<String, List<Actor>>>(() {
  return ActorsNotifier(getActors: actorsRepository.getActorsByMovieID);
});

class ActorsNotifier extends AsyncNotifier<Map<String, List<Actor>>> {
  final ActorsCallBack getActors;

  ActorsNotifier({required this.getActors});

  @override
  Future<Map<String, List<Actor>>> build() {
    return Future(() => {});
  }

  Future<void> loadActors(String movieID) async {
    if (state.asData?.value.containsKey(movieID) ?? false) return;

    final Map<String, List<Actor>> previousState = state.asData?.value ?? {};

    state = const AsyncValue.loading();

    final List<Actor> actors = await getActors(id: movieID);

    state = await AsyncValue.guard(
      () => Future(() => {...previousState, movieID: actors}),
    );
  }
}
