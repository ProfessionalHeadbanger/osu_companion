import 'package:json_annotation/json_annotation.dart';
import 'package:osu_companion/api/dto/beatmap/beatmap_dto.dart';
import 'package:osu_companion/api/dto/beatmapset/covers.dart';
import 'package:osu_companion/api/dto/nomination/nomination_dto.dart';

part 'beatmapset_dto.g.dart';

@JsonSerializable(createToJson: false)
class BeatmapsetDto {

  // required
  final String artist;

  @JsonKey(name: 'artist_unicode')
  final String artistUnicode;

  final CoversDto covers;

  final String creator;

  @JsonKey(name: 'favourite_count')
  final int favouriteCount;

  final int id;

  final bool nsfw;

  final int offset;

  @JsonKey(name: 'play_count')
  final int playCount;

  @JsonKey(name: 'preview_url')
  final String previewUrl;

  final String source;

  final String status;

  final bool spotlight;

  final String title;

  @JsonKey(name: 'title_unicode')
  final String titleUnicode;

  @JsonKey(name: 'user_id')
  final int userId;

  final int video;
  
  // optional
  final List<BeatmapDto>? beatmaps;

  @JsonKey(name: 'current_nominations')
  final NominationDto? currentNominations;

  @JsonKey(name: 'has_favourited')
  final bool? hasFavourited;

  @JsonKey(name: 'is_scoreable')
  final List<String>? packTags;

  @JsonKey(name: 'track_id')
  final int? trackId;

  const BeatmapsetDto({
    required this.artist,
    required this.artistUnicode,
    required this.covers,
    required this.creator,
    required this.favouriteCount,
    required this.id,
    required this.nsfw,
    required this.offset,
    required this.playCount,
    required this.previewUrl,
    required this.source,
    required this.status,
    required this.spotlight,
    required this.title,
    required this.titleUnicode,
    required this.userId,
    required this.video,
    this.beatmaps,
    this.currentNominations,
    this.hasFavourited,
    this.packTags,
    this.trackId,
  });

  factory BeatmapsetDto.fromJson(Map<String, dynamic> json) => _$BeatmapsetDtoFromJson(json);
}
