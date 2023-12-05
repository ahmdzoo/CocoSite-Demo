class Pelanggan {
  String nama;
  String alamat;

  String get nama_Pelanggan {
    return nama;
  }

  void set nama_Pelanggan(String nama) {
    this.nama = nama;
  }
}

String get alamat_Pelanggan {
  return alamat;
}

void main() {
  Pelanggan s1 = new Pelanggan();
  s1.nama_Pelanggan = 'Andi';
  s1.alamat_Pelanggan = 'Jatibarang';
  print(s1.nama_siswa);
  print(s1.alamat_siswa);
}
