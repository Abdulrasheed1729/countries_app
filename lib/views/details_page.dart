import 'package:countries_app/data/rest_countries_api/models/models.dart';
import 'package:countries_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.country});

  final Country country;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          country.name!.common!,
          style: theme.appBarTheme.titleTextStyle!.copyWith(fontFamily: ''),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            const SizedBox(height: 10.0),
            SizedBox(
              height: 200,
              width: 450,
              child: PageView(
                children: [
                  Container(
                    height: 200,
                    width: 400,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          country.flags!.png!,
                        ),
                        fit: BoxFit.fitHeight,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            CountryDetailText(
                label: 'Population:', text: country.population.toString()),
            const SizedBox(height: 5),
            CountryDetailText(label: 'Region:', text: country.region!),
            const SizedBox(height: 5),
            CountryDetailText(
                label: 'Capital:', text: country.capital.toString()),
            const SizedBox(height: 5),
            const SizedBox(height: 20),
            CountryDetailText(
                label: 'Subregion:', text: country.subregion.toString()),
            const SizedBox(height: 5),
            CountryDetailText(
                label: 'Continents:', text: country.continents!.toString()),
            const SizedBox(height: 5),
            const SizedBox(height: 20),
            CountryDetailText(
                label: 'UN member:', text: country.unMember.toString()),
            const SizedBox(height: 5),
            CountryDetailText(
                label: 'Independent:', text: country.independent.toString()),
            CountryDetailText(
                label: 'Status:', text: country.status.toString()),
            const SizedBox(height: 20),
            CountryDetailText(label: 'Area:', text: '${country.area!}sq. km'),
            const SizedBox(height: 5),
            CountryDetailText(
                label: 'Timezones:', text: country.timezones.toString()),
            const SizedBox(height: 5),
            CountryDetailText(
                label: 'Lat. and Long.:', text: country.latlng!.toString()),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
