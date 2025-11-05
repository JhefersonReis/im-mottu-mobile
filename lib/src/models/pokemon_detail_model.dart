import 'package:isar/isar.dart';

part 'pokemon_detail_model.g.dart';

@collection
class PokemonDetailModel {
  final List<Ability> abilities;
  final int? baseExperience;
  final Crie cries;
  final List<Form> forms;
  final List<GameIndex> gameIndices;
  final int? height;
  final Id id;
  final bool? isDefault;
  final String? locationAreaEncounters;
  final List<Move> moves;
  final String? name;
  final int? order;
  final List<PastAbility> pastAbilities;
  final List<PastType> pastTypes;
  final Species species;
  final Sprite sprites;
  final List<Stat> stats;
  final List<OldType> types;
  final int? weight;

  PokemonDetailModel({
    required this.abilities,
    required this.baseExperience,
    required this.cries,
    required this.forms,
    required this.gameIndices,
    required this.height,
    required this.id,
    required this.isDefault,
    required this.locationAreaEncounters,
    required this.moves,
    required this.name,
    required this.order,
    required this.pastAbilities,
    required this.pastTypes,
    required this.species,
    required this.sprites,
    required this.stats,
    required this.types,
    required this.weight,
  });

  factory PokemonDetailModel.fromJson(Map<String, dynamic> json) {
    return PokemonDetailModel(
      abilities: (json['abilities'] as List).map((e) => Ability.fromJson(e)).toList(),
      baseExperience: json['base_experience'],
      cries: Crie.fromJson(json['cries']),
      forms: (json['forms'] as List).map((e) => Form.fromJson(e)).toList(),
      gameIndices: (json['game_indices'] as List).map((e) => GameIndex.fromJson(e)).toList(),
      height: json['height'],
      id: json['id'],
      isDefault: json['is_default'],
      locationAreaEncounters: json['location_area_encounters'],
      moves: (json['moves'] as List).map((e) => Move.fromJson(e)).toList(),
      name: json['name'],
      order: json['order'],
      pastAbilities: (json['past_abilities'] as List).map((e) => PastAbility.fromJson(e)).toList(),
      pastTypes: (json['past_types'] as List).map((e) => PastType.fromJson(e)).toList(),
      species: Species.fromJson(json['species']),
      sprites: Sprite.fromJson(json['sprites']),
      stats: (json['stats'] as List).map((e) => Stat.fromJson(e)).toList(),
      types: (json['types'] as List).map((e) => OldType.fromJson(e)).toList(),
      weight: json['weight'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'abilities': abilities.map((e) => e.toJson()).toList(),
      'base_experience': baseExperience,
      'cries': cries.toJson(),
      'forms': forms.map((e) => e.toJson()).toList(),
      'game_indices': gameIndices.map((e) => e.toJson()).toList(),
      'height': height,
      'id': id,
      'is_default': isDefault,
      'location_area_encounters': locationAreaEncounters,
      'moves': moves.map((e) => e.toJson()).toList(),
      'name': name,
      'order': order,
      'past_abilities': pastAbilities.map((e) => e.toJson()).toList(),
      'past_types': pastTypes.map((e) => e.toJson()).toList(),
      'species': species.toJson(),
      'sprites': sprites.toJson(),
      'stats': stats.map((e) => e.toJson()).toList(),
      'types': types.map((e) => e.toJson()).toList(),
      'weight': weight,
    };
  }
}

@embedded
class Stat {
  int? baseStat;
  int? effort;
  Species? stat;

  Stat({
    this.baseStat,
    this.effort,
    this.stat,
  });

  factory Stat.fromJson(Map<String, dynamic> json) {
    return Stat(
      baseStat: json['base_stat'],
      effort: json['effort'],
      stat: Species.fromJson(json['stat']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'base_stat': baseStat,
      'effort': effort,
      'stat': stat?.toJson(),
    };
  }
}

@embedded
class Sprite {
  String? backDefault;
  String? backFemale;
  String? backShiny;
  String? backShinyFemale;
  String? frontDefault;
  String? frontFemale;
  String? frontShiny;
  String? frontShinyFemale;
  Other? other;
  Versions? versions;

