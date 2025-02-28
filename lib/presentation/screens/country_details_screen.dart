import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../core/constants/app_constants.dart';
import '../bloc/country_details/country_details_bloc.dart';
import '../bloc/country_details/country_details_event.dart';
import '../bloc/country_details/country_details_state.dart';
import '../widgets/detail_item.dart';
import '../widgets/loading_indicator.dart';

class CountryDetailsScreen extends StatefulWidget {
  final String countryName;

  const CountryDetailsScreen({
    Key? key,
    required this.countryName,
  }) : super(key: key);

  @override
  State<CountryDetailsScreen> createState() => _CountryDetailsScreenState();
}

class _CountryDetailsScreenState extends State<CountryDetailsScreen> {
  @override
  void initState() {
    super.initState();
    context.read<CountryDetailsBloc>().add(
          FetchCountryDetails(name: widget.countryName),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CountryDetailsBloc, CountryDetailsState>(
        builder: (context, state) {
          if (state is CountryDetailsLoading) {
            return const LoadingIndicator();
          } else if (state is CountryDetailsLoaded) {
            final country = state.countryDetail;

            return CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: 200,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                    title: Text(
                      country.name.common,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    background: Stack(
                      fit: StackFit.expand,
                      children: [
                        Hero(
                          tag: 'flag-${country.name.common}',
                          child: SvgPicture.network(
                            country.flags.svg,
                            fit: BoxFit.cover,
                            placeholderBuilder: (context) => Container(
                              color: Colors.grey[300],
                              child: const Center(
                                child: CircularProgressIndicator(),
                              ),
                            ),
                          ),
                        ),
                        const DecoratedBox(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.0, 0.5),
                              end: Alignment.center,
                              colors: <Color>[
                                Color(0x60000000),
                                Color(0x00000000),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            country.name.official,
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          const SizedBox(height: 24),
                          DetailItem(
                            title: AppStrings.capital,
                            value: country.capital?.join(', ') ?? 'N/A',
                            icon: Icons.location_city,
                          ),
                          DetailItem(
                            title: AppStrings.region,
                            value: '${country.region}, ${country.subregion}',
                            icon: Icons.map,
                          ),
                          DetailItem(
                            title: AppStrings.population,
                            value: country.population.toString(),
                            icon: Icons.people,
                          ),
                          DetailItem(
                            title: AppStrings.languages,
                            value:
                                country.languages?.values.join(', ') ?? 'N/A',
                            icon: Icons.language,
                          ),
                          if (country.currencies != null)
                            DetailItem(
                              title: AppStrings.currencies,
                              value: country.currencies!.entries
                                  .map((entry) =>
                                      '${entry.value.name} (${entry.value.symbol})')
                                  .join(', '),
                              icon: Icons.monetization_on,
                            ),
                          DetailItem(
                            title: AppStrings.independent,
                            value: country.independent
                                ? AppStrings.yes
                                : AppStrings.no,
                            icon: Icons.flag,
                          ),
                          DetailItem(
                            title: AppStrings.unMember,
                            value: country.unMember
                                ? AppStrings.yes
                                : AppStrings.no,
                            icon: Icons.public,
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ],
            );
          } else if (state is CountryDetailsError) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    state.message,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      context.read<CountryDetailsBloc>().add(
                            FetchCountryDetails(name: widget.countryName),
                          );
                    },
                    child: const Text(AppStrings.retry),
                  ),
                ],
              ),
            );
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }
}
