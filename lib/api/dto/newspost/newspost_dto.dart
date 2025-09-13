import 'package:json_annotation/json_annotation.dart';
import 'package:osu_companion/api/dto/newspost/navigation_dto.dart';

part 'newspost_dto.g.dart';

@JsonSerializable(createToJson: false)
class NewspostDto {
  // required
  final String author;

  @JsonKey(name: 'edit_url')
  final String editUrl;

  @JsonKey(name: 'first_image')
  final String? firstImage;

  @JsonKey(name: 'first_image@2x')
  final String? firstImage2x;

  final int id;

  @JsonKey(name: 'published_at')
  final DateTime publishedAt;

  final String slug;

  final String title;

  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  // optional
  final String? content;

  final NavigationDto? navigation;

  final String? preview;

  const NewspostDto({
    required this.author,
    required this.editUrl,
    required this.id,
    required this.publishedAt,
    required this.slug,
    required this.title,
    required this.updatedAt,
    required this.firstImage,
    required this.firstImage2x,
    this.content,
    this.navigation,
    this.preview,
  });

  factory NewspostDto.fromJson(Map<String, dynamic> json) => _$NewspostDtoFromJson(json);
}
