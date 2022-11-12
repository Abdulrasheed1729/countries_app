import 'package:countries_app/data/rest_countries_api/rest_countries_api_service.dart';
import 'package:countries_app/views/details_page.dart';
import 'package:countries_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final countriesListAsync = ref.watch(countriesFutureProvider);
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Explore.',
        ),
        elevation: 0.0,
      ),
      body: countriesListAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => const Center(child: Text('Error')),
        data: (countries) {
          countries.sort((a, b) => a.name!.common!.compareTo(b.name!.common!));
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const SizedBox(height: 20),
                const SearchTextField(),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FilteringButton(
                      label: 'EN',
                      iconData: Icons.language_outlined,
                      onTap: () {},
                    ),
                    FilteringButton(
                      iconData: Icons.filter_alt_outlined,
                      label: 'Filter',
                      onTap: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: countries.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                countries[index].flags!.png!,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        title: Text(
                          countries[index].name!.common!,
                          style: theme.textTheme.subtitle1,
                        ),
                        subtitle: Text(
                          countries[index].capital.toString(),
                          style: theme.textTheme.subtitle2,
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => DetailPage(
                                country: countries[index],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
