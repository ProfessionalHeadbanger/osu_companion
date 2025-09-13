import 'package:json_annotation/json_annotation.dart';

part 'github_user_dto.g.dart';

@JsonSerializable()
class GithubUserDto {
  @JsonKey(name: 'display_name')
  final String displayName;

  @JsonKey(name: 'github_url')
  final String? githubUrl;

  @JsonKey(name: 'github_username')
  final String? githubUsername;

  final int? id;

  @JsonKey(name: 'osu_username')
  final String? osuUsername;

  @JsonKey(name: 'user_id')
  final int? userId;

  @JsonKey(name: 'user_url')
  final String? userUrl;

  GithubUserDto({
    required this.displayName,
    required this.githubUrl,
    required this.githubUsername,
    required this.id,
    required this.osuUsername,
    required this.userId,
    required this.userUrl,
  });

  factory GithubUserDto.fromJson(Map<String, dynamic> json) => _$GithubUserDtoFromJson(json);
}
