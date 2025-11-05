// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_detail_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPokemonDetailModelCollection on Isar {
  IsarCollection<PokemonDetailModel> get pokemonDetailModels =>
      this.collection();
}

const PokemonDetailModelSchema = CollectionSchema(
  name: r'PokemonDetailModel',
  id: 4691531366456760617,
  properties: {
    r'abilities': PropertySchema(
      id: 0,
      name: r'abilities',
      type: IsarType.objectList,
      target: r'Ability',
    ),
    r'baseExperience': PropertySchema(
      id: 1,
      name: r'baseExperience',
      type: IsarType.long,
    ),
    r'cries': PropertySchema(
      id: 2,
      name: r'cries',
      type: IsarType.object,
      target: r'Crie',
    ),
    r'forms': PropertySchema(
      id: 3,
      name: r'forms',
      type: IsarType.objectList,
      target: r'Form',
    ),
    r'gameIndices': PropertySchema(
      id: 4,
      name: r'gameIndices',
      type: IsarType.objectList,
      target: r'GameIndex',
    ),
    r'height': PropertySchema(
      id: 5,
      name: r'height',
      type: IsarType.long,
    ),
    r'isDefault': PropertySchema(
      id: 6,
      name: r'isDefault',
      type: IsarType.bool,
    ),
    r'locationAreaEncounters': PropertySchema(
      id: 7,
      name: r'locationAreaEncounters',
      type: IsarType.string,
    ),
    r'moves': PropertySchema(
      id: 8,
      name: r'moves',
      type: IsarType.objectList,
      target: r'Move',
    ),
    r'name': PropertySchema(
      id: 9,
      name: r'name',
      type: IsarType.string,
    ),
    r'order': PropertySchema(
      id: 10,
      name: r'order',
      type: IsarType.long,
    ),
    r'pastAbilities': PropertySchema(
      id: 11,
      name: r'pastAbilities',
      type: IsarType.objectList,
      target: r'PastAbility',
    ),
    r'pastTypes': PropertySchema(
      id: 12,
      name: r'pastTypes',
      type: IsarType.objectList,
      target: r'PastType',
    ),
    r'species': PropertySchema(
      id: 13,
      name: r'species',
      type: IsarType.object,
      target: r'Species',
    ),
    r'sprites': PropertySchema(
      id: 14,
      name: r'sprites',
      type: IsarType.object,
      target: r'Sprite',
    ),
    r'stats': PropertySchema(
      id: 15,
      name: r'stats',
      type: IsarType.objectList,
      target: r'Stat',
    ),
    r'types': PropertySchema(
      id: 16,
      name: r'types',
      type: IsarType.objectList,
      target: r'OldType',
    ),
    r'weight': PropertySchema(
      id: 17,
      name: r'weight',
      type: IsarType.long,
    )
  },
  estimateSize: _pokemonDetailModelEstimateSize,
  serialize: _pokemonDetailModelSerialize,
  deserialize: _pokemonDetailModelDeserialize,
  deserializeProp: _pokemonDetailModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'Ability': AbilitySchema,
    r'Species': SpeciesSchema,
    r'Crie': CrieSchema,
    r'Form': FormSchema,
    r'GameIndex': GameIndexSchema,
    r'Move': MoveSchema,
    r'VersionGroupDetail': VersionGroupDetailSchema,
    r'PastAbility': PastAbilitySchema,
    r'PastType': PastTypeSchema,
    r'OldType': OldTypeSchema,
    r'Sprite': SpriteSchema,
    r'Other': OtherSchema,
    r'OtherImage': OtherImageSchema,
    r'Versions': VersionsSchema,
    r'GenerationI': GenerationISchema,
    r'GenerationII': GenerationIISchema,
    r'GenerationIII': GenerationIIISchema,
    r'GenerationIV': GenerationIVSchema,
    r'GenerationV': GenerationVSchema,
    r'BlackWhite': BlackWhiteSchema,
    r'GenerationVI': GenerationVISchema,
    r'GenerationVII': GenerationVIISchema,
    r'GenerationVIII': GenerationVIIISchema,
    r'Stat': StatSchema
  },
  getId: _pokemonDetailModelGetId,
  getLinks: _pokemonDetailModelGetLinks,
  attach: _pokemonDetailModelAttach,
  version: '3.1.0',
);

int _pokemonDetailModelEstimateSize(
  PokemonDetailModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.abilities.length * 3;
  {
    final offsets = allOffsets[Ability]!;
    for (var i = 0; i < object.abilities.length; i++) {
      final value = object.abilities[i];
      bytesCount += AbilitySchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount +=
      3 + CrieSchema.estimateSize(object.cries, allOffsets[Crie]!, allOffsets);
  bytesCount += 3 + object.forms.length * 3;
  {
    final offsets = allOffsets[Form]!;
    for (var i = 0; i < object.forms.length; i++) {
      final value = object.forms[i];
      bytesCount += FormSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.gameIndices.length * 3;
  {
    final offsets = allOffsets[GameIndex]!;
    for (var i = 0; i < object.gameIndices.length; i++) {
      final value = object.gameIndices[i];
      bytesCount += GameIndexSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  {
    final value = object.locationAreaEncounters;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.moves.length * 3;
  {
    final offsets = allOffsets[Move]!;
    for (var i = 0; i < object.moves.length; i++) {
      final value = object.moves[i];
      bytesCount += MoveSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.pastAbilities.length * 3;
  {
    final offsets = allOffsets[PastAbility]!;
    for (var i = 0; i < object.pastAbilities.length; i++) {
      final value = object.pastAbilities[i];
      bytesCount += PastAbilitySchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.pastTypes.length * 3;
  {
    final offsets = allOffsets[PastType]!;
    for (var i = 0; i < object.pastTypes.length; i++) {
      final value = object.pastTypes[i];
      bytesCount += PastTypeSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 +
      SpeciesSchema.estimateSize(
          object.species, allOffsets[Species]!, allOffsets);
  bytesCount += 3 +
      SpriteSchema.estimateSize(
          object.sprites, allOffsets[Sprite]!, allOffsets);
  bytesCount += 3 + object.stats.length * 3;
  {
    final offsets = allOffsets[Stat]!;
    for (var i = 0; i < object.stats.length; i++) {
      final value = object.stats[i];
      bytesCount += StatSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.types.length * 3;
  {
    final offsets = allOffsets[OldType]!;
    for (var i = 0; i < object.types.length; i++) {
      final value = object.types[i];
      bytesCount += OldTypeSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  return bytesCount;
}

void _pokemonDetailModelSerialize(
  PokemonDetailModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<Ability>(
    offsets[0],
    allOffsets,
    AbilitySchema.serialize,
    object.abilities,
  );
  writer.writeLong(offsets[1], object.baseExperience);
  writer.writeObject<Crie>(
    offsets[2],
    allOffsets,
    CrieSchema.serialize,
    object.cries,
  );
  writer.writeObjectList<Form>(
    offsets[3],
    allOffsets,
    FormSchema.serialize,
    object.forms,
  );
  writer.writeObjectList<GameIndex>(
    offsets[4],
    allOffsets,
    GameIndexSchema.serialize,
    object.gameIndices,
  );
  writer.writeLong(offsets[5], object.height);
  writer.writeBool(offsets[6], object.isDefault);
  writer.writeString(offsets[7], object.locationAreaEncounters);
  writer.writeObjectList<Move>(
    offsets[8],
    allOffsets,
    MoveSchema.serialize,
    object.moves,
  );
  writer.writeString(offsets[9], object.name);
  writer.writeLong(offsets[10], object.order);
  writer.writeObjectList<PastAbility>(
    offsets[11],
    allOffsets,
    PastAbilitySchema.serialize,
    object.pastAbilities,
  );
  writer.writeObjectList<PastType>(
    offsets[12],
    allOffsets,
    PastTypeSchema.serialize,
    object.pastTypes,
  );
  writer.writeObject<Species>(
    offsets[13],
    allOffsets,
    SpeciesSchema.serialize,
    object.species,
  );
  writer.writeObject<Sprite>(
    offsets[14],
    allOffsets,
    SpriteSchema.serialize,
    object.sprites,
  );
  writer.writeObjectList<Stat>(
    offsets[15],
    allOffsets,
    StatSchema.serialize,
    object.stats,
  );
  writer.writeObjectList<OldType>(
    offsets[16],
    allOffsets,
    OldTypeSchema.serialize,
    object.types,
  );
  writer.writeLong(offsets[17], object.weight);
}

PokemonDetailModel _pokemonDetailModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PokemonDetailModel(
    abilities: reader.readObjectList<Ability>(
          offsets[0],
          AbilitySchema.deserialize,
          allOffsets,
          Ability(),
        ) ??
        [],
    baseExperience: reader.readLongOrNull(offsets[1]),
    cries: reader.readObjectOrNull<Crie>(
          offsets[2],
          CrieSchema.deserialize,
          allOffsets,
        ) ??
        Crie(),
    forms: reader.readObjectList<Form>(
          offsets[3],
          FormSchema.deserialize,
          allOffsets,
          Form(),
        ) ??
        [],
    gameIndices: reader.readObjectList<GameIndex>(
          offsets[4],
          GameIndexSchema.deserialize,
          allOffsets,
          GameIndex(),
        ) ??
        [],
    height: reader.readLongOrNull(offsets[5]),
    id: id,
    isDefault: reader.readBoolOrNull(offsets[6]),
    locationAreaEncounters: reader.readStringOrNull(offsets[7]),
    moves: reader.readObjectList<Move>(
          offsets[8],
          MoveSchema.deserialize,
          allOffsets,
          Move(),
        ) ??
        [],
    name: reader.readStringOrNull(offsets[9]),
    order: reader.readLongOrNull(offsets[10]),
    pastAbilities: reader.readObjectList<PastAbility>(
          offsets[11],
          PastAbilitySchema.deserialize,
          allOffsets,
          PastAbility(),
        ) ??
        [],
    pastTypes: reader.readObjectList<PastType>(
          offsets[12],
          PastTypeSchema.deserialize,
          allOffsets,
          PastType(),
        ) ??
        [],
    species: reader.readObjectOrNull<Species>(
          offsets[13],
          SpeciesSchema.deserialize,
          allOffsets,
        ) ??
        Species(),
    sprites: reader.readObjectOrNull<Sprite>(
          offsets[14],
          SpriteSchema.deserialize,
          allOffsets,
        ) ??
        Sprite(),
    stats: reader.readObjectList<Stat>(
          offsets[15],
          StatSchema.deserialize,
          allOffsets,
          Stat(),
        ) ??
        [],
    types: reader.readObjectList<OldType>(
          offsets[16],
          OldTypeSchema.deserialize,
          allOffsets,
          OldType(),
        ) ??
        [],
    weight: reader.readLongOrNull(offsets[17]),
  );
  return object;
}

P _pokemonDetailModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<Ability>(
            offset,
            AbilitySchema.deserialize,
            allOffsets,
            Ability(),
          ) ??
          []) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readObjectOrNull<Crie>(
            offset,
            CrieSchema.deserialize,
            allOffsets,
          ) ??
          Crie()) as P;
    case 3:
      return (reader.readObjectList<Form>(
            offset,
            FormSchema.deserialize,
            allOffsets,
            Form(),
          ) ??
          []) as P;
    case 4:
      return (reader.readObjectList<GameIndex>(
            offset,
            GameIndexSchema.deserialize,
            allOffsets,
            GameIndex(),
          ) ??
          []) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readBoolOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readObjectList<Move>(
            offset,
            MoveSchema.deserialize,
            allOffsets,
            Move(),
          ) ??
          []) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readLongOrNull(offset)) as P;
    case 11:
      return (reader.readObjectList<PastAbility>(
            offset,
            PastAbilitySchema.deserialize,
            allOffsets,
            PastAbility(),
          ) ??
          []) as P;
    case 12:
      return (reader.readObjectList<PastType>(
            offset,
            PastTypeSchema.deserialize,
            allOffsets,
            PastType(),
          ) ??
          []) as P;
    case 13:
      return (reader.readObjectOrNull<Species>(
            offset,
            SpeciesSchema.deserialize,
            allOffsets,
          ) ??
          Species()) as P;
    case 14:
      return (reader.readObjectOrNull<Sprite>(
            offset,
            SpriteSchema.deserialize,
            allOffsets,
          ) ??
          Sprite()) as P;
    case 15:
      return (reader.readObjectList<Stat>(
            offset,
            StatSchema.deserialize,
            allOffsets,
            Stat(),
          ) ??
          []) as P;
    case 16:
      return (reader.readObjectList<OldType>(
            offset,
            OldTypeSchema.deserialize,
            allOffsets,
            OldType(),
          ) ??
          []) as P;
    case 17:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _pokemonDetailModelGetId(PokemonDetailModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _pokemonDetailModelGetLinks(
    PokemonDetailModel object) {
  return [];
}

void _pokemonDetailModelAttach(
    IsarCollection<dynamic> col, Id id, PokemonDetailModel object) {}

extension PokemonDetailModelQueryWhereSort
    on QueryBuilder<PokemonDetailModel, PokemonDetailModel, QWhere> {
  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PokemonDetailModelQueryWhere
    on QueryBuilder<PokemonDetailModel, PokemonDetailModel, QWhereClause> {
  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterWhereClause>
      idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PokemonDetailModelQueryFilter
    on QueryBuilder<PokemonDetailModel, PokemonDetailModel, QFilterCondition> {
  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      abilitiesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'abilities',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      abilitiesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'abilities',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      abilitiesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'abilities',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      abilitiesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'abilities',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      abilitiesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'abilities',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      abilitiesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'abilities',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      baseExperienceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'baseExperience',
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      baseExperienceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'baseExperience',
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      baseExperienceEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'baseExperience',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      baseExperienceGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'baseExperience',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      baseExperienceLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'baseExperience',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      baseExperienceBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'baseExperience',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      formsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'forms',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      formsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'forms',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      formsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'forms',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      formsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'forms',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      formsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'forms',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      formsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'forms',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      gameIndicesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'gameIndices',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      gameIndicesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'gameIndices',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      gameIndicesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'gameIndices',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      gameIndicesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'gameIndices',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      gameIndicesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'gameIndices',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      gameIndicesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'gameIndices',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      heightIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'height',
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      heightIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'height',
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      heightEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'height',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      heightGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'height',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      heightLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'height',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      heightBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'height',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      isDefaultIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isDefault',
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      isDefaultIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isDefault',
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      isDefaultEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDefault',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      locationAreaEncountersIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'locationAreaEncounters',
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      locationAreaEncountersIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'locationAreaEncounters',
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      locationAreaEncountersEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'locationAreaEncounters',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      locationAreaEncountersGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'locationAreaEncounters',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      locationAreaEncountersLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'locationAreaEncounters',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      locationAreaEncountersBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'locationAreaEncounters',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      locationAreaEncountersStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'locationAreaEncounters',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      locationAreaEncountersEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'locationAreaEncounters',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      locationAreaEncountersContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'locationAreaEncounters',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      locationAreaEncountersMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'locationAreaEncounters',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      locationAreaEncountersIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'locationAreaEncounters',
        value: '',
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      locationAreaEncountersIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'locationAreaEncounters',
        value: '',
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      movesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'moves',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      movesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'moves',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      movesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'moves',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      movesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'moves',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      movesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'moves',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      movesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'moves',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      orderIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'order',
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      orderIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'order',
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      orderEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'order',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      orderGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'order',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      orderLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'order',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      orderBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'order',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      pastAbilitiesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pastAbilities',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      pastAbilitiesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pastAbilities',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      pastAbilitiesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pastAbilities',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      pastAbilitiesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pastAbilities',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      pastAbilitiesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pastAbilities',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      pastAbilitiesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pastAbilities',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      pastTypesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pastTypes',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      pastTypesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pastTypes',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      pastTypesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pastTypes',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      pastTypesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pastTypes',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      pastTypesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pastTypes',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      pastTypesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pastTypes',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      statsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stats',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      statsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stats',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      statsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stats',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      statsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stats',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      statsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stats',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      statsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stats',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      typesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'types',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      typesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'types',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      typesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'types',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      typesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'types',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      typesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'types',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      typesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'types',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      weightIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'weight',
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      weightIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'weight',
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      weightEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weight',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      weightGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weight',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      weightLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weight',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      weightBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PokemonDetailModelQueryObject
    on QueryBuilder<PokemonDetailModel, PokemonDetailModel, QFilterCondition> {
  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      abilitiesElement(FilterQuery<Ability> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'abilities');
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      cries(FilterQuery<Crie> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'cries');
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      formsElement(FilterQuery<Form> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'forms');
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      gameIndicesElement(FilterQuery<GameIndex> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'gameIndices');
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      movesElement(FilterQuery<Move> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'moves');
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      pastAbilitiesElement(FilterQuery<PastAbility> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'pastAbilities');
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      pastTypesElement(FilterQuery<PastType> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'pastTypes');
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      species(FilterQuery<Species> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'species');
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      sprites(FilterQuery<Sprite> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'sprites');
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      statsElement(FilterQuery<Stat> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'stats');
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterFilterCondition>
      typesElement(FilterQuery<OldType> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'types');
    });
  }
}

extension PokemonDetailModelQueryLinks
    on QueryBuilder<PokemonDetailModel, PokemonDetailModel, QFilterCondition> {}

extension PokemonDetailModelQuerySortBy
    on QueryBuilder<PokemonDetailModel, PokemonDetailModel, QSortBy> {
  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterSortBy>
      sortByBaseExperience() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'baseExperience', Sort.asc);
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterSortBy>
      sortByBaseExperienceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'baseExperience', Sort.desc);
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterSortBy>
      sortByHeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'height', Sort.asc);
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterSortBy>
      sortByHeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'height', Sort.desc);
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterSortBy>
      sortByIsDefault() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDefault', Sort.asc);
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterSortBy>
      sortByIsDefaultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDefault', Sort.desc);
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterSortBy>
      sortByLocationAreaEncounters() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locationAreaEncounters', Sort.asc);
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterSortBy>
      sortByLocationAreaEncountersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locationAreaEncounters', Sort.desc);
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterSortBy>
      sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterSortBy>
      sortByOrder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'order', Sort.asc);
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterSortBy>
      sortByOrderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'order', Sort.desc);
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterSortBy>
      sortByWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weight', Sort.asc);
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterSortBy>
      sortByWeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weight', Sort.desc);
    });
  }
}

extension PokemonDetailModelQuerySortThenBy
    on QueryBuilder<PokemonDetailModel, PokemonDetailModel, QSortThenBy> {
  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterSortBy>
      thenByBaseExperience() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'baseExperience', Sort.asc);
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterSortBy>
      thenByBaseExperienceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'baseExperience', Sort.desc);
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterSortBy>
      thenByHeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'height', Sort.asc);
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterSortBy>
      thenByHeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'height', Sort.desc);
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterSortBy>
      thenByIsDefault() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDefault', Sort.asc);
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterSortBy>
      thenByIsDefaultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDefault', Sort.desc);
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterSortBy>
      thenByLocationAreaEncounters() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locationAreaEncounters', Sort.asc);
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterSortBy>
      thenByLocationAreaEncountersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locationAreaEncounters', Sort.desc);
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterSortBy>
      thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterSortBy>
      thenByOrder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'order', Sort.asc);
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterSortBy>
      thenByOrderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'order', Sort.desc);
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterSortBy>
      thenByWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weight', Sort.asc);
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QAfterSortBy>
      thenByWeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weight', Sort.desc);
    });
  }
}

