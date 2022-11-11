import 'dart:convert';

import 'package:countries_app/data/rest_countries_api/models/models.dart';
import 'package:http/http.dart' as http;

class RestCountriesApiClient {
  RestCountriesApiClient({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  final http.Client _httpClient;

  static const _apiUrl = 'https://restcountries.com/v3.1/all';

  Future<List<Country>> fetchCountries() async {
    http.Response response;
    List body = [];

    try {
      response = await _httpClient.get(Uri.parse(_apiUrl));
      body = jsonDecode(response.body) as List;

      // countries = List<Country>.from(
      //   decodedData.map(
      //     (json) => Country.fromJson(json),
      //   ),
      // );
    } catch (e) {
      Exception(e);
    }
    return body
        .map((dynamic item) => Country.fromJson(item as Map<String, dynamic>))
        .toList();
    // return countries;
  }
}
