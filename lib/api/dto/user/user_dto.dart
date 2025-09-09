import 'package:json_annotation/json_annotation.dart';

part 'user_dto.g.dart';

@JsonSerializable(createToJson: false)
class UserDto {
  @JsonKey(name: 'avatar_url')
  final String avatarUrl;

  @JsonKey(name: 'country_code')
  final String countryCode;

  @JsonKey(name: 'default_group')
  final String? defaultGroup;

  final int id;

  @JsonKey(name: 'is_active')
  final bool isActive;

  @JsonKey(name: 'is_bot')
  final bool isBot;

  @JsonKey(name: 'is_deleted')
  final bool isDeleted;

  @JsonKey(name: 'is_online')
  final bool isOnline;

  @JsonKey(name: 'is_supporter')
  final bool isSupporter;

  @JsonKey(name: 'last_visit')
  final DateTime? lastVisit;

  @JsonKey(name: 'pm_friends_only')
  final bool pmFriendsOnly;

  @JsonKey(name: 'profile_colour')
  final String? profileColor;

  final String username;

  UserDto({
    required this.avatarUrl,
    required this.countryCode,
    required this.defaultGroup,
    required this.id,
    required this.isActive,
    required this.isBot,
    required this.isDeleted,
    required this.isOnline,
    required this.isSupporter,
    required this.lastVisit,
    required this.pmFriendsOnly,
    required this.profileColor,
    required this.username,
  });

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);
}
