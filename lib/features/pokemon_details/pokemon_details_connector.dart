import 'package:pokedex/api/model/pokemon.dart';
import 'package:pokedex/features/pokemon_details/pokemon_details_page.dart';
import 'package:pokedex/features/pokemon_details/pokemon_details_vm.dart';
import 'package:pokedex/state/action/pokemons_action.dart';
import 'package:pokedex/state/app_state.dart';

import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';

class PokemonDetailsConnector extends StatelessWidget {
  const PokemonDetailsConnector({
    required this.pokemon,
    Key? key,
  }) : super(key: key);

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, PokemonDetailsVm>(
      vm: () => PokemonDetailsVmFactory(),
      onInit: (store) => store.dispatchAsync(GetPokemonDetailsAction(pokemonName: pokemon.name)),
      onDispose: (store) => store.dispatch(ClearPokemonDetailsAction()),
      builder: (context, vm) => PokemonDetailsPage(
        pokemonDetails: vm.pokemonDetails,
        pokemon: pokemon,
      ),
    );
  }
}
