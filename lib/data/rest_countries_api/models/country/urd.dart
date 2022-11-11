import 'package:equatable/equatable.dart';

class Urd extends Equatable {
  final String? official;
  final String? common;

  const Urd({this.official, this.common});

  factory Urd.fromJson(Map<String, dynamic> json) => Urd(
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
