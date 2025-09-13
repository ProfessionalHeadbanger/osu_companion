import 'package:json_annotation/json_annotation.dart';

part 'user_rank_highest_dto.g.dart';

@JsonSerializable(createToJson: false)
class UserRankHighestDto {
  final int? rank;

  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  UserRankHighestDto({this.rank, this.updatedAt});

  factory UserRankHighestDto.fromJson(Map<String, dynamic> json) => _$UserRankHighestDtoFromJson(json);
}
