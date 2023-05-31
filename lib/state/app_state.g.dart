// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppState _$$_AppStateFromJson(Map<String, dynamic> json) => _$_AppState(
      sample: json['sample'] as String? ?? '',
      pokemons: (json['pokemons'] as List<dynamic>?)
              ?.map((e) => Pokemon.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Pokemon>[],
      searchPokemons: (json['searchPokemons'] as List<dynamic>?)
              ?.map((e) => Pokemon.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Pokemon>[],
      pokemonDetails: json['pokemonDetails'] == null
          ? null
          : PokemonDetails.fromJson(
              json['pokemonDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AppStateToJson(_$_AppState instance) =>
    <String, dynamic>{
      'sample': instance.sample,
      'pokemons': instance.pokemons,
      'searchPokemons': instance.searchPokemons,
      'pokemonDetails': instance.pokemonDetails,
    };
