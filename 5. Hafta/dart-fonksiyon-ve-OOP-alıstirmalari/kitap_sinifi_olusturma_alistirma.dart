// GÖREV 1: Buraya 'Kitap' adında bir sınıf (class) oluşturun.
// Bu sınıfın aşağıdaki özelliklere (instance variables) sahip olması gerekiyor:
// - baslik (String)
// - yazar (String)

class Kitap {
  String baslik;
  String yazar;

  // GÖREV 2: Bu sınıf için bir constructor (yapıcı metot) tanımlayın.
  // Constructor, 'baslik' ve 'yazar' özelliklerini parametre olarak almalı
  // ve sınıfın özelliklerini bu parametrelerle başlatmalıdır.
  Kitap(this.baslik, this.yazar);

  // GÖREV 3: 'kitapBilgileriniYazdir' adında bir metot ekleyin.
  // Bu metot, kitabın başlığını ve yazarını düzgün bir formatta ekrana yazdırmalıdır.
  void kitapBilgileriniYazdir() {
    print("Kitap Başlığı: $baslik");
    print("Yazar: $yazar");
  }
}

void main() {
  // Test Kodları: Yukarıdaki 'Kitap' sınıfını kullanarak iki farklı nesne (object) oluşturun.
  // Her iki kitabın da bilgilerini 'kitapBilgileriniYazdir' metodu aracılığıyla ekrana yazdırın.

  // Örnek Kitap 1
  Kitap kitap1 = Kitap("Nutuk", "Mustafa Kemal Atatürk");
  print("--- Kitap 1 Bilgileri ---");
  kitap1.kitapBilgileriniYazdir(); // Beklenen: Nutuk ve Mustafa Kemal Atatürk bilgileri

  print("\n"); // Satır atlama

  // Örnek Kitap 2
  Kitap kitap2 = Kitap("Küçük Prens", "Antoine de Saint-Exupéry");
  print("--- Kitap 2 Bilgileri ---");
  kitap2.kitapBilgileriniYazdir(); // Beklenen: Küçük Prens ve Antoine de Saint-Exupéry bilgileri
}