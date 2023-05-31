import 'package:pokedex/api/model/pokemon.dart';
import 'package:pokedex/api/model/pokemon_details.dart';
import 'package:pokedex/utils/constants.dart';
import 'package:pokedex/utils/extensions/string_extension.dart';
import 'package:pokedex/utils/theme.dart';

import 'package:flutter/material.dart';

import 'package:dartx/dartx.dart';

class GeneralInfoView extends StatelessWidget {
  const GeneralInfoView({
    required this.pokemon,
    required this.pokemonDetails,
    Key? key,
  }) : super(key: key);

  final Pokemon pokemon;
  final PokemonDetails? pokemonDetails;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 250.0,
            child: Image.network(pokemon.url.toCustomUrl),
          ),
          pokemonDetailsHorizontalSpace,
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      nameLabel,
                      style: labelTextStyle,
                    ),
                    pokemonDetailsVerticalSpace,
                    Text(
                      pokemon.name.capitalize(),
                      style: detailTextStyle,
                    ),
                  ],
                ),
                pokemonDetailsHorizontalSpace,
                Row(
                  children: [
                    const Text(
                      heightLabel,
                      style: labelTextStyle,
                    ),
                    pokemonDetailsVerticalSpace,
                    Text(
                      '${pokemonDetails?.height} cm',
                      style: detailTextStyle,
                    ),
                  ],
                ),
                pokemonDetailsHorizontalSpace,
                Row(
                  children: [
                    const Text(
                      weightLabel,
                      style: labelTextStyle,
                    ),
                    pokemonDetailsVerticalSpace,
                    Text(
                      '${pokemonDetails?.weight} kg',
                      style: detailTextStyle,
                    ),
                  ],
                ),
                pokemonDetailsHorizontalSpace,
                Row(
                  children: [
                    const Text(
                      baseExperienceLabel,
                      style: labelTextStyle,
                    ),
                    pokemonDetailsVerticalSpace,
                    Text(
                      '${pokemonDetails?.baseExperience}',
                      style: detailTextStyle,
                    ),
                  ],
                ),
                pokemonDetailsHorizontalSpace,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
