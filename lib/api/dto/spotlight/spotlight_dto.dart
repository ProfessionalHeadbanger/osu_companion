import 'package:json_annotation/json_annotation.dart';

part 'spotlight_dto.g.dart';

@JsonSerializable()
class SpotlightDto {
  @JsonKey(name: 'end_date')
  final DateTime endDate;

  final int id;

  @JsonKey(name: 'mode_specific')
  final bool modeSpecific;

  @JsonKey(name: 'participant_count')
  final int? participantCount;

  final String name;

  @JsonKey(name: 'start_date')
  final DateTime startDate;

  final String type;

  SpotlightDto({
    required this.endDate,
    required this.id,
    required this.modeSpecific,
    required this.participantCount,
    required this.name,
    required this.startDate,
    required this.type,
  });

  factory SpotlightDto.fromJson(Map<String, dynamic> json) => _$SpotlightDtoFromJson(json);
}
