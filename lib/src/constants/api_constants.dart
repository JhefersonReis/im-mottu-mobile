sealed class ApiConstants {
  static const fetchPokemonList = '/pokemon';
  static String fetchPokemonDetails(String pokemonName) => '/pokemon/$pokemonName';
  static String fetchPokemonByTypes(String typeName) => '/type/$typeName';
  static String fetchPokemonByAbilities(String abilityId) => '/ability/$abilityId';
}
