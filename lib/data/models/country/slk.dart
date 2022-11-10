import 'package:equatable/equatable.dart';

class Slk extends Equatable {
  final String? official;
  final String? common;

  const Slk({this.official, this.common});

  factory Slk.fromJson(Map<String, dynamic> json) => Slk(
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
