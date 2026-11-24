void main() {
  String namaProduk = 'Nasi Goreng';
  String kategori = 'Makanan Berat';
  double harga = 15000;
  int stok = 20;
  bool tersedia = stok > 0;
  print('Nama: $namaProduk');
  print('Kategori: $kategori');
  print('Harga: Rp$harga');
  print('Stok: $stok');
  print('Tersedia: $tersedia');
}

import 'models/produk.dart';
void main() {
  final nasiGoreng = Produk.restok('MKN001', 'Nasi Goreng', 'Makanan Berat',
      15000, 20);
  final esTeh = Produk.baru('MNM001', 'Es Teh Manis', 'Minuman Dingin',
      5000);
  print('${nasiGoreng.nama}: stok ${nasiGoreng.stok}, tersedia:
      ${nasiGoreng.tersedia}');
      print('${esTeh.nama}: stok ${esTeh.stok}, tersedia: ${esTeh.tersedia}');
}