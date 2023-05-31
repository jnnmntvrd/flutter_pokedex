import 'package:pokedex/api/model/ability_details.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ability.freezed.dart';

part 'ability.g.dart';

@freezed
class Ability with _$Ability {
  factory Ability({
    @JsonKey(name: 'ability') required AbilityDetails ability,
  }) = _Ability;

  factory Ability.fromJson(Map<String, dynamic> json) => _$AbilityFromJson(json);
}
