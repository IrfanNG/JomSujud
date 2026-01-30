class Masjid {
  final String id;
  final String name;
  final String locationName;
  final List<String> imageUrls;
  final double latitude;
  final double longitude;
  final String description;
  final double? distanceKm;

  Masjid({
    required this.id,
    required this.name,
    required this.locationName,
    required this.imageUrls,
    required this.latitude,
    required this.longitude,
    required this.description,
    this.distanceKm,
  });

  Masjid copyWith({
    String? id,
    String? name,
    String? locationName,
    List<String>? imageUrls,
    double? latitude,
    double? longitude,
    String? description,
    double? distanceKm,
  }) {
    return Masjid(
      id: id ?? this.id,
      name: name ?? this.name,
      locationName: locationName ?? this.locationName,
      imageUrls: imageUrls ?? this.imageUrls,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      description: description ?? this.description,
      distanceKm: distanceKm ?? this.distanceKm,
    );
  }
}
