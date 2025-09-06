import 'package:json_annotation/json_annotation.dart';

part 'failtimes_dto.g.dart';

@JsonSerializable(createToJson: false)
class FailtimesDto {
  final List<int>? exit;
  final List<int>? fail;

  const FailtimesDto({
    this.exit,
    this.fail,
  });

  factory FailtimesDto.fromJson(Map<String, dynamic> json) => _$FailtimesDtoFromJson(json);
}
