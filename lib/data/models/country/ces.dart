import 'package:equatable/equatable.dart';

class Ces extends Equatable {
  final String? official;
  final String? common;

  const Ces({this.official, this.common});

  factory Ces.fromJson(Map<String, dynamic> json) => Ces(
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
