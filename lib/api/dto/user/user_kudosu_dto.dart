import 'package:json_annotation/json_annotation.dart';

part 'user_kudosu_dto.g.dart';

@JsonSerializable(createToJson: false)
class UserKudosuDto {
  final int? total;
  final int? available;

  UserKudosuDto({
    this.total,
    this.available,
  });

  factory UserKudosuDto.fromJson(Map<String, dynamic> json) => _$UserKudosuDtoFromJson(json);
}
