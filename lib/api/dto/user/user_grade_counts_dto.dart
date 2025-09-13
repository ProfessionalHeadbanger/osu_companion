import 'package:json_annotation/json_annotation.dart';

part 'user_grade_counts_dto.g.dart';

@JsonSerializable(createToJson: false)
class UserGradeCountsDto {
  final int? ss;
  final int? ssh;
  final int? s;
  final int? sh;
  final int? a;

  UserGradeCountsDto({
    this.ss,
    this.ssh,
    this.s,
    this.sh,
    this.a,
  });

  factory UserGradeCountsDto.fromJson(Map<String, dynamic> json) => _$UserGradeCountsDtoFromJson(json);
}
