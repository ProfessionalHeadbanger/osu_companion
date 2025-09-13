import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum EventTypeDto {
  @JsonValue('achievement')
  achievement('achievement'),

  @JsonValue('beatmap_playcount')
  beatmapPlaycount('beatmapPlaycount'),

  @JsonValue('beatmapset_approve')
  beatmapsetApprove('beatmapsetApprove'),

  @JsonValue('beatmapset_delete')
  beatmapsetDelete('beatmapsetDelete'),

  @JsonValue('beatmapset_revive')
  beatmapsetRevive('beatmapsetRevive'),

  @JsonValue('beatmapset_update')
  beatmapsetUpdate('beatmapsetUpdate'),

  @JsonValue('beatmapset_upload')
  beatmapsetUpload('beatmapsetUpload'),

  @JsonValue('rank')
  rank('rank'),

  @JsonValue('rank_lost')
  rankLost('rankLost'),

  @JsonValue('user_support_again')
  userSupportAgain('userSupportAgain'),

  @JsonValue('user_support_first')
  userSupportFirst('userSupportFirst'),

  @JsonValue('user_support_gift')
  userSupportGift('userSupportGift'),

  @JsonValue('username_change')
  usernameChange('usernameChange'),

  @JsonValue('other')
  other('other');

  const EventTypeDto(this.json);

  factory EventTypeDto.fromJson(String json) => values.firstWhere((value) => value.json == json, orElse: () => other);

  final String? json;

  String? toJson() => json;
}
