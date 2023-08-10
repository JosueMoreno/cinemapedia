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
      releaseDate: DateTime.parse(result.release_date!),
      genreIds: result.genre_ids?.map((id) => id.toString()).toList() ?? [],
      backdropPath: result.backdrop_path.isNotNull
          ? 'https://image.tmdb.org/t/p/original${result.backdrop_path}'
          : 'https://placehold.co/1600x900/EEE/31343C?font=roboto&text=The+Movie+DB',
      posterPath: result.poster_path.isNotNull
          ? 'https://image.tmdb.org/t/p/original${result.poster_path}'
          : 'https://placehold.co/333x666/EEE/31343C?font=roboto&text=The\\n+Movie\\n+DB',
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
      releaseDate: DateTime.parse(movie.release_date!),
      genreIds: movie.genres?.map((genre) => genre.name ?? '').toList() ?? [],
      backdropPath: movie.backdrop_path.isNotNull
          ? 'https://image.tmdb.org/t/p/original${movie.backdrop_path}'
          : 'https://placehold.co/1600x900/EEE/31343C?font=roboto&text=The+Movie+DB',
      posterPath: movie.poster_path.isNotNull
          ? 'https://image.tmdb.org/t/p/original${movie.poster_path}'
          : 'https://placehold.co/333x666/EEE/31343C?font=roboto&text=The\\n+Movie\\n+DB',
    );
  }
}
