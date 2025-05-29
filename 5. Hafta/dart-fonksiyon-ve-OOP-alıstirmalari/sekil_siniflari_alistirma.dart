import 'dart:math'; // Dairenin alanı için Pi sayısını kullanmak için gerekli

// GÖREV 1: Buraya 'Sekil' adında bir soyut (abstract) sınıf oluşturun.
// Bu sınıf:
// 1. Doğrudan nesnesi oluşturulamamalıdır.
// 2. 'alanHesapla()' adında soyut bir metot içermelidir.
//    (Soyut metot, sadece tanımı olan, implementasyonu olmayan metottur.)

abstract class Sekil {
  double alanHesapla(); // Soyut metot
}

// GÖREV 2: Buraya 'Daire' adında bir sınıf oluşturun.
// Bu sınıf:
// 1. 'Sekil' sınıfından kalıtım (extends) almalıdır.
// 2. 'yaricap' (double) adında bir özelliğe sahip olmalıdır.
// 3. Bir constructor ile 'yaricap' özelliğini başlatmalıdır.
// 4. 'alanHesapla()' metodunu override ederek Dairenin alanını hesaplamalıdır.
//    (Dairenin alanı: π * yarıçap * yarıçap. Math.pi kullanabilirsin.)

class Daire extends Sekil {
  double yaricap;

  Daire(this.yaricap);

  @override
  double alanHesapla() {
    return pi * yaricap * yaricap;
  }
}

// GÖREV 3: Buraya 'Dikdortgen' adında bir sınıf oluşturun.
// Bu sınıf:
// 1. 'Sekil' sınıfından kalıtım (extends) almalıdır.
// 2. 'genislik' (double) ve 'yukseklik' (double) adında iki özelliğe sahip olmalıdır.
// 3. Bir constructor ile bu özellikleri başlatmalıdır.
// 4. 'alanHesapla()' metodunu override ederek Dikdörtgenin alanını hesaplamalıdır.
//    (Dikdörtgenin alanı: genişlik * yükseklik)

class Dikdortgen extends Sekil {
  double genislik;
  double yukseklik;

  Dikdortgen(this.genislik, this.yukseklik);

  @override
  double alanHesapla() {
    return genislik * yukseklik;
  }
}

void main() {
  // Test Kodları: Yukarıdaki sınıfları kullanarak nesneler oluşturun ve alanlarını hesaplayın.
  // Çıktıları ekrana yazdırarak doğru çalıştıklarından emin olun.

  // Daire nesnesi oluşturma ve alanını hesaplama
  Daire daire1 = Daire(5.0);
  print("Daire 1'in Alanı (Yarıçap 5.0): ${daire1.alanHesapla().toStringAsFixed(2)}"); // toStringAsFixed(2) virgülden sonra 2 basamak gösterir

  Daire daire2 = Daire(7.5);
  print("Daire 2'nin Alanı (Yarıçap 7.5): ${daire2.alanHesapla().toStringAsFixed(2)}");

  // Dikdörtgen nesnesi oluşturma ve alanını hesaplama
  Dikdortgen dikdortgen1 = Dikdortgen(10.0, 4.0);
  print("Dikdörtgen 1'in Alanı (10.0x4.0): ${dikdortgen1.alanHesapla().toStringAsFixed(2)}");

  Dikdortgen dikdortgen2 = Dikdortgen(6.0, 9.0);
  print("Dikdörtgen 2'nin Alanı (6.0x9.0): ${dikdortgen2.alanHesapla().toStringAsFixed(2)}");

  // OOP prensiplerine uygun olarak Şekil listesi oluşturma ve polimorfizm örneği:
  List<Sekil> sekiller = [
    Daire(3.0),
    Dikdortgen(5.0, 8.0),
    Daire(10.0),
    Dikdortgen(2.5, 4.0),
  ];

  print("\n--- Çeşitli Şekillerin Alanları ---");
  for (var sekil in sekiller) {
    if (sekil is Daire) {
      print("Daire (Yarıçap ${(sekil as Daire).yaricap}): ${sekil.alanHesapla().toStringAsFixed(2)}");
    } else if (sekil is Dikdortgen) {
      print("Dikdörtgen (En ${(sekil as Dikdortgen).genislik}, Boy ${(sekil as Dikdortgen).yukseklik}): ${sekil.alanHesapla().toStringAsFixed(2)}");
    }
  }
}