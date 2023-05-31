import 'package:pokedex/features/pokemon_overview/pokemon_overview_page.dart';
import 'package:pokedex/features/pokemon_overview/pokemon_overview_vm.dart';
import 'package:pokedex/state/action/pokemons_action.dart';
import 'package:pokedex/state/app_state.dart';

import 'package:flutter/material.dart';

import 'package:async_redux/async_redux.dart';

class PokemonOverviewConnector extends StatelessWidget {
  const PokemonOverviewConnector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, PokemonOverviewVm>(
      vm: () => PokemonOverviewVmFactory(),
      onInit: (store) => store.dispatchAsync(GetPokemonsAction()),
      builder: (context, vm) => PokemonOverviewPage(
        pokemons: vm.pokemons,
        searchPokemons: vm.searchPokemons,
        onSearch: vm.onSearch,
        onClear: vm.onClear,
      ),
    );
  }
}
