import 'package:equatable/equatable.dart';

class Flags extends Equatable {
  final String? png;
  final String? svg;

  const Flags({this.png, this.svg});

  factory Flags.fromJson(Map<String, dynamic> json) => Flags(
        png: json['png'] as String?,
        svg: json['svg'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'png': png,
        'svg': svg,
      };

  @override
  List<Object?> get props => [png, svg];
}
