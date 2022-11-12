import 'package:countries_app/core/colors/colors.dart';
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
    return RawMaterialButton(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      fillColor: LightModeColors.grayWarm25,
      onPressed: onTap,
      child: Row(
        children: [
          Icon(
            iconData,
            color: LightModeColors.gray500,
          ),
          const SizedBox(width: 5),
          Text(label),
        ],
      ),
    );
  }
}
