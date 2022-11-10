import 'package:equatable/equatable.dart';

class Zho extends Equatable {
  final String? official;
  final String? common;

  const Zho({this.official, this.common});

  factory Zho.fromJson(Map<String, dynamic> json) => Zho(
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
