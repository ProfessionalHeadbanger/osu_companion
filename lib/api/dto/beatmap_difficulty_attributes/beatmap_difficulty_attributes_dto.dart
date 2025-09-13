import 'package:json_annotation/json_annotation.dart';

part 'beatmap_difficulty_attributes_dto.g.dart';

@JsonSerializable(createToJson: false)
class BeatmapDifficultyAttributesDto {
  // required
  @JsonKey(name: 'star_rating')
  final double starRating;

  @JsonKey(name: 'max_combo')
  final int maxCombo;

  // osu!standard only
  @JsonKey(name: 'aim_difficulty')
  final double? aimDifficulty;

  @JsonKey(name: 'aim_difficulty_slider_count')
  final double? aimDifficultySliderCount;

  @JsonKey(name: 'speed_difficulty')
  final double? speedDifficulty;

  @JsonKey(name: 'speed_note_count')
  final double? speedNoteCount;

  @JsonKey(name: 'slider_factor')
  final double? sliderFactor;

  @JsonKey(name: 'aim_difficulty_strain_count')
  final double? aimDifficultyStrainCount;

  @JsonKey(name: 'speed_difficulty_strain_count')
  final double? speedDifficultyStrainCount;

  // osu!taiko only
  @JsonKey(name: 'mono_stamina_factor')
  final double? monoStaminaFactor;

  const BeatmapDifficultyAttributesDto({
    required this.starRating,
    required this.maxCombo,
    this.aimDifficulty,
    this.aimDifficultySliderCount,
    this.speedDifficulty,
    this.speedNoteCount,
    this.sliderFactor,
    this.aimDifficultyStrainCount,
    this.speedDifficultyStrainCount,
    this.monoStaminaFactor,
  });

  factory BeatmapDifficultyAttributesDto.fromJson(Map<String, dynamic> json) =>
      _$BeatmapDifficultyAttributesDtoFromJson(json);
}
