import 'package:json_annotation/json_annotation.dart';
import 'package:osu_companion/api/dto/score/mod_settings_dto.dart';

part 'mod_dto.g.dart';

@JsonSerializable(createToJson: false)
class ModDto {
  String acronym;
  ModSettings? settings;

  ModDto({required this.acronym, this.settings});

  factory ModDto.fromJson(Map<String, dynamic> json) => _$ModDtoFromJson(json);
}