  Sprite({
    this.backDefault,
    this.backFemale,
    this.backShiny,
    this.backShinyFemale,
    this.frontDefault,
    this.frontFemale,
    this.frontShiny,
    this.frontShinyFemale,
    this.other,
    this.versions,
  });

  factory Sprite.fromJson(Map<String, dynamic> json) {
    return Sprite(
      backDefault: json['back_default'],
      backFemale: json['back_female'],
      backShiny: json['back_shiny'],
      backShinyFemale: json['back_shiny_female'],
      frontDefault: json['front_default'],
      frontFemale: json['front_female'],
      frontShiny: json['front_shiny'],
      frontShinyFemale: json['front_shiny_female'],
      other: json['other'] != null ? Other.fromJson(json['other']) : null,
      versions: json['versions'] != null ? Versions.fromJson(json['versions']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'back_default': backDefault,
      'back_female': backFemale,
      'back_shiny': backShiny,
      'back_shiny_female': backShinyFemale,
      'front_default': frontDefault,
      'front_female': frontFemale,
      'front_shiny': frontShiny,
      'front_shiny_female': frontShinyFemale,
      'other': other?.toJson(),
      'versions': versions?.toJson(),
    };
  }
}

@embedded
class Versions {
  GenerationI? generationI;
  GenerationII? generationII;
  GenerationIII? generationIII;
  GenerationIV? generationIV;
  GenerationV? generationV;
  GenerationVI? generationVI;
  GenerationVII? generationVII;
  GenerationVIII? generationVIII;

  Versions({
    this.generationI,
    this.generationII,
    this.generationIII,
    this.generationIV,
    this.generationV,
    this.generationVI,
    this.generationVII,
    this.generationVIII,
  });

  factory Versions.fromJson(Map<String, dynamic> json) {
    return Versions(
      generationI: json['generation-i'] != null ? GenerationI.fromJson(json['generation-i']) : null,
      generationII: json['generation-ii'] != null ? GenerationII.fromJson(json['generation-ii']) : null,
      generationIII: json['generation-iii'] != null ? GenerationIII.fromJson(json['generation-iii']) : null,
      generationIV: json['generation-iv'] != null ? GenerationIV.fromJson(json['generation-iv']) : null,
      generationV: json['generation-v'] != null ? GenerationV.fromJson(json['generation-v']) : null,
      generationVI: json['generation-vi'] != null ? GenerationVI.fromJson(json['generation-vi']) : null,
      generationVII: json['generation-vii'] != null ? GenerationVII.fromJson(json['generation-vii']) : null,
      generationVIII: json['generation-viii'] != null ? GenerationVIII.fromJson(json['generation-viii']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'generation-i': generationI?.toJson(),
      'generation-ii': generationII?.toJson(),
      'generation-iii': generationIII?.toJson(),
      'generation-iv': generationIV?.toJson(),
      'generation-v': generationV?.toJson(),
      'generation-vi': generationVI?.toJson(),
      'generation-vii': generationVII?.toJson(),
      'generation-viii': generationVIII?.toJson(),
    };
  }
}

@embedded
class GenerationI {
  OtherImage? redBlue;
  OtherImage? yellow;

  GenerationI({this.redBlue, this.yellow});

  factory GenerationI.fromJson(Map<String, dynamic> json) {
    return GenerationI(
      redBlue: json['red-blue'] != null ? OtherImage.fromJson(json['red-blue']) : null,
      yellow: json['yellow'] != null ? OtherImage.fromJson(json['yellow']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'red-blue': redBlue?.toJson(),
      'yellow': yellow?.toJson(),
    };
  }
}

@embedded
class GenerationII {
  OtherImage? crystal;
  OtherImage? gold;
  OtherImage? silver;

