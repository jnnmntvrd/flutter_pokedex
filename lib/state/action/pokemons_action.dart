import 'dart:async';

import 'package:async_redux/async_redux.dart';
import 'package:dartx/dartx.dart';
import 'package:pokedex/api/api_service.dart';
import 'package:pokedex/state/action/actions.dart';
import 'package:pokedex/state/app_state.dart';
import 'package:pokedex/utils/constants.dart';

/// Getting of pokemons from pokemon api
class GetPokemonsAction extends LoadingAction {
  static const key = 'get-pokemon-action';

  GetPokemonsAction() : super(actionKey: key);

  @override
  Future<AppState> reduce() async {
    final pokemons = await ApiService().pokemonApi.getPokemonList(
          offset: offSet,
          limit: limit,
        );

    return state.copyWith(pokemons: pokemons);
  }
}

/// Getting of pokemons details from pokemon api
class GetPokemonDetailsAction extends LoadingAction {
  static const key = 'get-pokemon-details';

  GetPokemonDetailsAction({required this.pokemonName}) : super(actionKey: key);

  final String pokemonName;

  @override
  Future<AppState> reduce() async {
    final pokemonDetails = await ApiService().pokemonApi.getPokemonDetails(name: pokemonName);

    return state.copyWith(pokemonDetails: pokemonDetails);
  }
}

/// To clear pokemon details when navigating back to pokemon overview page
class ClearPokemonDetailsAction extends ReduxAction<AppState> {
  @override
  AppState reduce() => state.copyWith(pokemonDetails: null);
}

/// Getting the list of result when searching for a pokemon
class SearchPokemonAction extends ReduxAction<AppState> {
  SearchPokemonAction({required this.value});

  final String value;

  @override
  AppState reduce() {
    final searchPokemons = state.pokemons.filter((pokemon) => pokemon.name.contains(value.toLowerCase())).toList();

    return state.copyWith(searchPokemons: searchPokemons);
  }
}

///To clear search list when no input is given
class ClearSearchedPokemonsAction extends ReduxAction<AppState> {
  @override
  AppState reduce() => state.copyWith(searchPokemons: List.empty());
}
