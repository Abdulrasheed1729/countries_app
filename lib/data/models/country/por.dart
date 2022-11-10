import 'package:equatable/equatable.dart';

class Por extends Equatable {
  final String? official;
  final String? common;

  const Por({this.official, this.common});

  factory Por.fromJson(Map<String, dynamic> json) => Por(
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