extension PokemonDetailModelQueryWhereDistinct
    on QueryBuilder<PokemonDetailModel, PokemonDetailModel, QDistinct> {
  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QDistinct>
      distinctByBaseExperience() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'baseExperience');
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QDistinct>
      distinctByHeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'height');
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QDistinct>
      distinctByIsDefault() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDefault');
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QDistinct>
      distinctByLocationAreaEncounters({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'locationAreaEncounters',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QDistinct>
      distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QDistinct>
      distinctByOrder() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'order');
    });
  }

  QueryBuilder<PokemonDetailModel, PokemonDetailModel, QDistinct>
      distinctByWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weight');
    });
  }
}

extension PokemonDetailModelQueryProperty
    on QueryBuilder<PokemonDetailModel, PokemonDetailModel, QQueryProperty> {
  QueryBuilder<PokemonDetailModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PokemonDetailModel, List<Ability>, QQueryOperations>
      abilitiesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'abilities');
    });
  }

  QueryBuilder<PokemonDetailModel, int?, QQueryOperations>
      baseExperienceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'baseExperience');
    });
  }

  QueryBuilder<PokemonDetailModel, Crie, QQueryOperations> criesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cries');
    });
  }

  QueryBuilder<PokemonDetailModel, List<Form>, QQueryOperations>
      formsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'forms');
    });
  }

  QueryBuilder<PokemonDetailModel, List<GameIndex>, QQueryOperations>
      gameIndicesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gameIndices');
    });
  }

  QueryBuilder<PokemonDetailModel, int?, QQueryOperations> heightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'height');
    });
  }

  QueryBuilder<PokemonDetailModel, bool?, QQueryOperations>
      isDefaultProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDefault');
    });
  }

  QueryBuilder<PokemonDetailModel, String?, QQueryOperations>
      locationAreaEncountersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'locationAreaEncounters');
    });
  }

  QueryBuilder<PokemonDetailModel, List<Move>, QQueryOperations>
      movesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'moves');
    });
  }

  QueryBuilder<PokemonDetailModel, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<PokemonDetailModel, int?, QQueryOperations> orderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'order');
    });
  }

  QueryBuilder<PokemonDetailModel, List<PastAbility>, QQueryOperations>
      pastAbilitiesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pastAbilities');
    });
  }

  QueryBuilder<PokemonDetailModel, List<PastType>, QQueryOperations>
      pastTypesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pastTypes');
    });
  }

  QueryBuilder<PokemonDetailModel, Species, QQueryOperations>
      speciesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'species');
    });
  }

  QueryBuilder<PokemonDetailModel, Sprite, QQueryOperations> spritesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sprites');
    });
  }

  QueryBuilder<PokemonDetailModel, List<Stat>, QQueryOperations>
      statsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stats');
    });
  }

  QueryBuilder<PokemonDetailModel, List<OldType>, QQueryOperations>
      typesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'types');
    });
  }

  QueryBuilder<PokemonDetailModel, int?, QQueryOperations> weightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weight');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const StatSchema = Schema(
  name: r'Stat',
  id: -739457159820072843,
  properties: {
    r'baseStat': PropertySchema(
      id: 0,
      name: r'baseStat',
      type: IsarType.long,
    ),
    r'effort': PropertySchema(
      id: 1,
      name: r'effort',
      type: IsarType.long,
    ),
    r'stat': PropertySchema(
      id: 2,
      name: r'stat',
      type: IsarType.object,
      target: r'Species',
    )
  },
  estimateSize: _statEstimateSize,
  serialize: _statSerialize,
  deserialize: _statDeserialize,
  deserializeProp: _statDeserializeProp,
);

int _statEstimateSize(
  Stat object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.stat;
    if (value != null) {
      bytesCount += 3 +
          SpeciesSchema.estimateSize(value, allOffsets[Species]!, allOffsets);
    }
  }
  return bytesCount;
}

void _statSerialize(
  Stat object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.baseStat);
  writer.writeLong(offsets[1], object.effort);
  writer.writeObject<Species>(
    offsets[2],
    allOffsets,
    SpeciesSchema.serialize,
    object.stat,
  );
}

Stat _statDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Stat(
    baseStat: reader.readLongOrNull(offsets[0]),
    effort: reader.readLongOrNull(offsets[1]),
    stat: reader.readObjectOrNull<Species>(
      offsets[2],
      SpeciesSchema.deserialize,
      allOffsets,
    ),
  );
  return object;
}

P _statDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readObjectOrNull<Species>(
        offset,
        SpeciesSchema.deserialize,
        allOffsets,
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension StatQueryFilter on QueryBuilder<Stat, Stat, QFilterCondition> {
  QueryBuilder<Stat, Stat, QAfterFilterCondition> baseStatIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'baseStat',
      ));
    });
  }

  QueryBuilder<Stat, Stat, QAfterFilterCondition> baseStatIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'baseStat',
      ));
    });
  }

  QueryBuilder<Stat, Stat, QAfterFilterCondition> baseStatEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'baseStat',
        value: value,
      ));
    });
  }

  QueryBuilder<Stat, Stat, QAfterFilterCondition> baseStatGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'baseStat',
        value: value,
      ));
    });
  }

  QueryBuilder<Stat, Stat, QAfterFilterCondition> baseStatLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'baseStat',
        value: value,
      ));
    });
  }

  QueryBuilder<Stat, Stat, QAfterFilterCondition> baseStatBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'baseStat',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Stat, Stat, QAfterFilterCondition> effortIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'effort',
      ));
    });
  }

  QueryBuilder<Stat, Stat, QAfterFilterCondition> effortIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'effort',
      ));
    });
  }

  QueryBuilder<Stat, Stat, QAfterFilterCondition> effortEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'effort',
        value: value,
      ));
    });
  }

  QueryBuilder<Stat, Stat, QAfterFilterCondition> effortGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'effort',
        value: value,
      ));
    });
  }

  QueryBuilder<Stat, Stat, QAfterFilterCondition> effortLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'effort',
        value: value,
      ));
    });
  }

  QueryBuilder<Stat, Stat, QAfterFilterCondition> effortBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'effort',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Stat, Stat, QAfterFilterCondition> statIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stat',
      ));
    });
  }

  QueryBuilder<Stat, Stat, QAfterFilterCondition> statIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stat',
      ));
    });
  }
}

extension StatQueryObject on QueryBuilder<Stat, Stat, QFilterCondition> {
  QueryBuilder<Stat, Stat, QAfterFilterCondition> stat(FilterQuery<Species> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'stat');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const SpriteSchema = Schema(
  name: r'Sprite',
  id: -5554767200345127349,
  properties: {
    r'backDefault': PropertySchema(
      id: 0,
      name: r'backDefault',
      type: IsarType.string,
    ),
    r'backFemale': PropertySchema(
      id: 1,
      name: r'backFemale',
      type: IsarType.string,
    ),
    r'backShiny': PropertySchema(
      id: 2,
      name: r'backShiny',
      type: IsarType.string,
    ),
    r'backShinyFemale': PropertySchema(
      id: 3,
      name: r'backShinyFemale',
      type: IsarType.string,
    ),
    r'frontDefault': PropertySchema(
      id: 4,
      name: r'frontDefault',
      type: IsarType.string,
    ),
    r'frontFemale': PropertySchema(
      id: 5,
      name: r'frontFemale',
      type: IsarType.string,
    ),
    r'frontShiny': PropertySchema(
      id: 6,
      name: r'frontShiny',
      type: IsarType.string,
    ),
    r'frontShinyFemale': PropertySchema(
      id: 7,
      name: r'frontShinyFemale',
      type: IsarType.string,
    ),
    r'other': PropertySchema(
      id: 8,
      name: r'other',
      type: IsarType.object,
      target: r'Other',
    ),
    r'versions': PropertySchema(
      id: 9,
      name: r'versions',
      type: IsarType.object,
      target: r'Versions',
    )
  },
  estimateSize: _spriteEstimateSize,
  serialize: _spriteSerialize,
  deserialize: _spriteDeserialize,
  deserializeProp: _spriteDeserializeProp,
);

int _spriteEstimateSize(
  Sprite object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.backDefault;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.backFemale;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.backShiny;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.backShinyFemale;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.frontDefault;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.frontFemale;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.frontShiny;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.frontShinyFemale;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.other;
    if (value != null) {
      bytesCount +=
          3 + OtherSchema.estimateSize(value, allOffsets[Other]!, allOffsets);
    }
  }
  {
    final value = object.versions;
    if (value != null) {
      bytesCount += 3 +
          VersionsSchema.estimateSize(value, allOffsets[Versions]!, allOffsets);
    }
  }
  return bytesCount;
}

void _spriteSerialize(
  Sprite object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.backDefault);
  writer.writeString(offsets[1], object.backFemale);
  writer.writeString(offsets[2], object.backShiny);
  writer.writeString(offsets[3], object.backShinyFemale);
  writer.writeString(offsets[4], object.frontDefault);
  writer.writeString(offsets[5], object.frontFemale);
  writer.writeString(offsets[6], object.frontShiny);
  writer.writeString(offsets[7], object.frontShinyFemale);
  writer.writeObject<Other>(
    offsets[8],
    allOffsets,
    OtherSchema.serialize,
    object.other,
  );
  writer.writeObject<Versions>(
    offsets[9],
    allOffsets,
    VersionsSchema.serialize,
    object.versions,
  );
}

Sprite _spriteDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Sprite(
    backDefault: reader.readStringOrNull(offsets[0]),
    backFemale: reader.readStringOrNull(offsets[1]),
    backShiny: reader.readStringOrNull(offsets[2]),
    backShinyFemale: reader.readStringOrNull(offsets[3]),
    frontDefault: reader.readStringOrNull(offsets[4]),
    frontFemale: reader.readStringOrNull(offsets[5]),
    frontShiny: reader.readStringOrNull(offsets[6]),
    frontShinyFemale: reader.readStringOrNull(offsets[7]),
    other: reader.readObjectOrNull<Other>(
      offsets[8],
      OtherSchema.deserialize,
      allOffsets,
    ),
    versions: reader.readObjectOrNull<Versions>(
      offsets[9],
      VersionsSchema.deserialize,
      allOffsets,
    ),
  );
  return object;
}

