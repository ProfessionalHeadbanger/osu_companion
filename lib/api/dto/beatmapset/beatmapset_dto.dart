import 'package:json_annotation/json_annotation.dart';
import 'package:osu_companion/api/dto/beatmap/beatmap_dto.dart';
import 'package:osu_companion/api/dto/beatmapset/covers_dto.dart';
import 'package:osu_companion/api/dto/nomination/nomination_dto.dart';
import 'package:osu_companion/api/dto/rank/rank_dto.dart';

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

  final bool? convert;

  @JsonKey(name: 'current_nominations')
  final NominationDto? currentNominations;

  @JsonKey(name: 'has_favourited')
  final bool? hasFavourited;

  @JsonKey(name: 'pack_tags')
  final List<String>? packTags;

  @JsonKey(name: 'track_id')
  final int? trackId;

  @JsonKey(name: 'avallabillity.download_disabled')
  final bool? downloadDisabled;

  @JsonKey(name: 'avallabillity.more_information')
  final String? moreInformation;

  final double? bpm;

  @JsonKey(name: 'can_be_hyped')
  final bool? canBeHyped;

  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;

  @JsonKey(name: 'discussion_enabled')
  final bool? discussionEnabled;

  @JsonKey(name: ' discussion_locked')
  final bool? discussionLocked;

  @JsonKey(name: 'hype.current')
  final int? currentHype;

  @JsonKey(name: 'hype.required')
  final int? requiredHype;

  @JsonKey(name: 'is_scoreable')
  final bool? isScoreable;

  @JsonKey(name: 'last_updated')
  final DateTime? lastUpdated;

  @JsonKey(name: 'legacy_thread_url')
  final String? legacyThreadUrl;

  @JsonKey(name: 'nominations_summary.current')
  final int? currentNominationsSummary;

  @JsonKey(name: 'nominations_summary.required')
  final int? requiredNominationsSummary;

  final RankDto? ranked;

  @JsonKey(name: 'ranked_date')
  final DateTime? rankedDate;

  final double? rating;

  final bool? storyboard;

  final DateTime? submittedDate;

  final String? tags;

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
    this.convert,
    this.currentNominations,
    this.hasFavourited,
    this.packTags,
    this.trackId,
    this.downloadDisabled,
    this.moreInformation,
    this.bpm,
    this.canBeHyped,
    this.deletedAt,
    this.discussionEnabled,
    this.discussionLocked,
    this.currentHype,
    this.requiredHype,
    this.isScoreable,
    this.lastUpdated,
    this.legacyThreadUrl,
    this.currentNominationsSummary,
    this.requiredNominationsSummary,
    this.ranked,
    this.rankedDate,
    this.rating,
    this.storyboard,
    this.submittedDate,
    this.tags,
  });

  factory BeatmapsetDto.fromJson(Map<String, dynamic> json) => _$BeatmapsetDtoFromJson(json);
}
