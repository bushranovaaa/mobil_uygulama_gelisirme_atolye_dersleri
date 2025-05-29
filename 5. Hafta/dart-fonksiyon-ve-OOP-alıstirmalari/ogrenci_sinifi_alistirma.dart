// GÖREV 1: Buraya 'Ogrenci' adında bir sınıf oluşturun.
// Bu sınıfın aşağıdaki özelliklere (instance variables) sahip olması gerekiyor:
// - ad (String)
// - soyad (String)
// - numara (int)
// - notOrtalamasi (double)

class Ogrenci {
  String ad;
  String soyad;
  int numara;
  double notOrtalamasi;

  // GÖREV 2: Bu sınıf için bir constructor (yapıcı metot) tanımlayın.
  // Constructor, 'ad', 'soyad', 'numara' ve 'notOrtalamasi' özelliklerini parametre olarak almalı
  // ve sınıfın özelliklerini bu parametrelerle başlatmalıdır.
  Ogrenci(this.ad, this.soyad, this.numara, this.notOrtalamasi);

  // GÖREV 3: 'ogrenciBilgileriniYazdir' adında bir metot ekleyin.
  // Bu metot, öğrencinin tüm bilgilerini (ad, soyad, numara, notOrtalamasi)
  // düzgün bir formatta ekrana yazdırmalıdır.
  void ogrenciBilgileriniYazdir() {
    print("Öğrenci Adı: $ad");
    print("Öğrenci Soyadı: $soyad");
    print("Öğrenci Numarası: $numara");
    print("Not Ortalaması: ${notOrtalamasi.toStringAsFixed(2)}");
  }

  // GÖREV 4: 'durumGetir' adında bir metot ekleyin.
  // Bu metot, öğrencinin not ortalamasına göre "Geçti" veya "Kaldı" string'ini döndürmelidir.
  // Geçme notu 50 olarak kabul edilebilir (notOrtalamasi >= 50 ise "Geçti", aksi halde "Kaldı").
  String durumGetir() {
    if (notOrtalamasi >= 50) {
      return "Geçti";
    } else {
      return "Kaldı";
    }
  }
}

void main() {
  // Test Kodları: Yukarıdaki 'Ogrenci' sınıfını kullanarak nesneler (objeler) oluşturun.
  // Öğrenci bilgilerini yazdırın ve durumlarını kontrol edin.

  // Örnek Öğrenci 1: Başarılı bir öğrenci
  Ogrenci ogrenci1 = Ogrenci("Ayşe", "Yılmaz", 101, 75.5);
  print("--- Öğrenci 1 Bilgileri ---");
  ogrenci1.ogrenciBilgileriniYazdir();
  print("Durumu: ${ogrenci1.durumGetir()}\n"); // Beklenen: Geçti

  // Örnek Öğrenci 2: Başarısız bir öğrenci
  Ogrenci ogrenci2 = Ogrenci("Mehmet", "Demir", 102, 45.0);
  print("--- Öğrenci 2 Bilgileri ---");
  ogrenci2.ogrenciBilgileriniYazdir();
  print("Durumu: ${ogrenci2.durumGetir()}\n"); // Beklenen: Kaldı

  // Örnek Öğrenci 3: Sınırda bir öğrenci
  Ogrenci ogrenci3 = Ogrenci("Zeynep", "Can", 103, 50.0);
  print("--- Öğrenci 3 Bilgileri ---");
  ogrenci3.ogrenciBilgileriniYazdir();
  print("Durumu: ${ogrenci3.durumGetir()}\n"); // Beklenen: Geçti
}