class Location {
  final String city;
  final String state;
  final String country;
  final String postcode;
  final LocationCoordinates coordinates;
  final LocationTimeZone timezone;

  Location(
      {required this.city,
      required this.state,
      required this.country,
      required this.postcode,
      required this.coordinates,
      required this.timezone});
}

class LocationCoordinates {
  final String latitude;
  final String longitude;

  LocationCoordinates({required this.latitude, required this.longitude});
}

class LocationTimeZone {
  final String offset;
  final String description;

  LocationTimeZone({required this.offset, required this.description});
}
