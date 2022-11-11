import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:countries_app/data/rest_countries_api/models/models.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;

part 'country_event.dart';
part 'country_state.dart';

class CountryBloc extends Bloc<CountryEvent, CountryState> {
  CountryBloc({required this.httpClient}) : super(const CountryState()) {
    on<CountryEvent>(_onCountriesFetched);
  }
  final http.Client httpClient;

  static const _apiUrl = 'https://restcountries.com/v3.1/all';

  FutureOr<void> _onCountriesFetched(
      CountryEvent event, Emitter<CountryState> emit) async {
    try {
      if (state.status == CountryStatus.loading) {
        final countries = await _fetchCountries();

        return emit(
          state.copyWith(countries: countries, status: CountryStatus.success),
        );
      }
    } catch (_) {
      emit(
        state.copyWith(status: CountryStatus.failuer),
      );
    }
  }

  Future<List<Country>> _fetchCountries() async {
    final response = await httpClient.get(
      Uri.parse(_apiUrl),
    );

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body) as List;

      final data = body
          .map(
            (dynamic json) => Country.fromJson(json as Map<String, dynamic>),
          )
          .toList();

      return data;
    }
    throw Exception('An error occured');
  }
}
