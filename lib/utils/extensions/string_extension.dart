import 'package:pokedex/utils/constants.dart';

extension StringExtension on String {
  String get pokemonId => split('/')[6];
  String get toCustomUrl => imageURL.replaceFirst(indexKey, pokemonId);
}
