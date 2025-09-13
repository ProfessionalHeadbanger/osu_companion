import 'package:json_annotation/json_annotation.dart';

part 'weight_dto.g.dart';

@JsonSerializable(createToJson: false)
class WeightDto {
  final double? pp;

  final double? percent;

  WeightDto({
    this.pp,
    this.percent,
  });

  factory WeightDto.fromJson(Map<String, dynamic> json) => _$WeightDtoFromJson(json);
}
