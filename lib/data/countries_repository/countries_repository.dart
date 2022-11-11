import 'package:countries_app/data/rest_countries_api/rest_countries_api_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../rest_countries_api/models/models.dart';

class CountriesRepository {
  final RestCountriesApiClient _restCountriesApiClient;

  CountriesRepository({RestCountriesApiClient? restCountriesApiClient})
      : _restCountriesApiClient =
            restCountriesApiClient ?? RestCountriesApiClient();
  List<Country> _countries = [];

  List<Country> get countries => _countries;

  Future<List<Country>> getCountries() async {
    try {
      _countries = await _restCountriesApiClient.fetchCountries();
    } catch (_) {}
    return _countries;
  }

  Stream<List<Country>> search(String name) async* {
    yield _countries
        .where(
          (element) => element.name!.official!.contains(name),
        )
        .toList();
  }

  void searchByName(String query) {
    _countries
        .where(
          (element) => element.name!.official!.contains(query),
        )
        .toList();
  }
}

final countriesProvider = Provider<CountriesRepository>((ref) {
  return CountriesRepository();
});
