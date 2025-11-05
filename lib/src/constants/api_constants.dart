sealed class ApiConstants {
  static const fetchPokemonList = '/pokemon';
  static String fetchPokemonDetails(String pokemonName) => '/pokemon/$pokemonName';
  static const fetchPokemonTypes = '/type';
  static String fetchPokemonAbilityDetails(String id) => '/ability/$id';
}
