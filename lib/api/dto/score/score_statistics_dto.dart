import 'package:json_annotation/json_annotation.dart';

part 'score_statistics_dto.g.dart';

@JsonSerializable()
class ScoreStatisticsDto {
  int? ok;
  int? meh;
  int? miss;
  int? great;
  int? ignoreHit;
  int? ignoreMiss;
  int? smallBonus;
  int? largeTickHit;
  int? largeTickMiss;
  int? sliderTailHit;
  int? largeBonus;

  ScoreStatisticsDto({
    this.ok,
    this.meh,
    this.miss,
    this.great,
    this.ignoreHit,
    this.ignoreMiss,
    this.smallBonus,
    this.largeTickHit,
    this.largeTickMiss,
    this.sliderTailHit,
    this.largeBonus,
  });

  factory ScoreStatisticsDto.fromJson(Map<String, dynamic> json) => _$ScoreStatisticsDtoFromJson(json);
}
