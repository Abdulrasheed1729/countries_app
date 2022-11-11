import 'package:equatable/equatable.dart';

class CapitalInfo extends Equatable {
  final List<double>? latlng;

  const CapitalInfo({this.latlng});

  factory CapitalInfo.fromJson(Map<String, dynamic> json) => CapitalInfo(
        latlng: json['latlng'] as List<double>?,
      );

  Map<String, dynamic> toJson() => {
        'latlng': latlng,
      };

  @override
  List<Object?> get props => [latlng];
}
