import 'package:pokedex/api/model/ability.dart';
import 'package:pokedex/utils/constants.dart';

import 'package:flutter/material.dart';

import 'package:dartx/dartx.dart';
import 'package:pokedex/utils/theme.dart';

class AbilitiesView extends StatelessWidget {
  const AbilitiesView({
    required this.abilities,
    Key? key,
  }) : super(key: key);

  final List<Ability>? abilities;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: GridView.count(
        crossAxisCount: 2,
        children: [
          for (var ability in abilities!) Chip(label: Text(ability.ability.name.capitalize())),
        ],
      ),
    );
  }
}
