abstract class Buku {
  final String kode;
  String judul;
  String penulis;
  int _stok;
  bool tersedia;

  int get stok => _stok;

  Buku(this.kode, this.judul, this.penulis, this._stok)
      : tersedia = _stok > 0;

  Buku.baru(String kode, String judul)
      : this(kode, judul, 'Anonim', 1);

  // Method abstrak yang wajib diimplementasikan oleh setiap subclass
  int hitungDenda(int hariTerlambat);

  String tampilkanInfo(String prefix) {
    return '$prefix Judul: $judul, Penulis: $penulis, Stok: $_stok';
  }
}

// Subclass BukuTeks (Denda Rp1000 per hari)
class BukuTeks extends Buku {
  String mataKuliah;

  BukuTeks(String kode, String judul, String penulis, int stok, this.mataKuliah)
      : super(kode, judul, penulis, stok);

  @override
  int hitungDenda(int hariTerlambat) {
    return hariTerlambat * 1000;
  }
}

// Subclass Novel (Denda Rp500 per hari)
class Novel extends Buku {
  String genre;

  Novel(String kode, String judul, String penulis, int stok, this.genre)
      : super(kode, judul, penulis, stok);

  @override
  int hitungDenda(int hariTerlambat) {
    return hariTerlambat * 500;
  }
}

// Mixin BisaDiperpanjang
mixin BisaDiperpanjang {
  int perpanjang(int hariAwal) {
    return hariAwal + 7;
  }
}

// Class turunan NovelPopuler yang menerapkan mixin
class NovelPopuler extends Novel with BisaDiperpanjang {
  NovelPopuler(String kode, String judul, String penulis, int stok, String genre)
      : super(kode, judul, penulis, stok, genre);
}