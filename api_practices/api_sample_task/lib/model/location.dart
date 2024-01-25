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

  factory Location.fromMap(Map<String, dynamic> json) {
    final coordinate = LocationCoordinates.fromMap(json['coordinates']);
    final timeZone = LocationTimeZone.fromMap(json['timezone']);

    return Location(
        city: json['city'],
        state: json['state'],
        country: json['country'],
        postcode: json['postcode'].toString(),
        coordinates: coordinate,
        timezone: timeZone);
  }
}

class LocationCoordinates {
  final String latitude;
  final String longitude;

  LocationCoordinates({required this.latitude, required this.longitude});
  factory LocationCoordinates.fromMap(Map<String, dynamic> json) {
    return LocationCoordinates(
        latitude: json['latitude'], longitude: json['longitude']);
  }
}

class LocationTimeZone {
  final String offset;
  final String description;

  LocationTimeZone({required this.offset, required this.description});

  factory LocationTimeZone.fromMap(Map<String, dynamic> json) {
    return LocationTimeZone(
        offset: json['offset'], description: json['description']);
  }
}
