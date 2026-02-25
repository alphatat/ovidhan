// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shobdo.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetShobdoCollection on Isar {
  IsarCollection<Shobdo> get shobdos => this.collection();
}

const ShobdoSchema = CollectionSchema(
  name: r'Shobdo',
  id: 8826124148467882459,
  properties: {
    r'engmean': PropertySchema(id: 0, name: r'engmean', type: IsarType.string),
    r'examples': PropertySchema(
      id: 1,
      name: r'examples',
      type: IsarType.string,
    ),
    r'meaning': PropertySchema(id: 2, name: r'meaning', type: IsarType.string),
    r'origetym': PropertySchema(
      id: 3,
      name: r'origetym',
      type: IsarType.string,
    ),
    r'origlan': PropertySchema(id: 4, name: r'origlan', type: IsarType.string),
    r'pos': PropertySchema(id: 5, name: r'pos', type: IsarType.string),
    r'pronun': PropertySchema(id: 6, name: r'pronun', type: IsarType.string),
    r'word': PropertySchema(id: 7, name: r'word', type: IsarType.string),
  },

  estimateSize: _shobdoEstimateSize,
  serialize: _shobdoSerialize,
  deserialize: _shobdoDeserialize,
  deserializeProp: _shobdoDeserializeProp,
  idName: r'id',
  indexes: {
    r'word': IndexSchema(
      id: -2031626334120420267,
      name: r'word',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'word',
          type: IndexType.value,
          caseSensitive: true,
        ),
      ],
    ),
  },
  links: {},
  embeddedSchemas: {},

  getId: _shobdoGetId,
  getLinks: _shobdoGetLinks,
  attach: _shobdoAttach,
  version: '3.3.0',
);

int _shobdoEstimateSize(
  Shobdo object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.engmean;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.examples;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.meaning;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.origetym;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.origlan;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.pos;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.pronun;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.word.length * 3;
  return bytesCount;
}

void _shobdoSerialize(
  Shobdo object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.engmean);
  writer.writeString(offsets[1], object.examples);
  writer.writeString(offsets[2], object.meaning);
  writer.writeString(offsets[3], object.origetym);
  writer.writeString(offsets[4], object.origlan);
  writer.writeString(offsets[5], object.pos);
  writer.writeString(offsets[6], object.pronun);
  writer.writeString(offsets[7], object.word);
}

Shobdo _shobdoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Shobdo();
  object.engmean = reader.readStringOrNull(offsets[0]);
  object.examples = reader.readStringOrNull(offsets[1]);
  object.id = id;
  object.meaning = reader.readStringOrNull(offsets[2]);
  object.origetym = reader.readStringOrNull(offsets[3]);
  object.origlan = reader.readStringOrNull(offsets[4]);
  object.pos = reader.readStringOrNull(offsets[5]);
  object.pronun = reader.readStringOrNull(offsets[6]);
  object.word = reader.readString(offsets[7]);
  return object;
}

P _shobdoDeserializeProp<P>(
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
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _shobdoGetId(Shobdo object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _shobdoGetLinks(Shobdo object) {
  return [];
}

void _shobdoAttach(IsarCollection<dynamic> col, Id id, Shobdo object) {
  object.id = id;
}

extension ShobdoQueryWhereSort on QueryBuilder<Shobdo, Shobdo, QWhere> {
  QueryBuilder<Shobdo, Shobdo, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterWhere> anyWord() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'word'),
      );
    });
  }
}

