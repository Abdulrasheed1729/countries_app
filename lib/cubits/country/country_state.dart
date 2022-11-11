part of 'country_cubit.dart';

enum CountryStatus { loading, success, failure }

class CountryState extends Equatable {
  const CountryState._({
    this.status = CountryStatus.loading,
    this.countries = const <Country>[],
  });

  const CountryState.loading() : this._();

  const CountryState.success({required List<Country> countries})
      : this._(
          countries: countries,
          status: CountryStatus.success,
        );

  const CountryState.failure()
      : this._(
          status: CountryStatus.failure,
        );

  const CountryState(this.status, this.countries);

  final CountryStatus status;
  final List<Country> countries;

  @override
  List<Object?> get props => [status, countries];
}
