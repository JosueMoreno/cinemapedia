// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_list_model.freezed.dart';
part 'movie_list_model.g.dart';

@freezed
class MovieList with _$MovieList {
  const factory MovieList({
    final int? page,
    final Dates? dates,
    final int? total_pages,
    final int? total_results,
    final List<Result>? results,
  }) = _MovieList;

  factory MovieList.fromJson(Map<String, dynamic> json) => _$MovieListFromJson(json);
}

@freezed
class Dates with _$Dates {
  const factory Dates({
    final String? maximum,
    final String? minimum,
  }) = _Dates;

  factory Dates.fromJson(Map<String, dynamic> json) => _$DatesFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    final int? id,
    final bool? video,
    final bool? adult,
    final String? title,
    final String? overview,
    final String? poster_path,
    final String? release_date,
    final String? backdrop_path,
    final String? original_title,
    final String? original_language,
    final double? popularity,
    final double? vote_average,
    final List<int>? genre_ids,
    final int? vote_count,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
