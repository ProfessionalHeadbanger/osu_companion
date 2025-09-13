import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum BeatmapPackTypeDto {
  @JsonValue('S')
  standard('S'),

  @JsonValue('F')
  featured('F'),

  @JsonValue('P')
  tournament('P'),

  @JsonValue('L')
  loved('L'),

  @JsonValue('R')
  chart('R'),

  @JsonValue('T')
  theme('T'),

  @JsonValue('A')
  artist('A'),

  @JsonValue('other')
  other('other');

  const BeatmapPackTypeDto(this.json);

  factory BeatmapPackTypeDto.fromJson(String json) =>
      values.firstWhere((value) => value.json == json, orElse: () => other);

  final String? json;

  String? toJson() => json;

  String get fullName {
    switch (this) {
      case BeatmapPackTypeDto.standard:
        return 'Standard Pack';
      case BeatmapPackTypeDto.featured:
        return 'Featured Artist Pack';
      case BeatmapPackTypeDto.tournament:
        return 'Tournament Pack';
      case BeatmapPackTypeDto.loved:
        return 'Loved Pack';
      case BeatmapPackTypeDto.chart:
        return 'Chart Pack';
      case BeatmapPackTypeDto.theme:
        return 'Theme Pack';
      case BeatmapPackTypeDto.artist:
        return 'Artist Pack';
      case BeatmapPackTypeDto.other:
        return 'Other Pack';
    }
  }
}
