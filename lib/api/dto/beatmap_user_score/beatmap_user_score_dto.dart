import 'package:json_annotation/json_annotation.dart';
import 'package:osu_companion/api/dto/score/score_dto.dart';

part 'beatmap_user_score_dto.g.dart';

@JsonSerializable(createToJson: false)
class BeatmapUserScoreDto {
  final int position;

  final ScoreDto score;

  BeatmapUserScoreDto({required this.position, required this.score});

  factory BeatmapUserScoreDto.fromJson(Map<String, dynamic> json) => _$BeatmapUserScoreDtoFromJson(json);
}
