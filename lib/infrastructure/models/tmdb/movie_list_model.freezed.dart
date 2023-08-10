// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieList _$MovieListFromJson(Map<String, dynamic> json) {
  return _MovieList.fromJson(json);
}

/// @nodoc
mixin _$MovieList {
  int? get page => throw _privateConstructorUsedError;
  Dates? get dates => throw _privateConstructorUsedError;
  int? get total_pages => throw _privateConstructorUsedError;
  int? get total_results => throw _privateConstructorUsedError;
  List<Result>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieListCopyWith<MovieList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieListCopyWith<$Res> {
  factory $MovieListCopyWith(MovieList value, $Res Function(MovieList) then) =
      _$MovieListCopyWithImpl<$Res, MovieList>;
  @useResult
  $Res call(
      {int? page,
      Dates? dates,
      int? total_pages,
      int? total_results,
      List<Result>? results});

  $DatesCopyWith<$Res>? get dates;
}

/// @nodoc
class _$MovieListCopyWithImpl<$Res, $Val extends MovieList>
    implements $MovieListCopyWith<$Res> {
  _$MovieListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? dates = freezed,
    Object? total_pages = freezed,
    Object? total_results = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      dates: freezed == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as Dates?,
      total_pages: freezed == total_pages
          ? _value.total_pages
          : total_pages // ignore: cast_nullable_to_non_nullable
              as int?,
      total_results: freezed == total_results
          ? _value.total_results
          : total_results // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DatesCopyWith<$Res>? get dates {
    if (_value.dates == null) {
      return null;
    }

    return $DatesCopyWith<$Res>(_value.dates!, (value) {
      return _then(_value.copyWith(dates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MovieListCopyWith<$Res> implements $MovieListCopyWith<$Res> {
  factory _$$_MovieListCopyWith(
          _$_MovieList value, $Res Function(_$_MovieList) then) =
      __$$_MovieListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? page,
      Dates? dates,
      int? total_pages,
      int? total_results,
      List<Result>? results});

  @override
  $DatesCopyWith<$Res>? get dates;
}

/// @nodoc
class __$$_MovieListCopyWithImpl<$Res>
    extends _$MovieListCopyWithImpl<$Res, _$_MovieList>
    implements _$$_MovieListCopyWith<$Res> {
  __$$_MovieListCopyWithImpl(
      _$_MovieList _value, $Res Function(_$_MovieList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? dates = freezed,
    Object? total_pages = freezed,
    Object? total_results = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_MovieList(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      dates: freezed == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as Dates?,
      total_pages: freezed == total_pages
          ? _value.total_pages
          : total_pages // ignore: cast_nullable_to_non_nullable
              as int?,
      total_results: freezed == total_results
          ? _value.total_results
          : total_results // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieList implements _MovieList {
  const _$_MovieList(
      {this.page,
      this.dates,
      this.total_pages,
      this.total_results,
      final List<Result>? results})
      : _results = results;

  factory _$_MovieList.fromJson(Map<String, dynamic> json) =>
      _$$_MovieListFromJson(json);

  @override
  final int? page;
  @override
  final Dates? dates;
  @override
  final int? total_pages;
  @override
  final int? total_results;
  final List<Result>? _results;
  @override
  List<Result>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MovieList(page: $page, dates: $dates, total_pages: $total_pages, total_results: $total_results, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieList &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.dates, dates) || other.dates == dates) &&
            (identical(other.total_pages, total_pages) ||
                other.total_pages == total_pages) &&
            (identical(other.total_results, total_results) ||
                other.total_results == total_results) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, dates, total_pages,
      total_results, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieListCopyWith<_$_MovieList> get copyWith =>
      __$$_MovieListCopyWithImpl<_$_MovieList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieListToJson(
      this,
    );
  }
}

abstract class _MovieList implements MovieList {
  const factory _MovieList(
      {final int? page,
      final Dates? dates,
      final int? total_pages,
      final int? total_results,
      final List<Result>? results}) = _$_MovieList;

  factory _MovieList.fromJson(Map<String, dynamic> json) =
      _$_MovieList.fromJson;

  @override
  int? get page;
  @override
  Dates? get dates;
  @override
  int? get total_pages;
  @override
  int? get total_results;
  @override
  List<Result>? get results;
  @override
  @JsonKey(ignore: true)
  _$$_MovieListCopyWith<_$_MovieList> get copyWith =>
      throw _privateConstructorUsedError;
}

Dates _$DatesFromJson(Map<String, dynamic> json) {
  return _Dates.fromJson(json);
}

/// @nodoc
mixin _$Dates {
  String? get maximum => throw _privateConstructorUsedError;
  String? get minimum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatesCopyWith<Dates> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatesCopyWith<$Res> {
  factory $DatesCopyWith(Dates value, $Res Function(Dates) then) =
      _$DatesCopyWithImpl<$Res, Dates>;
  @useResult
  $Res call({String? maximum, String? minimum});
}

/// @nodoc
class _$DatesCopyWithImpl<$Res, $Val extends Dates>
    implements $DatesCopyWith<$Res> {
  _$DatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maximum = freezed,
    Object? minimum = freezed,
  }) {
    return _then(_value.copyWith(
      maximum: freezed == maximum
          ? _value.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as String?,
      minimum: freezed == minimum
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DatesCopyWith<$Res> implements $DatesCopyWith<$Res> {
  factory _$$_DatesCopyWith(_$_Dates value, $Res Function(_$_Dates) then) =
      __$$_DatesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? maximum, String? minimum});
}

/// @nodoc
class __$$_DatesCopyWithImpl<$Res> extends _$DatesCopyWithImpl<$Res, _$_Dates>
    implements _$$_DatesCopyWith<$Res> {
  __$$_DatesCopyWithImpl(_$_Dates _value, $Res Function(_$_Dates) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maximum = freezed,
    Object? minimum = freezed,
  }) {
    return _then(_$_Dates(
      maximum: freezed == maximum
          ? _value.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as String?,
      minimum: freezed == minimum
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Dates implements _Dates {
  const _$_Dates({this.maximum, this.minimum});

  factory _$_Dates.fromJson(Map<String, dynamic> json) =>
      _$$_DatesFromJson(json);

  @override
  final String? maximum;
  @override
  final String? minimum;

  @override
  String toString() {
    return 'Dates(maximum: $maximum, minimum: $minimum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Dates &&
            (identical(other.maximum, maximum) || other.maximum == maximum) &&
            (identical(other.minimum, minimum) || other.minimum == minimum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, maximum, minimum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DatesCopyWith<_$_Dates> get copyWith =>
      __$$_DatesCopyWithImpl<_$_Dates>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DatesToJson(
      this,
    );
  }
}

abstract class _Dates implements Dates {
  const factory _Dates({final String? maximum, final String? minimum}) =
      _$_Dates;

  factory _Dates.fromJson(Map<String, dynamic> json) = _$_Dates.fromJson;

  @override
  String? get maximum;
  @override
  String? get minimum;
  @override
  @JsonKey(ignore: true)
  _$$_DatesCopyWith<_$_Dates> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  int? get id => throw _privateConstructorUsedError;
  bool? get video => throw _privateConstructorUsedError;
  bool? get adult => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  String? get poster_path => throw _privateConstructorUsedError;
  String? get release_date => throw _privateConstructorUsedError;
  String? get backdrop_path => throw _privateConstructorUsedError;
  String? get original_title => throw _privateConstructorUsedError;
  String? get original_language => throw _privateConstructorUsedError;
  double? get popularity => throw _privateConstructorUsedError;
  double? get vote_average => throw _privateConstructorUsedError;
  List<int>? get genre_ids => throw _privateConstructorUsedError;
  int? get vote_count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call(
      {int? id,
      bool? video,
      bool? adult,
      String? title,
      String? overview,
      String? poster_path,
      String? release_date,
      String? backdrop_path,
      String? original_title,
      String? original_language,
      double? popularity,
      double? vote_average,
      List<int>? genre_ids,
      int? vote_count});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? video = freezed,
    Object? adult = freezed,
    Object? title = freezed,
    Object? overview = freezed,
    Object? poster_path = freezed,
    Object? release_date = freezed,
    Object? backdrop_path = freezed,
    Object? original_title = freezed,
    Object? original_language = freezed,
    Object? popularity = freezed,
    Object? vote_average = freezed,
    Object? genre_ids = freezed,
    Object? vote_count = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      poster_path: freezed == poster_path
          ? _value.poster_path
          : poster_path // ignore: cast_nullable_to_non_nullable
              as String?,
      release_date: freezed == release_date
          ? _value.release_date
          : release_date // ignore: cast_nullable_to_non_nullable
              as String?,
      backdrop_path: freezed == backdrop_path
          ? _value.backdrop_path
          : backdrop_path // ignore: cast_nullable_to_non_nullable
              as String?,
      original_title: freezed == original_title
          ? _value.original_title
          : original_title // ignore: cast_nullable_to_non_nullable
              as String?,
      original_language: freezed == original_language
          ? _value.original_language
          : original_language // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      vote_average: freezed == vote_average
          ? _value.vote_average
          : vote_average // ignore: cast_nullable_to_non_nullable
              as double?,
      genre_ids: freezed == genre_ids
          ? _value.genre_ids
          : genre_ids // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      vote_count: freezed == vote_count
          ? _value.vote_count
          : vote_count // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      bool? video,
      bool? adult,
      String? title,
      String? overview,
      String? poster_path,
      String? release_date,
      String? backdrop_path,
      String? original_title,
      String? original_language,
      double? popularity,
      double? vote_average,
      List<int>? genre_ids,
      int? vote_count});
}

/// @nodoc
class __$$_ResultCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$_Result>
    implements _$$_ResultCopyWith<$Res> {
  __$$_ResultCopyWithImpl(_$_Result _value, $Res Function(_$_Result) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? video = freezed,
    Object? adult = freezed,
    Object? title = freezed,
    Object? overview = freezed,
    Object? poster_path = freezed,
    Object? release_date = freezed,
    Object? backdrop_path = freezed,
    Object? original_title = freezed,
    Object? original_language = freezed,
    Object? popularity = freezed,
    Object? vote_average = freezed,
    Object? genre_ids = freezed,
    Object? vote_count = freezed,
  }) {
    return _then(_$_Result(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      poster_path: freezed == poster_path
          ? _value.poster_path
          : poster_path // ignore: cast_nullable_to_non_nullable
              as String?,
      release_date: freezed == release_date
          ? _value.release_date
          : release_date // ignore: cast_nullable_to_non_nullable
              as String?,
      backdrop_path: freezed == backdrop_path
          ? _value.backdrop_path
          : backdrop_path // ignore: cast_nullable_to_non_nullable
              as String?,
      original_title: freezed == original_title
          ? _value.original_title
          : original_title // ignore: cast_nullable_to_non_nullable
              as String?,
      original_language: freezed == original_language
          ? _value.original_language
          : original_language // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      vote_average: freezed == vote_average
          ? _value.vote_average
          : vote_average // ignore: cast_nullable_to_non_nullable
              as double?,
      genre_ids: freezed == genre_ids
          ? _value._genre_ids
          : genre_ids // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      vote_count: freezed == vote_count
          ? _value.vote_count
          : vote_count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result implements _Result {
  const _$_Result(
      {this.id,
      this.video,
      this.adult,
      this.title,
      this.overview,
      this.poster_path,
      this.release_date,
      this.backdrop_path,
      this.original_title,
      this.original_language,
      this.popularity,
      this.vote_average,
      final List<int>? genre_ids,
      this.vote_count})
      : _genre_ids = genre_ids;

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  @override
  final int? id;
  @override
  final bool? video;
  @override
  final bool? adult;
  @override
  final String? title;
  @override
  final String? overview;
  @override
  final String? poster_path;
  @override
  final String? release_date;
  @override
  final String? backdrop_path;
  @override
  final String? original_title;
  @override
  final String? original_language;
  @override
  final double? popularity;
  @override
  final double? vote_average;
  final List<int>? _genre_ids;
  @override
  List<int>? get genre_ids {
    final value = _genre_ids;
    if (value == null) return null;
    if (_genre_ids is EqualUnmodifiableListView) return _genre_ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? vote_count;

  @override
  String toString() {
    return 'Result(id: $id, video: $video, adult: $adult, title: $title, overview: $overview, poster_path: $poster_path, release_date: $release_date, backdrop_path: $backdrop_path, original_title: $original_title, original_language: $original_language, popularity: $popularity, vote_average: $vote_average, genre_ids: $genre_ids, vote_count: $vote_count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.poster_path, poster_path) ||
                other.poster_path == poster_path) &&
            (identical(other.release_date, release_date) ||
                other.release_date == release_date) &&
            (identical(other.backdrop_path, backdrop_path) ||
                other.backdrop_path == backdrop_path) &&
            (identical(other.original_title, original_title) ||
                other.original_title == original_title) &&
            (identical(other.original_language, original_language) ||
                other.original_language == original_language) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.vote_average, vote_average) ||
                other.vote_average == vote_average) &&
            const DeepCollectionEquality()
                .equals(other._genre_ids, _genre_ids) &&
            (identical(other.vote_count, vote_count) ||
                other.vote_count == vote_count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      video,
      adult,
      title,
      overview,
      poster_path,
      release_date,
      backdrop_path,
      original_title,
      original_language,
      popularity,
      vote_average,
      const DeepCollectionEquality().hash(_genre_ids),
      vote_count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      __$$_ResultCopyWithImpl<_$_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {final int? id,
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
      final int? vote_count}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  int? get id;
  @override
  bool? get video;
  @override
  bool? get adult;
  @override
  String? get title;
  @override
  String? get overview;
  @override
  String? get poster_path;
  @override
  String? get release_date;
  @override
  String? get backdrop_path;
  @override
  String? get original_title;
  @override
  String? get original_language;
  @override
  double? get popularity;
  @override
  double? get vote_average;
  @override
  List<int>? get genre_ids;
  @override
  int? get vote_count;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}
