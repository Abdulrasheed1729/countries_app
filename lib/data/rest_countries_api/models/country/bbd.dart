import 'package:equatable/equatable.dart';

class Bbd extends Equatable {
  final String? name;
  final String? symbol;

  const Bbd({this.name, this.symbol});

  factory Bbd.fromJson(Map<String, dynamic> json) => Bbd(
        name: json['name'] as String?,
        symbol: json['symbol'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'symbol': symbol,
      };

  @override
  List<Object?> get props => [name, symbol];
}
