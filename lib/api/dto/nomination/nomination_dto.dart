import 'package:json_annotation/json_annotation.dart';
import 'package:osu_companion/api/dto/ruleset/ruleset_dto.dart';

part 'nomination_dto.g.dart';

@JsonSerializable(createToJson: false)
class NominationDto {
  @JsonKey(name: 'beatmapset_id')
  final int beatmapsetId;

  final List<RulesetDto> rulesets;

  final bool reset;

  @JsonKey(name: 'user_id')
  final int userId;

  const NominationDto({
    required this.beatmapsetId,
    required this.rulesets,
    required this.reset,
    required this.userId,
  });

  factory NominationDto.fromJson(Map<String, dynamic> json) => _$NominationDtoFromJson(json);
}