extension ShobdoQueryWhere on QueryBuilder<Shobdo, Shobdo, QWhereClause> {
  QueryBuilder<Shobdo, Shobdo, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Shobdo, Shobdo, QAfterWhereClause> idGreaterThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterWhereClause> idLessThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(
          lower: lowerId,
          includeLower: includeLower,
          upper: upperId,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterWhereClause> wordEqualTo(String word) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'word', value: [word]),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterWhereClause> wordNotEqualTo(String word) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'word',
                lower: [],
                upper: [word],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'word',
                lower: [word],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'word',
                lower: [word],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'word',
                lower: [],
                upper: [word],
                includeUpper: false,
              ),
            );
      }
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterWhereClause> wordGreaterThan(
    String word, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.between(
          indexName: r'word',
          lower: [word],
          includeLower: include,
          upper: [],
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterWhereClause> wordLessThan(
    String word, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.between(
          indexName: r'word',
          lower: [],
          upper: [word],
          includeUpper: include,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterWhereClause> wordBetween(
    String lowerWord,
    String upperWord, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.between(
          indexName: r'word',
          lower: [lowerWord],
          includeLower: includeLower,
          upper: [upperWord],
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterWhereClause> wordStartsWith(
    String WordPrefix,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.between(
          indexName: r'word',
          lower: [WordPrefix],
          upper: ['$WordPrefix\u{FFFFF}'],
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterWhereClause> wordIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'word', value: ['']),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterWhereClause> wordIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.lessThan(indexName: r'word', upper: ['']),
            )
            .addWhereClause(
              IndexWhereClause.greaterThan(indexName: r'word', lower: ['']),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.greaterThan(indexName: r'word', lower: ['']),
            )
            .addWhereClause(
              IndexWhereClause.lessThan(indexName: r'word', upper: ['']),
            );
      }
    });
  }
}

extension ShobdoQueryFilter on QueryBuilder<Shobdo, Shobdo, QFilterCondition> {
  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> engmeanIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'engmean'),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> engmeanIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'engmean'),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> engmeanEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'engmean',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> engmeanGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'engmean',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> engmeanLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'engmean',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> engmeanBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'engmean',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> engmeanStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'engmean',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> engmeanEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'engmean',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> engmeanContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'engmean',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> engmeanMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'engmean',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> engmeanIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'engmean', value: ''),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> engmeanIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'engmean', value: ''),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> examplesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'examples'),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> examplesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'examples'),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> examplesEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'examples',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> examplesGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'examples',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> examplesLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'examples',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> examplesBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'examples',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> examplesStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'examples',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> examplesEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'examples',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> examplesContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'examples',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> examplesMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'examples',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> examplesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'examples', value: ''),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> examplesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'examples', value: ''),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'id',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> meaningIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'meaning'),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> meaningIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'meaning'),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> meaningEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'meaning',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> meaningGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'meaning',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> meaningLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'meaning',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> meaningBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'meaning',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> meaningStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'meaning',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> meaningEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'meaning',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> meaningContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'meaning',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> meaningMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'meaning',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> meaningIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'meaning', value: ''),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> meaningIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'meaning', value: ''),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> origetymIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'origetym'),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> origetymIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'origetym'),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> origetymEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'origetym',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> origetymGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'origetym',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> origetymLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'origetym',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> origetymBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'origetym',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> origetymStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'origetym',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> origetymEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'origetym',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> origetymContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'origetym',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> origetymMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'origetym',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> origetymIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'origetym', value: ''),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> origetymIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'origetym', value: ''),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> origlanIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'origlan'),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> origlanIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'origlan'),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> origlanEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'origlan',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> origlanGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'origlan',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> origlanLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'origlan',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> origlanBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'origlan',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> origlanStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'origlan',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> origlanEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'origlan',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> origlanContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'origlan',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> origlanMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'origlan',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> origlanIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'origlan', value: ''),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> origlanIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'origlan', value: ''),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> posIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'pos'),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> posIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'pos'),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> posEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'pos',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> posGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'pos',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> posLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'pos',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> posBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'pos',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> posStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'pos',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> posEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'pos',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> posContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'pos',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> posMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'pos',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> posIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'pos', value: ''),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> posIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'pos', value: ''),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> pronunIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'pronun'),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> pronunIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'pronun'),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> pronunEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'pronun',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> pronunGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'pronun',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> pronunLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'pronun',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> pronunBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'pronun',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> pronunStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'pronun',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> pronunEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'pronun',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> pronunContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'pronun',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> pronunMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'pronun',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> pronunIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'pronun', value: ''),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> pronunIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'pronun', value: ''),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> wordEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'word',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> wordGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'word',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> wordLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'word',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> wordBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'word',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> wordStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'word',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> wordEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'word',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> wordContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'word',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> wordMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'word',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> wordIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'word', value: ''),
      );
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterFilterCondition> wordIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'word', value: ''),
      );
    });
  }
}

extension ShobdoQueryObject on QueryBuilder<Shobdo, Shobdo, QFilterCondition> {}

extension ShobdoQueryLinks on QueryBuilder<Shobdo, Shobdo, QFilterCondition> {}

