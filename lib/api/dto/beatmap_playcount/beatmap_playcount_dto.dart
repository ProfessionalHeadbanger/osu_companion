import 'package:json_annotation/json_annotation.dart';
import 'package:osu_companion/api/dto/beatmap/beatmap_dto.dart';
import 'package:osu_companion/api/dto/beatmapset/beatmapset_dto.dart';

part 'beatmap_playcount_dto.g.dart';

@JsonSerializable(createToJson: false)
class BeatmapPlaycountDto {
  @JsonKey(name: 'beatmap_id')
  final int beatmapId;

  final BeatmapDto? beatmap;

  final BeatmapsetDto? beatmapset;

  final int count;

  const BeatmapPlaycountDto({
    required this.beatmapId,
    required this.count,
    this.beatmap,
    this.beatmapset,
  });

  factory BeatmapPlaycountDto.fromJson(Map<String, dynamic> json) => _$BeatmapPlaycountDtoFromJson(json);
}