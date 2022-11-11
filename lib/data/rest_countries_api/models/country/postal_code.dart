import 'package:equatable/equatable.dart';

class PostalCode extends Equatable {
  final String? format;
  final String? regex;

  const PostalCode({this.format, this.regex});

  factory PostalCode.fromJson(Map<String, dynamic> json) => PostalCode(
        format: json['format'] as String?,
        regex: json['regex'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'format': format,
        'regex': regex,
      };

  @override
  List<Object?> get props => [format, regex];
}
