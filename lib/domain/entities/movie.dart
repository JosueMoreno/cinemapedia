class Movie {
  final int id;
  final bool adult;
  final bool video;
  final String title;
  final int voteCount;
  final String overview;
  final double popularity;
  final String posterPath;
  final double voteAverage;
  final String backdropPath;
  final String originalTitle;
  final String originalLanguage;
  final DateTime releaseDate;
  final List<String> genreIds;

  Movie({
    required this.id,
    required this.adult,
    required this.video,
    required this.title,
    required this.genreIds,
    required this.overview,
    required this.voteCount,
    required this.popularity,
    required this.posterPath,
    required this.voteAverage,
    required this.releaseDate,
    required this.backdropPath,
    required this.originalTitle,
    required this.originalLanguage,
  });
}
