import 'package:equatable/equatable.dart';

class Ita extends Equatable {
  final String? official;
  final String? common;

  const Ita({this.official, this.common});

  factory Ita.fromJson(Map<String, dynamic> json) => Ita(
        official: json['official'] as String?,
        common: json['common'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'official': official,
        'common': common,
      };

  @override
  List<Object?> get props => [official, common];
}
