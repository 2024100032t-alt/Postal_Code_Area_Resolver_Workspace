class Place {
  final String placeName;
  final String state;
  final String stateAbbreviation;
  final String latitude;
  final String longitude;

  Place({
    required this.placeName,
    required this.state,
    required this.stateAbbreviation,
    required this.latitude,
    required this.longitude,
  });

  factory Place.fromJson(Map<String, dynamic> json) {
    return Place(
      placeName: json['place name'] as String? ?? 'Unknown',
      state: json['state'] as String? ?? 'N/A',
      stateAbbreviation: json['state abbreviation'] as String? ?? 'N/A',
      latitude: json['latitude'] as String? ?? '0.0',
      longitude: json['longitude'] as String? ?? '0.0',
    );
  }
}

class PostalLocation {
  final String postCode;
  final String country;
  final String countryAbbreviation;
  final List<Place> places;

  PostalLocation({
    required this.postCode,
    required this.country,
    required this.countryAbbreviation,
    required this.places,
  });

  factory PostalLocation.fromJson(Map<String, dynamic> json) {
    final rawPlaces = (json['places'] as List? ?? []);
    final placesList = rawPlaces
        .map((p) => Place.fromJson(p as Map<String, dynamic>))
        .toList();

    return PostalLocation(
      postCode: json['post code'] as String? ?? '',
      country: json['country'] as String? ?? '',
      countryAbbreviation: json['country abbreviation'] as String? ?? '',
      places: placesList,
    );
  }
}