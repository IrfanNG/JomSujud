import '../models/masjid_model.dart';

class MasjidRepository {
  static List<Masjid> getFamousMasjids() {
    return [
      Masjid(
        id: '1',
        name: 'Masjid Besi (Tuanku Mizan Zainal Abidin)',
        locationShort: 'Putrajaya, Malaysia',
        imageUrl:
            'https://images.unsplash.com/photo-1596422846543-75c6fc197f07?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
        description:
            'Dikenali sebagai "Masjid Besi", keajaiban seni bina ini dibina terutamanya daripada keluli dan kaca. Ia mempunyai sistem penyejukan daerah yang unik dan menawarkan reka bentuk terbuka yang menakjubkan berlatarbelakangkan Tasik Putrajaya.',
        latitude: 2.9213,
        longitude: 101.6844,
        qrCodeAssetPath: 'assets/qr_placeholder.png',
      ),
      Masjid(
        id: '2',
        name: 'Masjid Sri Sendayan',
        locationShort: 'Negeri Sembilan, Malaysia',
        imageUrl:
            'https://images.unsplash.com/photo-1628045934673-3059296650cb?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
        description:
            'Sering digelar "Taj Mahal Malaysia", masjid ini merupakan kraf tangan putih yang rumit, penyaduran emas, dan seni bina inspirasi Maghribi. Satu permata visual yang tersembunyi di Bandar Sri Sendayan.',
        latitude: 2.6869,
        longitude: 101.8906,
        qrCodeAssetPath: 'assets/qr_placeholder.png',
      ),
      Masjid(
        id: '3',
        name: 'Masjid Selat Melaka',
        locationShort: 'Melaka, Malaysia',
        imageUrl:
            'https://images.unsplash.com/photo-1677641243555-46eb62817d7b?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
        description:
            '"Masjid Terapung" Melaka ini kelihatan seperti terapung di atas laut ketika air pasang. Kubah emas dan tingkap kaca berwarna warni mencipta pemandangan yang memukau, terutamanya ketika matahari terbenam di Selat Melaka.',
        latitude: 2.1793,
        longitude: 102.2494,
        qrCodeAssetPath: 'assets/qr_placeholder.png',
      ),
      Masjid(
        id: '4',
        name: 'Masjid Putra',
        locationShort: 'Putrajaya, Malaysia',
        imageUrl:
            'https://images.unsplash.com/photo-1605626245353-83d47c4cce8f?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
        description:
            '"Masjid Merah Jambu" ini dibina dengan granit berwarna mawar dan boleh memuatkan 15,000 jemaah. Menaranya dipengaruhi oleh Masjid Sheikh Omar di Baghdad.',
        latitude: 2.9360,
        longitude: 101.6893,
        qrCodeAssetPath: 'assets/qr_placeholder.png',
      ),
      Masjid(
        id: '5',
        name: 'Masjid Sultan Salahuddin Abdul Aziz Shah',
        locationShort: 'Shah Alam, Selangor',
        imageUrl:
            'https://images.unsplash.com/photo-1601724213793-78740523097b?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
        description:
            'Dikenali sebagai "Masjid Biru" kerana kubah biru dan peraknya yang menakjubkan—salah satu yang terbesar di dunia. Ia menggabungkan seni bina moden dan tradisional dengan megah.',
        latitude: 3.0787,
        longitude: 101.5173,
        qrCodeAssetPath: 'assets/qr_placeholder.png',
      ),
      Masjid(
        id: '6',
        name: 'Masjid Negara',
        locationShort: 'Kuala Lumpur, Malaysia',
        imageUrl:
            'https://images.unsplash.com/photo-1574514865181-70585252875b?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
        description:
            'Masjid Negara Malaysia adalah simbol pemodenan negara. Ciri utamanya ialah menara setinggi 73 meter dan bumbung utama konkrit berbentuk bintang 16 bucu.',
        latitude: 3.1417,
        longitude: 101.6917,
        qrCodeAssetPath: 'assets/qr_placeholder.png',
      ),
      Masjid(
        id: '7',
        name: 'Masjid Wilayah Persekutuan',
        locationShort: 'Kuala Lumpur, Malaysia',
        imageUrl:
            'https://images.unsplash.com/photo-1633504383183-b2611cd59832?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
        description:
            'Digelar "Masjid dalam Taman", ia menampilkan seni bina Uthmaniyah-Melayu yang sedikit menyerupai Masjid Biru di Turki, dikelilingi oleh parit dan taman yang indah.',
        latitude: 3.1610,
        longitude: 101.6700,
        qrCodeAssetPath: 'assets/qr_placeholder.png',
      ),
      Masjid(
        id: '8',
        name: 'Masjid Jamek',
        locationShort: 'Kuala Lumpur, Malaysia',
        imageUrl:
            'https://images.unsplash.com/photo-1601997327389-9e8c372295a6?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
        description:
            'Salah satu masjid tertua di KL, dibina di pertemuan sungai Klang dan Gombak. Seni bina Moorish dan Islam-Mogul menawarkan suasana sejarah yang tenang.',
        latitude: 3.1492,
        longitude: 101.6963,
        qrCodeAssetPath: 'assets/qr_placeholder.png',
      ),
      Masjid(
        id: '9',
        name: 'Masjid Kristal',
        locationShort: 'Kuala Terengganu, Terengganu',
        imageUrl:
            'https://images.unsplash.com/photo-1564753765187-c3d6904fb3a7?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
        description:
            'Masjid agung yang diperbuat daripada keluli, kaca, dan kristal. Ia terletak di Taman Tamadun Islam di pulau Wan Man dan kelihatan sangat megah apabila diterangi cahaya pada waktu malam.',
        latitude: 5.3228,
        longitude: 103.1206,
        qrCodeAssetPath: 'assets/qr_placeholder.png',
      ),
      Masjid(
        id: '10',
        name: 'Masjid Ubudiah',
        locationShort: 'Kuala Kangsar, Perak',
        imageUrl:
            'https://images.unsplash.com/photo-1639893529367-9d7a2641f92c?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
        description:
            'Sering dianggap sebagai masjid tercantik di Malaysia, ia menampilkan kubah emas dan marmar Itali. Ia berdiri megah di Bukit Chandan berhampiran istana diraja.',
        latitude: 4.7644,
        longitude: 100.9419,
        qrCodeAssetPath: 'assets/qr_placeholder.png',
      ),
      Masjid(
        id: '11',
        name: 'Masjid Zahir',
        locationShort: 'Alor Setar, Kedah',
        imageUrl:
            'https://images.unsplash.com/photo-1575880521262-b13c847d0663?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
        description:
            'Salah satu masjid tertua di Malaysia, menampilkan lima kubah hitam yang melambangkan Lima Rukun Islam. Pernah diundi sebagai salah satu daripada 10 masjid tercantik di dunia.',
        latitude: 6.1207,
        longitude: 100.3670,
        qrCodeAssetPath: 'assets/qr_placeholder.png',
      ),
      Masjid(
        id: '12',
        name: 'Masjid Tengku Tengah Zaharah',
        locationShort: 'Kuala Terengganu, Terengganu',
        imageUrl:
            'https://images.unsplash.com/photo-1606708764032-132d75f24f5a?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
        description:
            'Masjid Terapung sebenar yang pertama di Malaysia. Ia terletak di atas platform di lagun di muara Sungai Kuala Ibai, mencipta pantulan yang ajaib.',
        latitude: 5.2787,
        longitude: 103.1708,
        qrCodeAssetPath: 'assets/qr_placeholder.png',
      ),
      Masjid(
        id: '13',
        name: 'Masjid Kapitan Keling',
        locationShort: 'George Town, Penang',
        imageUrl:
            'https://images.unsplash.com/photo-1629858376916-2495b46e3dbe?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
        description:
            'Dibina pada abad ke-19 oleh pedagang Muslim India, masjid ini merupakan sebahagian daripada Tapak Warisan Dunia George Town, terkenal dengan seni bina Moghulnya.',
        latitude: 5.4168,
        longitude: 100.3377,
        qrCodeAssetPath: 'assets/qr_placeholder.png',
      ),
      Masjid(
        id: '14',
        name: 'Masjid Sultan Abu Bakar',
        locationShort: 'Johor Bahru, Johor',
        imageUrl:
            'https://images.unsplash.com/photo-1649914717144-8c83e18f2601?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
        description:
            'Masjid negeri yang terletak di atas bukit menghadap Selat Johor. Ia terkenal dengan seni bina gaya Victoria yang digabungkan dengan perincian Moor.',
        latitude: 1.4578,
        longitude: 103.7629,
        qrCodeAssetPath: 'assets/qr_placeholder.png',
      ),
      Masjid(
        id: '15',
        name: 'Masjid Al-Bukhary',
        locationShort: 'Alor Setar, Kedah',
        imageUrl:
            'https://images.unsplash.com/photo-1596422846543-75c6fc197f07?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
        description:
            'Sebahagian daripada Kompleks Al-Bukhary, masjid ini menampilkan elemen seni bina Parsi dan Turki yang indah, termasuk menara tujuh tingkat.',
        latitude: 6.1305,
        longitude: 100.3833,
        qrCodeAssetPath: 'assets/qr_placeholder.png',
      ),
    ];
  }
}
