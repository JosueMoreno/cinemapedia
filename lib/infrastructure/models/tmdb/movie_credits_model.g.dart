// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_credits_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieCredits _$$_MovieCreditsFromJson(Map<String, dynamic> json) =>
    _$_MovieCredits(
      id: json['id'] as int?,
      cast: (json['cast'] as List<dynamic>?)
          ?.map((e) => Cast.fromJson(e as Map<String, dynamic>))
          .toList(),
      crew: (json['crew'] as List<dynamic>?)
          ?.map((e) => Cast.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MovieCreditsToJson(_$_MovieCredits instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cast': instance.cast,
      'crew': instance.crew,
    };

_$_Cast _$$_CastFromJson(Map<String, dynamic> json) => _$_Cast(
      adult: json['adult'] as bool?,
      gender: json['gender'] as int?,
      id: json['id'] as int?,
      known_for_department: json['known_for_department'] as String?,
      name: json['name'] as String?,
      original_name: json['original_name'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      profile_path: json['profile_path'] as String?,
      cast_id: json['cast_id'] as int?,
      character: json['character'] as String?,
      credit_id: json['credit_id'] as String?,
      order: json['order'] as int?,
      department: json['department'] as String?,
      job: json['job'] as String?,
    );

Map<String, dynamic> _$$_CastToJson(_$_Cast instance) => <String, dynamic>{
      'adult': instance.adult,
      'gender': instance.gender,
      'id': instance.id,
      'known_for_department': instance.known_for_department,
      'name': instance.name,
      'original_name': instance.original_name,
      'popularity': instance.popularity,
      'profile_path': instance.profile_path,
      'cast_id': instance.cast_id,
      'character': instance.character,
      'credit_id': instance.credit_id,
      'order': instance.order,
      'department': instance.department,
      'job': instance.job,
    };
