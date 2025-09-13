import 'package:json_annotation/json_annotation.dart';

part 'user_cover_dto.g.dart';

@JsonSerializable(createToJson: false)
class UserCoverDto {
  final String? customUrl;
  final String? url;
  final String? id;

  UserCoverDto({
    this.customUrl,
    this.url,
    this.id,
  });

  factory UserCoverDto.fromJson(Map<String, dynamic> json) => _$UserCoverDtoFromJson(json);
}
