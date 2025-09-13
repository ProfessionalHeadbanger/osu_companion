import 'package:json_annotation/json_annotation.dart';
import 'package:osu_companion/api/dto/beatmap/failtimes_dto.dart';
import 'package:osu_companion/api/dto/beatmap_owner/beatmap_owner_dto.dart';
import 'package:osu_companion/api/dto/beatmapset/beatmapset_dto.dart';
import 'package:osu_companion/api/dto/rank/rank_dto.dart';
import 'package:osu_companion/api/dto/ruleset/ruleset_dto.dart';

part 'beatmap_dto.g.dart';

@JsonSerializable(createToJson: false)
class BeatmapDto {
  // required
  @JsonKey(name: 'beatmapset_id')
  final int beatmapsetId;

  @JsonKey(name: 'difficulty_rating')
  final double difficultyRating;

  final int id;

  final RulesetDto mode;

  final RankDto status;

  @JsonKey(name: 'total_length')
  final int totalLength;

  @JsonKey(name: 'user_id')
  final int userId;

  final String version;

  // optional
  final List<BeatmapsetDto>? beatmapset;

  final String? checksum;

  @JsonKey(name: 'current_user_play_count')
  final int? currentUserPlayCount;

  final FailtimesDto? failtimes;

  @JsonKey(name: 'max_combo')
  final int? maxCombo;

  final List<BeatmapOwnerDto>? owners;

  final double? accuracy;

  final double? ar;

  final double? bpm;

  final bool? convert;

  @JsonKey(name: 'count_circles')
  final int? countCircles;

  @JsonKey(name: 'count_sliders')
  final int? countSliders;

  @JsonKey(name: 'count_spinners')
  final int? countSpinners;

  final double? cs;

  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;

  final double? drain;

  @JsonKey(name: 'hit_length')
  final int? hitLength;

  @JsonKey(name: 'is_scoreable')
  final bool? isScoreable;

  @JsonKey(name: 'last_updated')
  final DateTime? lastUpdated;

  @JsonKey(name: 'mode_int')
  final int? modeInt;

  final int? passcount;

  final int? playcount;

  final int? ranked;

  const BeatmapDto({
    required this.beatmapsetId,
    required this.difficultyRating,
    required this.id,
    required this.mode,
    required this.status,
    required this.totalLength,
    required this.userId,
    required this.version,
    this.beatmapset,
    this.checksum,
    this.currentUserPlayCount,
    this.failtimes,
    this.maxCombo,
    this.owners,
    this.accuracy,
    this.ar,
    this.bpm,
    this.convert,
    this.countCircles,
    this.countSliders,
    this.countSpinners,
    this.cs,
    this.deletedAt,
    this.drain,
    this.hitLength,
    this.isScoreable,
    this.lastUpdated,
    this.modeInt,
    this.passcount,
    this.playcount,
    this.ranked,
  });

  factory BeatmapDto.fromJson(Map<String, dynamic> json) => _$BeatmapDtoFromJson(json);
}
