import 'package:json_annotation/json_annotation.dart';
import 'package:osu_companion/api/dto/beatmap/beatmap_dto.dart';
import 'package:osu_companion/api/dto/beatmapset/beatmapset_dto.dart';
import 'package:osu_companion/api/dto/match/match_dto.dart';
import 'package:osu_companion/api/dto/ruleset/ruleset_dto.dart';
import 'package:osu_companion/api/dto/score/mod_dto.dart';
import 'package:osu_companion/api/dto/score/score_statistics_dto.dart';
import 'package:osu_companion/api/dto/score/weight_dto.dart';
import 'package:osu_companion/api/dto/user/user_dto.dart';

part 'score_dto.g.dart';

@JsonSerializable(createToJson: false)
class ScoreDto {
  final double accuracy;

  @JsonKey(name: 'beatmap_id')
  final int beatmapId;

  @JsonKey(name: 'best_id')
  final int? bestId;

  @JsonKey(name: 'build_id')
  final int? buildId;

  @JsonKey(name: 'classic_total_score')
  final int? classicTotalScore;

  @JsonKey(name: 'ended_at')
  final DateTime endedAt;

  @JsonKey(name: 'has_replay')
  final bool hasReplay;

  final int id;

  @JsonKey(name: 'is_perfect_combo')
  final bool isPerfectCombo;

  @JsonKey(name: 'legacy_perfect')
  final bool legacyPerfect;

  @JsonKey(name: 'legacy_score_id')
  final int? legacyScoreId;

  @JsonKey(name: 'legacy_total_score')
  final int legacyTotalScore;

  @JsonKey(name: 'max_combo')
  final int maxCombo;

  @JsonKey(name: 'maximum_statistics')
  final ScoreStatisticsDto maximumStatistics;

  final List<ModDto> mods;

  final bool passed;

  @JsonKey(name: 'playlist_item_id')
  final int playlistItemId;

  final double? pp;

  final bool preserve;

  final bool processed;

  final String rank;

  final bool ranked;

  @JsonKey(name: 'room_id')
  final int roomId;

  @JsonKey(name: 'ruleset_id')
  final RulesetDto rulesetId;

  @JsonKey(name: 'started_at')
  final DateTime? startedAt;

  @JsonKey(name: 'statistics')
  final ScoreStatisticsDto statistics;

  final int totalScore;

  final String type;

  final int userId;

  final BeatmapDto? beatmap;

  final BeatmapsetDto? beatmapset;

  @JsonKey(name: 'current_user_attributes')
  final int? currentUserAttributes;

  final MatchDto? match;

  final int? position;

  @JsonKey(name: 'rank_country')
  final int? rankCountry;

  @JsonKey(name: 'rank_global')
  final int? rankGlobal;

  // @JsonKey(name: 'scores_around')
  // final MultiplayerScoreAroundDto? scoresAround;

  final UserDto? user;

  final WeightDto? weight;

  ScoreDto({
    required this.accuracy,
    required this.beatmapId,
    required this.endedAt,
    required this.hasReplay,
    required this.id,
    required this.isPerfectCombo,
    required this.legacyPerfect,
    required this.legacyTotalScore,
    required this.maxCombo,
    required this.maximumStatistics,
    required this.mods,
    required this.passed,
    required this.playlistItemId,
    required this.preserve,
    required this.processed,
    required this.rank,
    required this.ranked,
    required this.roomId,
    required this.rulesetId,
    required this.statistics,
    required this.totalScore,
    required this.type,
    required this.userId,
    this.bestId,
    this.buildId,
    this.classicTotalScore,
    this.legacyScoreId,
    this.pp,
    this.startedAt,
    this.beatmap,
    this.beatmapset,
    this.currentUserAttributes,
    this.match,
    this.position,
    this.rankCountry,
    this.rankGlobal,
    // this.scoresAround,
    this.user,
    this.weight,
  });

  factory ScoreDto.fromJson(Map<String, dynamic> json) => _$ScoreDtoFromJson(json);
}
