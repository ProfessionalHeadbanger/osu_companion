import 'package:json_annotation/json_annotation.dart';

part 'user_rank_history_dto.g.dart';

@JsonSerializable(createToJson: false)
class UserRankHistoryDto {
  final String? mode;
  final bool? dataAvailable;
  final List<int>? data;

  UserRankHistoryDto({this.mode, this.dataAvailable, this.data});

  factory UserRankHistoryDto.fromJson(Map<String, dynamic> json) => _$UserRankHistoryDtoFromJson(json);
}
