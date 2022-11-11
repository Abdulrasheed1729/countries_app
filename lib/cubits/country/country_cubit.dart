import 'package:bloc/bloc.dart';
import 'package:countries_app/data/countries_repository/countries_repository.dart';
import 'package:countries_app/data/rest_countries_api/models/models.dart';
import 'package:equatable/equatable.dart';

part 'country_state.dart';

class CountryCubit extends Cubit<CountryState> {
  CountryCubit(this._countriesRepository) : super(const CountryState.loading());

  final CountriesRepository _countriesRepository;

  Future<void> countries() async {
    emit(const CountryState.loading());
    try {
      final results = await _countriesRepository.getCountries();
      emit(
        CountryState.success(countries: results),
      );
    } on Exception {
      emit(const CountryState.failure());
    }
  }
}
