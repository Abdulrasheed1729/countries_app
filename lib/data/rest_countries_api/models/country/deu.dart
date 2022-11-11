import 'package:equatable/equatable.dart';

class Deu extends Equatable {
  final String? official;
  final String? common;

  const Deu({this.official, this.common});

  factory Deu.fromJson(Map<String, dynamic> json) => Deu(
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
