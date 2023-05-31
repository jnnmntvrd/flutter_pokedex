import 'package:pokedex/api/model/move.dart';
import 'package:pokedex/utils/constants.dart';
import 'package:pokedex/utils/theme.dart';

import 'package:flutter/material.dart';

import 'package:dartx/dartx.dart';

class MovesView extends StatelessWidget {
  const MovesView({
    required this.moves,
    Key? key,
  }) : super(key: key);

  final List<Move>? moves;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2,
        ),
        itemCount: moves?.length,
        itemBuilder: (context, index) {
          final move = moves?[index].move;
          return Chip(
            label: Text(
              move?.name.capitalize() ?? emptyString,
              style: detailTextStyle,
            ),
          );
        },
      ),
    );
  }
}
