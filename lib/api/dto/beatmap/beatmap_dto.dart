import 'package:json_annotation/json_annotation.dart';
import 'package:osu_companion/api/dto/ruleset/ruleset_dto.dart';

part 'beatmap_dto.g.dart';

@JsonSerializable(createToJson: false)
class BeatmapDto {
  @JsonKey(name: 'beatmapset_id')
  final int beatmapsetId;

  @JsonKey(name: 'difficulty_rating')
  final double difficultyRating;

  final int id;

  final RulesetDto mode;

  final String status;

  @JsonKey(name: 'total_length')
  final int totalLength;

  @JsonKey(name: 'user_id')
  final int userId;

  final String version;

  const BeatmapDto({
    required this.beatmapsetId,
    required this.difficultyRating,
    required this.id,
    required this.mode,
    required this.status,
    required this.totalLength,
    required this.userId,
    required this.version,
  });

  factory BeatmapDto.fromJson(Map<String, dynamic> json) => _$BeatmapDtoFromJson(json);
}
