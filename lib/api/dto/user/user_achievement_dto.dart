import 'package:json_annotation/json_annotation.dart';

part 'user_achievement_dto.g.dart';

@JsonSerializable(createToJson: false)
class UserAchievementDto {
  @JsonKey(name: 'achieved_at')
  final DateTime? achievedAt;

  @JsonKey(name: 'achievement_id')
  final int? achievementId;

  UserAchievementDto({this.achievedAt, this.achievementId});

  factory UserAchievementDto.fromJson(Map<String, dynamic> json) => _$UserAchievementDtoFromJson(json);
}
