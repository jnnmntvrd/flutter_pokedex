import 'package:flutter/material.dart';
import 'package:pokedex/api/model/pokemon.dart';
import 'package:pokedex/features/pokemon_overview/pokemon_overview_connector.dart';
import 'package:pokedex/state/action/pokemons_action.dart';
import 'package:pokedex/state/app_state.dart';
import 'package:pokedex/utils/async.dart';
import 'package:pokedex/utils/constants.dart';

import 'package:async_redux/async_redux.dart';

class PokemonOverviewVmFactory extends VmFactory<AppState, PokemonOverviewConnector> {
  PokemonOverviewVmFactory();

  @override
  Vm fromStore() => PokemonOverviewVm(
        pokemons: _pokemons(),
        searchPokemons: _searchPokemons(),
        onSearch: (searchQuery) => _onSearch(searchQuery),
        onClear: () => _onClearSearch(),
      );

  Async<List<Pokemon>> _pokemons() {
    if (state.wait.isWaitingFor(GetPokemonsAction.key)) return const Async.loading();
    if (state.pokemons.isEmpty) return const Async.error(errorMessage);

    return Async(state.pokemons);
  }

  Async<List<Pokemon>> _searchPokemons() {
    if (state.searchPokemons.isEmpty) return const Async.error('No result found');
    return Async(state.searchPokemons);
  }

  void _onSearch(String searchQuery) {
    searchQuery.isNotEmpty
        ? dispatchSync(SearchPokemonAction(value: searchQuery))
        : dispatchSync(ClearSearchedPokemonsAction());
  }

  void _onClearSearch() {
    dispatchSync(ClearSearchedPokemonsAction());
  }
}

class PokemonOverviewVm extends Vm {
  PokemonOverviewVm({
    required this.pokemons,
    required this.searchPokemons,
    required this.onSearch,
    required this.onClear,
  }) : super(equals: [pokemons, searchPokemons]);

  final Async<List<Pokemon>> pokemons;
  final Async<List<Pokemon>> searchPokemons;
  final Function(String) onSearch;
  final VoidCallback onClear;
}
