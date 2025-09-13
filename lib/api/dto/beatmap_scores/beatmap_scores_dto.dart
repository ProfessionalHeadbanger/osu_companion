import 'package:json_annotation/json_annotation.dart';
import 'package:osu_companion/api/dto/beatmap_user_score/beatmap_user_score_dto.dart';

part 'beatmap_scores_dto.g.dart';

@JsonSerializable(createToJson: false)
class BeatmapScoresDto {
  final List<BeatmapUserScoreDto> scores;

  final BeatmapUserScoreDto? userScore;

  BeatmapScoresDto({required this.scores, this.userScore});

  factory BeatmapScoresDto.fromJson(Map<String, dynamic> json) => _$BeatmapScoresDtoFromJson(json);
}
