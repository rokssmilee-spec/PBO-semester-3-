import 'models/buku.dart';

void main() {
  // Baris pertama wajib mencetak NIM - Nama peserta
  print('2024020101 - Tubagus Dwi P.');

  // 1. Membuat List bertipe Buku (Polimorfisme)
  List<Buku> daftarBuku = [
    BukuTeks('T001', 'Algoritma Dasar', 'Budi Santoso', 4, 'Algoritma'),
    Novel('N001', 'Laskar Senja', 'Ani Wijaya', 5, 'Petualangan'),
    NovelPopuler('N002', 'Bintang Malam', 'Ani Wijaya', 2, 'Fantasi'),
  ];

  // 2. Perulangan untuk memproses polimorfisme hitungDenda (5 hari keterlambatan)
  for (var buku in daftarBuku) {
    int denda = buku.hitungDenda(5);
    print('Judul: ${buku.judul} | Denda (5 hari): Rp$denda');
  }

  // 3. Memanggil method perpanjang dari objek NovelPopuler
  var novelPopulerObj = daftarBuku.last as NovelPopuler;
  int hasilPerpanjang = novelPopulerObj.perpanjang(7);
  print('Hasil Perpanjang Novel Populer (dari 7 hari): $hasilPerpanjang hari');
}