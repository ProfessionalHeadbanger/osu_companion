import 'package:json_annotation/json_annotation.dart';
import 'package:osu_companion/api/dto/spotlight/spotlight_dto.dart';

part 'spotlights_dto.g.dart';

@JsonSerializable(createToJson: false)
class SpotlightsDto {
  final List<SpotlightDto> spotlights;

  SpotlightsDto({required this.spotlights});

  factory SpotlightsDto.fromJson(Map<String, dynamic> json) => _$SpotlightsDtoFromJson(json);
}
