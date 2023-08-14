import 'dart:async';

import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cinemapedia/config/utils/formats.dart';
import 'package:cinemapedia/config/utils/extensions.dart';
import 'package:cinemapedia/domain/entities/entities.dart';
import 'package:cinemapedia/presentation/providers/providers.dart';

typedef QueryCallBack = Future<List<Movie>> Function({required String query});

final isLoadingProvider =
    StateProvider<StreamController<bool>>((ref) => StreamController.broadcast());

class SearchMovieDelegate extends SearchDelegate {
  final QueryCallBack searchMovies;

  SearchMovieDelegate({required this.searchMovies});

  StreamController<bool> isLoading = StreamController.broadcast();

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      _LoadingDeleteIcon(
        query: query,
        setQuery: () => query = '',
        isLoading: isLoading,
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        isLoading.close();
        close(context, null);
      },
      icon: const Icon(
        Icons.arrow_back_ios_new_outlined,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return const SizedBox();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return _CustomSuggestions(query, searchMovies, isLoading);
  }
}

class _LoadingDeleteIcon extends ConsumerWidget {
  final String query;
  final Function() setQuery;
  final StreamController<bool> isLoading;

  const _LoadingDeleteIcon(
      {required this.query, required this.setQuery, required this.isLoading});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return StreamBuilder<bool>(
      stream: isLoading.stream,
      initialData: false,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.data) {
          return SpinPerfect(
            animate: true,
            infinite: true,
            duration: const Duration(seconds: 3),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.refresh_rounded),
            ),
          );
        }

        return FadeIn(
          animate: query.isNotEmpty,
          child: IconButton(
            onPressed: setQuery,
            icon: const Icon(Icons.clear_outlined),
          ),
        );
      },
    );
  }
}

class _CustomSuggestions extends ConsumerStatefulWidget {
  final String query;
  final QueryCallBack searchMovies;
  final StreamController<bool> isLoading;

  const _CustomSuggestions(this.query, this.searchMovies, this.isLoading);

  @override
  ConsumerState<_CustomSuggestions> createState() => _CustomSuggestionsState();
}

class _CustomSuggestionsState extends ConsumerState<_CustomSuggestions> {
  late StreamController<List<Movie>> debouncedMovies;
  Timer? debounceTimer;

  void onQueryChanged() {
    widget.isLoading.add(true);

    if (debounceTimer?.isActive ?? false) debounceTimer!.cancel();

    debounceTimer = Timer(const Duration(milliseconds: 444), () async {
      if (widget.query.isEmpty) {
        if (!debouncedMovies.isClosed) {
          debouncedMovies.add([]);
        }
      } else {
        if (!debouncedMovies.isClosed) {
          debouncedMovies.add(
            await widget.searchMovies(query: widget.query),
          );
        }
      }
      widget.isLoading.add(false);
    });
  }

  @override
  void initState() {
    super.initState();
    debouncedMovies = StreamController.broadcast();
  }

  @override
  void dispose() {
    debouncedMovies.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    onQueryChanged();
    return StreamBuilder(
      stream: debouncedMovies.stream,
      initialData: const <Movie>[],
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        final List<Movie> movies = snapshot.data ?? [];

        return ListView.builder(
          itemCount: movies.length,
          itemBuilder: (BuildContext context, int index) {
            return _MovieItem(movie: movies[index]);
          },
        );
      },
    );
  }
}

class _MovieItem extends ConsumerWidget {
  final Movie movie;

  const _MovieItem({required this.movie});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () async {
        await ref.read(movieInfoProvider.notifier).loadMovie('${movie.id}');
        await ref
            .read(actorsByMovieProvider.notifier)
            .loadActors('${movie.id}')
            .then((value) => context.push('/movie/${movie.id}'));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 7),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(17),
                child: Image.network(
                  movie.posterPath,
                  width: MediaQuery.of(context).size.height * 0.11,
                  height: MediaQuery.of(context).size.height * 0.17,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress.isNotNull) {
                      return SizedBox(
                        width: MediaQuery.of(context).size.height * 0.11,
                        height: MediaQuery.of(context).size.height * 0.17,
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
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie.title,
                    maxLines: 2,
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    movie.overview,
                    maxLines: 3,
                    textAlign: TextAlign.justify,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.star_half_rounded,
                        color: Colors.yellow.shade800,
                      ),
                      const SizedBox(width: 3),
                      Text(
                        HumanFormats.number(movie.voteAverage, 1),
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: Colors.yellow.shade900),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
