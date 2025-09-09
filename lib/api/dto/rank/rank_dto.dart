import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum RankDto {
  @JsonValue(-2)
  graveyard(-2),

  @JsonValue(-1)
  wip(-1),

  @JsonValue(0)
  pending(0),

  @JsonValue(1)
  ranked(1),

  @JsonValue(2)
  approved(2),

  @JsonValue(3)
  qualified(3),

  @JsonValue(4)
  loved(4),

  @JsonValue(-3)
  other(-3);

  const RankDto(this.json);

  final int json;

  int toJson() => json;

  factory RankDto.fromJson(json) {
    if (json is int) {
      return RankDto.values.firstWhere(
        (value) => value.json == json,
        orElse: () => RankDto.other,
      );
    } else if (json is String) {
      return RankDto.values.firstWhere(
        (value) => value.name.toLowerCase() == json.toLowerCase(),
        orElse: () => RankDto.other,
      );
    }
    return RankDto.other;
  }
}
