// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieDetails _$$_MovieDetailsFromJson(Map<String, dynamic> json) =>
    _$_MovieDetails(
      adult: json['adult'] as bool?,
      backdrop_path: json['backdrop_path'] as String?,
      belongs_to_collection: json['belongs_to_collection'] == null
          ? null
          : BelongsToCollection.fromJson(
              json['belongs_to_collection'] as Map<String, dynamic>),
      budget: json['budget'] as int?,
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
      homepage: json['homepage'] as String?,
      id: json['id'] as int?,
      imdb_id: json['imdb_id'] as String?,
      original_language: json['original_language'] as String?,
      original_title: json['original_title'] as String?,
      overview: json['overview'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      poster_path: json['poster_path'] as String?,
      production_companies: (json['production_companies'] as List<dynamic>?)
          ?.map((e) => ProductionCompany.fromJson(e as Map<String, dynamic>))
          .toList(),
      production_countries: (json['production_countries'] as List<dynamic>?)
          ?.map((e) => ProductionCountry.fromJson(e as Map<String, dynamic>))
          .toList(),
      release_date: json['release_date'] as String?,
      revenue: json['revenue'] as int?,
      runtime: json['runtime'] as int?,
      spoken_languages: (json['spoken_languages'] as List<dynamic>?)
          ?.map((e) => SpokenLanguage.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String?,
      tagline: json['tagline'] as String?,
      title: json['title'] as String?,
      video: json['video'] as bool?,
      vote_average: (json['vote_average'] as num?)?.toDouble(),
      vote_count: json['vote_count'] as int?,
    );

Map<String, dynamic> _$$_MovieDetailsToJson(_$_MovieDetails instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdrop_path,
      'belongs_to_collection': instance.belongs_to_collection,
      'budget': instance.budget,
      'genres': instance.genres,
      'homepage': instance.homepage,
      'id': instance.id,
      'imdb_id': instance.imdb_id,
      'original_language': instance.original_language,
      'original_title': instance.original_title,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.poster_path,
      'production_companies': instance.production_companies,
      'production_countries': instance.production_countries,
      'release_date': instance.release_date,
      'revenue': instance.revenue,
      'runtime': instance.runtime,
      'spoken_languages': instance.spoken_languages,
      'status': instance.status,
      'tagline': instance.tagline,
      'title': instance.title,
      'video': instance.video,
      'vote_average': instance.vote_average,
      'vote_count': instance.vote_count,
    };

_$_BelongsToCollection _$$_BelongsToCollectionFromJson(
        Map<String, dynamic> json) =>
    _$_BelongsToCollection(
      id: json['id'] as int?,
      name: json['name'] as String?,
      poster_path: json['poster_path'] as String?,
      backdrop_path: json['backdrop_path'] as String?,
    );

Map<String, dynamic> _$$_BelongsToCollectionToJson(
        _$_BelongsToCollection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'poster_path': instance.poster_path,
      'backdrop_path': instance.backdrop_path,
    };

_$_Genre _$$_GenreFromJson(Map<String, dynamic> json) => _$_Genre(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_GenreToJson(_$_Genre instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_ProductionCompany _$$_ProductionCompanyFromJson(Map<String, dynamic> json) =>
    _$_ProductionCompany(
      id: json['id'] as int?,
      logo_path: json['logo_path'] as String?,
      name: json['name'] as String?,
      origin_country: json['origin_country'] as String?,
    );

Map<String, dynamic> _$$_ProductionCompanyToJson(
        _$_ProductionCompany instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logo_path': instance.logo_path,
      'name': instance.name,
      'origin_country': instance.origin_country,
    };

_$_ProductionCountry _$$_ProductionCountryFromJson(Map<String, dynamic> json) =>
    _$_ProductionCountry(
      iso31661: json['iso31661'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_ProductionCountryToJson(
        _$_ProductionCountry instance) =>
    <String, dynamic>{
      'iso31661': instance.iso31661,
      'name': instance.name,
    };

_$_SpokenLanguage _$$_SpokenLanguageFromJson(Map<String, dynamic> json) =>
    _$_SpokenLanguage(
      english_name: json['english_name'] as String?,
      iso6391: json['iso6391'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_SpokenLanguageToJson(_$_SpokenLanguage instance) =>
    <String, dynamic>{
      'english_name': instance.english_name,
      'iso6391': instance.iso6391,
      'name': instance.name,
    };
