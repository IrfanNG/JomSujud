import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import '../models/masjid.dart';
import '../repositories/masjid_repository.dart';

class MasjidController extends ChangeNotifier {
  final MasjidRepository _repository;

  List<Masjid> _masjids = [];
  List<Masjid> get masjids => _masjids;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  MasjidController({MasjidRepository? repository})
    : _repository = repository ?? MasjidRepository();

  Future<void> init() async {
    _setLoading(true);
    try {
      // 1. Check/Request Permissions
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        throw Exception('Location services are disabled.');
      }

      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          throw Exception('Location permissions are denied');
        }
      }

      if (permission == LocationPermission.deniedForever) {
        throw Exception(
          'Location permissions are permanently denied, we cannot request permissions.',
        );
      }

      // 2. Get Current Position
      Position position = await Geolocator.getCurrentPosition();

      // 3. Get Masjids from Repository
      List<Masjid> rawMasjids = _repository.getMasjids();

      // 4. Calculate Distances and Sort
      List<Masjid> processedMasjids = rawMasjids.map((masjid) {
        double distanceInMeters = Geolocator.distanceBetween(
          position.latitude,
          position.longitude,
          masjid.latitude,
          masjid.longitude,
        );
        return masjid.copyWith(distanceKm: distanceInMeters / 1000);
      }).toList();

      processedMasjids.sort(
        (a, b) => (a.distanceKm ?? 0).compareTo(b.distanceKm ?? 0),
      );

      _masjids = processedMasjids;
      _errorMessage = null;
    } catch (e) {
      _errorMessage = e.toString();
      // Even if location fails, we might want to show the list unsorted or with default sort
      // For now, we'll just show the raw list if we have it, or empty if getting raw list failed (which it shouldn't here)
      if (_masjids.isEmpty) {
        _masjids = _repository.getMasjids();
      }
    } finally {
      _setLoading(false);
    }
  }

  void _setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }
}
