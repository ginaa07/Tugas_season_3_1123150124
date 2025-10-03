class Mahasiswa {
  // Properties (atribut)
  String nama;
  String nim;
  String jurusan;
  int angkatan; // menyimpan tahun angkatan masuk

  // Constructor
  Mahasiswa({
    required this.nama,
    required this.nim,
    required this.jurusan,
    required this.angkatan,
  });

  // Method
  void tampilkanData() {
    print("Nama : $nama");
    print("NIM : $nim");
    print("Jurusan : $jurusan");
    print("Angkatan : $angkatan");
  }
}

class AsistenDosen extends Mahasiswa {
  String mataKuliah; //menyimpan mata kuliah yang diasisten

  AsistenDosen({
    required String nama,
    required String nim,
    required String jurusan,
    required int angkatan,
    required this.mataKuliah,
  }) : super(
          nama: nama,
          nim: nim,
          jurusan: jurusan,
          angkatan: angkatan,
        );

  // Override method
  @override
  void tampilkanData() {
    super.tampilkanData();
    print("Asisten MK: $mataKuliah");
  }
}

// Abstract class Pendaftaran.
abstract class Pendaftaran {
  void daftarMatkul(String matkul);
}

//MahasiswaAktif implements Pendaftaran.
class MahasiswaAktif extends Mahasiswa implements Pendaftaran {
  List<String> matkulDiambil = [];

  MahasiswaAktif({
    required String nama,
    required String nim,
    required String jurusan,
    required int angkatan,
  }) : super(
          nama: nama,
          nim: nim,
          jurusan: jurusan,
          angkatan: angkatan,
        );

//implementasi fungsi daftarMatkul
  @override
  void daftarMatkul(String matkul) {
    matkulDiambil.add(matkul);
    print("$nama berhasil daftar mata kuliah $matkul");
  }
}

void main() {
  // Buat objek Mahasiswa
  var mhs = Mahasiswa(
    nama: "Regina Safarina",
    nim: "1123150124",
    jurusan: "Teknik Informatika",
    angkatan: 2023,
  );
  mhs.tampilkanData();

  print("-----");

  // Buat objek AsistenDosen
  var asdos = AsistenDosen(
    nama: "i Ketut Gunawan",
    nim: "1332711002",
    jurusan: "Teknik Informatika",
    angkatan: 2023,
    mataKuliah: "Mobile Apps",
  );
  asdos.tampilkanData();

  print("-----");

  // Buat objek MahasiswaAktif
  var mhsAktif = MahasiswaAktif(
    nama: "Regina safarina",
    nim: "1123150124",
    jurusan: "Teknik informatika",
    angkatan: 2023,
  );
  mhsAktif.tampilkanData();
  mhsAktif.daftarMatkul("Mobile Apps");
  mhsAktif.daftarMatkul("Pemrograman Objek II");
}
