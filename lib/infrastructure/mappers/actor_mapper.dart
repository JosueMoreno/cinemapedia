import 'package:cinemapedia/config/utils/extensions.dart';
import 'package:cinemapedia/domain/entities/entities.dart';
import 'package:cinemapedia/infrastructure/models/models.dart';

class ActorMapper {
  static Actor fromTMDBToEntity(Cast cast) {
    return Actor(
      id: cast.id!,
      name: cast.name ?? '',
      character: cast.character ?? '',
      profilePath: cast.profile_path.isNotNull
          ? 'https://image.tmdb.org/t/p/original${cast.profile_path}'
          : 'https://img.freepik.com/premium-vector/avatar-user-icon-vector_97886-15026.jpg',
    );
  }
}
