// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieList _$$_MovieListFromJson(Map<String, dynamic> json) => _$_MovieList(
      page: json['page'] as int?,
      dates: json['dates'] == null
          ? null
          : Dates.fromJson(json['dates'] as Map<String, dynamic>),
      total_pages: json['total_pages'] as int?,
      total_results: json['total_results'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MovieListToJson(_$_MovieList instance) =>
    <String, dynamic>{
      'page': instance.page,
      'dates': instance.dates,
      'total_pages': instance.total_pages,
      'total_results': instance.total_results,
      'results': instance.results,
    };

_$_Dates _$$_DatesFromJson(Map<String, dynamic> json) => _$_Dates(
      maximum: json['maximum'] as String?,
      minimum: json['minimum'] as String?,
    );

Map<String, dynamic> _$$_DatesToJson(_$_Dates instance) => <String, dynamic>{
      'maximum': instance.maximum,
      'minimum': instance.minimum,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      id: json['id'] as int?,
      video: json['video'] as bool?,
      adult: json['adult'] as bool?,
      title: json['title'] as String?,
      overview: json['overview'] as String?,
      poster_path: json['poster_path'] as String?,
      release_date: json['release_date'] as String?,
      backdrop_path: json['backdrop_path'] as String?,
      original_title: json['original_title'] as String?,
      original_language: json['original_language'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      vote_average: (json['vote_average'] as num?)?.toDouble(),
      genre_ids:
          (json['genre_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      vote_count: json['vote_count'] as int?,
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'id': instance.id,
      'video': instance.video,
      'adult': instance.adult,
      'title': instance.title,
      'overview': instance.overview,
      'poster_path': instance.poster_path,
      'release_date': instance.release_date,
      'backdrop_path': instance.backdrop_path,
      'original_title': instance.original_title,
      'original_language': instance.original_language,
      'popularity': instance.popularity,
      'vote_average': instance.vote_average,
      'genre_ids': instance.genre_ids,
      'vote_count': instance.vote_count,
    };
