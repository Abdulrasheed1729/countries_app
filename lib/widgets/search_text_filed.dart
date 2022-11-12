import 'package:countries_app/core/core.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      elevation: 0.5,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          prefixIcon: Icon(
            Icons.search_outlined,
            color: theme.textTheme.subtitle1!.color!,
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              style: BorderStyle.none,
              color: LightModeColors.grayWarm25,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
            borderSide: BorderSide(style: BorderStyle.none),
          ),
          labelText: '',
          labelStyle: const TextStyle(),
        ),
      ),
    );
  }
}
