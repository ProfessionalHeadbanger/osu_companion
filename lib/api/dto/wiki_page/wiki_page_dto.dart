import 'package:json_annotation/json_annotation.dart';

part 'wiki_page_dto.g.dart';

@JsonSerializable(createToJson: false)
class WikiPageDto {
  @JsonKey(name: 'available_locales')
  final List<String> availableLocales;

  final String layout;

  final String locale;

  final String markdown;

  final String path;

  final String? subtitle;

  final List<String> tags;

  final String title;

  WikiPageDto({
    required this.availableLocales,
    required this.layout,
    required this.locale,
    required this.markdown,
    required this.path,
    required this.tags,
    required this.title,
    this.subtitle,
  });

  factory WikiPageDto.fromJson(Map<String, dynamic> json) => _$WikiPageDtoFromJson(json);
}
