import 'dart:convert';

import 'package:countries_app/data/rest_countries_api/models/models.dart';
import 'package:http/http.dart' as http;

class RestCountriesApiClient {
  RestCountriesApiClient({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  final http.Client _httpClient;

  static const _apiUrl = 'https://restcountries.com/v3.1/all';

  Future<List<Country>> fetchCountries() async {
    List<Country> countries = [];
    http.Response response;

    try {
      response = await _httpClient.get(Uri.parse(_apiUrl));
      final decodedData = jsonDecode(response.body);

      countries = List<Country>.from(
        decodedData.map(
          (json) => Country.fromJson(json),
        ),
      );
    } catch (e) {
      Exception(e);
    }
    return countries;
  }
}
