import 'package:json_annotation/json_annotation.dart';
import 'package:osu_companion/api/dto/beatmap_pack/beatmap_pack_type_dto.dart';
import 'package:osu_companion/api/dto/beatmapset/beatmapset_dto.dart';
import 'package:osu_companion/api/dto/ruleset/ruleset_dto.dart';

part 'beatmap_pack_dto.g.dart';

@JsonSerializable(createToJson: false)
class BeatmapPackDto {
  //required
  final String author;

  final DateTime date;

  final String name;

  @JsonKey(name: 'no_diff_reduction')
  final bool noDiffReduction;

  @JsonKey(name: 'ruleset_id')
  final RulesetDto ruleset;

  final BeatmapPackTypeDto tag;

  final String url;

  //optional
  final List<BeatmapsetDto>? beatmapsets;

  @JsonKey(name: 'user_completion_data.beatmapset_id')
  final List<int>? userCompletionDataBeatmapsetId;

  @JsonKey(name: 'user_completion_data.completed_at')
  final bool? userCompletionDataCompleted;

  BeatmapPackDto({
    required this.author,
    required this.date,
    required this.name,
    required this.noDiffReduction,
    required this.ruleset,
    required this.tag,
    required this.url,
    this.beatmapsets,
    this.userCompletionDataBeatmapsetId,
    this.userCompletionDataCompleted,
  });

  factory BeatmapPackDto.fromJson(Map<String, dynamic> json) => _$BeatmapPackDtoFromJson(json);
}
