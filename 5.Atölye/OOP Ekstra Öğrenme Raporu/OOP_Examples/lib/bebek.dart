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
    super.Uyu(); // Base class'taki Uyu fonksiyonunu çağırır
  }
}
