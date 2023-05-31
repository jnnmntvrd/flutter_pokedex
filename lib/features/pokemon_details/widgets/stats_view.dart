import 'package:pokedex/api/model/stat.dart';
import 'package:pokedex/utils/constants.dart';
import 'package:pokedex/utils/theme.dart';

import 'package:flutter/material.dart';

import 'package:dartx/dartx.dart';

class StatsView extends StatelessWidget {
  const StatsView({
    required this.stats,
    Key? key,
  }) : super(key: key);

  final List<Stat>? stats;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: ListView.builder(
        itemCount: stats?.length,
        itemBuilder: (context, index) {
          final stat = stats?[index];
          return Column(
            children: [
              Row(
                children: [
                  Text(
                    stat?.stat.name.capitalize() ?? emptyString,
                    style: labelTextStyle,
                  ),
                  pokemonDetailsVerticalSpace,
                  Text(
                    ': ${stat!.baseStat}',
                    style: detailTextStyle,
                  )
                ],
              ),
              pokemonDetailsHorizontalSpace,
              LinearProgressIndicator(
                backgroundColor: Colors.white,
                color: Colors.cyan,
                minHeight: 20.0,
                value: stat.baseStat / 100,
              ),
              pokemonDetailsHorizontalSpace,
            ],
          );
        },
      ),
    );
  }
}