P _spriteDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readObjectOrNull<Other>(
        offset,
        OtherSchema.deserialize,
        allOffsets,
      )) as P;
    case 9:
      return (reader.readObjectOrNull<Versions>(
        offset,
        VersionsSchema.deserialize,
        allOffsets,
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension SpriteQueryFilter on QueryBuilder<Sprite, Sprite, QFilterCondition> {
  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backDefaultIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'backDefault',
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backDefaultIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'backDefault',
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backDefaultEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backDefault',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backDefaultGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'backDefault',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backDefaultLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'backDefault',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backDefaultBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'backDefault',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backDefaultStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'backDefault',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backDefaultEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'backDefault',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backDefaultContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'backDefault',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backDefaultMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'backDefault',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backDefaultIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backDefault',
        value: '',
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backDefaultIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'backDefault',
        value: '',
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backFemaleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'backFemale',
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backFemaleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'backFemale',
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backFemaleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backFemaleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'backFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backFemaleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'backFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backFemaleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'backFemale',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backFemaleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'backFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backFemaleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'backFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backFemaleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'backFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backFemaleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'backFemale',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backFemaleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backFemale',
        value: '',
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backFemaleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'backFemale',
        value: '',
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backShinyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'backShiny',
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backShinyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'backShiny',
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backShinyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backShiny',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backShinyGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'backShiny',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backShinyLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'backShiny',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backShinyBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'backShiny',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backShinyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'backShiny',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backShinyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'backShiny',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backShinyContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'backShiny',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backShinyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'backShiny',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backShinyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backShiny',
        value: '',
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backShinyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'backShiny',
        value: '',
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backShinyFemaleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'backShinyFemale',
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition>
      backShinyFemaleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'backShinyFemale',
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backShinyFemaleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backShinyFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition>
      backShinyFemaleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'backShinyFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backShinyFemaleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'backShinyFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backShinyFemaleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'backShinyFemale',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backShinyFemaleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'backShinyFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backShinyFemaleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'backShinyFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backShinyFemaleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'backShinyFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backShinyFemaleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'backShinyFemale',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> backShinyFemaleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backShinyFemale',
        value: '',
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition>
      backShinyFemaleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'backShinyFemale',
        value: '',
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontDefaultIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'frontDefault',
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontDefaultIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'frontDefault',
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontDefaultEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'frontDefault',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontDefaultGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'frontDefault',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontDefaultLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'frontDefault',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontDefaultBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'frontDefault',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontDefaultStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'frontDefault',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontDefaultEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'frontDefault',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontDefaultContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'frontDefault',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontDefaultMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'frontDefault',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontDefaultIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'frontDefault',
        value: '',
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontDefaultIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'frontDefault',
        value: '',
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontFemaleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'frontFemale',
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontFemaleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'frontFemale',
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontFemaleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'frontFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontFemaleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'frontFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontFemaleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'frontFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontFemaleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'frontFemale',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontFemaleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'frontFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontFemaleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'frontFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontFemaleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'frontFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontFemaleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'frontFemale',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontFemaleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'frontFemale',
        value: '',
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontFemaleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'frontFemale',
        value: '',
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontShinyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'frontShiny',
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontShinyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'frontShiny',
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontShinyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'frontShiny',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontShinyGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'frontShiny',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontShinyLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'frontShiny',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontShinyBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'frontShiny',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontShinyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'frontShiny',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontShinyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'frontShiny',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontShinyContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'frontShiny',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontShinyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'frontShiny',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontShinyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'frontShiny',
        value: '',
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontShinyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'frontShiny',
        value: '',
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontShinyFemaleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'frontShinyFemale',
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition>
      frontShinyFemaleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'frontShinyFemale',
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontShinyFemaleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'frontShinyFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition>
      frontShinyFemaleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'frontShinyFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontShinyFemaleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'frontShinyFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontShinyFemaleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'frontShinyFemale',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition>
      frontShinyFemaleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'frontShinyFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontShinyFemaleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'frontShinyFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontShinyFemaleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'frontShinyFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> frontShinyFemaleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'frontShinyFemale',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition>
      frontShinyFemaleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'frontShinyFemale',
        value: '',
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition>
      frontShinyFemaleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'frontShinyFemale',
        value: '',
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> otherIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'other',
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> otherIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'other',
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> versionsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'versions',
      ));
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> versionsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'versions',
      ));
    });
  }
}

extension SpriteQueryObject on QueryBuilder<Sprite, Sprite, QFilterCondition> {
  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> other(
      FilterQuery<Other> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'other');
    });
  }

  QueryBuilder<Sprite, Sprite, QAfterFilterCondition> versions(
      FilterQuery<Versions> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'versions');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const VersionsSchema = Schema(
  name: r'Versions',
  id: -3891429200809633971,
  properties: {
    r'generationI': PropertySchema(
      id: 0,
      name: r'generationI',
      type: IsarType.object,
      target: r'GenerationI',
    ),
    r'generationII': PropertySchema(
      id: 1,
      name: r'generationII',
      type: IsarType.object,
      target: r'GenerationII',
    ),
    r'generationIII': PropertySchema(
      id: 2,
      name: r'generationIII',
      type: IsarType.object,
      target: r'GenerationIII',
    ),
    r'generationIV': PropertySchema(
      id: 3,
      name: r'generationIV',
      type: IsarType.object,
      target: r'GenerationIV',
    ),
    r'generationV': PropertySchema(
      id: 4,
      name: r'generationV',
      type: IsarType.object,
      target: r'GenerationV',
    ),
    r'generationVI': PropertySchema(
      id: 5,
      name: r'generationVI',
      type: IsarType.object,
      target: r'GenerationVI',
    ),
    r'generationVII': PropertySchema(
      id: 6,
      name: r'generationVII',
      type: IsarType.object,
      target: r'GenerationVII',
    ),
    r'generationVIII': PropertySchema(
      id: 7,
      name: r'generationVIII',
      type: IsarType.object,
      target: r'GenerationVIII',
    )
  },
  estimateSize: _versionsEstimateSize,
  serialize: _versionsSerialize,
  deserialize: _versionsDeserialize,
  deserializeProp: _versionsDeserializeProp,
);

int _versionsEstimateSize(
  Versions object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.generationI;
    if (value != null) {
      bytesCount += 3 +
          GenerationISchema.estimateSize(
              value, allOffsets[GenerationI]!, allOffsets);
    }
  }
  {
    final value = object.generationII;
    if (value != null) {
      bytesCount += 3 +
          GenerationIISchema.estimateSize(
              value, allOffsets[GenerationII]!, allOffsets);
    }
  }
  {
    final value = object.generationIII;
    if (value != null) {
      bytesCount += 3 +
          GenerationIIISchema.estimateSize(
              value, allOffsets[GenerationIII]!, allOffsets);
    }
  }
  {
    final value = object.generationIV;
    if (value != null) {
      bytesCount += 3 +
          GenerationIVSchema.estimateSize(
              value, allOffsets[GenerationIV]!, allOffsets);
    }
  }
  {
    final value = object.generationV;
    if (value != null) {
      bytesCount += 3 +
          GenerationVSchema.estimateSize(
              value, allOffsets[GenerationV]!, allOffsets);
    }
  }
  {
    final value = object.generationVI;
    if (value != null) {
      bytesCount += 3 +
          GenerationVISchema.estimateSize(
              value, allOffsets[GenerationVI]!, allOffsets);
    }
  }
  {
    final value = object.generationVII;
    if (value != null) {
      bytesCount += 3 +
          GenerationVIISchema.estimateSize(
              value, allOffsets[GenerationVII]!, allOffsets);
    }
  }
  {
    final value = object.generationVIII;
    if (value != null) {
      bytesCount += 3 +
          GenerationVIIISchema.estimateSize(
              value, allOffsets[GenerationVIII]!, allOffsets);
    }
  }
  return bytesCount;
}

void _versionsSerialize(
  Versions object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<GenerationI>(
    offsets[0],
    allOffsets,
    GenerationISchema.serialize,
    object.generationI,
  );
  writer.writeObject<GenerationII>(
    offsets[1],
    allOffsets,
    GenerationIISchema.serialize,
    object.generationII,
  );
  writer.writeObject<GenerationIII>(
    offsets[2],
    allOffsets,
    GenerationIIISchema.serialize,
    object.generationIII,
  );
  writer.writeObject<GenerationIV>(
    offsets[3],
    allOffsets,
    GenerationIVSchema.serialize,
    object.generationIV,
  );
  writer.writeObject<GenerationV>(
    offsets[4],
    allOffsets,
    GenerationVSchema.serialize,
    object.generationV,
  );
  writer.writeObject<GenerationVI>(
    offsets[5],
    allOffsets,
    GenerationVISchema.serialize,
    object.generationVI,
  );
  writer.writeObject<GenerationVII>(
    offsets[6],
    allOffsets,
    GenerationVIISchema.serialize,
    object.generationVII,
  );
  writer.writeObject<GenerationVIII>(
    offsets[7],
    allOffsets,
    GenerationVIIISchema.serialize,
    object.generationVIII,
  );
}

Versions _versionsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Versions(
    generationI: reader.readObjectOrNull<GenerationI>(
      offsets[0],
      GenerationISchema.deserialize,
      allOffsets,
    ),
    generationII: reader.readObjectOrNull<GenerationII>(
      offsets[1],
      GenerationIISchema.deserialize,
      allOffsets,
    ),
    generationIII: reader.readObjectOrNull<GenerationIII>(
      offsets[2],
      GenerationIIISchema.deserialize,
      allOffsets,
    ),
    generationIV: reader.readObjectOrNull<GenerationIV>(
      offsets[3],
      GenerationIVSchema.deserialize,
      allOffsets,
    ),
    generationV: reader.readObjectOrNull<GenerationV>(
      offsets[4],
      GenerationVSchema.deserialize,
      allOffsets,
    ),
    generationVI: reader.readObjectOrNull<GenerationVI>(
      offsets[5],
      GenerationVISchema.deserialize,
      allOffsets,
    ),
    generationVII: reader.readObjectOrNull<GenerationVII>(
      offsets[6],
      GenerationVIISchema.deserialize,
      allOffsets,
    ),
    generationVIII: reader.readObjectOrNull<GenerationVIII>(
      offsets[7],
      GenerationVIIISchema.deserialize,
      allOffsets,
    ),
  );
  return object;
}

P _versionsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<GenerationI>(
        offset,
        GenerationISchema.deserialize,
        allOffsets,
      )) as P;
    case 1:
      return (reader.readObjectOrNull<GenerationII>(
        offset,
        GenerationIISchema.deserialize,
        allOffsets,
      )) as P;
    case 2:
      return (reader.readObjectOrNull<GenerationIII>(
        offset,
        GenerationIIISchema.deserialize,
        allOffsets,
      )) as P;
    case 3:
      return (reader.readObjectOrNull<GenerationIV>(
        offset,
        GenerationIVSchema.deserialize,
        allOffsets,
      )) as P;
    case 4:
      return (reader.readObjectOrNull<GenerationV>(
        offset,
        GenerationVSchema.deserialize,
        allOffsets,
      )) as P;
    case 5:
      return (reader.readObjectOrNull<GenerationVI>(
        offset,
        GenerationVISchema.deserialize,
        allOffsets,
      )) as P;
    case 6:
      return (reader.readObjectOrNull<GenerationVII>(
        offset,
        GenerationVIISchema.deserialize,
        allOffsets,
      )) as P;
    case 7:
      return (reader.readObjectOrNull<GenerationVIII>(
        offset,
        GenerationVIIISchema.deserialize,
        allOffsets,
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension VersionsQueryFilter
    on QueryBuilder<Versions, Versions, QFilterCondition> {
  QueryBuilder<Versions, Versions, QAfterFilterCondition> generationIIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'generationI',
      ));
    });
  }

  QueryBuilder<Versions, Versions, QAfterFilterCondition>
      generationIIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'generationI',
      ));
    });
  }

  QueryBuilder<Versions, Versions, QAfterFilterCondition> generationIIIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'generationII',
      ));
    });
  }

  QueryBuilder<Versions, Versions, QAfterFilterCondition>
      generationIIIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'generationII',
      ));
    });
  }

  QueryBuilder<Versions, Versions, QAfterFilterCondition>
      generationIIIIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'generationIII',
      ));
    });
  }

  QueryBuilder<Versions, Versions, QAfterFilterCondition>
      generationIIIIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'generationIII',
      ));
    });
  }

  QueryBuilder<Versions, Versions, QAfterFilterCondition> generationIVIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'generationIV',
      ));
    });
  }

  QueryBuilder<Versions, Versions, QAfterFilterCondition>
      generationIVIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'generationIV',
      ));
    });
  }

  QueryBuilder<Versions, Versions, QAfterFilterCondition> generationVIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'generationV',
      ));
    });
  }

  QueryBuilder<Versions, Versions, QAfterFilterCondition>
      generationVIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'generationV',
      ));
    });
  }

  QueryBuilder<Versions, Versions, QAfterFilterCondition> generationVIIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'generationVI',
      ));
    });
  }

  QueryBuilder<Versions, Versions, QAfterFilterCondition>
      generationVIIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'generationVI',
      ));
    });
  }

  QueryBuilder<Versions, Versions, QAfterFilterCondition>
      generationVIIIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'generationVII',
      ));
    });
  }

  QueryBuilder<Versions, Versions, QAfterFilterCondition>
      generationVIIIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'generationVII',
      ));
    });
  }

  QueryBuilder<Versions, Versions, QAfterFilterCondition>
      generationVIIIIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'generationVIII',
      ));
    });
  }

  QueryBuilder<Versions, Versions, QAfterFilterCondition>
      generationVIIIIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'generationVIII',
      ));
    });
  }
}

extension VersionsQueryObject
    on QueryBuilder<Versions, Versions, QFilterCondition> {
  QueryBuilder<Versions, Versions, QAfterFilterCondition> generationI(
      FilterQuery<GenerationI> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'generationI');
    });
  }

  QueryBuilder<Versions, Versions, QAfterFilterCondition> generationII(
      FilterQuery<GenerationII> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'generationII');
    });
  }

  QueryBuilder<Versions, Versions, QAfterFilterCondition> generationIII(
      FilterQuery<GenerationIII> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'generationIII');
    });
  }

  QueryBuilder<Versions, Versions, QAfterFilterCondition> generationIV(
      FilterQuery<GenerationIV> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'generationIV');
    });
  }

  QueryBuilder<Versions, Versions, QAfterFilterCondition> generationV(
      FilterQuery<GenerationV> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'generationV');
    });
  }

  QueryBuilder<Versions, Versions, QAfterFilterCondition> generationVI(
      FilterQuery<GenerationVI> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'generationVI');
    });
  }

  QueryBuilder<Versions, Versions, QAfterFilterCondition> generationVII(
      FilterQuery<GenerationVII> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'generationVII');
    });
  }

  QueryBuilder<Versions, Versions, QAfterFilterCondition> generationVIII(
      FilterQuery<GenerationVIII> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'generationVIII');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const GenerationISchema = Schema(
  name: r'GenerationI',
  id: 3038375106874170487,
  properties: {
    r'redBlue': PropertySchema(
      id: 0,
      name: r'redBlue',
      type: IsarType.object,
      target: r'OtherImage',
    ),
    r'yellow': PropertySchema(
      id: 1,
      name: r'yellow',
      type: IsarType.object,
      target: r'OtherImage',
    )
  },
  estimateSize: _generationIEstimateSize,
  serialize: _generationISerialize,
  deserialize: _generationIDeserialize,
  deserializeProp: _generationIDeserializeProp,
);

