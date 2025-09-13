import 'package:json_annotation/json_annotation.dart';

part 'mod_settings_dto.g.dart';

@JsonSerializable(createToJson: false)
class ModSettings {
  @JsonKey(name: 'speed_change')
  double? speedChange;

  @JsonKey(name: 'adjust_pitch')
  bool? adjustPitch;

  @JsonKey(name: 'drain_rate')
  double? drainRate;

  @JsonKey(name: 'circle_size')
  double? circleSize;

  @JsonKey(name: 'approach_rate')
  double? approachRate;

  @JsonKey(name: 'overall_difficulty')
  double? overallDifficulty;

  ModSettings({
    this.speedChange,
    this.adjustPitch,
    this.drainRate,
    this.circleSize,
    this.approachRate,
    this.overallDifficulty,
  });

  factory ModSettings.fromJson(Map<String, dynamic> json) => _$ModSettingsFromJson(json);
}
