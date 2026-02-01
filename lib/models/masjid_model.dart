class Masjid {
  final String id;
  final String name;
  final String locationShort;
  final String imageUrl;
  final String description;
  final double latitude;
  final double longitude;
  final String qrCodeAssetPath;

  Masjid({
    required this.id,
    required this.name,
    required this.locationShort,
    required this.imageUrl,
    required this.description,
    required this.latitude,
    required this.longitude,
    required this.qrCodeAssetPath,
  });
}
