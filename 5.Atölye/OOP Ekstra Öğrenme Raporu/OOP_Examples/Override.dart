// OOP Ekstra Öğrenme Raporu

// 1. Inheritance (Kalıtım)
class Hayvan {
  void sesCikar() {
    print('Hayvan ses çıkarıyor');
  }
}

class Kopek extends Hayvan {
  @override
  void sesCikar() {
    print('Hav hav');
  }
}

// 2. Override
class Insan {
  late String ad;
  late String soyad;
  late int yas;

  void konus() {
    print('Ben bir insanım');
  }

  Insan() {
    print('Insan constructor\'ı');
  }

  void Uyu() {
    print('8 Saat uyurum.');
  }
}

class Bebek extends Insan {
  late int mamaSaati;

  Bebek() {
    print('Bebek constructor\'ı');
  }

  @override
  void Uyu() {
    print('12 saat uyurum.');
    super.Uyu();
  }
}

// 3. Abstract Class
abstract class Printer {
  void printDocument();
}

class A extends Printer {
  @override
  void printDocument() {
    print('Abstract class');
  }
}

// 4. Interface
class IPrinter {
  void printDocument();
}

class B implements IPrinter {
  @override
  void printDocument() {
    print('Interface implementation');
  }
}

// 5. Composition
class Yazar {
  String isim;
  Yazar(this.isim);
}

class Kitap {
  String ad;
  Yazar yazar;

  Kitap(this.ad, this.yazar);
}

// 6. Upcasting / Downcasting
void main() {
  // Inheritance and Override
  var hayvan = Hayvan();
  hayvan.sesCikar();

  var kopek = Kopek();
  kopek.sesCikar();

  var insan1 = Insan();
  var bebek1 = Bebek();

  insan1.Uyu();
  bebek1.Uyu();

  // Abstract Class
  var a = A();
  a.printDocument();

  // Interface
  var b = B();
  b.printDocument();

  // Composition
  var yazar1 = Yazar('Orhan Pamuk');
  var kitap1 = Kitap('Benim Adım Kırmızı', yazar1);
  print('Kitap: ${kitap1.ad}, Yazar: ${kitap1.yazar.isim}');

  // Upcasting / Downcasting
  Insan insan2 = Bebek(); // Upcasting
  if (insan2 is Bebek) {
    Bebek bebek2 = insan2; // Downcasting
    print('Downcasting başarılı: $bebek2');
  }
}