int _generationIEstimateSize(
  GenerationI object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.redBlue;
    if (value != null) {
      bytesCount += 3 +
          OtherImageSchema.estimateSize(
              value, allOffsets[OtherImage]!, allOffsets);
    }
  }
  {
    final value = object.yellow;
    if (value != null) {
      bytesCount += 3 +
          OtherImageSchema.estimateSize(
              value, allOffsets[OtherImage]!, allOffsets);
    }
  }
  return bytesCount;
}

void _generationISerialize(
  GenerationI object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<OtherImage>(
    offsets[0],
    allOffsets,
    OtherImageSchema.serialize,
    object.redBlue,
  );
  writer.writeObject<OtherImage>(
    offsets[1],
    allOffsets,
    OtherImageSchema.serialize,
    object.yellow,
  );
}

GenerationI _generationIDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = GenerationI(
    redBlue: reader.readObjectOrNull<OtherImage>(
      offsets[0],
      OtherImageSchema.deserialize,
      allOffsets,
    ),
    yellow: reader.readObjectOrNull<OtherImage>(
      offsets[1],
      OtherImageSchema.deserialize,
      allOffsets,
    ),
  );
  return object;
}

P _generationIDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<OtherImage>(
        offset,
        OtherImageSchema.deserialize,
        allOffsets,
      )) as P;
    case 1:
      return (reader.readObjectOrNull<OtherImage>(
        offset,
        OtherImageSchema.deserialize,
        allOffsets,
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension GenerationIQueryFilter
    on QueryBuilder<GenerationI, GenerationI, QFilterCondition> {
  QueryBuilder<GenerationI, GenerationI, QAfterFilterCondition>
      redBlueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'redBlue',
      ));
    });
  }

  QueryBuilder<GenerationI, GenerationI, QAfterFilterCondition>
      redBlueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'redBlue',
      ));
    });
  }

  QueryBuilder<GenerationI, GenerationI, QAfterFilterCondition> yellowIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'yellow',
      ));
    });
  }

  QueryBuilder<GenerationI, GenerationI, QAfterFilterCondition>
      yellowIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'yellow',
      ));
    });
  }
}

extension GenerationIQueryObject
    on QueryBuilder<GenerationI, GenerationI, QFilterCondition> {
  QueryBuilder<GenerationI, GenerationI, QAfterFilterCondition> redBlue(
      FilterQuery<OtherImage> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'redBlue');
    });
  }

  QueryBuilder<GenerationI, GenerationI, QAfterFilterCondition> yellow(
      FilterQuery<OtherImage> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'yellow');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const GenerationIISchema = Schema(
  name: r'GenerationII',
  id: -4734895152164407347,
  properties: {
    r'crystal': PropertySchema(
      id: 0,
      name: r'crystal',
      type: IsarType.object,
      target: r'OtherImage',
    ),
    r'gold': PropertySchema(
      id: 1,
      name: r'gold',
      type: IsarType.object,
      target: r'OtherImage',
    ),
    r'silver': PropertySchema(
      id: 2,
      name: r'silver',
      type: IsarType.object,
      target: r'OtherImage',
    )
  },
  estimateSize: _generationIIEstimateSize,
  serialize: _generationIISerialize,
  deserialize: _generationIIDeserialize,
  deserializeProp: _generationIIDeserializeProp,
);

int _generationIIEstimateSize(
  GenerationII object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.crystal;
    if (value != null) {
      bytesCount += 3 +
          OtherImageSchema.estimateSize(
              value, allOffsets[OtherImage]!, allOffsets);
    }
  }
  {
    final value = object.gold;
    if (value != null) {
      bytesCount += 3 +
          OtherImageSchema.estimateSize(
              value, allOffsets[OtherImage]!, allOffsets);
    }
  }
  {
    final value = object.silver;
    if (value != null) {
      bytesCount += 3 +
          OtherImageSchema.estimateSize(
              value, allOffsets[OtherImage]!, allOffsets);
    }
  }
  return bytesCount;
}

void _generationIISerialize(
  GenerationII object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<OtherImage>(
    offsets[0],
    allOffsets,
    OtherImageSchema.serialize,
    object.crystal,
  );
  writer.writeObject<OtherImage>(
    offsets[1],
    allOffsets,
    OtherImageSchema.serialize,
    object.gold,
  );
  writer.writeObject<OtherImage>(
    offsets[2],
    allOffsets,
    OtherImageSchema.serialize,
    object.silver,
  );
}

GenerationII _generationIIDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = GenerationII(
    crystal: reader.readObjectOrNull<OtherImage>(
      offsets[0],
      OtherImageSchema.deserialize,
      allOffsets,
    ),
    gold: reader.readObjectOrNull<OtherImage>(
      offsets[1],
      OtherImageSchema.deserialize,
      allOffsets,
    ),
    silver: reader.readObjectOrNull<OtherImage>(
      offsets[2],
      OtherImageSchema.deserialize,
      allOffsets,
    ),
  );
  return object;
}

P _generationIIDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<OtherImage>(
        offset,
        OtherImageSchema.deserialize,
        allOffsets,
      )) as P;
    case 1:
      return (reader.readObjectOrNull<OtherImage>(
        offset,
        OtherImageSchema.deserialize,
        allOffsets,
      )) as P;
    case 2:
      return (reader.readObjectOrNull<OtherImage>(
        offset,
        OtherImageSchema.deserialize,
        allOffsets,
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension GenerationIIQueryFilter
    on QueryBuilder<GenerationII, GenerationII, QFilterCondition> {
  QueryBuilder<GenerationII, GenerationII, QAfterFilterCondition>
      crystalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'crystal',
      ));
    });
  }

  QueryBuilder<GenerationII, GenerationII, QAfterFilterCondition>
      crystalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'crystal',
      ));
    });
  }

  QueryBuilder<GenerationII, GenerationII, QAfterFilterCondition> goldIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'gold',
      ));
    });
  }

  QueryBuilder<GenerationII, GenerationII, QAfterFilterCondition>
      goldIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'gold',
      ));
    });
  }

  QueryBuilder<GenerationII, GenerationII, QAfterFilterCondition>
      silverIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'silver',
      ));
    });
  }

  QueryBuilder<GenerationII, GenerationII, QAfterFilterCondition>
      silverIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'silver',
      ));
    });
  }
}

extension GenerationIIQueryObject
    on QueryBuilder<GenerationII, GenerationII, QFilterCondition> {
  QueryBuilder<GenerationII, GenerationII, QAfterFilterCondition> crystal(
      FilterQuery<OtherImage> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'crystal');
    });
  }

  QueryBuilder<GenerationII, GenerationII, QAfterFilterCondition> gold(
      FilterQuery<OtherImage> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'gold');
    });
  }

  QueryBuilder<GenerationII, GenerationII, QAfterFilterCondition> silver(
      FilterQuery<OtherImage> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'silver');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const GenerationIIISchema = Schema(
  name: r'GenerationIII',
  id: -5158282592323421778,
  properties: {
    r'emerald': PropertySchema(
      id: 0,
      name: r'emerald',
      type: IsarType.object,
      target: r'OtherImage',
    ),
    r'fireredLeafgreen': PropertySchema(
      id: 1,
      name: r'fireredLeafgreen',
      type: IsarType.object,
      target: r'OtherImage',
    ),
    r'rubySapphire': PropertySchema(
      id: 2,
      name: r'rubySapphire',
      type: IsarType.object,
      target: r'OtherImage',
    )
  },
  estimateSize: _generationIIIEstimateSize,
  serialize: _generationIIISerialize,
  deserialize: _generationIIIDeserialize,
  deserializeProp: _generationIIIDeserializeProp,
);

int _generationIIIEstimateSize(
  GenerationIII object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.emerald;
    if (value != null) {
      bytesCount += 3 +
          OtherImageSchema.estimateSize(
              value, allOffsets[OtherImage]!, allOffsets);
    }
  }
  {
    final value = object.fireredLeafgreen;
    if (value != null) {
      bytesCount += 3 +
          OtherImageSchema.estimateSize(
              value, allOffsets[OtherImage]!, allOffsets);
    }
  }
  {
    final value = object.rubySapphire;
    if (value != null) {
      bytesCount += 3 +
          OtherImageSchema.estimateSize(
              value, allOffsets[OtherImage]!, allOffsets);
    }
  }
  return bytesCount;
}

void _generationIIISerialize(
  GenerationIII object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<OtherImage>(
    offsets[0],
    allOffsets,
    OtherImageSchema.serialize,
    object.emerald,
  );
  writer.writeObject<OtherImage>(
    offsets[1],
    allOffsets,
    OtherImageSchema.serialize,
    object.fireredLeafgreen,
  );
  writer.writeObject<OtherImage>(
    offsets[2],
    allOffsets,
    OtherImageSchema.serialize,
    object.rubySapphire,
  );
}

GenerationIII _generationIIIDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = GenerationIII(
    emerald: reader.readObjectOrNull<OtherImage>(
      offsets[0],
      OtherImageSchema.deserialize,
      allOffsets,
    ),
    fireredLeafgreen: reader.readObjectOrNull<OtherImage>(
      offsets[1],
      OtherImageSchema.deserialize,
      allOffsets,
    ),
    rubySapphire: reader.readObjectOrNull<OtherImage>(
      offsets[2],
      OtherImageSchema.deserialize,
      allOffsets,
    ),
  );
  return object;
}

P _generationIIIDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<OtherImage>(
        offset,
        OtherImageSchema.deserialize,
        allOffsets,
      )) as P;
    case 1:
      return (reader.readObjectOrNull<OtherImage>(
        offset,
        OtherImageSchema.deserialize,
        allOffsets,
      )) as P;
    case 2:
      return (reader.readObjectOrNull<OtherImage>(
        offset,
        OtherImageSchema.deserialize,
        allOffsets,
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension GenerationIIIQueryFilter
    on QueryBuilder<GenerationIII, GenerationIII, QFilterCondition> {
  QueryBuilder<GenerationIII, GenerationIII, QAfterFilterCondition>
      emeraldIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'emerald',
      ));
    });
  }

  QueryBuilder<GenerationIII, GenerationIII, QAfterFilterCondition>
      emeraldIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'emerald',
      ));
    });
  }

  QueryBuilder<GenerationIII, GenerationIII, QAfterFilterCondition>
      fireredLeafgreenIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fireredLeafgreen',
      ));
    });
  }

  QueryBuilder<GenerationIII, GenerationIII, QAfterFilterCondition>
      fireredLeafgreenIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fireredLeafgreen',
      ));
    });
  }

  QueryBuilder<GenerationIII, GenerationIII, QAfterFilterCondition>
      rubySapphireIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rubySapphire',
      ));
    });
  }

  QueryBuilder<GenerationIII, GenerationIII, QAfterFilterCondition>
      rubySapphireIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rubySapphire',
      ));
    });
  }
}

extension GenerationIIIQueryObject
    on QueryBuilder<GenerationIII, GenerationIII, QFilterCondition> {
  QueryBuilder<GenerationIII, GenerationIII, QAfterFilterCondition> emerald(
      FilterQuery<OtherImage> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'emerald');
    });
  }

  QueryBuilder<GenerationIII, GenerationIII, QAfterFilterCondition>
      fireredLeafgreen(FilterQuery<OtherImage> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'fireredLeafgreen');
    });
  }

  QueryBuilder<GenerationIII, GenerationIII, QAfterFilterCondition>
      rubySapphire(FilterQuery<OtherImage> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'rubySapphire');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const GenerationIVSchema = Schema(
  name: r'GenerationIV',
  id: 6578347109000303783,
  properties: {
    r'diamondPearl': PropertySchema(
      id: 0,
      name: r'diamondPearl',
      type: IsarType.object,
      target: r'OtherImage',
    ),
    r'heartgoldSoulsilver': PropertySchema(
      id: 1,
      name: r'heartgoldSoulsilver',
      type: IsarType.object,
      target: r'OtherImage',
    ),
    r'platinum': PropertySchema(
      id: 2,
      name: r'platinum',
      type: IsarType.object,
      target: r'OtherImage',
    )
  },
  estimateSize: _generationIVEstimateSize,
  serialize: _generationIVSerialize,
  deserialize: _generationIVDeserialize,
  deserializeProp: _generationIVDeserializeProp,
);

int _generationIVEstimateSize(
  GenerationIV object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.diamondPearl;
    if (value != null) {
      bytesCount += 3 +
          OtherImageSchema.estimateSize(
              value, allOffsets[OtherImage]!, allOffsets);
    }
  }
  {
    final value = object.heartgoldSoulsilver;
    if (value != null) {
      bytesCount += 3 +
          OtherImageSchema.estimateSize(
              value, allOffsets[OtherImage]!, allOffsets);
    }
  }
  {
    final value = object.platinum;
    if (value != null) {
      bytesCount += 3 +
          OtherImageSchema.estimateSize(
              value, allOffsets[OtherImage]!, allOffsets);
    }
  }
  return bytesCount;
}

void _generationIVSerialize(
  GenerationIV object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<OtherImage>(
    offsets[0],
    allOffsets,
    OtherImageSchema.serialize,
    object.diamondPearl,
  );
  writer.writeObject<OtherImage>(
    offsets[1],
    allOffsets,
    OtherImageSchema.serialize,
    object.heartgoldSoulsilver,
  );
  writer.writeObject<OtherImage>(
    offsets[2],
    allOffsets,
    OtherImageSchema.serialize,
    object.platinum,
  );
}

GenerationIV _generationIVDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = GenerationIV(
    diamondPearl: reader.readObjectOrNull<OtherImage>(
      offsets[0],
      OtherImageSchema.deserialize,
      allOffsets,
    ),
    heartgoldSoulsilver: reader.readObjectOrNull<OtherImage>(
      offsets[1],
      OtherImageSchema.deserialize,
      allOffsets,
    ),
    platinum: reader.readObjectOrNull<OtherImage>(
      offsets[2],
      OtherImageSchema.deserialize,
      allOffsets,
    ),
  );
  return object;
}

