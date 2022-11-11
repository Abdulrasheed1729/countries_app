import 'package:equatable/equatable.dart';

class Hrv extends Equatable {
  final String? official;
  final String? common;

  const Hrv({this.official, this.common});

  factory Hrv.fromJson(Map<String, dynamic> json) => Hrv(
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
