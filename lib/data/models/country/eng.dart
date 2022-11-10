import 'package:equatable/equatable.dart';

class Eng extends Equatable {
  final String? official;
  final String? common;

  const Eng({this.official, this.common});

  factory Eng.fromJson(Map<String, dynamic> json) => Eng(
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
