import 'package:json_annotation/json_annotation.dart';
import 'package:osu_companion/api/dto/newspost/newspost_dto.dart';

part 'navigation_dto.g.dart';

@JsonSerializable(createToJson: false)
class NavigationDto {
  final NewspostDto? previous;
  final NewspostDto? next;

  const NavigationDto({
    this.previous,
    this.next,
  });

  factory NavigationDto.fromJson(Map<String, dynamic> json) => _$NavigationDtoFromJson(json);
}
