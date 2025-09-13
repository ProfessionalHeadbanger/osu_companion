import 'package:json_annotation/json_annotation.dart';

part 'user_level_dto.g.dart';

@JsonSerializable(createToJson: false)
class UserLevelDto {
  final int? current;
  final int? progress;

  UserLevelDto({
    this.current,
    this.progress,
  });

  factory UserLevelDto.fromJson(Map<String, dynamic> json) => _$UserLevelDtoFromJson(json);
}
