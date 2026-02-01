import 'package:flutter_test/flutter_test.dart';
import 'package:jom_sujud/repositories/masjid_repository.dart';

void main() {
  test('MasjidRepository returns famous masjids', () {
    final masjids = MasjidRepository.getFamousMasjids();
    expect(masjids.length, 3);
    expect(masjids.first.name, 'Masjid Besi (Tuanku Mizan Zainal Abidin)');
  });
}
