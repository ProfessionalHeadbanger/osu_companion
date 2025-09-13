import 'package:json_annotation/json_annotation.dart';

part 'user_badge_dto.g.dart';

@JsonSerializable(createToJson: false)
class UserBadgeDto {
  final DateTime? awardedAt;
  final String? description;
  final String? imageUrl;
  final String? url;

  UserBadgeDto({
    this.awardedAt,
    this.description,
    this.imageUrl,
    this.url,
  });

  factory UserBadgeDto.fromJson(Map<String, dynamic> json) => _$UserBadgeDtoFromJson(json);
}
