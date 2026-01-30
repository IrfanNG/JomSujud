import 'package:jom_sujud/repositories/masjid_repository.dart';

void main() {
  final repo = MasjidRepository();
  final masjids = repo.getMasjids();

  print('Successfully fetched ${masjids.length} mosques:');
  for (var masjid in masjids) {
    print('- ${masjid.name} (${masjid.locationName})');
  }
}
