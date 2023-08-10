import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cinemapedia/config/utils/formats.dart';
import 'package:cinemapedia/config/utils/extensions.dart';
import 'package:cinemapedia/domain/entities/entities.dart';
import 'package:cinemapedia/presentation/providers/providers.dart';

class MoviesHorizontalListView extends StatefulWidget {
  final String? title;
  final String? subtitle;
  final VoidCallback loadNextPage;
  final AsyncValue<List<Movie>> movies;

  const MoviesHorizontalListView({
    super.key,
    this.title,
    this.subtitle,
    required this.movies,
    required this.loadNextPage,
  });

  @override
  State<MoviesHorizontalListView> createState() => _MoviesHorizontalListViewState();
}

class _MoviesHorizontalListViewState extends State<MoviesHorizontalListView> {
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      final ScrollPosition position = scrollController.position;

      if (position.pixels + 222 >= position.maxScrollExtent) {
        widget.loadNextPage();
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.movies.when(
      data: (movies) => SizedBox(
        height: MediaQuery.of(context).size.height * 0.5,
        child: Column(
          children: [
            if (widget.title.isNotNull || widget.subtitle.isNotNull)
              _Title(
                title: widget.title,
                subtitle: widget.subtitle,
              ),
            Expanded(
              child: ListView.builder(
                controller: scrollController,
                itemCount: movies.length,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return _Slide(movie: movies[index]);
                },
              ),
            ),
          ],
        ),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator.adaptive(),
      ),
      error: (error, stackTrace) => Text('$error'),
    );
  }
}

/*---------------------------Local Widgets-----------------------------------*/

class _Slide extends ConsumerWidget {
  final Movie movie;

  const _Slide({required this.movie});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 11),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(22),
            child: Image.network(
              width: MediaQuery.of(context).size.height * 0.22,
              height: MediaQuery.of(context).size.height * 0.3,
              fit: BoxFit.cover,
              movie.posterPath,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress.isNotNull) {
                  return SizedBox(
                    width: MediaQuery.of(context).size.height * 0.22,
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: const Center(
                      child: CircularProgressIndicator.adaptive(
                        strokeWidth: 3,
                      ),
                    ),
                  );
                } else {
                  return GestureDetector(
                    onTap: () async {
                      await ref
                          .read(movieInfoProvider.notifier)
                          .loadMovie('${movie.id}');

                      await ref
                          .read(actorsByMovieProvider.notifier)
                          .loadActors('${movie.id}')
                          .then((value) => context.push('/movie/${movie.id}'));
                    },
                    child: FadeIn(child: child),
                  );
                }
              },
            ),
          ),
          const SizedBox(height: 3),
          SizedBox(
            width: MediaQuery.of(context).size.height * 0.22,
            height: MediaQuery.of(context).size.height * 0.05,
            child: Center(
              child: Text(
                movie.title,
                maxLines: 2,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontSize: MediaQuery.of(context).size.height * 0.0188,
                    ),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.height * 0.22,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star_half_outlined,
                  color: Colors.yellow.shade800,
                ),
                const SizedBox(width: 3),
                Text(
                  '${movie.voteAverage}',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: Colors.yellow.shade900),
                ),
                const SizedBox(width: 13),
                Text(HumanFormats.number(movie.popularity)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Title extends StatelessWidget {
  final String? title;
  final String? subtitle;

  const _Title({this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.033,
        right: MediaQuery.of(context).size.width * 0.033,
        top: MediaQuery.of(context).size.height * 0.033,
        bottom: MediaQuery.of(context).size.height * 0.022,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (title.isNotNull)
            Text(
              title!,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          const Spacer(),
          if (subtitle.isNotNull)
            FilledButton.tonal(
              style: const ButtonStyle(
                visualDensity: VisualDensity.compact,
              ),
              onPressed: null,
              child: Text(subtitle!),
            ),
        ],
      ),
    );
  }
}
