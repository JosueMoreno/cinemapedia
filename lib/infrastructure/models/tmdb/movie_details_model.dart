// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_details_model.freezed.dart';
part 'movie_details_model.g.dart';

@freezed
class MovieDetails with _$MovieDetails {
    const factory MovieDetails({
        final bool? adult,
        final String? backdrop_path,
        final BelongsToCollection? belongs_to_collection,
        final int? budget,
        final List<Genre>? genres,
        final String? homepage,
        final int? id,
        final String? imdb_id,
        final String? original_language,
        final String? original_title,
        final String? overview,
        final double? popularity,
        final String? poster_path,
        final List<ProductionCompany>? production_companies,
        final List<ProductionCountry>? production_countries,
        final String? release_date,
        final int? revenue,
        final int? runtime,
        final List<SpokenLanguage>? spoken_languages,
        final String? status,
        final String? tagline,
        final String? title,
        final bool? video,
        final double? vote_average,
        final int? vote_count,
    }) = _MovieDetails;

    factory MovieDetails.fromJson(Map<String, dynamic> json) => _$MovieDetailsFromJson(json);
}

@freezed
class BelongsToCollection with _$BelongsToCollection {
    const factory BelongsToCollection({
        final int? id,
        final String? name,
        final String? poster_path,
        final String? backdrop_path,
    }) = _BelongsToCollection;

    factory BelongsToCollection.fromJson(Map<String, dynamic> json) => _$BelongsToCollectionFromJson(json);
}

@freezed
class Genre with _$Genre {
    const factory Genre({
        final int? id,
        final String? name,
    }) = _Genre;

    factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
}

@freezed
class ProductionCompany with _$ProductionCompany {
    const factory ProductionCompany({
        final int? id,
        final String? logo_path,
        final String? name,
        final String? origin_country,
    }) = _ProductionCompany;

    factory ProductionCompany.fromJson(Map<String, dynamic> json) => _$ProductionCompanyFromJson(json);
}

@freezed
class ProductionCountry with _$ProductionCountry {
    const factory ProductionCountry({
        final String? iso31661,
        final String? name,
    }) = _ProductionCountry;

    factory ProductionCountry.fromJson(Map<String, dynamic> json) => _$ProductionCountryFromJson(json);
}

@freezed
class SpokenLanguage with _$SpokenLanguage {
    const factory SpokenLanguage({
        final String? english_name,
        final String? iso6391,
        final String? name,
    }) = _SpokenLanguage;

    factory SpokenLanguage.fromJson(Map<String, dynamic> json) => _$SpokenLanguageFromJson(json);
}
