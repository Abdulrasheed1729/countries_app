import 'package:equatable/equatable.dart';

class Pol extends Equatable {
  final String? official;
  final String? common;

  const Pol({this.official, this.common});

  factory Pol.fromJson(Map<String, dynamic> json) => Pol(
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
