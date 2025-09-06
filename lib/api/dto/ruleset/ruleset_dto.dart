import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum RulesetDto {
  @JsonValue('osu!catch')
  fruits('osu!catch'),

  @JsonValue('osu!mania')
  mania('osu!mania'),

  @JsonValue('osu!standard')
  osu('osu!'),

  @JsonValue('osu!taiko')
  taiko('osu!taiko'),

  @JsonValue('other')
  other('other');

  const RulesetDto(this.json);

  factory RulesetDto.fromJson(String json) => values.firstWhere((value) => value.json == json, orElse: () => other);

  final String? json;

  String? toJson() => json;
}
