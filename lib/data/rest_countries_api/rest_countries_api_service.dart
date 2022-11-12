import 'dart:convert';

import 'package:countries_app/data/rest_countries_api/models/models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

class RestCountriesApiClient {
  RestCountriesApiClient();

  static const _apiUrl = 'https://restcountries.com/v3.1/all';

  Future<List<Country>> fetchCountries() async {
    http.Response response;

    response = await http.get(Uri.parse(_apiUrl));
    if (response.statusCode != 200) {
      throw Exception('Oh, darn!!!, an error occured');
    }

    var body = jsonDecode(response.body);

    return List.from(body)
        .map((dynamic item) => Country.fromJson(item as Map<String, dynamic>))
        .toList();
    // return countries;
  }
}

final restCountriesProvider = Provider<RestCountriesApiClient>((ref) {
  return RestCountriesApiClient();
});

final countriesFutureProvider = FutureProvider<List<Country>>((ref) async {
  final restCountriesApiService = ref.watch(restCountriesProvider);

  return restCountriesApiService.fetchCountries();
});