extension ShobdoQuerySortBy on QueryBuilder<Shobdo, Shobdo, QSortBy> {
  QueryBuilder<Shobdo, Shobdo, QAfterSortBy> sortByEngmean() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engmean', Sort.asc);
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterSortBy> sortByEngmeanDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engmean', Sort.desc);
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterSortBy> sortByExamples() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'examples', Sort.asc);
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterSortBy> sortByExamplesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'examples', Sort.desc);
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterSortBy> sortByMeaning() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meaning', Sort.asc);
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterSortBy> sortByMeaningDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meaning', Sort.desc);
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterSortBy> sortByOrigetym() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'origetym', Sort.asc);
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterSortBy> sortByOrigetymDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'origetym', Sort.desc);
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterSortBy> sortByOriglan() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'origlan', Sort.asc);
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterSortBy> sortByOriglanDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'origlan', Sort.desc);
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterSortBy> sortByPos() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pos', Sort.asc);
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterSortBy> sortByPosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pos', Sort.desc);
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterSortBy> sortByPronun() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pronun', Sort.asc);
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterSortBy> sortByPronunDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pronun', Sort.desc);
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterSortBy> sortByWord() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'word', Sort.asc);
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterSortBy> sortByWordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'word', Sort.desc);
    });
  }
}

extension ShobdoQuerySortThenBy on QueryBuilder<Shobdo, Shobdo, QSortThenBy> {
  QueryBuilder<Shobdo, Shobdo, QAfterSortBy> thenByEngmean() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engmean', Sort.asc);
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterSortBy> thenByEngmeanDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engmean', Sort.desc);
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterSortBy> thenByExamples() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'examples', Sort.asc);
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterSortBy> thenByExamplesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'examples', Sort.desc);
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterSortBy> thenByMeaning() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meaning', Sort.asc);
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterSortBy> thenByMeaningDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meaning', Sort.desc);
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterSortBy> thenByOrigetym() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'origetym', Sort.asc);
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterSortBy> thenByOrigetymDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'origetym', Sort.desc);
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterSortBy> thenByOriglan() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'origlan', Sort.asc);
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterSortBy> thenByOriglanDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'origlan', Sort.desc);
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterSortBy> thenByPos() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pos', Sort.asc);
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterSortBy> thenByPosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pos', Sort.desc);
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterSortBy> thenByPronun() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pronun', Sort.asc);
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterSortBy> thenByPronunDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pronun', Sort.desc);
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterSortBy> thenByWord() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'word', Sort.asc);
    });
  }

  QueryBuilder<Shobdo, Shobdo, QAfterSortBy> thenByWordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'word', Sort.desc);
    });
  }
}

extension ShobdoQueryWhereDistinct on QueryBuilder<Shobdo, Shobdo, QDistinct> {
  QueryBuilder<Shobdo, Shobdo, QDistinct> distinctByEngmean({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'engmean', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Shobdo, Shobdo, QDistinct> distinctByExamples({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'examples', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Shobdo, Shobdo, QDistinct> distinctByMeaning({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'meaning', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Shobdo, Shobdo, QDistinct> distinctByOrigetym({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'origetym', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Shobdo, Shobdo, QDistinct> distinctByOriglan({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'origlan', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Shobdo, Shobdo, QDistinct> distinctByPos({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pos', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Shobdo, Shobdo, QDistinct> distinctByPronun({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pronun', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Shobdo, Shobdo, QDistinct> distinctByWord({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'word', caseSensitive: caseSensitive);
    });
  }
}

extension ShobdoQueryProperty on QueryBuilder<Shobdo, Shobdo, QQueryProperty> {
  QueryBuilder<Shobdo, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Shobdo, String?, QQueryOperations> engmeanProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'engmean');
    });
  }

  QueryBuilder<Shobdo, String?, QQueryOperations> examplesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'examples');
    });
  }

  QueryBuilder<Shobdo, String?, QQueryOperations> meaningProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'meaning');
    });
  }

  QueryBuilder<Shobdo, String?, QQueryOperations> origetymProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'origetym');
    });
  }

  QueryBuilder<Shobdo, String?, QQueryOperations> origlanProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'origlan');
    });
  }

  QueryBuilder<Shobdo, String?, QQueryOperations> posProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pos');
    });
  }

  QueryBuilder<Shobdo, String?, QQueryOperations> pronunProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pronun');
    });
  }

  QueryBuilder<Shobdo, String, QQueryOperations> wordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'word');
    });
  }
}
