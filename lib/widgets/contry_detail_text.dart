import 'package:flutter/material.dart';

class CountryDetailText extends StatelessWidget {
  const CountryDetailText({super.key, required this.label, required this.text});

  final String text;

  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Text(
          label,
          style: theme.textTheme.subtitle1,
        ),
        const SizedBox(width: 5),
        Text(
          text,
          style: theme.textTheme.subtitle2,
        ),
      ],
    );
  }
}
