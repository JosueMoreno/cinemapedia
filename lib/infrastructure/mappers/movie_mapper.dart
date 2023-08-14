import 'package:cinemapedia/config/utils/extensions.dart';
import 'package:cinemapedia/domain/entities/entities.dart';
import 'package:cinemapedia/infrastructure/models/models.dart';

class MovieMapper {
  static Movie fromTMDBToEntity(Result result) {
    return Movie(
      id: result.id!,
      title: result.title ?? '',
      overview: result.overview ?? '',
      adult: result.adult ?? false,
      video: result.video ?? false,
      voteCount: result.vote_count!,
      popularity: result.popularity!,
      voteAverage: result.vote_average!,
      originalTitle: result.original_title ?? '',
      originalLanguage: result.original_language ?? '',
      releaseDate: DateTime.parse(
        result.release_date.isNull
            ? '1900-12-12'
            : result.release_date!.isEmpty
                ? '1900-12-12'
                : result.release_date!,
      ),
      genreIds: result.genre_ids?.map((id) => id.toString()).toList() ?? [],
      backdropPath: result.backdrop_path.isNotNull
          ? 'https://image.tmdb.org/t/p/original${result.backdrop_path}'
          : 'https://www.underconsideration.com/brandnew/archives/the_movie_db_logo_before_after.png',
      posterPath: result.poster_path.isNotNull
          ? 'https://image.tmdb.org/t/p/original${result.poster_path}'
          : 'https://static.displate.com/857x1200/displate/2022-04-15/7422bfe15b3ea7b5933dffd896e9c7f9_46003a1b7353dc7b5a02949bd074432a.jpg',
    );
  }

  static Movie fromTMDBMovieDetailsToEntity(MovieDetails movie) {
    return Movie(
      id: movie.id!,
      title: movie.title ?? '',
      adult: movie.adult ?? false,
      video: movie.video ?? false,
      voteCount: movie.vote_count!,
      popularity: movie.popularity!,
      overview: movie.overview ?? '',
      voteAverage: movie.vote_average!,
      originalTitle: movie.original_title ?? '',
      originalLanguage: movie.original_language ?? '',
      releaseDate: DateTime.parse(
        movie.release_date.isNull
            ? '1900-12-12'
            : movie.release_date!.isEmpty
                ? '1900-12-12'
                : movie.release_date!,
      ),
      genreIds: movie.genres?.map((genre) => genre.name ?? '').toList() ?? [],
      backdropPath: movie.backdrop_path.isNotNull
          ? 'https://image.tmdb.org/t/p/original${movie.backdrop_path}'
          : 'https://www.underconsideration.com/brandnew/archives/the_movie_db_logo_before_after.png',
      posterPath: movie.poster_path.isNotNull
          ? 'https://image.tmdb.org/t/p/original${movie.poster_path}'
          : 'https://static.displate.com/857x1200/displate/2022-04-15/7422bfe15b3ea7b5933dffd896e9c7f9_46003a1b7353dc7b5a02949bd074432a.jpg',
    );
  }
}
