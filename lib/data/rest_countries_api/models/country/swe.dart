import 'package:equatable/equatable.dart';

class Swe extends Equatable {
  final String? official;
  final String? common;

  const Swe({this.official, this.common});

  factory Swe.fromJson(Map<String, dynamic> json) => Swe(
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