P _generationIVDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<OtherImage>(
        offset,
        OtherImageSchema.deserialize,
        allOffsets,
      )) as P;
    case 1:
      return (reader.readObjectOrNull<OtherImage>(
        offset,
        OtherImageSchema.deserialize,
        allOffsets,
      )) as P;
    case 2:
      return (reader.readObjectOrNull<OtherImage>(
        offset,
        OtherImageSchema.deserialize,
        allOffsets,
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension GenerationIVQueryFilter
    on QueryBuilder<GenerationIV, GenerationIV, QFilterCondition> {
  QueryBuilder<GenerationIV, GenerationIV, QAfterFilterCondition>
      diamondPearlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'diamondPearl',
      ));
    });
  }

  QueryBuilder<GenerationIV, GenerationIV, QAfterFilterCondition>
      diamondPearlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'diamondPearl',
      ));
    });
  }

  QueryBuilder<GenerationIV, GenerationIV, QAfterFilterCondition>
      heartgoldSoulsilverIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'heartgoldSoulsilver',
      ));
    });
  }

  QueryBuilder<GenerationIV, GenerationIV, QAfterFilterCondition>
      heartgoldSoulsilverIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'heartgoldSoulsilver',
      ));
    });
  }

  QueryBuilder<GenerationIV, GenerationIV, QAfterFilterCondition>
      platinumIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'platinum',
      ));
    });
  }

  QueryBuilder<GenerationIV, GenerationIV, QAfterFilterCondition>
      platinumIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'platinum',
      ));
    });
  }
}

extension GenerationIVQueryObject
    on QueryBuilder<GenerationIV, GenerationIV, QFilterCondition> {
  QueryBuilder<GenerationIV, GenerationIV, QAfterFilterCondition> diamondPearl(
      FilterQuery<OtherImage> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'diamondPearl');
    });
  }

  QueryBuilder<GenerationIV, GenerationIV, QAfterFilterCondition>
      heartgoldSoulsilver(FilterQuery<OtherImage> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'heartgoldSoulsilver');
    });
  }

  QueryBuilder<GenerationIV, GenerationIV, QAfterFilterCondition> platinum(
      FilterQuery<OtherImage> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'platinum');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const GenerationVSchema = Schema(
  name: r'GenerationV',
  id: -2441046387767622809,
  properties: {
    r'blackWhite': PropertySchema(
      id: 0,
      name: r'blackWhite',
      type: IsarType.object,
      target: r'BlackWhite',
    )
  },
  estimateSize: _generationVEstimateSize,
  serialize: _generationVSerialize,
  deserialize: _generationVDeserialize,
  deserializeProp: _generationVDeserializeProp,
);

int _generationVEstimateSize(
  GenerationV object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.blackWhite;
    if (value != null) {
      bytesCount += 3 +
          BlackWhiteSchema.estimateSize(
              value, allOffsets[BlackWhite]!, allOffsets);
    }
  }
  return bytesCount;
}

void _generationVSerialize(
  GenerationV object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<BlackWhite>(
    offsets[0],
    allOffsets,
    BlackWhiteSchema.serialize,
    object.blackWhite,
  );
}

GenerationV _generationVDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = GenerationV(
    blackWhite: reader.readObjectOrNull<BlackWhite>(
      offsets[0],
      BlackWhiteSchema.deserialize,
      allOffsets,
    ),
  );
  return object;
}

P _generationVDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<BlackWhite>(
        offset,
        BlackWhiteSchema.deserialize,
        allOffsets,
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension GenerationVQueryFilter
    on QueryBuilder<GenerationV, GenerationV, QFilterCondition> {
  QueryBuilder<GenerationV, GenerationV, QAfterFilterCondition>
      blackWhiteIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'blackWhite',
      ));
    });
  }

  QueryBuilder<GenerationV, GenerationV, QAfterFilterCondition>
      blackWhiteIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'blackWhite',
      ));
    });
  }
}

extension GenerationVQueryObject
    on QueryBuilder<GenerationV, GenerationV, QFilterCondition> {
  QueryBuilder<GenerationV, GenerationV, QAfterFilterCondition> blackWhite(
      FilterQuery<BlackWhite> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'blackWhite');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const BlackWhiteSchema = Schema(
  name: r'BlackWhite',
  id: 5391536512687860243,
  properties: {
    r'animated': PropertySchema(
      id: 0,
      name: r'animated',
      type: IsarType.object,
      target: r'OtherImage',
    ),
    r'images': PropertySchema(
      id: 1,
      name: r'images',
      type: IsarType.object,
      target: r'OtherImage',
    )
  },
  estimateSize: _blackWhiteEstimateSize,
  serialize: _blackWhiteSerialize,
  deserialize: _blackWhiteDeserialize,
  deserializeProp: _blackWhiteDeserializeProp,
);

int _blackWhiteEstimateSize(
  BlackWhite object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.animated;
    if (value != null) {
      bytesCount += 3 +
          OtherImageSchema.estimateSize(
              value, allOffsets[OtherImage]!, allOffsets);
    }
  }
  {
    final value = object.images;
    if (value != null) {
      bytesCount += 3 +
          OtherImageSchema.estimateSize(
              value, allOffsets[OtherImage]!, allOffsets);
    }
  }
  return bytesCount;
}

void _blackWhiteSerialize(
  BlackWhite object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<OtherImage>(
    offsets[0],
    allOffsets,
    OtherImageSchema.serialize,
    object.animated,
  );
  writer.writeObject<OtherImage>(
    offsets[1],
    allOffsets,
    OtherImageSchema.serialize,
    object.images,
  );
}

BlackWhite _blackWhiteDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = BlackWhite(
    animated: reader.readObjectOrNull<OtherImage>(
      offsets[0],
      OtherImageSchema.deserialize,
      allOffsets,
    ),
    images: reader.readObjectOrNull<OtherImage>(
      offsets[1],
      OtherImageSchema.deserialize,
      allOffsets,
    ),
  );
  return object;
}

P _blackWhiteDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<OtherImage>(
        offset,
        OtherImageSchema.deserialize,
        allOffsets,
      )) as P;
    case 1:
      return (reader.readObjectOrNull<OtherImage>(
        offset,
        OtherImageSchema.deserialize,
        allOffsets,
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension BlackWhiteQueryFilter
    on QueryBuilder<BlackWhite, BlackWhite, QFilterCondition> {
  QueryBuilder<BlackWhite, BlackWhite, QAfterFilterCondition> animatedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'animated',
      ));
    });
  }

  QueryBuilder<BlackWhite, BlackWhite, QAfterFilterCondition>
      animatedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'animated',
      ));
    });
  }

  QueryBuilder<BlackWhite, BlackWhite, QAfterFilterCondition> imagesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'images',
      ));
    });
  }

  QueryBuilder<BlackWhite, BlackWhite, QAfterFilterCondition>
      imagesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'images',
      ));
    });
  }
}

extension BlackWhiteQueryObject
    on QueryBuilder<BlackWhite, BlackWhite, QFilterCondition> {
  QueryBuilder<BlackWhite, BlackWhite, QAfterFilterCondition> animated(
      FilterQuery<OtherImage> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'animated');
    });
  }

  QueryBuilder<BlackWhite, BlackWhite, QAfterFilterCondition> images(
      FilterQuery<OtherImage> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'images');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const GenerationVISchema = Schema(
  name: r'GenerationVI',
  id: 4534110736650525605,
  properties: {
    r'omegarubyAlphasapphire': PropertySchema(
      id: 0,
      name: r'omegarubyAlphasapphire',
      type: IsarType.object,
      target: r'OtherImage',
    ),
    r'xy': PropertySchema(
      id: 1,
      name: r'xy',
      type: IsarType.object,
      target: r'OtherImage',
    )
  },
  estimateSize: _generationVIEstimateSize,
  serialize: _generationVISerialize,
  deserialize: _generationVIDeserialize,
  deserializeProp: _generationVIDeserializeProp,
);

int _generationVIEstimateSize(
  GenerationVI object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.omegarubyAlphasapphire;
    if (value != null) {
      bytesCount += 3 +
          OtherImageSchema.estimateSize(
              value, allOffsets[OtherImage]!, allOffsets);
    }
  }
  {
    final value = object.xy;
    if (value != null) {
      bytesCount += 3 +
          OtherImageSchema.estimateSize(
              value, allOffsets[OtherImage]!, allOffsets);
    }
  }
  return bytesCount;
}

void _generationVISerialize(
  GenerationVI object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<OtherImage>(
    offsets[0],
    allOffsets,
    OtherImageSchema.serialize,
    object.omegarubyAlphasapphire,
  );
  writer.writeObject<OtherImage>(
    offsets[1],
    allOffsets,
    OtherImageSchema.serialize,
    object.xy,
  );
}

GenerationVI _generationVIDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = GenerationVI(
    omegarubyAlphasapphire: reader.readObjectOrNull<OtherImage>(
      offsets[0],
      OtherImageSchema.deserialize,
      allOffsets,
    ),
    xy: reader.readObjectOrNull<OtherImage>(
      offsets[1],
      OtherImageSchema.deserialize,
      allOffsets,
    ),
  );
  return object;
}

P _generationVIDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<OtherImage>(
        offset,
        OtherImageSchema.deserialize,
        allOffsets,
      )) as P;
    case 1:
      return (reader.readObjectOrNull<OtherImage>(
        offset,
        OtherImageSchema.deserialize,
        allOffsets,
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension GenerationVIQueryFilter
    on QueryBuilder<GenerationVI, GenerationVI, QFilterCondition> {
  QueryBuilder<GenerationVI, GenerationVI, QAfterFilterCondition>
      omegarubyAlphasapphireIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'omegarubyAlphasapphire',
      ));
    });
  }

  QueryBuilder<GenerationVI, GenerationVI, QAfterFilterCondition>
      omegarubyAlphasapphireIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'omegarubyAlphasapphire',
      ));
    });
  }

  QueryBuilder<GenerationVI, GenerationVI, QAfterFilterCondition> xyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'xy',
      ));
    });
  }

  QueryBuilder<GenerationVI, GenerationVI, QAfterFilterCondition>
      xyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'xy',
      ));
    });
  }
}

extension GenerationVIQueryObject
    on QueryBuilder<GenerationVI, GenerationVI, QFilterCondition> {
  QueryBuilder<GenerationVI, GenerationVI, QAfterFilterCondition>
      omegarubyAlphasapphire(FilterQuery<OtherImage> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'omegarubyAlphasapphire');
    });
  }

  QueryBuilder<GenerationVI, GenerationVI, QAfterFilterCondition> xy(
      FilterQuery<OtherImage> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'xy');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const GenerationVIISchema = Schema(
  name: r'GenerationVII',
  id: 3422413904896686883,
  properties: {
    r'icons': PropertySchema(
      id: 0,
      name: r'icons',
      type: IsarType.object,
      target: r'OtherImage',
    ),
    r'ultraSunUltraMoon': PropertySchema(
      id: 1,
      name: r'ultraSunUltraMoon',
      type: IsarType.object,
      target: r'OtherImage',
    )
  },
  estimateSize: _generationVIIEstimateSize,
  serialize: _generationVIISerialize,
  deserialize: _generationVIIDeserialize,
  deserializeProp: _generationVIIDeserializeProp,
);

int _generationVIIEstimateSize(
  GenerationVII object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.icons;
    if (value != null) {
      bytesCount += 3 +
          OtherImageSchema.estimateSize(
              value, allOffsets[OtherImage]!, allOffsets);
    }
  }
  {
    final value = object.ultraSunUltraMoon;
    if (value != null) {
      bytesCount += 3 +
          OtherImageSchema.estimateSize(
              value, allOffsets[OtherImage]!, allOffsets);
    }
  }
  return bytesCount;
}

void _generationVIISerialize(
  GenerationVII object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<OtherImage>(
    offsets[0],
    allOffsets,
    OtherImageSchema.serialize,
    object.icons,
  );
  writer.writeObject<OtherImage>(
    offsets[1],
    allOffsets,
    OtherImageSchema.serialize,
    object.ultraSunUltraMoon,
  );
}

GenerationVII _generationVIIDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = GenerationVII(
    icons: reader.readObjectOrNull<OtherImage>(
      offsets[0],
      OtherImageSchema.deserialize,
      allOffsets,
    ),
    ultraSunUltraMoon: reader.readObjectOrNull<OtherImage>(
      offsets[1],
      OtherImageSchema.deserialize,
      allOffsets,
    ),
  );
  return object;
}

P _generationVIIDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<OtherImage>(
        offset,
        OtherImageSchema.deserialize,
        allOffsets,
      )) as P;
    case 1:
      return (reader.readObjectOrNull<OtherImage>(
        offset,
        OtherImageSchema.deserialize,
        allOffsets,
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension GenerationVIIQueryFilter
    on QueryBuilder<GenerationVII, GenerationVII, QFilterCondition> {
  QueryBuilder<GenerationVII, GenerationVII, QAfterFilterCondition>
      iconsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'icons',
      ));
    });
  }

  QueryBuilder<GenerationVII, GenerationVII, QAfterFilterCondition>
      iconsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'icons',
      ));
    });
  }

  QueryBuilder<GenerationVII, GenerationVII, QAfterFilterCondition>
      ultraSunUltraMoonIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ultraSunUltraMoon',
      ));
    });
  }

  QueryBuilder<GenerationVII, GenerationVII, QAfterFilterCondition>
      ultraSunUltraMoonIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ultraSunUltraMoon',
      ));
    });
  }
}

extension GenerationVIIQueryObject
    on QueryBuilder<GenerationVII, GenerationVII, QFilterCondition> {
  QueryBuilder<GenerationVII, GenerationVII, QAfterFilterCondition> icons(
      FilterQuery<OtherImage> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'icons');
    });
  }

  QueryBuilder<GenerationVII, GenerationVII, QAfterFilterCondition>
      ultraSunUltraMoon(FilterQuery<OtherImage> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'ultraSunUltraMoon');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const GenerationVIIISchema = Schema(
  name: r'GenerationVIII',
  id: 5088884118299658507,
  properties: {
    r'icons': PropertySchema(
      id: 0,
      name: r'icons',
      type: IsarType.object,
      target: r'OtherImage',
    )
  },
  estimateSize: _generationVIIIEstimateSize,
  serialize: _generationVIIISerialize,
  deserialize: _generationVIIIDeserialize,
  deserializeProp: _generationVIIIDeserializeProp,
);

int _generationVIIIEstimateSize(
  GenerationVIII object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.icons;
    if (value != null) {
      bytesCount += 3 +
          OtherImageSchema.estimateSize(
              value, allOffsets[OtherImage]!, allOffsets);
    }
  }
  return bytesCount;
}

void _generationVIIISerialize(
  GenerationVIII object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<OtherImage>(
    offsets[0],
    allOffsets,
    OtherImageSchema.serialize,
    object.icons,
  );
}

GenerationVIII _generationVIIIDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = GenerationVIII(
    icons: reader.readObjectOrNull<OtherImage>(
      offsets[0],
      OtherImageSchema.deserialize,
      allOffsets,
    ),
  );
  return object;
}

