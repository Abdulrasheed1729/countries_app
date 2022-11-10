import 'package:equatable/equatable.dart';

class Languages extends Equatable {
  final String? eng;

  const Languages({this.eng});

  factory Languages.fromJson(Map<String, dynamic> json) => Languages(
        eng: json['eng'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'eng': eng,
      };

  @override
  List<Object?> get props => [eng];
}
