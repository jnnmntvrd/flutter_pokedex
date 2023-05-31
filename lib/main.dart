import 'package:pokedex/features/pokemon_overview/pokemon_overview_connector.dart';
import 'package:pokedex/state/app_state.dart';

import 'package:flutter/material.dart';

import 'package:async_redux/async_redux.dart';
import 'package:flutter/foundation.dart';

void main() {
  final store = Store<AppState>(
    initialState: AppState(),
    actionObservers: kReleaseMode ? null : [ConsoleActionObserver<AppState>()],
  );

  runApp(
    StoreProvider(
      store: store,
      child: MaterialApp(home: PokemonOverviewConnector()),
    ),
  );
}
