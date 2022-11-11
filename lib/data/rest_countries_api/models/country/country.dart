import 'package:equatable/equatable.dart';

import 'capital_info.dart';
import 'car.dart';
import 'coat_of_arms.dart';
import 'currencies.dart';
import 'demonyms.dart';
import 'flags.dart';
import 'idd.dart';
import 'languages.dart';
import 'maps.dart';
import 'name.dart';
import 'postal_code.dart';
import 'translations.dart';

class Country extends Equatable {
  final Name? name;
  final List<String>? tld;
  final String? cca2;
  final String? ccn3;
  final String? cca3;
  final String? cioc;
  final bool? independent;
  final String? status;
  final bool? unMember;
  final Currencies? currencies;
  final Idd? idd;
  final List<String>? capital;
  final List<String>? altSpellings;
  final String? region;
  final String? subregion;
  final Languages? languages;
  final Translations? translations;
  final List<double>? latlng;
  final bool? landlocked;
  final int? area;
  final Demonyms? demonyms;
  final String? flag;
  final Maps? maps;
  final int? population;
  final String? fifa;
  final Car? car;
  final List<String>? timezones;
  final List<String>? continents;
  final Flags? flags;
  final CoatOfArms? coatOfArms;
  final String? startOfWeek;
  final CapitalInfo? capitalInfo;
  final PostalCode? postalCode;

  const Country({
    this.name,
    this.tld,
    this.cca2,
    this.ccn3,
    this.cca3,
    this.cioc,
    this.independent,
    this.status,
    this.unMember,
    this.currencies,
    this.idd,
    this.capital,
    this.altSpellings,
    this.region,
    this.subregion,
    this.languages,
    this.translations,
    this.latlng,
    this.landlocked,
    this.area,
    this.demonyms,
    this.flag,
    this.maps,
    this.population,
    this.fifa,
    this.car,
    this.timezones,
    this.continents,
    this.flags,
    this.coatOfArms,
    this.startOfWeek,
    this.capitalInfo,
    this.postalCode,
  });

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        name: json['name'] == null
            ? null
            : Name.fromJson(json['name'] as Map<String, dynamic>),
        tld: json['tld'] as List<String>?,
        cca2: json['cca2'] as String?,
        ccn3: json['ccn3'] as String?,
        cca3: json['cca3'] as String?,
        cioc: json['cioc'] as String?,
        independent: json['independent'] as bool?,
        status: json['status'] as String?,
        unMember: json['unMember'] as bool?,
        currencies: json['currencies'] == null
            ? null
            : Currencies.fromJson(json['currencies'] as Map<String, dynamic>),
        idd: json['idd'] == null
            ? null
            : Idd.fromJson(json['idd'] as Map<String, dynamic>),
        capital: json['capital'] as List<String>?,
        altSpellings: json['altSpellings'] as List<String>?,
        region: json['region'] as String?,
        subregion: json['subregion'] as String?,
        languages: json['languages'] == null
            ? null
            : Languages.fromJson(json['languages'] as Map<String, dynamic>),
        translations: json['translations'] == null
            ? null
            : Translations.fromJson(
                json['translations'] as Map<String, dynamic>),
        latlng: json['latlng'] as List<double>?,
        landlocked: json['landlocked'] as bool?,
        area: json['area'] as int?,
        demonyms: json['demonyms'] == null
            ? null
            : Demonyms.fromJson(json['demonyms'] as Map<String, dynamic>),
        flag: json['flag'] as String?,
        maps: json['maps'] == null
            ? null
            : Maps.fromJson(json['maps'] as Map<String, dynamic>),
        population: json['population'] as int?,
        fifa: json['fifa'] as String?,
        car: json['car'] == null
            ? null
            : Car.fromJson(json['car'] as Map<String, dynamic>),
        timezones: json['timezones'] as List<String>?,
        continents: json['continents'] as List<String>?,
        flags: json['flags'] == null
            ? null
            : Flags.fromJson(json['flags'] as Map<String, dynamic>),
        coatOfArms: json['coatOfArms'] == null
            ? null
            : CoatOfArms.fromJson(json['coatOfArms'] as Map<String, dynamic>),
        startOfWeek: json['startOfWeek'] as String?,
        capitalInfo: json['capitalInfo'] == null
            ? null
            : CapitalInfo.fromJson(json['capitalInfo'] as Map<String, dynamic>),
        postalCode: json['postalCode'] == null
            ? null
            : PostalCode.fromJson(json['postalCode'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'name': name?.toJson(),
        'tld': tld,
        'cca2': cca2,
        'ccn3': ccn3,
        'cca3': cca3,
        'cioc': cioc,
        'independent': independent,
        'status': status,
        'unMember': unMember,
        'currencies': currencies?.toJson(),
        'idd': idd?.toJson(),
        'capital': capital,
        'altSpellings': altSpellings,
        'region': region,
        'subregion': subregion,
        'languages': languages?.toJson(),
        'translations': translations?.toJson(),
        'latlng': latlng,
        'landlocked': landlocked,
        'area': area,
        'demonyms': demonyms?.toJson(),
        'flag': flag,
        'maps': maps?.toJson(),
        'population': population,
        'fifa': fifa,
        'car': car?.toJson(),
        'timezones': timezones,
        'continents': continents,
        'flags': flags?.toJson(),
        'coatOfArms': coatOfArms?.toJson(),
        'startOfWeek': startOfWeek,
        'capitalInfo': capitalInfo?.toJson(),
        'postalCode': postalCode?.toJson(),
      };

  @override
  List<Object?> get props {
    return [
      name,
      tld,
      cca2,
      ccn3,
      cca3,
      cioc,
      independent,
      status,
      unMember,
      currencies,
      idd,
      capital,
      altSpellings,
      region,
      subregion,
      languages,
      translations,
      latlng,
      landlocked,
      area,
      demonyms,
      flag,
      maps,
      population,
      fifa,
      car,
      timezones,
      continents,
      flags,
      coatOfArms,
      startOfWeek,
      capitalInfo,
      postalCode,
    ];
  }
}
