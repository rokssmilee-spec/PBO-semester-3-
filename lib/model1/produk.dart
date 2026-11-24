class Produk {
final String kode;
String nama;
String kategori;
double harga;
int stok;
bool tersedia;
// Constructor utama. "tersedia" dihitung otomatis dari stok
// lewat initializer list (bagian setelah tanda ':'), bukan di dalam body.
Produk(this.kode, this.nama, this.kategori, this.harga, this.stok)
: tersedia = stok > 0;
// Named constructor: untuk produk baru yang stoknya belum diisi (stok =
0).
Produk.baru(String kode, String nama, String kategori, double harga)
: this(kode, nama, kategori, harga, 0);
// Named constructor: untuk produk yang langsung didaftarkan dengan stok
awal.
Produk.restok(
String kode,
String nama,
String kategori,
:
lib models
models produk .dart
lib/models/produk.dart
double harga,
int stokAwal,
) : this(kode, nama, kategori, harga, stokAwal);
}