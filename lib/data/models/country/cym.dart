import 'package:equatable/equatable.dart';

class Cym extends Equatable {
  final String? official;
  final String? common;

  const Cym({this.official, this.common});

  factory Cym.fromJson(Map<String, dynamic> json) => Cym(
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
