import 'package:equatable/equatable.dart';

class Per extends Equatable {
  final String? official;
  final String? common;

  const Per({this.official, this.common});

  factory Per.fromJson(Map<String, dynamic> json) => Per(
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
