import 'package:json_annotation/json_annotation.dart';

part 'user_account_history_dto.g.dart';

@JsonSerializable(createToJson: false)
class UserAccountHistoryDto {
  final int? id;
  final String? type;

  @JsonKey(name: 'description')
  final String? description;

  @JsonKey(name: 'permanent')
  final bool? permanent;

  @JsonKey(name: 'timestamp')
  final DateTime? timestamp;

  UserAccountHistoryDto({
    this.id,
    this.type,
    this.description,
    this.permanent,
    this.timestamp,
  });

  factory UserAccountHistoryDto.fromJson(Map<String, dynamic> json) => _$UserAccountHistoryDtoFromJson(json);
}
