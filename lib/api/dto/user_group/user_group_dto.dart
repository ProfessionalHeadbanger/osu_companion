import 'package:json_annotation/json_annotation.dart';

part 'user_group_dto.g.dart';

@JsonSerializable(createToJson: false)
class UserGroupDto {
  final String? id;
  final String? identifier;
  final String? name;
  final String? shortName;
  final String? description;
  final String? colour;

  @JsonKey(name: 'has_listing')
  final bool? hasListing;

  @JsonKey(name: 'has_playmodes')
  final bool? hasPlaymodes;

  @JsonKey(name: 'playmodes')
  final List<String>? playmodes;

  UserGroupDto({
    this.id,
    this.identifier,
    this.name,
    this.shortName,
    this.description,
    this.colour,
    this.hasListing,
    this.hasPlaymodes,
    this.playmodes,
  });

  factory UserGroupDto.fromJson(Map<String, dynamic> json) => _$UserGroupDtoFromJson(json);
}
