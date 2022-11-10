import 'package:equatable/equatable.dart';

class Est extends Equatable {
  final String? official;
  final String? common;

  const Est({this.official, this.common});

  factory Est.fromJson(Map<String, dynamic> json) => Est(
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
