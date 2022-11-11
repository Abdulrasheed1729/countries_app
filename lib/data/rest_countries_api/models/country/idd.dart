import 'package:equatable/equatable.dart';

class Idd extends Equatable {
  final String? root;
  final List<String>? suffixes;

  const Idd({this.root, this.suffixes});

  factory Idd.fromJson(Map<String, dynamic> json) => Idd(
        root: json['root'] as String?,
        suffixes: json['suffixes'] as List<String>?,
      );

  Map<String, dynamic> toJson() => {
        'root': root,
        'suffixes': suffixes,
      };

  @override
  List<Object?> get props => [root, suffixes];
}
