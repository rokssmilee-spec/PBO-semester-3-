import 'buku.dart';

class Perpustakaan {
  String nama;
  final List<Buku> _daftarBuku = []; // Daftar buku private

  Perpustakaan(this.nama);

  void tambahBuku(Buku b) {
    _daftarBuku.add(b);
  }

  // Getter koleksi yang bersifat hanya-baca (read-only)
  List<Buku> get daftar => List.unmodifiable(_daftarBuku);

  // Getter penulis unik bertipe Set<String>
  Set<String> get penulisUnik {
    return _daftarBuku.map((b) => b.penulis).toSet();
  }

  // Getter stok per kode bertipe Map<String, int>
  Map<String, int> get stokPerKode {
    var mapStok = <String, int>{};
    for (var b in _daftarBuku) {
      mapStok[b.kode] = b.stok;
    }
    return mapStok;
  }
}