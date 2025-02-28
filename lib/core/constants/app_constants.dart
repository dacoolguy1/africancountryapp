class ApiEndpoints {
  static const String baseUrl = 'https://restcountries.com/v3.1';
  static const String africanCountries =
      '$baseUrl/region/africa?status=true&fields=name,languages,capital,flags';
  static String countryByName(String name) => '$baseUrl/name/$name';
}

class AppStrings {
  static const String appTitle = 'African Countries';
  static const String countriesList = 'Countries';
  static const String error = 'Error';
  static const String retry = 'Retry';
  static const String noInternet = 'No internet connection';
  static const String failedToLoad = 'Failed to load countries';
  static const String population = 'Population';
  static const String capital = 'Capital';
  static const String region = 'Region';
  static const String subregion = 'Subregion';
  static const String languages = 'Languages';
  static const String currencies = 'Currencies';
  static const String moreDetails = 'More Details';
  static const String independent = 'Independent';
  static const String unMember = 'UN Member';
  static const String yes = 'Yes';
  static const String no = 'No';
  static const String searchHint = 'Search countries...';
}

class HiveBoxes {
  static const String countriesBox = 'countries';
  static const String countryDetailsBox = 'countryDetails';
}
