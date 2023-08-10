import 'package:flutter/material.dart';

import 'package:animate_do/animate_do.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cinemapedia/config/utils/extensions.dart';
import 'package:cinemapedia/domain/entities/entities.dart';
import 'package:cinemapedia/presentation/providers/providers.dart';

class MovieScreen extends ConsumerWidget {
  static const String name = 'movie-screen';

  final String movieID;

  const MovieScreen({super.key, required this.movieID});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ref.watch(movieInfoProvider).when(
            data: (data) => CustomScrollView(
              physics: const ClampingScrollPhysics(),
              slivers: [
                _CustomSliverAppBar(movie: data[movieID]!),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => _MovieDetails(movie: data[movieID]!),
                    childCount: 1,
                  ),
                ),
              ],
            ),
            loading: () => const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
            error: (error, stackTrace) => Center(
              child: Text('$error'),
            ),
          ),
    );
  }
}

class _CustomSliverAppBar extends StatelessWidget {
  final Movie movie;

  const _CustomSliverAppBar({required this.movie});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.black,
      expandedHeight: MediaQuery.of(context).size.height * 0.7,
      foregroundColor: Colors.white,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: const EdgeInsets.only(left: 11, bottom: 13),
        title: Text(
          movie.title,
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.height * 0.025,
          ),
        ),
        background: Stack(
          children: [
            SizedBox.expand(
              child: Image.network(
                movie.posterPath,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox.expand(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.77, 1.0],
                    colors: [
                      Colors.transparent,
                      Colors.black87,
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox.expand(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    stops: [0.0, 0.22],
                    colors: [
                      Colors.black87,
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MovieDetails extends StatelessWidget {
  final Movie movie;

  const _MovieDetails({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 11),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 11),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(22),
                  child: Image.network(
                    movie.posterPath,
                    width: MediaQuery.of(context).size.height * 0.18,
                  ),
                ),
                const SizedBox(width: 11),
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 7),
                        child: Text(
                          movie.title,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                      Text(movie.overview)
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 11),
            child: Wrap(
              children: [
                ...movie.genreIds.map(
                  (genre) => Container(
                    margin: const EdgeInsets.only(right: 11, bottom: 7),
                    child: Chip(
                      label: Text(genre),
                    ),
                  ),
                ),
              ],
            ),
          ),
          _ActorsByMovie(
            movieID: '${movie.id}',
          ),
        ],
      ),
    );
  }
}

class _ActorsByMovie extends ConsumerWidget {
  final String movieID;

  const _ActorsByMovie({required this.movieID});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(actorsByMovieProvider).when(
          data: (data) => SizedBox(
            height: MediaQuery.of(context).size.height * 0.44,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: data[movieID]!.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: MediaQuery.of(context).size.height * 0.22,
                  padding: const EdgeInsets.only(
                    top: 11,
                    left: 7,
                    right: 7,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(22),
                        child: Image.network(
                          data[movieID]![index].profilePath,
                          height: MediaQuery.of(context).size.height * 0.27,
                          width: MediaQuery.of(context).size.height * 0.22,
                          fit: BoxFit.cover,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress.isNotNull) {
                              return SizedBox(
                                width: MediaQuery.of(context).size.height * 0.22,
                                height: MediaQuery.of(context).size.height * 0.27,
                                child: const Center(
                                  child: CircularProgressIndicator.adaptive(
                                    strokeWidth: 3,
                                  ),
                                ),
                              );
                            } else {
                              return FadeIn(child: child);
                            }
                          },
                        ),
                      ),
                      Text(
                        data[movieID]![index].name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        data[movieID]![index].character,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          error: (error, stackTrace) => Text('$error'),
        );
  }
}
