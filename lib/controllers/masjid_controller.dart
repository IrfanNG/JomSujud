import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import '../models/masjid_model.dart';
import '../repositories/masjid_repository.dart';

class MasjidController extends ChangeNotifier {
  List<Masjid> _allMasjids = [];
  String _searchQuery = '';

  List<Masjid> get masjids {
    if (_searchQuery.isEmpty) {
      return _allMasjids;
    }
    final query = _searchQuery.toLowerCase();
    return _allMasjids.where((masjid) {
      return masjid.name.toLowerCase().contains(query) ||
          masjid.locationShort.toLowerCase().contains(query);
    }).toList();
  }

  final Map<String, double> _distances = {};

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  // Helper method for UI to get distance
  String getDistanceFormatted(String id) {
    if (_distances.containsKey(id)) {
      double km = _distances[id]! / 1000;
      return '${km.toStringAsFixed(1)} km';
    }
    return '';
  }

  void updateSearchQuery(String query) {
    _searchQuery = query;
    notifyListeners();
  }

  Future<void> init() async {
    _setLoading(true);
    try {
      // Load Masjids from static repository method
      _allMasjids = MasjidRepository.getFamousMasjids();

      // 1. Check/Request Permissions
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        // Don't throw, just return. List will be shown without distances.
        // Or throw if we strictly want to warn.
        // For UX, showing list is better. But if we want to translate error:
        // throw Exception('Perkhidmatan lokasi dimatikan.');
        _setLoading(false);
        return;
      }

      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          // throw Exception('Kebenaran lokasi ditolak.');
          _setLoading(false);
          return;
        }
      }

      if (permission == LocationPermission.deniedForever) {
        // throw Exception('Kebenaran lokasi ditolak secara kekal.');
        _setLoading(false);
        return;
      }

      // 2. Get Current Position
      Position position = await Geolocator.getCurrentPosition();

      // 3. Calculate Distances
      for (var masjid in _allMasjids) {
        double distanceInMeters = Geolocator.distanceBetween(
          position.latitude,
          position.longitude,
          masjid.latitude,
          masjid.longitude,
        );
        _distances[masjid.id] = distanceInMeters;
      }

      // 4. Sort by distance
      _allMasjids.sort((a, b) {
        double distA = _distances[a.id] ?? double.maxFinite;
        double distB = _distances[b.id] ?? double.maxFinite;
        return distA.compareTo(distB);
      });

      _errorMessage = null;
    } catch (e) {
      // Translate common geolocator errors if they bubble up, or generic error
      _errorMessage = e.toString().replaceAll('Exception: ', '');

      // Ensure we have data even if location fails
      if (_allMasjids.isEmpty) {
        _allMasjids = MasjidRepository.getFamousMasjids();
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