  GenerationII({this.crystal, this.gold, this.silver});

  factory GenerationII.fromJson(Map<String, dynamic> json) {
    return GenerationII(
      crystal: json['crystal'] != null ? OtherImage.fromJson(json['crystal']) : null,
      gold: json['gold'] != null ? OtherImage.fromJson(json['gold']) : null,
      silver: json['silver'] != null ? OtherImage.fromJson(json['silver']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'crystal': crystal?.toJson(),
      'gold': gold?.toJson(),
      'silver': silver?.toJson(),
    };
  }
}

@embedded
class GenerationIII {
  OtherImage? emerald;
  OtherImage? fireredLeafgreen;
  OtherImage? rubySapphire;

  GenerationIII({this.emerald, this.fireredLeafgreen, this.rubySapphire});

  factory GenerationIII.fromJson(Map<String, dynamic> json) {
    return GenerationIII(
      emerald: json['emerald'] != null ? OtherImage.fromJson(json['emerald']) : null,
      fireredLeafgreen: json['firered-leafgreen'] != null ? OtherImage.fromJson(json['firered-leafgreen']) : null,
      rubySapphire: json['ruby-sapphire'] != null ? OtherImage.fromJson(json['ruby-sapphire']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'emerald': emerald?.toJson(),
      'firered-leafgreen': fireredLeafgreen?.toJson(),
      'ruby-sapphire': rubySapphire?.toJson(),
    };
  }
}

@embedded
class GenerationIV {
  OtherImage? diamondPearl;
  OtherImage? heartgoldSoulsilver;
  OtherImage? platinum;

  GenerationIV({this.diamondPearl, this.heartgoldSoulsilver, this.platinum});

  factory GenerationIV.fromJson(Map<String, dynamic> json) {
    return GenerationIV(
      diamondPearl: json['diamond-pearl'] != null ? OtherImage.fromJson(json['diamond-pearl']) : null,
      heartgoldSoulsilver: json['heartgold-soulsilver'] != null
          ? OtherImage.fromJson(json['heartgold-soulsilver'])
          : null,
      platinum: json['platinum'] != null ? OtherImage.fromJson(json['platinum']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'diamond-pearl': diamondPearl?.toJson(),
      'heartgold-soulsilver': heartgoldSoulsilver?.toJson(),
      'platinum': platinum?.toJson(),
    };
  }
}

@embedded
class GenerationV {
  BlackWhite? blackWhite;

  GenerationV({this.blackWhite});

  factory GenerationV.fromJson(Map<String, dynamic> json) {
    return GenerationV(
      blackWhite: json['black-white'] != null ? BlackWhite.fromJson(json['black-white']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'black-white': blackWhite?.toJson(),
    };
  }
}

@embedded
class BlackWhite {
  OtherImage? animated;
  OtherImage? images;

  BlackWhite({this.animated, this.images});

