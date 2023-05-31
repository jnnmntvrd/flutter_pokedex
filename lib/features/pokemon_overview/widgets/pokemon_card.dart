import 'package:dartx/dartx.dart';
import 'package:pokedex/api/model/pokemon.dart';
import 'package:pokedex/utils/extensions/string_extension.dart';

import 'package:flutter/material.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({
    required this.pokemon,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  final Pokemon pokemon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: const EdgeInsets.all(8.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              pokemon.name.capitalize(),
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 150.0,
              child: Image.network(pokemon.url.toCustomUrl),
            ),
          ],
        ),
      ),
    );
  }
}
