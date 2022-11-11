import 'package:countries_app/core/colors/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Explore.',
          style: TextStyle(fontSize: 24, color: LightModeColors.grayWarm900),
        ),
        elevation: 0.0,
        backgroundColor: LightModeColors.grayWarm25,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Icon(
              Icons.wb_sunny_outlined,
              color: LightModeColors.grayWarm900,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search_outlined,
                  color: LightModeColors.gray500,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                focusColor: LightModeColors.gray500,
                labelText: '',
                //TODO update the [TextStyle] here :(
                labelStyle: TextStyle(),
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RawMaterialButton(
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  fillColor: LightModeColors.grayWarm25,
                  onPressed: () {},
                  child: Row(
                    children: const [
                      Icon(
                        Icons.language_outlined,
                        color: LightModeColors.gray500,
                      ),
                      SizedBox(width: 5),
                      Text('EN'),
                    ],
                  ),
                ),
                RawMaterialButton(
                  elevation: 1.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  fillColor: LightModeColors.grayWarm25,
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                        ),
                        builder: (ctx) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 10),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      'Filter',
                                      style: TextStyle(
                                          color: LightModeColors.grayWarm900,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Icon(
                                      Icons.cancel_rounded,
                                      color: LightModeColors.gray500,
                                    )
                                  ],
                                ),
                                const SizedBox(height: 10),
                                const ExpansionTile(
                                  title: Text(
                                    'Continent',
                                    style: TextStyle(
                                      color: LightModeColors.gray500,
                                    ),
                                  ),
                                ),
                                const ExpansionTile(
                                  title: Text(
                                    'Time Zone',
                                    style: TextStyle(
                                      color: LightModeColors.gray500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        });
                  },
                  child: Row(
                    children: const [
                      Icon(
                        Icons.filter_alt_outlined,
                        color: LightModeColors.gray500,
                      ),
                      SizedBox(width: 5),
                      Text('Filter'),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
