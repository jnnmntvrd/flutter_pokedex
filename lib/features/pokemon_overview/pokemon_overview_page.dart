import 'package:pokedex/api/model/pokemon.dart';
import 'package:pokedex/features/pokemon_details/pokemon_details_connector.dart';
import 'package:pokedex/features/pokemon_overview/widgets/pokemon_card.dart';
import 'package:pokedex/features/pokemon_overview/widgets/search_bar.dart';
import 'package:pokedex/utils/async.dart';
import 'package:pokedex/utils/constants.dart';

import 'package:flutter/material.dart';
import 'package:pokedex/utils/debouncer.dart';
import 'package:pokedex/widget/spacing.dart';

class PokemonOverviewPage extends StatefulWidget {
  const PokemonOverviewPage({
    required this.pokemons,
    required this.searchPokemons,
    required this.onSearch,
    required this.onClear,
    Key? key,
  }) : super(key: key);

  final Async<List<Pokemon>> pokemons;
  final Async<List<Pokemon>> searchPokemons;
  final Function(String) onSearch;
  final VoidCallback onClear;

  @override
  State<PokemonOverviewPage> createState() => _PokemonOverviewPageState();
}

class _PokemonOverviewPageState extends State<PokemonOverviewPage> {
  late TextEditingController _searchController;
  late Debouncer _debounce;

  @override
  void initState() {
    super.initState();

    _debounce = Debouncer(seconds: 1);
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(pokemonOverviewTitle)),
      body: Column(
        children: [
          SearchBar(
            controller: _searchController,
            onSearch: _onSearch,
            onClear: widget.onClear,
          ),
          const HorizontalSpace(space: 10.0),
          _searchController.text.isNotEmpty
              ? widget.searchPokemons.when(
                  (searchPokemons) => Expanded(
                    child: GridView.builder(
                        itemCount: searchPokemons.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                        itemBuilder: (_, index) {
                          final pokemon = searchPokemons[index];
                          return PokemonCard(
                            pokemon: pokemon,
                            onTap: () => _navigateToPokemonDetailsPage(
                              context: _,
                              pokemon: pokemon,
                            ),
                          );
                        }),
                  ),
                  loading: () => const Center(child: CircularProgressIndicator()),
                  error: (errorMessage) {
                    return Center(child: Text(errorMessage ?? emptyString));
                  },
                )
              : widget.pokemons.when(
                  (pokemons) => Expanded(
                        child: GridView.builder(
                            itemCount: pokemons.length,
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                            itemBuilder: (_, index) {
                              final pokemon = pokemons[index];
                              return PokemonCard(
                                pokemon: pokemon,
                                onTap: () => _navigateToPokemonDetailsPage(
                                  context: _,
                                  pokemon: pokemon,
                                ),
                              );
                            }),
                      ),
                  loading: () => const Center(child: CircularProgressIndicator()),
                  error: (errorMessage) {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      _showSnackBarMessage(
                        context: context,
                        errorMessage: errorMessage ?? emptyString,
                      );
                    });
                    return const Center(child: Text(noPokemonsAvailableLabel));
                  }),
        ],
      ),
    );
  }

  void _onSearch(String searchQuery) {
    _debounce.run(() {
      setState(() => widget.onSearch(searchQuery));
    });
  }

  void _onClearSearch() {
    setState(() => _searchController.clear());
    widget.onClear;
    print(widget.searchPokemons);
  }

  void _showSnackBarMessage({
    required BuildContext context,
    required String errorMessage,
  }) {
    final snackBar = SnackBar(content: Text(errorMessage));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _navigateToPokemonDetailsPage({
    required BuildContext context,
    required Pokemon pokemon,
  }) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => PokemonDetailsConnector(pokemon: pokemon)));
  }
}
