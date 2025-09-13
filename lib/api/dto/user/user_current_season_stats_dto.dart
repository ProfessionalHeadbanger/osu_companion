import 'package:json_annotation/json_annotation.dart';

part 'user_current_season_stats_dto.g.dart';

@JsonSerializable(createToJson: false)
class UserCurrentSeasonStatsDto {
  @JsonKey(name: 'global_rank')
  final int? globalRank;
  @JsonKey(name: 'ranked_score')
  final int? rankedScore;
  @JsonKey(name: 'total_score')
  final int? totalScore;
  @JsonKey(name: 'play_count')
  final int? playCount;
  @JsonKey(name: 'play_time')
  final int? playTime;

  UserCurrentSeasonStatsDto({
    this.globalRank,
    this.rankedScore,
    this.totalScore,
    this.playCount,
    this.playTime,
  });

  factory UserCurrentSeasonStatsDto.fromJson(Map<String, dynamic> json) => _$UserCurrentSeasonStatsDtoFromJson(json);
}
