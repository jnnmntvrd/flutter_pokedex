import 'package:pokedex/api/model/pokemon_details.dart';
import 'package:pokedex/features/pokemon_details/pokemon_details_connector.dart';
import 'package:pokedex/state/action/pokemons_action.dart';
import 'package:pokedex/state/app_state.dart';
import 'package:pokedex/utils/async.dart';
import 'package:pokedex/utils/constants.dart';

import 'package:async_redux/async_redux.dart';

class PokemonDetailsVmFactory extends VmFactory<AppState, PokemonDetailsConnector> {
  @override
  Vm fromStore() => PokemonDetailsVm(pokemonDetails: _pokemonDetails());

  Async<PokemonDetails?> _pokemonDetails() {
    if (state.wait.isWaitingFor(GetPokemonDetailsAction.key)) return const Async.loading();
    if (state.pokemonDetails == null) return const Async.error(errorMessage);

    return Async(state.pokemonDetails);
  }
}

class PokemonDetailsVm extends Vm {
  PokemonDetailsVm({
    required this.pokemonDetails,
  }) : super(equals: [pokemonDetails]);

  final Async<PokemonDetails?> pokemonDetails;
}
