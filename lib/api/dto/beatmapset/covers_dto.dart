import 'package:json_annotation/json_annotation.dart';

part 'covers_dto.g.dart';

@JsonSerializable(createToJson: false)
class CoversDto {
  final String cover;

  @JsonKey(name: 'cover@2x')
  final String cover2x;

  final String card;

  @JsonKey(name: 'card@2x')
  final String cardx2;

  final String list;

  @JsonKey(name: 'list@2x')
  final String list2x;

  final String slimcover;

  @JsonKey(name: 'slimcover@2x')
  final String slimcover2x;

  const CoversDto({
    required this.cover,
    required this.cover2x,
    required this.card,
    required this.cardx2,
    required this.list,
    required this.list2x,
    required this.slimcover,
    required this.slimcover2x,
  });

  factory CoversDto.fromJson(Map<String, dynamic> json) => _$CoversDtoFromJson(json);
}
