import 'package:json_annotation/json_annotation.dart';

part 'user_page_dto.g.dart';

@JsonSerializable(createToJson: false)
class UserPageDto {
  final String? html;
  final String? raw;

  UserPageDto({this.html, this.raw});

  factory UserPageDto.fromJson(Map<String, dynamic> json) => _$UserPageDtoFromJson(json);
}
