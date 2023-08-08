import 'package:flutter/material.dart';

import 'package:animate_do/animate_do.dart';

import 'package:cinemapedia/config/utils/formats.dart';
import 'package:cinemapedia/config/utils/extensions.dart';
import 'package:cinemapedia/domain/entities/entities.dart';

class MoviesHorizontalListView extends StatefulWidget {
  final String? title;
  final String? subtitle;
  final List<Movie> movies;
  final VoidCallback? loadNextPage;

  const MoviesHorizontalListView({
    super.key,
    this.title,
    this.subtitle,
    this.loadNextPage,
    required this.movies,
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
      if (widget.loadNextPage.isNull) return;

      if (scrollController.position.pixels + 200 >=
          scrollController.position.maxScrollExtent) {
        widget.loadNextPage!();
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
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.55,
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
              itemCount: widget.movies.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return _Slide(movie: widget.movies[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

/*---------------------------Local Widgets-----------------------------------*/

class _Slide extends StatelessWidget {
  final Movie movie;

  const _Slide({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 11),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(22),
            child: Image.network(
              width: MediaQuery.of(context).size.width * 0.44,
              height: MediaQuery.of(context).size.height * 0.3,
              fit: BoxFit.cover,
              movie.posterPath,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress.isNotNull) {
                  return SizedBox(
                    width: MediaQuery.of(context).size.width * 0.44,
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: const Center(
                      child: CircularProgressIndicator.adaptive(
                        strokeWidth: 3,
                      ),
                    ),
                  );
                }

                return FadeIn(child: child);
              },
            ),
          ),
          const SizedBox(height: 3),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.44,
            height: MediaQuery.of(context).size.height * 0.055,
            child: Center(
              child: Text(
                movie.title,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.44,
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
        top: MediaQuery.of(context).size.width * 0.055,
        bottom: MediaQuery.of(context).size.width * 0.033,
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
