import 'package:json_annotation/json_annotation.dart';

part 'user_daily_challenge_stats_dto.g.dart';

@JsonSerializable(createToJson: false)
class UserDailyChallengeStatsDto {
  @JsonKey(name: 'plays_attempted')
  final int? playsAttempted;
  @JsonKey(name: 'plays_successful')
  final int? playsSuccessful;
  @JsonKey(name: 'last_played')
  final DateTime? lastPlayed;

  UserDailyChallengeStatsDto({
    this.playsAttempted,
    this.playsSuccessful,
    this.lastPlayed,
  });

  factory UserDailyChallengeStatsDto.fromJson(Map<String, dynamic> json) => _$UserDailyChallengeStatsDtoFromJson(json);
}