  factory BlackWhite.fromJson(Map<String, dynamic> json) {
    return BlackWhite(
      animated: json['animated'] != null ? OtherImage.fromJson(json['animated']) : null,
      images: json['images'] != null ? OtherImage.fromJson(json['images']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final map = images?.toJson() ?? {};
    if (animated != null) {
      map['animated'] = animated?.toJson();
    }
    return map;
  }
}

@embedded
class GenerationVI {
  OtherImage? omegarubyAlphasapphire;
  OtherImage? xy;

  GenerationVI({this.omegarubyAlphasapphire, this.xy});

  factory GenerationVI.fromJson(Map<String, dynamic> json) {
    return GenerationVI(
      omegarubyAlphasapphire: json['omegaruby-alphasapphire'] != null
          ? OtherImage.fromJson(json['omegaruby-alphasapphire'])
          : null,
      xy: json['x-y'] != null ? OtherImage.fromJson(json['x-y']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'omegaruby-alphasapphire': omegarubyAlphasapphire?.toJson(),
      'x-y': xy?.toJson(),
    };
  }
}

@embedded
class GenerationVII {
  OtherImage? icons;
  OtherImage? ultraSunUltraMoon;

  GenerationVII({this.icons, this.ultraSunUltraMoon});

  factory GenerationVII.fromJson(Map<String, dynamic> json) {
    return GenerationVII(
      icons: json['icons'] != null ? OtherImage.fromJson(json['icons']) : null,
      ultraSunUltraMoon: json['ultra-sun-ultra-moon'] != null
          ? OtherImage.fromJson(json['ultra-sun-ultra-moon'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'icons': icons?.toJson(),
      'ultra-sun-ultra-moon': ultraSunUltraMoon?.toJson(),
    };
  }
}

@embedded
class GenerationVIII {
  OtherImage? icons;

  GenerationVIII({this.icons});

  factory GenerationVIII.fromJson(Map<String, dynamic> json) {
    return GenerationVIII(
      icons: json['icons'] != null ? OtherImage.fromJson(json['icons']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'icons': icons?.toJson(),
    };
  }
}

@embedded
class Other {
  OtherImage? dreamWorld;
  OtherImage? home;
  OtherImage? officialArtwork;
  OtherImage? showdown;

  Other({
    this.dreamWorld,
    this.home,
    this.officialArtwork,
    this.showdown,
  });

  factory Other.fromJson(Map<String, dynamic> json) {
    return Other(
      dreamWorld: json['dream_world'] != null ? OtherImage.fromJson(json['dream_world']) : null,
      home: json['home'] != null ? OtherImage.fromJson(json['home']) : null,
      officialArtwork: json['official-artwork'] != null ? OtherImage.fromJson(json['official-artwork']) : null,
      showdown: json['showdown'] != null ? OtherImage.fromJson(json['showdown']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'dream_world': dreamWorld?.toJson(),
      'home': home?.toJson(),
      'official-artwork': officialArtwork?.toJson(),
      'showdown': showdown?.toJson(),
    };
  }
}

@embedded
class OtherImage {
  String? backDefault;
  String? backFemale;
  String? backShiny;
  String? backShinyFemale;
  String? frontDefault;
  String? frontFemale;
  String? frontShiny;
  String? frontShinyFemale;

  OtherImage({
    this.backDefault,
    this.backFemale,
    this.backShiny,
    this.backShinyFemale,
    this.frontDefault,
    this.frontFemale,
    this.frontShiny,
    this.frontShinyFemale,
  });

  factory OtherImage.fromJson(Map<String, dynamic> json) {
    return OtherImage(
      backDefault: json['back_default'],
      backFemale: json['back_female'],
      backShiny: json['back_shiny'],
      backShinyFemale: json['back_shiny_female'],
      frontDefault: json['front_default'],
      frontFemale: json['front_female'],
      frontShiny: json['front_shiny'],
      frontShinyFemale: json['front_shiny_female'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'back_default': backDefault,
      'back_female': backFemale,
      'back_shiny': backShiny,
      'back_shiny_female': backShinyFemale,
      'front_default': frontDefault,
      'front_female': frontFemale,
      'front_shiny': frontShiny,
      'front_shiny_female': frontShinyFemale,
    };
  }
}

@embedded
class PastType {
  Species? generation;
  List<OldType>? type;

  PastType({this.type, this.generation});

  factory PastType.fromJson(Map<String, dynamic> json) {
    return PastType(
      type: (json['type'] as List).map((e) => OldType.fromJson(e)).toList(),
      generation: json['generation'] != null ? Species.fromJson(json['generation']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type?.map((e) => e.toJson()).toList(),
      'generation': generation?.toJson(),
    };
  }
}

@embedded
class OldType {
  int? slot;
  Species? type;

  OldType({this.slot, this.type});

  factory OldType.fromJson(Map<String, dynamic> json) {
    return OldType(
      slot: json['slot'],
      type: json['type'] != null ? Species.fromJson(json['type']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'slot': slot,
      'type': type?.toJson(),
    };
  }
}

@embedded
class PastAbility {
  List<Ability>? abilities;
  Species? generation;

  PastAbility({this.abilities, this.generation});

  factory PastAbility.fromJson(Map<String, dynamic> json) {
    return PastAbility(
      abilities: (json['abilities'] as List?)?.map((e) => Ability.fromJson(e)).toList(),
      generation: json['generation'] != null ? Species.fromJson(json['generation']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'ability': abilities?.map((e) => e.toJson()).toList(),
      'generation': generation?.toJson(),
    };
  }
}

@embedded
class Move {
  Species? move;
  List<VersionGroupDetail>? versionGroupDetails;

  Move({this.move, this.versionGroupDetails});

  factory Move.fromJson(Map<String, dynamic> json) {
    return Move(
      move: Species.fromJson(json['move']),
      versionGroupDetails: (json['version_group_details'] as List?)
          ?.map((e) => VersionGroupDetail.fromJson(e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'move': move?.toJson(),
      'version_group_details': versionGroupDetails?.map((e) => e.toJson()).toList(),
    };
  }
}

@embedded
class VersionGroupDetail {
  int? levelLearnedAt;
  Species? moveLearnMethod;
  int? order;
  Species? versionGroup;

  VersionGroupDetail({this.levelLearnedAt, this.moveLearnMethod, this.versionGroup, this.order});

  factory VersionGroupDetail.fromJson(Map<String, dynamic> json) {
    return VersionGroupDetail(
      levelLearnedAt: json['level_learned_at'],
      moveLearnMethod: json['move_learn_method'] != null ? Species.fromJson(json['move_learn_method']) : null,
      versionGroup: json['version_group'] != null ? Species.fromJson(json['version_group']) : null,
      order: json['order'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'level_learned_at': levelLearnedAt,
      'move_learn_method': moveLearnMethod?.toJson(),
      'version_group': versionGroup?.toJson(),
      'order': order,
    };
  }
}

@embedded
class GameIndex {
  int? gameIndex;
  Species? version;

  GameIndex({this.gameIndex, this.version});

  factory GameIndex.fromJson(Map<String, dynamic> json) {
    return GameIndex(
      gameIndex: json['game_index'],
      version: json['version'] != null ? Species.fromJson(json['version']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'game_index': gameIndex,
      'version': version?.toJson(),
    };
  }
}

@embedded
class Form {
  String? name;
  String? url;

  Form({this.name, this.url});

  factory Form.fromJson(Map<String, dynamic> json) {
    return Form(
      name: json['name'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'url': url,
    };
  }
}

@embedded
class Ability {
  Species? ability;
  bool? isHidden;
  int? slot;

  Ability({this.ability, this.isHidden, this.slot});

  factory Ability.fromJson(Map<String, dynamic> json) {
    return Ability(
      ability: json['ability'] != null ? Species.fromJson(json['ability']) : null,
      isHidden: json['is_hidden'],
      slot: json['slot'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'ability': ability?.toJson(),
      'is_hidden': isHidden,
      'slot': slot,
    };
  }
}

@embedded
class Species {
  String? name;
  String? url;

  Species({this.name, this.url});

  factory Species.fromJson(Map<String, dynamic> json) {
    return Species(
      name: json['name'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'url': url,
    };
  }
}

@embedded
class Crie {
  String? latest;
  String? legacy;

  Crie({this.latest, this.legacy});

  factory Crie.fromJson(Map<String, dynamic> json) {
    return Crie(
      latest: json['latest'],
      legacy: json['legacy'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'latest': latest,
      'legacy': legacy,
    };
  }
}
