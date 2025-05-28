// Fonksiyonlar ve OOP Giriş

// Toplama fonksiyonu
int toplama(int sayi1, int sayi2) {
  int toplam = sayi1 + sayi2;
  return toplam;
}

// Eleman ekleme fonksiyonu
List<String> diziyeElemanEkle(List<String> liste, String eleman) {
  liste.add(eleman);
  return liste;
}

// Insan sınıfı
class Insan {
  late String ad;
  late String soyad;
  late int yas;

  Insan() {
    print('Insan constructor\'ı');
  }

  void konus() {
    print('Ben bir insanım');
  }

  void uyu() {
    print('8 Saat uyurum.');
  }
}

// Bebek sınıfı
class Bebek extends Insan {
  late int mamaSaati;

  Bebek() {
    print('Bebek constructor\'ı');
  }

  @override
  void uyu() {
    print('12 saat uyurum.');
    super.uyu();
  }
}

// Araba sınıfı
class Car {
  int yakit = 100;
  int hiz = 120;

  Car(int speed) {
    this.hiz = speed;
  }
}

// Main fonksiyonu
void main() {
  // Fonksiyonları kullanma
  print('Toplama: ${toplama(6, 4)}');

  List<String> liste1 = ['Dikdörtgen', 'Daire'];
  print('Listeye ekleme: ${diziyeElemanEkle(liste1, 'Üçgen')}');

  // Nesneleri oluşturma
  var insan1 = Insan();
  insan1.konus();

  var bebek1 = Bebek();
  bebek1.uyu();

  var araba1 = Car(150);
  print('Araba Hızı: ${araba1.hiz}');
}
