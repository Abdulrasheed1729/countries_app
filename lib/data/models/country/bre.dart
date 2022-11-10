import 'package:equatable/equatable.dart';

class Bre extends Equatable {
  final String? official;
  final String? common;

  const Bre({this.official, this.common});

  factory Bre.fromJson(Map<String, dynamic> json) => Bre(
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
