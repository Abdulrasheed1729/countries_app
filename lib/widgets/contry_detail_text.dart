import 'package:countries_app/core/colors/colors.dart';
import 'package:flutter/material.dart';

class CountryDetailText extends StatelessWidget {
  const CountryDetailText({super.key, required this.label, required this.text});

  final String text;

  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: const TextStyle(
            color: LightModeColors.grayWarm900,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        const SizedBox(width: 5),
        Text(
          text,
          style: const TextStyle(
            color: LightModeColors.gray500,
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
