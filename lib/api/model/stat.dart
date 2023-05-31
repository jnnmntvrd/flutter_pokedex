import 'package:pokedex/api/model/stat_details.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'stat.freezed.dart';

part 'stat.g.dart';

@freezed
class Stat with _$Stat {
  factory Stat({
    @JsonKey(name: 'base_stat') required int baseStat,
    @JsonKey(name: 'effort') required int effort,
    @JsonKey(name: 'stat') required StatDetails stat,
  }) = _Stat;

  factory Stat.fromJson(Map<String, dynamic> json) => _$StatFromJson(json);
}
