import 'package:equatable/equatable.dart';

class Jpn extends Equatable {
  final String? official;
  final String? common;

  const Jpn({this.official, this.common});

  factory Jpn.fromJson(Map<String, dynamic> json) => Jpn(
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
