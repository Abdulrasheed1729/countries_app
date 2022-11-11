import 'package:equatable/equatable.dart';

import 'bbd.dart';

class Currencies extends Equatable {
  final Bbd? bbd;

  const Currencies({this.bbd});

  factory Currencies.fromJson(Map<String, dynamic> json) => Currencies(
        bbd: json['BBD'] == null
            ? null
            : Bbd.fromJson(json['BBD'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'BBD': bbd?.toJson(),
      };

  @override
  List<Object?> get props => [bbd];
}
