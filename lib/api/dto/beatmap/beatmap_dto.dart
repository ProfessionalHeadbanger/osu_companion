import 'package:json_annotation/json_annotation.dart';
import 'package:osu_companion/api/dto/beatmap/failtimes_dto.dart';
import 'package:osu_companion/api/dto/beatmap_owner/beatmap_owner_dto.dart';
import 'package:osu_companion/api/dto/beatmapset/beatmapset_dto.dart';
import 'package:osu_companion/api/dto/ruleset/ruleset_dto.dart';

part 'beatmap_dto.g.dart';

@JsonSerializable(createToJson: false)
class BeatmapDto {

  // required
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

  // optional
  final List<BeatmapsetDto>? beatmapset;

  final String? checksum;

  @JsonKey(name: 'current_user_play_count')
  final int? currentUserPlayCount;

  final FailtimesDto? failtimes;

  @JsonKey(name: 'max_combo')
  final int? maxCombo;

  final List<BeatmapOwnerDto>? owners;

  const BeatmapDto({
    required this.beatmapsetId,
    required this.difficultyRating,
    required this.id,
    required this.mode,
    required this.status,
    required this.totalLength,
    required this.userId,
    required this.version,
    this.beatmapset,
    this.checksum,
    this.currentUserPlayCount,
    this.failtimes,
    this.maxCombo,
    this.owners
  });

  factory BeatmapDto.fromJson(Map<String, dynamic> json) => _$BeatmapDtoFromJson(json);
}
