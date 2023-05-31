import 'package:pokedex/api/model/pokemon.dart';
import 'package:pokedex/api/model/pokemon_details.dart';
import 'package:pokedex/features/pokemon_details/widgets/abilities_view.dart';
import 'package:pokedex/features/pokemon_details/widgets/general_info_view.dart';
import 'package:pokedex/features/pokemon_details/widgets/moves_view.dart';
import 'package:pokedex/features/pokemon_details/widgets/stats_view.dart';
import 'package:pokedex/utils/async.dart';
import 'package:pokedex/utils/constants.dart';
import 'package:pokedex/utils/extensions/string_extension.dart';
import 'package:pokedex/utils/theme.dart';

import 'package:flutter/material.dart';
import 'package:dartx/dartx.dart';

class PokemonDetailsPage extends StatelessWidget {
  const PokemonDetailsPage({
    required this.pokemonDetails,
    required this.pokemon,
    Key? key,
  }) : super(key: key);

  final Async<PokemonDetails?> pokemonDetails;
  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          elevation: 0.0,
          bottom: const TabBar(
            tabs: [
              Tab(text: generalLabel),
              Tab(text: abilitiesLabel),
              Tab(text: movesLabel),
              Tab(text: statsLabel),
            ],
          ),
        ),
        body: pokemonDetails.when(
          (data) => TabBarView(
            children: [
              GeneralInfoView(
                pokemonDetails: data,
                pokemon: pokemon,
              ),
              AbilitiesView(abilities: data?.abilities),
              MovesView(moves: data?.moves),
              StatsView(stats: data?.stats),
            ],
          ),
          //     Stack(
          //   children: [
          //     Positioned(
          //       top: 20.0,
          //       left: 20.0,
          //       child: Text(
          //         pokemon.name.capitalize(),
          //         style: nameLabelTextStyle,
          //       ),
          //     ),
          //     Positioned(
          //       bottom: 0.0,
          //       child: Container(
          //         width: 410.0,
          //         height: 550.0,
          //         decoration: const BoxDecoration(
          //           color: Colors.white,
          //           borderRadius: BorderRadius.only(
          //             topLeft: whiteBackgroundRadius,
          //             topRight: whiteBackgroundRadius,
          //           ),
          //         ),
          //         child: Padding(
          //           padding: const EdgeInsets.all(50.0),
          //           child: SingleChildScrollView(
          //             child: Column(
          //               children: [
          //                 GeneralInfoView(pokemonDetails: data),
          //                 AbilitiesView(abilities: data?.abilities),
          //                 MovesView(moves: data?.moves),
          //                 StatsView(stats: data?.stats),
          //               ],
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //     Positioned(
          //       top: 35.0,
          //       left: 100.0,
          //       child: Image.network(
          //         pokemon.url.toCustomUrl,
          //         height: 220.0,
          //         fit: BoxFit.fitHeight,
          //       ),
          //     ),
          //   ],
          // ),
          loading: () => const Center(child: CircularProgressIndicator(color: Colors.white)),
          error: (errorMessage) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              _showSnackBarMessage(
                context: context,
                errorMessage: errorMessage ?? emptyString,
              );
            });
            return const Center(child: Text(noPokemonDetailsAvailableLabel));
          },
        ),
      ),
    );
  }

  void _showSnackBarMessage({
    required BuildContext context,
    required String errorMessage,
  }) {
    final snackBar = SnackBar(content: Text(errorMessage));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
