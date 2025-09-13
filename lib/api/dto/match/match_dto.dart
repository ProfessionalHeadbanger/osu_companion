import 'package:json_annotation/json_annotation.dart';

part 'match_dto.g.dart';

@JsonSerializable(createToJson: false)
class MatchDto {
  final int id;

  @JsonKey(name: 'start_time')
  final DateTime startTime;

  @JsonKey(name: 'end_time')
  final DateTime? endTime;

  final String name;

  MatchDto({
    required this.id,
    required this.startTime,
    required this.name,
    this.endTime,
  });

  factory MatchDto.fromJson(Map<String, dynamic> json) => _$MatchDtoFromJson(json);
}
