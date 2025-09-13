import 'package:json_annotation/json_annotation.dart';
import 'package:osu_companion/api/dto/event/achievement_dto.dart';
import 'package:osu_companion/api/dto/event/event_type_dto.dart';
import 'package:osu_companion/api/dto/rank/rank_dto.dart';
import 'package:osu_companion/api/dto/ruleset/ruleset_dto.dart';

part 'event_dto.g.dart';

@JsonSerializable(createToJson: false)
class EventDto {
  //required
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  final int id;

  final EventTypeDto type;

  // obj beatmap
  @JsonKey(name: 'beatmap.title')
  final String? beatmapTitle;

  @JsonKey(name: 'beatmap.url')
  final String? beatmapUrl;

  // obj beatmapset
  @JsonKey(name: 'beatmapset.title')
  final String? beatmapsetTitle;

  @JsonKey(name: 'beatmapset.url')
  final String? beatmapsetUrl;

  // obj user
  @JsonKey(name: 'user.username')
  final String? userName;

  @JsonKey(name: 'user.url')
  final String? userUrl;

  @JsonKey(name: 'user.previous_username')
  final String? userPreviousName;

  //achievement
  final AchievementDto? achievement;

  //beatmapPlaycount
  final int? count;

  //beatmapsetApprove
  final RankDto? approval;

  //rank
  @JsonKey(name: 'score_rank')
  final String? scoreRank;

  final int? rank;

  final RulesetDto? mode;

  EventDto({
    required this.createdAt,
    required this.id,
    required this.type,
    this.beatmapTitle,
    this.beatmapUrl,
    this.beatmapsetTitle,
    this.beatmapsetUrl,
    this.userName,
    this.userUrl,
    this.userPreviousName,
    this.achievement,
    this.count,
    this.approval,
    this.scoreRank,
    this.rank,
    this.mode,
  });

  factory EventDto.fromJson(Map<String, dynamic> json) => _$EventDtoFromJson(json);
}
