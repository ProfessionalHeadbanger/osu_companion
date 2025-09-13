import 'package:json_annotation/json_annotation.dart';

part 'user_preferences_dto.g.dart';

@JsonSerializable(createToJson: false)
class UserPreferencesDto {
  @JsonKey(name: 'show_friends')
  final bool? showFriends;

  @JsonKey(name: 'show_tourneys')
  final bool? showTourneys;

  UserPreferencesDto({
    this.showFriends,
    this.showTourneys,
  });

  factory UserPreferencesDto.fromJson(Map<String, dynamic> json) => _$UserPreferencesDtoFromJson(json);
}