P _generationVIIIDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<OtherImage>(
        offset,
        OtherImageSchema.deserialize,
        allOffsets,
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension GenerationVIIIQueryFilter
    on QueryBuilder<GenerationVIII, GenerationVIII, QFilterCondition> {
  QueryBuilder<GenerationVIII, GenerationVIII, QAfterFilterCondition>
      iconsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'icons',
      ));
    });
  }

  QueryBuilder<GenerationVIII, GenerationVIII, QAfterFilterCondition>
      iconsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'icons',
      ));
    });
  }
}

extension GenerationVIIIQueryObject
    on QueryBuilder<GenerationVIII, GenerationVIII, QFilterCondition> {
  QueryBuilder<GenerationVIII, GenerationVIII, QAfterFilterCondition> icons(
      FilterQuery<OtherImage> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'icons');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const OtherSchema = Schema(
  name: r'Other',
  id: 1183552620461656347,
  properties: {
    r'dreamWorld': PropertySchema(
      id: 0,
      name: r'dreamWorld',
      type: IsarType.object,
      target: r'OtherImage',
    ),
    r'home': PropertySchema(
      id: 1,
      name: r'home',
      type: IsarType.object,
      target: r'OtherImage',
    ),
    r'officialArtwork': PropertySchema(
      id: 2,
      name: r'officialArtwork',
      type: IsarType.object,
      target: r'OtherImage',
    ),
    r'showdown': PropertySchema(
      id: 3,
      name: r'showdown',
      type: IsarType.object,
      target: r'OtherImage',
    )
  },
  estimateSize: _otherEstimateSize,
  serialize: _otherSerialize,
  deserialize: _otherDeserialize,
  deserializeProp: _otherDeserializeProp,
);

int _otherEstimateSize(
  Other object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.dreamWorld;
    if (value != null) {
      bytesCount += 3 +
          OtherImageSchema.estimateSize(
              value, allOffsets[OtherImage]!, allOffsets);
    }
  }
  {
    final value = object.home;
    if (value != null) {
      bytesCount += 3 +
          OtherImageSchema.estimateSize(
              value, allOffsets[OtherImage]!, allOffsets);
    }
  }
  {
    final value = object.officialArtwork;
    if (value != null) {
      bytesCount += 3 +
          OtherImageSchema.estimateSize(
              value, allOffsets[OtherImage]!, allOffsets);
    }
  }
  {
    final value = object.showdown;
    if (value != null) {
      bytesCount += 3 +
          OtherImageSchema.estimateSize(
              value, allOffsets[OtherImage]!, allOffsets);
    }
  }
  return bytesCount;
}

void _otherSerialize(
  Other object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<OtherImage>(
    offsets[0],
    allOffsets,
    OtherImageSchema.serialize,
    object.dreamWorld,
  );
  writer.writeObject<OtherImage>(
    offsets[1],
    allOffsets,
    OtherImageSchema.serialize,
    object.home,
  );
  writer.writeObject<OtherImage>(
    offsets[2],
    allOffsets,
    OtherImageSchema.serialize,
    object.officialArtwork,
  );
  writer.writeObject<OtherImage>(
    offsets[3],
    allOffsets,
    OtherImageSchema.serialize,
    object.showdown,
  );
}

Other _otherDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Other(
    dreamWorld: reader.readObjectOrNull<OtherImage>(
      offsets[0],
      OtherImageSchema.deserialize,
      allOffsets,
    ),
    home: reader.readObjectOrNull<OtherImage>(
      offsets[1],
      OtherImageSchema.deserialize,
      allOffsets,
    ),
    officialArtwork: reader.readObjectOrNull<OtherImage>(
      offsets[2],
      OtherImageSchema.deserialize,
      allOffsets,
    ),
    showdown: reader.readObjectOrNull<OtherImage>(
      offsets[3],
      OtherImageSchema.deserialize,
      allOffsets,
    ),
  );
  return object;
}

P _otherDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<OtherImage>(
        offset,
        OtherImageSchema.deserialize,
        allOffsets,
      )) as P;
    case 1:
      return (reader.readObjectOrNull<OtherImage>(
        offset,
        OtherImageSchema.deserialize,
        allOffsets,
      )) as P;
    case 2:
      return (reader.readObjectOrNull<OtherImage>(
        offset,
        OtherImageSchema.deserialize,
        allOffsets,
      )) as P;
    case 3:
      return (reader.readObjectOrNull<OtherImage>(
        offset,
        OtherImageSchema.deserialize,
        allOffsets,
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension OtherQueryFilter on QueryBuilder<Other, Other, QFilterCondition> {
  QueryBuilder<Other, Other, QAfterFilterCondition> dreamWorldIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dreamWorld',
      ));
    });
  }

  QueryBuilder<Other, Other, QAfterFilterCondition> dreamWorldIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dreamWorld',
      ));
    });
  }

  QueryBuilder<Other, Other, QAfterFilterCondition> homeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'home',
      ));
    });
  }

  QueryBuilder<Other, Other, QAfterFilterCondition> homeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'home',
      ));
    });
  }

  QueryBuilder<Other, Other, QAfterFilterCondition> officialArtworkIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'officialArtwork',
      ));
    });
  }

  QueryBuilder<Other, Other, QAfterFilterCondition> officialArtworkIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'officialArtwork',
      ));
    });
  }

  QueryBuilder<Other, Other, QAfterFilterCondition> showdownIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'showdown',
      ));
    });
  }

  QueryBuilder<Other, Other, QAfterFilterCondition> showdownIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'showdown',
      ));
    });
  }
}

extension OtherQueryObject on QueryBuilder<Other, Other, QFilterCondition> {
  QueryBuilder<Other, Other, QAfterFilterCondition> dreamWorld(
      FilterQuery<OtherImage> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'dreamWorld');
    });
  }

  QueryBuilder<Other, Other, QAfterFilterCondition> home(
      FilterQuery<OtherImage> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'home');
    });
  }

  QueryBuilder<Other, Other, QAfterFilterCondition> officialArtwork(
      FilterQuery<OtherImage> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'officialArtwork');
    });
  }

  QueryBuilder<Other, Other, QAfterFilterCondition> showdown(
      FilterQuery<OtherImage> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'showdown');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const OtherImageSchema = Schema(
  name: r'OtherImage',
  id: 6065782724454173717,
  properties: {
    r'backDefault': PropertySchema(
      id: 0,
      name: r'backDefault',
      type: IsarType.string,
    ),
    r'backFemale': PropertySchema(
      id: 1,
      name: r'backFemale',
      type: IsarType.string,
    ),
    r'backShiny': PropertySchema(
      id: 2,
      name: r'backShiny',
      type: IsarType.string,
    ),
    r'backShinyFemale': PropertySchema(
      id: 3,
      name: r'backShinyFemale',
      type: IsarType.string,
    ),
    r'frontDefault': PropertySchema(
      id: 4,
      name: r'frontDefault',
      type: IsarType.string,
    ),
    r'frontFemale': PropertySchema(
      id: 5,
      name: r'frontFemale',
      type: IsarType.string,
    ),
    r'frontShiny': PropertySchema(
      id: 6,
      name: r'frontShiny',
      type: IsarType.string,
    ),
    r'frontShinyFemale': PropertySchema(
      id: 7,
      name: r'frontShinyFemale',
      type: IsarType.string,
    )
  },
  estimateSize: _otherImageEstimateSize,
  serialize: _otherImageSerialize,
  deserialize: _otherImageDeserialize,
  deserializeProp: _otherImageDeserializeProp,
);

int _otherImageEstimateSize(
  OtherImage object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.backDefault;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.backFemale;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.backShiny;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.backShinyFemale;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.frontDefault;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.frontFemale;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.frontShiny;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.frontShinyFemale;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _otherImageSerialize(
  OtherImage object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.backDefault);
  writer.writeString(offsets[1], object.backFemale);
  writer.writeString(offsets[2], object.backShiny);
  writer.writeString(offsets[3], object.backShinyFemale);
  writer.writeString(offsets[4], object.frontDefault);
  writer.writeString(offsets[5], object.frontFemale);
  writer.writeString(offsets[6], object.frontShiny);
  writer.writeString(offsets[7], object.frontShinyFemale);
}

OtherImage _otherImageDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = OtherImage(
    backDefault: reader.readStringOrNull(offsets[0]),
    backFemale: reader.readStringOrNull(offsets[1]),
    backShiny: reader.readStringOrNull(offsets[2]),
    backShinyFemale: reader.readStringOrNull(offsets[3]),
    frontDefault: reader.readStringOrNull(offsets[4]),
    frontFemale: reader.readStringOrNull(offsets[5]),
    frontShiny: reader.readStringOrNull(offsets[6]),
    frontShinyFemale: reader.readStringOrNull(offsets[7]),
  );
  return object;
}

P _otherImageDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension OtherImageQueryFilter
    on QueryBuilder<OtherImage, OtherImage, QFilterCondition> {
  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      backDefaultIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'backDefault',
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      backDefaultIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'backDefault',
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      backDefaultEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backDefault',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      backDefaultGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'backDefault',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      backDefaultLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'backDefault',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      backDefaultBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'backDefault',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      backDefaultStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'backDefault',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      backDefaultEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'backDefault',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      backDefaultContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'backDefault',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      backDefaultMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'backDefault',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      backDefaultIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backDefault',
        value: '',
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      backDefaultIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'backDefault',
        value: '',
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      backFemaleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'backFemale',
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      backFemaleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'backFemale',
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition> backFemaleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      backFemaleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'backFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      backFemaleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'backFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition> backFemaleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'backFemale',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      backFemaleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'backFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      backFemaleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'backFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      backFemaleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'backFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition> backFemaleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'backFemale',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      backFemaleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backFemale',
        value: '',
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      backFemaleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'backFemale',
        value: '',
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      backShinyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'backShiny',
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      backShinyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'backShiny',
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition> backShinyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backShiny',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      backShinyGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'backShiny',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition> backShinyLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'backShiny',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition> backShinyBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'backShiny',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      backShinyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'backShiny',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition> backShinyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'backShiny',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition> backShinyContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'backShiny',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition> backShinyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'backShiny',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      backShinyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backShiny',
        value: '',
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      backShinyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'backShiny',
        value: '',
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      backShinyFemaleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'backShinyFemale',
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      backShinyFemaleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'backShinyFemale',
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      backShinyFemaleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backShinyFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      backShinyFemaleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'backShinyFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      backShinyFemaleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'backShinyFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      backShinyFemaleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'backShinyFemale',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      backShinyFemaleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'backShinyFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      backShinyFemaleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'backShinyFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      backShinyFemaleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'backShinyFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      backShinyFemaleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'backShinyFemale',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      backShinyFemaleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backShinyFemale',
        value: '',
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      backShinyFemaleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'backShinyFemale',
        value: '',
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontDefaultIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'frontDefault',
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontDefaultIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'frontDefault',
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontDefaultEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'frontDefault',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontDefaultGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'frontDefault',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontDefaultLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'frontDefault',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontDefaultBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'frontDefault',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontDefaultStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'frontDefault',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontDefaultEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'frontDefault',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontDefaultContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'frontDefault',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontDefaultMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'frontDefault',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontDefaultIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'frontDefault',
        value: '',
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontDefaultIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'frontDefault',
        value: '',
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontFemaleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'frontFemale',
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontFemaleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'frontFemale',
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontFemaleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'frontFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontFemaleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'frontFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontFemaleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'frontFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontFemaleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'frontFemale',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontFemaleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'frontFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontFemaleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'frontFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontFemaleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'frontFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontFemaleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'frontFemale',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontFemaleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'frontFemale',
        value: '',
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontFemaleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'frontFemale',
        value: '',
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontShinyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'frontShiny',
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontShinyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'frontShiny',
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition> frontShinyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'frontShiny',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontShinyGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'frontShiny',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontShinyLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'frontShiny',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition> frontShinyBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'frontShiny',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontShinyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'frontShiny',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontShinyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'frontShiny',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontShinyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'frontShiny',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition> frontShinyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'frontShiny',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontShinyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'frontShiny',
        value: '',
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontShinyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'frontShiny',
        value: '',
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontShinyFemaleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'frontShinyFemale',
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontShinyFemaleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'frontShinyFemale',
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontShinyFemaleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'frontShinyFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontShinyFemaleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'frontShinyFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontShinyFemaleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'frontShinyFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontShinyFemaleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'frontShinyFemale',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontShinyFemaleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'frontShinyFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontShinyFemaleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'frontShinyFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontShinyFemaleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'frontShinyFemale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontShinyFemaleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'frontShinyFemale',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontShinyFemaleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'frontShinyFemale',
        value: '',
      ));
    });
  }

  QueryBuilder<OtherImage, OtherImage, QAfterFilterCondition>
      frontShinyFemaleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'frontShinyFemale',
        value: '',
      ));
    });
  }
}

extension OtherImageQueryObject
    on QueryBuilder<OtherImage, OtherImage, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const PastTypeSchema = Schema(
  name: r'PastType',
  id: -8262482738676264700,
  properties: {
    r'generation': PropertySchema(
      id: 0,
      name: r'generation',
      type: IsarType.object,
      target: r'Species',
    ),
    r'type': PropertySchema(
      id: 1,
      name: r'type',
      type: IsarType.objectList,
      target: r'OldType',
    )
  },
  estimateSize: _pastTypeEstimateSize,
  serialize: _pastTypeSerialize,
  deserialize: _pastTypeDeserialize,
  deserializeProp: _pastTypeDeserializeProp,
);

int _pastTypeEstimateSize(
  PastType object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.generation;
    if (value != null) {
      bytesCount += 3 +
          SpeciesSchema.estimateSize(value, allOffsets[Species]!, allOffsets);
    }
  }
  {
    final list = object.type;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[OldType]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += OldTypeSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  return bytesCount;
}

void _pastTypeSerialize(
  PastType object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<Species>(
    offsets[0],
    allOffsets,
    SpeciesSchema.serialize,
    object.generation,
  );
  writer.writeObjectList<OldType>(
    offsets[1],
    allOffsets,
    OldTypeSchema.serialize,
    object.type,
  );
}

PastType _pastTypeDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PastType(
    generation: reader.readObjectOrNull<Species>(
      offsets[0],
      SpeciesSchema.deserialize,
      allOffsets,
    ),
    type: reader.readObjectList<OldType>(
      offsets[1],
      OldTypeSchema.deserialize,
      allOffsets,
      OldType(),
    ),
  );
  return object;
}

