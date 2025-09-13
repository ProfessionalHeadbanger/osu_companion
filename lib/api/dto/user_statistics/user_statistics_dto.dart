import 'package:json_annotation/json_annotation.dart';

part 'user_statistics_dto.g.dart';

@JsonSerializable(createToJson: false)
class UserStatisticsDto {
  final double? level;
  @JsonKey(name: 'global_rank')
  final int? globalRank;
  @JsonKey(name: 'pp')
  final double? pp;
  @JsonKey(name: 'ranked_score')
  final int? rankedScore;
  @JsonKey(name: 'hit_accuracy')
  final double? hitAccuracy;
  @JsonKey(name: 'play_count')
  final int? playCount;
  @JsonKey(name: 'play_time')
  final int? playTime;
  @JsonKey(name: 'total_score')
  final int? totalScore;
  @JsonKey(name: 'total_hits')
  final int? totalHits;
  @JsonKey(name: 'maximum_combo')
  final int? maximumCombo;
  @JsonKey(name: 'replays_watched_by_others')
  final int? replaysWatchedByOthers;

  UserStatisticsDto({
    this.level,
    this.globalRank,
    this.pp,
    this.rankedScore,
    this.hitAccuracy,
    this.playCount,
    this.playTime,
    this.totalScore,
    this.totalHits,
    this.maximumCombo,
    this.replaysWatchedByOthers,
  });

  factory UserStatisticsDto.fromJson(Map<String, dynamic> json) => _$UserStatisticsDtoFromJson(json);
}
