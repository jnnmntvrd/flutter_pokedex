import 'package:pokedex/api/model/move_details.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'move.freezed.dart';

part 'move.g.dart';

@freezed
class Move with _$Move {
  factory Move({
    @JsonKey(name: 'move') required MoveDetails move,
  }) = _Move;

  factory Move.fromJson(Map<String, dynamic> json) => _$MoveFromJson(json);
}
