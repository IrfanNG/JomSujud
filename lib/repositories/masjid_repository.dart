import '../models/masjid.dart';

class MasjidRepository {
  List<Masjid> getMasjids() {
    return [
      Masjid(
        id: '1',
        name: 'Masjid Sri Sendayan',
        locationName: 'Bandar Sri Sendayan, Negeri Sembilan',
        imageUrls: [
          'https://www.masjidsrisendayan.com.my/assets/img/galeri/6-big.jpg',
          'https://images.unsplash.com/photo-1605626245353-83d47c4cce8f?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
          'https://images.unsplash.com/photo-1628045934673-3059296650cb?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80', // Duplicated for demo
        ],
        latitude: 2.6869,
        longitude: 101.8906,
        description:
            'Known as the "Taj Mahal of Malaysia", this mosque features exquisite white craftsmanship and golden domes. The intricate details of its architecture are a sight to behold, attracting visitors from all over the country.',
      ),
      Masjid(
        id: '2',
        name: 'Masjid Besi (Tuanku Mizan Zainal Abidin)',
        locationName: 'Putrajaya',
        imageUrls: [
          'https://img.freepik.com/premium-photo/tuanku-mizan-zainal-abidin-mosque-masjid-besi-putrajaya-malaysia_931022-643.jpg?w=740',
          'https://images.unsplash.com/photo-1596422846543-75c6fc197f07?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
          'https://images.unsplash.com/photo-1552596956-6bea72007e06?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
        ],
        latitude: 2.9213,
        longitude: 101.6844,
        description:
            'This "Iron Mosque" is a marvel of modern engineering, built primarily from steel and glass, offering a cooling open-air design. It sits elegantly by the Putrajaya Lake.',
      ),
      Masjid(
        id: '3',
        name: 'Masjid Putra',
        locationName: 'Putrajaya',
        imageUrls: [
          'https://media.istockphoto.com/photos/aerial-view-of-putra-mosque-with-putrajaya-city-centre-with-lake-at-picture-id1322687535?k=20&m=1322687535&s=612x612&w=0&h=FTreidRpfVkgyc6jt3fbRcNy7rnIqaCTcuVCmRAi1VM=',
          'https://images.unsplash.com/photo-1518182170546-0766be6f5a56?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
          'https://images.unsplash.com/photo-1584551246679-0daf3d275d0f?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
        ],
        latitude: 2.9360,
        longitude: 101.6893,
        description:
            'Famous for its pink dome and rose-tinted granite, situated by the beautiful Putrajaya Lake. It is one of the most photographed mosques in Malaysia.',
      ),
      Masjid(
        id: '4',
        name: 'Masjid Selat Melaka',
        locationName: 'Malacca City, Melaka',
        imageUrls: [
          'https://images.fineartamerica.com/images-medium-large-5/masjid-selat-melaka-mahmud-ahsan.jpg',
        ],
        latitude: 2.1793,
        longitude: 102.2494,
        description:
            'The "Floating Mosque" of Malacca looks like it is floating on the water when the tide is high. A spectacular sight especially during sunset.',
      ),
      Masjid(
        id: '5',
        name: 'Masjid Zahir',
        locationName: 'Alor Setar, Kedah',
        imageUrls: [
          'https://3.bp.blogspot.com/-WeWDRLqlpD4/UdF3Am4YCMI/AAAAAAAANXM/iAbd9MCixo4/s759/Masjid+Zahir+Kedah+Malaysia.jpg',
          'https://images.unsplash.com/photo-1575880521262-b13c847d0663?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
          'https://images.unsplash.com/photo-1637060590396-857503463836?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
        ],
        latitude: 6.1207,
        longitude: 100.3670,
        description:
            'One of the oldest and grandest mosques in Malaysia, featuring five black domes symbolising the Five Pillars of Islam. Its Moorish architecture is truly stunning.',
      ),
    ];
  }
}
