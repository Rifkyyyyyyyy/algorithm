// 1.  Studi Kasus:
// Sebuah toko online memiliki katalog produk yang besar. Setiap produk memiliki atribut seperti nama, harga, dan stok.
// Seorang pelanggan ingin mencari produk pertama dengan harga di bawah 100 ribu dan masih tersedia di stok.
// Implementasikan pencarian ini menggunakan metode firstWhere dalam bahasa pemrograman Dart.

class Product {
  final String name;
  final int harga;
  final int stock;

  Product({required this.name, required this.harga, required this.stock});
}

void main(List<String> args) {
  List<Product> product = [
    Product(name: 'Baju koko', harga: 12000, stock: 20),
    Product(name: 'Baju gamis', harga: 2999, stock: 40),
    Product(name: 'Baju anak', harga: 1500, stock: 70),
    Product(name: 'Baju formal', harga: 2000, stock: 5),
    Product(name: 'Baju polos', harga: 5000, stock: 9)
  ];

  Product products = product
      .firstWhere((element) => element.harga < 10000 && element.stock > 0);

  Map<String, dynamic> toMap(Product data) =>
      {"nama": data.name, "harga": data.harga, "stock": data.stock};

  toMap(products).forEach((key, value) {
    print('$key : $value');
  });
}

// 2. Studi Kasus:
// Seorang pengguna aplikasi perjalanan ingin mencari tiket pesawat dengan kriteria tertentu.
// Mereka ingin menemukan penerbangan pertama yang memenuhi syarat-syarat berikut:
// - Berangkat dari Jakarta.
// - Tiba di Bali.
// - Harga tiket di bawah 1 juta.
// - Waktu keberangkatan setelah pukul 08:00 pagi.
// - Buatlah program Dart yang menggunakan metode firstWhere untuk mencari penerbangan yang sesuai dengan kriteria pengguna.

class Booking {
  final String firstCity;
  final String destination;
  final int amount;
  final DateTime time;

  Booking({
    required this.firstCity,
    required this.destination,
    required this.amount,
    required this.time,
  });
}

void mains(List<String> args) {
  DateTime now = DateTime.now();

  DateTime time({required int h, required int m, required int s}) =>
      DateTime(now.year, now.month, now.day, h, m, s);

  List<Booking> booking = [
    Booking(
        firstCity: 'jakarta',
        destination: 'Bali',
        amount: 1200000,
        time: time(h: 8, m: 0, s: 0)),
    Booking(
        firstCity: 'jakarta',
        destination: 'Bali',
        amount: 1100000,
        time: time(h: 8, m: 4, s: 39)),
    Booking(
        firstCity: 'jakarta',
        destination: 'Bali',
        amount: 900000,
        time: time(h: 8, m: 10, s: 0)),
    Booking(
        firstCity: 'tangerang',
        destination: 'Bali',
        amount: 1500000,
        time: time(h: 8, m: 0, s: 0)),
    Booking(
        firstCity: 'depok',
        destination: 'Bali',
        amount: 1050000,
        time: time(h: 8, m: 5, s: 5)),
  ];

  Booking bookings = booking.firstWhere(
    (element) =>
        element.firstCity == 'jakarta' &&
        element.destination == 'Bali' &&
        (element.amount < 1000000 &&
            (element.time.isAfter(time(h: 8, m: 0, s: 0)) &&
                element.time.isBefore(time(h: 8, m: 15, s: 0)))),
    orElse: () => Booking(
      firstCity: '',
      destination: '',
      amount: 0,
      time: DateTime.now(),
    ),
  );

  Map<String, dynamic> toMap(Booking booking) => {
        "dari": booking.firstCity,
        "tujuan": booking.destination,
        "harga": booking.amount,
        "jadwal_berangkat": booking.time
      };

  print('Hasil pencarian');
  toMap(bookings).forEach((key, value) {
    print('$key : $value');
  });
}
