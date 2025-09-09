import 'package:json_annotation/json_annotation.dart';

part 'beatmap_owner_dto.g.dart';

@JsonSerializable(createToJson: false)
class BeatmapOwnerDto {
  final int id;
  final String name;

  const BeatmapOwnerDto({
    required this.id,
    required this.name,
  });

  factory BeatmapOwnerDto.fromJson(Map<String, dynamic> json) => _$BeatmapOwnerDtoFromJson(json);
}
