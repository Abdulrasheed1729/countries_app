import 'package:equatable/equatable.dart';

class Hun extends Equatable {
  final String? official;
  final String? common;

  const Hun({this.official, this.common});

  factory Hun.fromJson(Map<String, dynamic> json) => Hun(
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
