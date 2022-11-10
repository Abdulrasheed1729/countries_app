import 'package:equatable/equatable.dart';

class Kor extends Equatable {
  final String? official;
  final String? common;

  const Kor({this.official, this.common});

  factory Kor.fromJson(Map<String, dynamic> json) => Kor(
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
