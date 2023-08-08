import 'package:flutter/material.dart';

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cinemapedia/domain/entities/entities.dart';
import 'package:cinemapedia/presentation/providers/providers.dart';

class MoviesSlideShow extends ConsumerWidget {
  const MoviesSlideShow({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.27,
      width: double.infinity,
      child: ref.watch(nowPlayingMovies).when(
            data: (movies) => Swiper(
              scale: 0.88,
              autoplay: true,
              viewportFraction: 0.88,
              pagination: SwiperPagination(
                margin: const EdgeInsets.only(top: 0),
                builder: DotSwiperPaginationBuilder(
                  color: Theme.of(context).colorScheme.secondary,
                  activeColor: Theme.of(context).colorScheme.primary,
                ),
              ),
              itemCount: movies.sublist(0,6).length,
              itemBuilder: (context, index) => _Slide(movie: movies[index]),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
            error: (error, stackTrace) => Text('$error'),
          ),
    );
  }
}

class _Slide extends StatelessWidget {
  final Movie movie;

  const _Slide({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 33),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          boxShadow: const [
            BoxShadow(
              color: Colors.black45,
              blurRadius: 11,
              offset: Offset(0, 11),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(22),
          child: FadeInImage.assetNetwork(
            fit: BoxFit.cover,
            image: movie.backdropPath,
            placeholder: 'assets/images/loading-2.gif',
            fadeOutDuration: const Duration(milliseconds: 222),
            fadeInDuration: const Duration(milliseconds: 222),
          ),
        ),
      ),
    );
  }
}
