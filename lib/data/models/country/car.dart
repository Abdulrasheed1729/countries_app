import 'package:equatable/equatable.dart';

class Car extends Equatable {
  final List<String>? signs;
  final String? side;

  const Car({this.signs, this.side});

  factory Car.fromJson(Map<String, dynamic> json) => Car(
        signs: json['signs'] as List<String>?,
        side: json['side'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'signs': signs,
        'side': side,
      };

  @override
  List<Object?> get props => [signs, side];
}
