import 'package:flutter/material.dart';

class FilteringButton extends StatelessWidget {
  const FilteringButton({
    Key? key,
    required this.iconData,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  final IconData iconData;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return RawMaterialButton(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      fillColor: theme.scaffoldBackgroundColor,
      onPressed: onTap,
      child: Row(
        children: [
          Icon(
            iconData,
            color: theme.appBarTheme.foregroundColor,
          ),
          const SizedBox(width: 5),
          Text(
            label,
            style: theme.textTheme.subtitle1,
          ),
        ],
      ),
    );
  }
}
