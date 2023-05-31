import 'package:freezed_annotation/freezed_annotation.dart';

part 'stat_details.freezed.dart';

part 'stat_details.g.dart';

@freezed
class StatDetails with _$StatDetails {
  factory StatDetails({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'url') required String url,
  }) = _StatDetails;

  factory StatDetails.fromJson(Map<String, dynamic> json) => _$StatDetailsFromJson(json);
}
