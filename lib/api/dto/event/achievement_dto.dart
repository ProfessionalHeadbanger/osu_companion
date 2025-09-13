import 'package:json_annotation/json_annotation.dart';

part 'achievement_dto.g.dart';

@JsonSerializable()
class AchievementDto {
  @JsonKey(name: 'icon_url')
  final String? iconUrl;

  final int? id;

  final String? name;

  final String? grouping;

  final int? ordering;

  final String? slug;

  final String? description;

  final String? mode;

  final String? instructions;

  AchievementDto({
    this.iconUrl,
    this.id,
    this.name,
    this.grouping,
    this.ordering,
    this.slug,
    this.description,
    this.mode,
    this.instructions,
  });

  factory AchievementDto.fromJson(Map<String, dynamic> json) => _$AchievementDtoFromJson(json);
}
