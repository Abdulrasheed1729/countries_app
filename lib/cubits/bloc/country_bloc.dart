import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:countries_app/data/rest_countries_api/models/models.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;
import 'package:stream_transform/stream_transform.dart';

part 'country_event.dart';
part 'country_state.dart';

const throttleDuration = Duration(milliseconds: 300);

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class CountryBloc extends Bloc<CountryEvent, CountryState> {
  CountryBloc({required this.httpClient}) : super(const CountryState()) {
    on<CountryEvent>(
      _onCountriesFetched,
      transformer: throttleDroppable(throttleDuration),
    );
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
      // final countries = await _fetchCountries();
      // countries.isEmpty
      //     ? emit(state)
      //     : emit(
      //         state.copyWith(
      //           countries: List.of(state.countries)..addAll(countries),
      //           status: CountryStatus.success,
      //         ),
      //       );
    } catch (_) {
      emit(
        state.copyWith(status: CountryStatus.failuer),
      );
    }
  }

  Future<List<Country>> _fetchCountries() async {
    // List<Country> countriesList = [];
    var response = await httpClient.get(
      Uri.parse(_apiUrl),
    );

    if (response.statusCode == 200) {
      final body = await json.decode(response.body) as List;

      return body
          .map(
            (json) => Country.fromJson(json),
          )
          .toList();
    } else {
      throw Exception('An error occured');
    }
  }
}
