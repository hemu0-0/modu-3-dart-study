class Geo {
  final String lat;
  final String lng;

  Geo(this.lat, this.lng);

  Geo copyWith({
    String? lat,
    String? lng,
  }) {
    return Geo(
      lat ?? this.lat,
      lng ?? this.lng,
    );
  }

  factory Geo.fromJson(Map<String, dynamic> json) {
    return Geo(
      json['lat'],
      json['lng'],
    );
    }

  Map<String, dynamic> toJson() =>
      {
        'lat': lat,
        'lng': lng,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Geo && runtimeType == other.runtimeType &&
              lat == other.lat && lng == other.lng;

  @override
  int get hashCode => lat.hashCode ^ lng.hashCode;

  @override
  String toString() => 'Geo(lat: $lat, lng: $lng)';

}
