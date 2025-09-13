import 'package:json_annotation/json_annotation.dart';

part 'user_profilebanner_dto.g.dart';

@JsonSerializable(createToJson: false)
class UserProfilebannerDto {
  final int id;

  @JsonKey(name: 'tournament_id')
  final int tournamentId;

  final String? image;

  @JsonKey(name: 'image@2x')
  final String? image2x;

  UserProfilebannerDto({
    required this.id,
    required this.tournamentId,
    required this.image,
    required this.image2x,
  });

  factory UserProfilebannerDto.fromJson(Map<String, dynamic> json) => _$UserProfilebannerDtoFromJson(json);
}