P _pastTypeDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<Species>(
        offset,
        SpeciesSchema.deserialize,
        allOffsets,
      )) as P;
    case 1:
      return (reader.readObjectList<OldType>(
        offset,
        OldTypeSchema.deserialize,
        allOffsets,
        OldType(),
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension PastTypeQueryFilter
    on QueryBuilder<PastType, PastType, QFilterCondition> {
  QueryBuilder<PastType, PastType, QAfterFilterCondition> generationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'generation',
      ));
    });
  }

  QueryBuilder<PastType, PastType, QAfterFilterCondition>
      generationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'generation',
      ));
    });
  }

  QueryBuilder<PastType, PastType, QAfterFilterCondition> typeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'type',
      ));
    });
  }

  QueryBuilder<PastType, PastType, QAfterFilterCondition> typeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'type',
      ));
    });
  }

  QueryBuilder<PastType, PastType, QAfterFilterCondition> typeLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'type',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<PastType, PastType, QAfterFilterCondition> typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'type',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<PastType, PastType, QAfterFilterCondition> typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'type',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PastType, PastType, QAfterFilterCondition> typeLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'type',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<PastType, PastType, QAfterFilterCondition> typeLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'type',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PastType, PastType, QAfterFilterCondition> typeLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'type',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension PastTypeQueryObject
    on QueryBuilder<PastType, PastType, QFilterCondition> {
  QueryBuilder<PastType, PastType, QAfterFilterCondition> generation(
      FilterQuery<Species> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'generation');
    });
  }

  QueryBuilder<PastType, PastType, QAfterFilterCondition> typeElement(
      FilterQuery<OldType> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'type');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const OldTypeSchema = Schema(
  name: r'OldType',
  id: -3702164861518070287,
  properties: {
    r'slot': PropertySchema(
      id: 0,
      name: r'slot',
      type: IsarType.long,
    ),
    r'type': PropertySchema(
      id: 1,
      name: r'type',
      type: IsarType.object,
      target: r'Species',
    )
  },
  estimateSize: _oldTypeEstimateSize,
  serialize: _oldTypeSerialize,
  deserialize: _oldTypeDeserialize,
  deserializeProp: _oldTypeDeserializeProp,
);

int _oldTypeEstimateSize(
  OldType object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.type;
    if (value != null) {
      bytesCount += 3 +
          SpeciesSchema.estimateSize(value, allOffsets[Species]!, allOffsets);
    }
  }
  return bytesCount;
}

void _oldTypeSerialize(
  OldType object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.slot);
  writer.writeObject<Species>(
    offsets[1],
    allOffsets,
    SpeciesSchema.serialize,
    object.type,
  );
}

OldType _oldTypeDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = OldType(
    slot: reader.readLongOrNull(offsets[0]),
    type: reader.readObjectOrNull<Species>(
      offsets[1],
      SpeciesSchema.deserialize,
      allOffsets,
    ),
  );
  return object;
}

P _oldTypeDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readObjectOrNull<Species>(
        offset,
        SpeciesSchema.deserialize,
        allOffsets,
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension OldTypeQueryFilter
    on QueryBuilder<OldType, OldType, QFilterCondition> {
  QueryBuilder<OldType, OldType, QAfterFilterCondition> slotIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'slot',
      ));
    });
  }

  QueryBuilder<OldType, OldType, QAfterFilterCondition> slotIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'slot',
      ));
    });
  }

  QueryBuilder<OldType, OldType, QAfterFilterCondition> slotEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'slot',
        value: value,
      ));
    });
  }

  QueryBuilder<OldType, OldType, QAfterFilterCondition> slotGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'slot',
        value: value,
      ));
    });
  }

  QueryBuilder<OldType, OldType, QAfterFilterCondition> slotLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'slot',
        value: value,
      ));
    });
  }

  QueryBuilder<OldType, OldType, QAfterFilterCondition> slotBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'slot',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<OldType, OldType, QAfterFilterCondition> typeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'type',
      ));
    });
  }

  QueryBuilder<OldType, OldType, QAfterFilterCondition> typeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'type',
      ));
    });
  }
}

extension OldTypeQueryObject
    on QueryBuilder<OldType, OldType, QFilterCondition> {
  QueryBuilder<OldType, OldType, QAfterFilterCondition> type(
      FilterQuery<Species> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'type');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const PastAbilitySchema = Schema(
  name: r'PastAbility',
  id: 707361983441962644,
  properties: {
    r'abilities': PropertySchema(
      id: 0,
      name: r'abilities',
      type: IsarType.objectList,
      target: r'Ability',
    ),
    r'generation': PropertySchema(
      id: 1,
      name: r'generation',
      type: IsarType.object,
      target: r'Species',
    )
  },
  estimateSize: _pastAbilityEstimateSize,
  serialize: _pastAbilitySerialize,
  deserialize: _pastAbilityDeserialize,
  deserializeProp: _pastAbilityDeserializeProp,
);

int _pastAbilityEstimateSize(
  PastAbility object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.abilities;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[Ability]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += AbilitySchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final value = object.generation;
    if (value != null) {
      bytesCount += 3 +
          SpeciesSchema.estimateSize(value, allOffsets[Species]!, allOffsets);
    }
  }
  return bytesCount;
}

void _pastAbilitySerialize(
  PastAbility object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<Ability>(
    offsets[0],
    allOffsets,
    AbilitySchema.serialize,
    object.abilities,
  );
  writer.writeObject<Species>(
    offsets[1],
    allOffsets,
    SpeciesSchema.serialize,
    object.generation,
  );
}

PastAbility _pastAbilityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PastAbility(
    abilities: reader.readObjectList<Ability>(
      offsets[0],
      AbilitySchema.deserialize,
      allOffsets,
      Ability(),
    ),
    generation: reader.readObjectOrNull<Species>(
      offsets[1],
      SpeciesSchema.deserialize,
      allOffsets,
    ),
  );
  return object;
}

P _pastAbilityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<Ability>(
        offset,
        AbilitySchema.deserialize,
        allOffsets,
        Ability(),
      )) as P;
    case 1:
      return (reader.readObjectOrNull<Species>(
        offset,
        SpeciesSchema.deserialize,
        allOffsets,
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension PastAbilityQueryFilter
    on QueryBuilder<PastAbility, PastAbility, QFilterCondition> {
  QueryBuilder<PastAbility, PastAbility, QAfterFilterCondition>
      abilitiesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'abilities',
      ));
    });
  }

  QueryBuilder<PastAbility, PastAbility, QAfterFilterCondition>
      abilitiesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'abilities',
      ));
    });
  }

  QueryBuilder<PastAbility, PastAbility, QAfterFilterCondition>
      abilitiesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'abilities',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<PastAbility, PastAbility, QAfterFilterCondition>
      abilitiesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'abilities',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<PastAbility, PastAbility, QAfterFilterCondition>
      abilitiesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'abilities',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PastAbility, PastAbility, QAfterFilterCondition>
      abilitiesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'abilities',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<PastAbility, PastAbility, QAfterFilterCondition>
      abilitiesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'abilities',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PastAbility, PastAbility, QAfterFilterCondition>
      abilitiesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'abilities',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<PastAbility, PastAbility, QAfterFilterCondition>
      generationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'generation',
      ));
    });
  }

  QueryBuilder<PastAbility, PastAbility, QAfterFilterCondition>
      generationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'generation',
      ));
    });
  }
}

extension PastAbilityQueryObject
    on QueryBuilder<PastAbility, PastAbility, QFilterCondition> {
  QueryBuilder<PastAbility, PastAbility, QAfterFilterCondition>
      abilitiesElement(FilterQuery<Ability> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'abilities');
    });
  }

  QueryBuilder<PastAbility, PastAbility, QAfterFilterCondition> generation(
      FilterQuery<Species> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'generation');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const MoveSchema = Schema(
  name: r'Move',
  id: 5504967249916866048,
  properties: {
    r'move': PropertySchema(
      id: 0,
      name: r'move',
      type: IsarType.object,
      target: r'Species',
    ),
    r'versionGroupDetails': PropertySchema(
      id: 1,
      name: r'versionGroupDetails',
      type: IsarType.objectList,
      target: r'VersionGroupDetail',
    )
  },
  estimateSize: _moveEstimateSize,
  serialize: _moveSerialize,
  deserialize: _moveDeserialize,
  deserializeProp: _moveDeserializeProp,
);

int _moveEstimateSize(
  Move object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.move;
    if (value != null) {
      bytesCount += 3 +
          SpeciesSchema.estimateSize(value, allOffsets[Species]!, allOffsets);
    }
  }
  {
    final list = object.versionGroupDetails;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[VersionGroupDetail]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              VersionGroupDetailSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  return bytesCount;
}

void _moveSerialize(
  Move object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<Species>(
    offsets[0],
    allOffsets,
    SpeciesSchema.serialize,
    object.move,
  );
  writer.writeObjectList<VersionGroupDetail>(
    offsets[1],
    allOffsets,
    VersionGroupDetailSchema.serialize,
    object.versionGroupDetails,
  );
}

Move _moveDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Move(
    move: reader.readObjectOrNull<Species>(
      offsets[0],
      SpeciesSchema.deserialize,
      allOffsets,
    ),
    versionGroupDetails: reader.readObjectList<VersionGroupDetail>(
      offsets[1],
      VersionGroupDetailSchema.deserialize,
      allOffsets,
      VersionGroupDetail(),
    ),
  );
  return object;
}

P _moveDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<Species>(
        offset,
        SpeciesSchema.deserialize,
        allOffsets,
      )) as P;
    case 1:
      return (reader.readObjectList<VersionGroupDetail>(
        offset,
        VersionGroupDetailSchema.deserialize,
        allOffsets,
        VersionGroupDetail(),
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension MoveQueryFilter on QueryBuilder<Move, Move, QFilterCondition> {
  QueryBuilder<Move, Move, QAfterFilterCondition> moveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'move',
      ));
    });
  }

  QueryBuilder<Move, Move, QAfterFilterCondition> moveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'move',
      ));
    });
  }

  QueryBuilder<Move, Move, QAfterFilterCondition> versionGroupDetailsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'versionGroupDetails',
      ));
    });
  }

  QueryBuilder<Move, Move, QAfterFilterCondition>
      versionGroupDetailsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'versionGroupDetails',
      ));
    });
  }

  QueryBuilder<Move, Move, QAfterFilterCondition>
      versionGroupDetailsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'versionGroupDetails',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Move, Move, QAfterFilterCondition> versionGroupDetailsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'versionGroupDetails',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Move, Move, QAfterFilterCondition>
      versionGroupDetailsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'versionGroupDetails',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Move, Move, QAfterFilterCondition>
      versionGroupDetailsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'versionGroupDetails',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Move, Move, QAfterFilterCondition>
      versionGroupDetailsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'versionGroupDetails',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Move, Move, QAfterFilterCondition>
      versionGroupDetailsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'versionGroupDetails',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension MoveQueryObject on QueryBuilder<Move, Move, QFilterCondition> {
  QueryBuilder<Move, Move, QAfterFilterCondition> move(FilterQuery<Species> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'move');
    });
  }

  QueryBuilder<Move, Move, QAfterFilterCondition> versionGroupDetailsElement(
      FilterQuery<VersionGroupDetail> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'versionGroupDetails');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const VersionGroupDetailSchema = Schema(
  name: r'VersionGroupDetail',
  id: 6825776471361947656,
  properties: {
    r'levelLearnedAt': PropertySchema(
      id: 0,
      name: r'levelLearnedAt',
      type: IsarType.long,
    ),
    r'moveLearnMethod': PropertySchema(
      id: 1,
      name: r'moveLearnMethod',
      type: IsarType.object,
      target: r'Species',
    ),
    r'order': PropertySchema(
      id: 2,
      name: r'order',
      type: IsarType.long,
    ),
    r'versionGroup': PropertySchema(
      id: 3,
      name: r'versionGroup',
      type: IsarType.object,
      target: r'Species',
    )
  },
  estimateSize: _versionGroupDetailEstimateSize,
  serialize: _versionGroupDetailSerialize,
  deserialize: _versionGroupDetailDeserialize,
  deserializeProp: _versionGroupDetailDeserializeProp,
);

int _versionGroupDetailEstimateSize(
  VersionGroupDetail object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.moveLearnMethod;
    if (value != null) {
      bytesCount += 3 +
          SpeciesSchema.estimateSize(value, allOffsets[Species]!, allOffsets);
    }
  }
  {
    final value = object.versionGroup;
    if (value != null) {
      bytesCount += 3 +
          SpeciesSchema.estimateSize(value, allOffsets[Species]!, allOffsets);
    }
  }
  return bytesCount;
}

void _versionGroupDetailSerialize(
  VersionGroupDetail object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.levelLearnedAt);
  writer.writeObject<Species>(
    offsets[1],
    allOffsets,
    SpeciesSchema.serialize,
    object.moveLearnMethod,
  );
  writer.writeLong(offsets[2], object.order);
  writer.writeObject<Species>(
    offsets[3],
    allOffsets,
    SpeciesSchema.serialize,
    object.versionGroup,
  );
}

VersionGroupDetail _versionGroupDetailDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = VersionGroupDetail(
    levelLearnedAt: reader.readLongOrNull(offsets[0]),
    moveLearnMethod: reader.readObjectOrNull<Species>(
      offsets[1],
      SpeciesSchema.deserialize,
      allOffsets,
    ),
    order: reader.readLongOrNull(offsets[2]),
    versionGroup: reader.readObjectOrNull<Species>(
      offsets[3],
      SpeciesSchema.deserialize,
      allOffsets,
    ),
  );
  return object;
}

P _versionGroupDetailDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readObjectOrNull<Species>(
        offset,
        SpeciesSchema.deserialize,
        allOffsets,
      )) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readObjectOrNull<Species>(
        offset,
        SpeciesSchema.deserialize,
        allOffsets,
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension VersionGroupDetailQueryFilter
    on QueryBuilder<VersionGroupDetail, VersionGroupDetail, QFilterCondition> {
  QueryBuilder<VersionGroupDetail, VersionGroupDetail, QAfterFilterCondition>
      levelLearnedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'levelLearnedAt',
      ));
    });
  }

  QueryBuilder<VersionGroupDetail, VersionGroupDetail, QAfterFilterCondition>
      levelLearnedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'levelLearnedAt',
      ));
    });
  }

  QueryBuilder<VersionGroupDetail, VersionGroupDetail, QAfterFilterCondition>
      levelLearnedAtEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'levelLearnedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<VersionGroupDetail, VersionGroupDetail, QAfterFilterCondition>
      levelLearnedAtGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'levelLearnedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<VersionGroupDetail, VersionGroupDetail, QAfterFilterCondition>
      levelLearnedAtLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'levelLearnedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<VersionGroupDetail, VersionGroupDetail, QAfterFilterCondition>
      levelLearnedAtBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'levelLearnedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<VersionGroupDetail, VersionGroupDetail, QAfterFilterCondition>
      moveLearnMethodIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'moveLearnMethod',
      ));
    });
  }

  QueryBuilder<VersionGroupDetail, VersionGroupDetail, QAfterFilterCondition>
      moveLearnMethodIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'moveLearnMethod',
      ));
    });
  }

  QueryBuilder<VersionGroupDetail, VersionGroupDetail, QAfterFilterCondition>
      orderIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'order',
      ));
    });
  }

  QueryBuilder<VersionGroupDetail, VersionGroupDetail, QAfterFilterCondition>
      orderIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'order',
      ));
    });
  }

  QueryBuilder<VersionGroupDetail, VersionGroupDetail, QAfterFilterCondition>
      orderEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'order',
        value: value,
      ));
    });
  }

  QueryBuilder<VersionGroupDetail, VersionGroupDetail, QAfterFilterCondition>
      orderGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'order',
        value: value,
      ));
    });
  }

  QueryBuilder<VersionGroupDetail, VersionGroupDetail, QAfterFilterCondition>
      orderLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'order',
        value: value,
      ));
    });
  }

  QueryBuilder<VersionGroupDetail, VersionGroupDetail, QAfterFilterCondition>
      orderBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'order',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<VersionGroupDetail, VersionGroupDetail, QAfterFilterCondition>
      versionGroupIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'versionGroup',
      ));
    });
  }

  QueryBuilder<VersionGroupDetail, VersionGroupDetail, QAfterFilterCondition>
      versionGroupIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'versionGroup',
      ));
    });
  }
}

