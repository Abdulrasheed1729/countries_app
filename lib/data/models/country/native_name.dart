import 'package:equatable/equatable.dart';

import 'eng.dart';

class NativeName extends Equatable {
  final Eng? eng;

  const NativeName({this.eng});

  factory NativeName.fromJson(Map<String, dynamic> json) => NativeName(
        eng: json['eng'] == null
            ? null
            : Eng.fromJson(json['eng'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'eng': eng?.toJson(),
      };

  @override
  List<Object?> get props => [eng];
}
