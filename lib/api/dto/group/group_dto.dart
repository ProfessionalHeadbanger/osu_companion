import 'package:json_annotation/json_annotation.dart';

part 'group_dto.g.dart';

@JsonSerializable()
class GroupDto {
  final String? colour;

  @JsonKey(name: 'has_listing')
  final bool hasListing;

  @JsonKey(name: 'has_playmodes')
  final bool hasPlaymodes;

  final int id;

  final String identifier;

  @JsonKey(name: 'is_probationary')
  final bool isProbationary;

  final String name;

  @JsonKey(name: 'short_name')
  final String shortName;

  GroupDto({
    required this.colour,
    required this.hasListing,
    required this.hasPlaymodes,
    required this.id,
    required this.identifier,
    required this.isProbationary,
    required this.name,
    required this.shortName,
  });

  factory GroupDto.fromJson(Map<String, dynamic> json) => _$GroupDtoFromJson(json);
}
