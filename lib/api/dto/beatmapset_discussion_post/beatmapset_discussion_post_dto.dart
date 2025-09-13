import 'package:json_annotation/json_annotation.dart';

part 'beatmapset_discussion_post_dto.g.dart';

@JsonSerializable()
class BeatmapsetDiscussionPostDto {
  @JsonKey(name: 'beatmapset_discussion_id')
  final int beatmapsetDiscussionId;

  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;

  @JsonKey(name: 'deleted_by_id')
  final int? deletedById;

  final int id;

  @JsonKey(name: 'last_editor_id')
  final int? lastEditorId;

  final String message;

  final bool system;

  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @JsonKey(name: 'user_id')
  final int userId;

  const BeatmapsetDiscussionPostDto({
    required this.beatmapsetDiscussionId,
    required this.createdAt,
    required this.id,
    required this.message,
    required this.system,
    required this.updatedAt,
    required this.userId,
    required this.deletedAt,
    required this.deletedById,
    required this.lastEditorId,
  });

  factory BeatmapsetDiscussionPostDto.fromJson(Map<String, dynamic> json) =>
      _$BeatmapsetDiscussionPostDtoFromJson(json);
}