extension VersionGroupDetailQueryObject
    on QueryBuilder<VersionGroupDetail, VersionGroupDetail, QFilterCondition> {
  QueryBuilder<VersionGroupDetail, VersionGroupDetail, QAfterFilterCondition>
      moveLearnMethod(FilterQuery<Species> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'moveLearnMethod');
    });
  }

  QueryBuilder<VersionGroupDetail, VersionGroupDetail, QAfterFilterCondition>
      versionGroup(FilterQuery<Species> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'versionGroup');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const GameIndexSchema = Schema(
  name: r'GameIndex',
  id: 4350993040634368407,
  properties: {
    r'gameIndex': PropertySchema(
      id: 0,
      name: r'gameIndex',
      type: IsarType.long,
    ),
    r'version': PropertySchema(
      id: 1,
      name: r'version',
      type: IsarType.object,
      target: r'Species',
    )
  },
  estimateSize: _gameIndexEstimateSize,
  serialize: _gameIndexSerialize,
  deserialize: _gameIndexDeserialize,
  deserializeProp: _gameIndexDeserializeProp,
);

int _gameIndexEstimateSize(
  GameIndex object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.version;
    if (value != null) {
      bytesCount += 3 +
          SpeciesSchema.estimateSize(value, allOffsets[Species]!, allOffsets);
    }
  }
  return bytesCount;
}

void _gameIndexSerialize(
  GameIndex object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.gameIndex);
  writer.writeObject<Species>(
    offsets[1],
    allOffsets,
    SpeciesSchema.serialize,
    object.version,
  );
}

GameIndex _gameIndexDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = GameIndex(
    gameIndex: reader.readLongOrNull(offsets[0]),
    version: reader.readObjectOrNull<Species>(
      offsets[1],
      SpeciesSchema.deserialize,
      allOffsets,
    ),
  );
  return object;
}

P _gameIndexDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readObjectOrNull<Species>(
        offset,
        SpeciesSchema.deserialize,
        allOffsets,
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension GameIndexQueryFilter
    on QueryBuilder<GameIndex, GameIndex, QFilterCondition> {
  QueryBuilder<GameIndex, GameIndex, QAfterFilterCondition> gameIndexIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'gameIndex',
      ));
    });
  }

  QueryBuilder<GameIndex, GameIndex, QAfterFilterCondition>
      gameIndexIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'gameIndex',
      ));
    });
  }

  QueryBuilder<GameIndex, GameIndex, QAfterFilterCondition> gameIndexEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gameIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<GameIndex, GameIndex, QAfterFilterCondition>
      gameIndexGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'gameIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<GameIndex, GameIndex, QAfterFilterCondition> gameIndexLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'gameIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<GameIndex, GameIndex, QAfterFilterCondition> gameIndexBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'gameIndex',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<GameIndex, GameIndex, QAfterFilterCondition> versionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'version',
      ));
    });
  }

  QueryBuilder<GameIndex, GameIndex, QAfterFilterCondition> versionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'version',
      ));
    });
  }
}

extension GameIndexQueryObject
    on QueryBuilder<GameIndex, GameIndex, QFilterCondition> {
  QueryBuilder<GameIndex, GameIndex, QAfterFilterCondition> version(
      FilterQuery<Species> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'version');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const FormSchema = Schema(
  name: r'Form',
  id: -5602341233681577471,
  properties: {
    r'name': PropertySchema(
      id: 0,
      name: r'name',
      type: IsarType.string,
    ),
    r'url': PropertySchema(
      id: 1,
      name: r'url',
      type: IsarType.string,
    )
  },
  estimateSize: _formEstimateSize,
  serialize: _formSerialize,
  deserialize: _formDeserialize,
  deserializeProp: _formDeserializeProp,
);

int _formEstimateSize(
  Form object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.url;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _formSerialize(
  Form object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.name);
  writer.writeString(offsets[1], object.url);
}

Form _formDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Form(
    name: reader.readStringOrNull(offsets[0]),
    url: reader.readStringOrNull(offsets[1]),
  );
  return object;
}

P _formDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension FormQueryFilter on QueryBuilder<Form, Form, QFilterCondition> {
  QueryBuilder<Form, Form, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<Form, Form, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<Form, Form, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form, Form, QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form, Form, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form, Form, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form, Form, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form, Form, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form, Form, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form, Form, QAfterFilterCondition> nameMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form, Form, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Form, Form, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Form, Form, QAfterFilterCondition> urlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'url',
      ));
    });
  }

  QueryBuilder<Form, Form, QAfterFilterCondition> urlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'url',
      ));
    });
  }

  QueryBuilder<Form, Form, QAfterFilterCondition> urlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form, Form, QAfterFilterCondition> urlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form, Form, QAfterFilterCondition> urlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form, Form, QAfterFilterCondition> urlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'url',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form, Form, QAfterFilterCondition> urlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form, Form, QAfterFilterCondition> urlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form, Form, QAfterFilterCondition> urlContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form, Form, QAfterFilterCondition> urlMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'url',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Form, Form, QAfterFilterCondition> urlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: '',
      ));
    });
  }

  QueryBuilder<Form, Form, QAfterFilterCondition> urlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'url',
        value: '',
      ));
    });
  }
}

extension FormQueryObject on QueryBuilder<Form, Form, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const AbilitySchema = Schema(
  name: r'Ability',
  id: 5399669653591405753,
  properties: {
    r'ability': PropertySchema(
      id: 0,
      name: r'ability',
      type: IsarType.object,
      target: r'Species',
    ),
    r'isHidden': PropertySchema(
      id: 1,
      name: r'isHidden',
      type: IsarType.bool,
    ),
    r'slot': PropertySchema(
      id: 2,
      name: r'slot',
      type: IsarType.long,
    )
  },
  estimateSize: _abilityEstimateSize,
  serialize: _abilitySerialize,
  deserialize: _abilityDeserialize,
  deserializeProp: _abilityDeserializeProp,
);

int _abilityEstimateSize(
  Ability object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.ability;
    if (value != null) {
      bytesCount += 3 +
          SpeciesSchema.estimateSize(value, allOffsets[Species]!, allOffsets);
    }
  }
  return bytesCount;
}

void _abilitySerialize(
  Ability object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<Species>(
    offsets[0],
    allOffsets,
    SpeciesSchema.serialize,
    object.ability,
  );
  writer.writeBool(offsets[1], object.isHidden);
  writer.writeLong(offsets[2], object.slot);
}

Ability _abilityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Ability(
    ability: reader.readObjectOrNull<Species>(
      offsets[0],
      SpeciesSchema.deserialize,
      allOffsets,
    ),
    isHidden: reader.readBoolOrNull(offsets[1]),
    slot: reader.readLongOrNull(offsets[2]),
  );
  return object;
}

P _abilityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<Species>(
        offset,
        SpeciesSchema.deserialize,
        allOffsets,
      )) as P;
    case 1:
      return (reader.readBoolOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension AbilityQueryFilter
    on QueryBuilder<Ability, Ability, QFilterCondition> {
  QueryBuilder<Ability, Ability, QAfterFilterCondition> abilityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ability',
      ));
    });
  }

  QueryBuilder<Ability, Ability, QAfterFilterCondition> abilityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ability',
      ));
    });
  }

  QueryBuilder<Ability, Ability, QAfterFilterCondition> isHiddenIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isHidden',
      ));
    });
  }

  QueryBuilder<Ability, Ability, QAfterFilterCondition> isHiddenIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isHidden',
      ));
    });
  }

  QueryBuilder<Ability, Ability, QAfterFilterCondition> isHiddenEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isHidden',
        value: value,
      ));
    });
  }

  QueryBuilder<Ability, Ability, QAfterFilterCondition> slotIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'slot',
      ));
    });
  }

  QueryBuilder<Ability, Ability, QAfterFilterCondition> slotIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'slot',
      ));
    });
  }

  QueryBuilder<Ability, Ability, QAfterFilterCondition> slotEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'slot',
        value: value,
      ));
    });
  }

  QueryBuilder<Ability, Ability, QAfterFilterCondition> slotGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'slot',
        value: value,
      ));
    });
  }

  QueryBuilder<Ability, Ability, QAfterFilterCondition> slotLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'slot',
        value: value,
      ));
    });
  }

  QueryBuilder<Ability, Ability, QAfterFilterCondition> slotBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'slot',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AbilityQueryObject
    on QueryBuilder<Ability, Ability, QFilterCondition> {
  QueryBuilder<Ability, Ability, QAfterFilterCondition> ability(
      FilterQuery<Species> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'ability');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const SpeciesSchema = Schema(
  name: r'Species',
  id: -1724512414814962385,
  properties: {
    r'name': PropertySchema(
      id: 0,
      name: r'name',
      type: IsarType.string,
    ),
    r'url': PropertySchema(
      id: 1,
      name: r'url',
      type: IsarType.string,
    )
  },
  estimateSize: _speciesEstimateSize,
  serialize: _speciesSerialize,
  deserialize: _speciesDeserialize,
  deserializeProp: _speciesDeserializeProp,
);

int _speciesEstimateSize(
  Species object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.url;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _speciesSerialize(
  Species object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.name);
  writer.writeString(offsets[1], object.url);
}

Species _speciesDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Species(
    name: reader.readStringOrNull(offsets[0]),
    url: reader.readStringOrNull(offsets[1]),
  );
  return object;
}

P _speciesDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension SpeciesQueryFilter
    on QueryBuilder<Species, Species, QFilterCondition> {
  QueryBuilder<Species, Species, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<Species, Species, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<Species, Species, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Species, Species, QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Species, Species, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Species, Species, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Species, Species, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Species, Species, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Species, Species, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Species, Species, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Species, Species, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Species, Species, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Species, Species, QAfterFilterCondition> urlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'url',
      ));
    });
  }

  QueryBuilder<Species, Species, QAfterFilterCondition> urlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'url',
      ));
    });
  }

  QueryBuilder<Species, Species, QAfterFilterCondition> urlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Species, Species, QAfterFilterCondition> urlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Species, Species, QAfterFilterCondition> urlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Species, Species, QAfterFilterCondition> urlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'url',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Species, Species, QAfterFilterCondition> urlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Species, Species, QAfterFilterCondition> urlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Species, Species, QAfterFilterCondition> urlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Species, Species, QAfterFilterCondition> urlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'url',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Species, Species, QAfterFilterCondition> urlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: '',
      ));
    });
  }

  QueryBuilder<Species, Species, QAfterFilterCondition> urlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'url',
        value: '',
      ));
    });
  }
}

extension SpeciesQueryObject
    on QueryBuilder<Species, Species, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const CrieSchema = Schema(
  name: r'Crie',
  id: -1310057648297589061,
  properties: {
    r'latest': PropertySchema(
      id: 0,
      name: r'latest',
      type: IsarType.string,
    ),
    r'legacy': PropertySchema(
      id: 1,
      name: r'legacy',
      type: IsarType.string,
    )
  },
  estimateSize: _crieEstimateSize,
  serialize: _crieSerialize,
  deserialize: _crieDeserialize,
  deserializeProp: _crieDeserializeProp,
);

int _crieEstimateSize(
  Crie object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.latest;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.legacy;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _crieSerialize(
  Crie object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.latest);
  writer.writeString(offsets[1], object.legacy);
}

Crie _crieDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Crie(
    latest: reader.readStringOrNull(offsets[0]),
    legacy: reader.readStringOrNull(offsets[1]),
  );
  return object;
}

P _crieDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension CrieQueryFilter on QueryBuilder<Crie, Crie, QFilterCondition> {
  QueryBuilder<Crie, Crie, QAfterFilterCondition> latestIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'latest',
      ));
    });
  }

  QueryBuilder<Crie, Crie, QAfterFilterCondition> latestIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'latest',
      ));
    });
  }

  QueryBuilder<Crie, Crie, QAfterFilterCondition> latestEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'latest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Crie, Crie, QAfterFilterCondition> latestGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'latest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Crie, Crie, QAfterFilterCondition> latestLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'latest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Crie, Crie, QAfterFilterCondition> latestBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'latest',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Crie, Crie, QAfterFilterCondition> latestStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'latest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Crie, Crie, QAfterFilterCondition> latestEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'latest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Crie, Crie, QAfterFilterCondition> latestContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'latest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Crie, Crie, QAfterFilterCondition> latestMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'latest',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Crie, Crie, QAfterFilterCondition> latestIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'latest',
        value: '',
      ));
    });
  }

  QueryBuilder<Crie, Crie, QAfterFilterCondition> latestIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'latest',
        value: '',
      ));
    });
  }

  QueryBuilder<Crie, Crie, QAfterFilterCondition> legacyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'legacy',
      ));
    });
  }

  QueryBuilder<Crie, Crie, QAfterFilterCondition> legacyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'legacy',
      ));
    });
  }

  QueryBuilder<Crie, Crie, QAfterFilterCondition> legacyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'legacy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Crie, Crie, QAfterFilterCondition> legacyGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'legacy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Crie, Crie, QAfterFilterCondition> legacyLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'legacy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Crie, Crie, QAfterFilterCondition> legacyBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'legacy',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Crie, Crie, QAfterFilterCondition> legacyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'legacy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Crie, Crie, QAfterFilterCondition> legacyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'legacy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Crie, Crie, QAfterFilterCondition> legacyContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'legacy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Crie, Crie, QAfterFilterCondition> legacyMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'legacy',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Crie, Crie, QAfterFilterCondition> legacyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'legacy',
        value: '',
      ));
    });
  }

  QueryBuilder<Crie, Crie, QAfterFilterCondition> legacyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'legacy',
        value: '',
      ));
    });
  }
}

extension CrieQueryObject on QueryBuilder<Crie, Crie, QFilterCondition> {}
