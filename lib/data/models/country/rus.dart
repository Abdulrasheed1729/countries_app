import 'package:equatable/equatable.dart';

class Rus extends Equatable {
  final String? official;
  final String? common;

  const Rus({this.official, this.common});

  factory Rus.fromJson(Map<String, dynamic> json) => Rus(
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
