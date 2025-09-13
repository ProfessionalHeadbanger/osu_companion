import 'package:json_annotation/json_annotation.dart';

part 'user_monthly_playcount_dto.g.dart';

@JsonSerializable(createToJson: false)
class UserMonthlyPlaycountDto {
  final DateTime? startDate;
  final int? count;

  UserMonthlyPlaycountDto({this.startDate, this.count});

  factory UserMonthlyPlaycountDto.fromJson(Map<String, dynamic> json) => _$UserMonthlyPlaycountDtoFromJson(json);
}
