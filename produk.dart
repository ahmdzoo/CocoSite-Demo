class ProdukKelapa {
  String nama;
  double harga;
  int stok;

  ProdukKelapa(this.nama, this.harga, this.stok);

  void tampilkanInfoProduk() {
    print('Nama: $nama');
    print('Harga: ${harga.toStringAsFixed(2)}');
    print('Stok: $stok');
  }
}

class PenjualanKelapa {
  List<ProdukKelapa> produkTerjual = [];

  void tambahProdukTerjual(ProdukKelapa produk, int jumlah) {
    if (produk.stok >= jumlah) {
      ProdukKelapa produkTerjual =
          ProdukKelapa(produk.nama, produk.harga, jumlah);
      this.produkTerjual.add(produkTerjual);
      produk.stok -= jumlah;
      print('$jumlah ${produk.nama} terjual.');
    } else {
      print('Stok ${produk.nama} tidak mencukupi.');
    }
  }

  double hitungTotalPendapatan() {
    double total = 0;
    for (ProdukKelapa produk in produkTerjual) {
      total += produk.harga * produk.stok;
    }
    return total;
  }
}

void main() {
  // Membuat objek produk
  ProdukKelapa kelapaParut = ProdukKelapa('Kelapa Parut', 25.0, 50);
  ProdukKelapa cikal = ProdukKelapa('Cikal', 15.0, 30);
  ProdukKelapa gelondongan = ProdukKelapa('Gelondongan', 10.0, 40);
  ProdukKelapa batokKelapa = ProdukKelapa('Batok Kelapa', 5.0, 60);
  ProdukKelapa airKelapa = ProdukKelapa('Air Kelapa', 8.0, 20);

  // Membuat objek penjualan
  PenjualanKelapa penjualan = PenjualanKelapa();

  // Menambahkan produk ke penjualan
  penjualan.tambahProdukTerjual(kelapaParut, 5);
  penjualan.tambahProdukTerjual(cikal, 8);
  penjualan.tambahProdukTerjual(gelondongan, 10);
  penjualan.tambahProdukTerjual(batokKelapa, 15);
  penjualan.tambahProdukTerjual(airKelapa, 5);

  // Menampilkan informasi produk yang terjual
  print('\nInformasi Produk Terjual:');
  for (ProdukKelapa produk in penjualan.produkTerjual) {
    produk.tampilkanInfoProduk();
    print('------------------------');
  }

  // Menampilkan total pendapatan
  print(
      '\nTotal Pendapatan: ${penjualan.hitungTotalPendapatan().toStringAsFixed(2)}');
}
