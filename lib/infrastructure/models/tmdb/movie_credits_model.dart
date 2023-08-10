// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_credits_model.freezed.dart';
part 'movie_credits_model.g.dart';

@freezed
class MovieCredits with _$MovieCredits {
  const factory MovieCredits({
    final int? id,
    final List<Cast>? cast,
    final List<Cast>? crew,
  }) = _MovieCredits;

  factory MovieCredits.fromJson(Map<String, dynamic> json) => _$MovieCreditsFromJson(json);
}

@freezed
class Cast with _$Cast {
  const factory Cast({
    final bool? adult,
    final int? gender,
    final int? id,
    final String? known_for_department,
    final String? name,
    final String? original_name,
    final double? popularity,
    final String? profile_path,
    final int? cast_id,
    final String? character,
    final String? credit_id,
    final int? order,
    final String? department,
    final String? job,
  }) = _Cast;

  factory Cast.fromJson(Map<String, dynamic> json) => _$CastFromJson(json);
}
