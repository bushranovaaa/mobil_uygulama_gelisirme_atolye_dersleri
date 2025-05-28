// İnsan sınıfı
import 'hayvan.dart';

class Insan extends Hayvan {
  late String ad;
  late String soyad;
  late int yas;

  Insan() {
    print('Insan constructor\'i');
  }

  void konus() {
    print('Ben bir insanim.');
  }

  @override
  void sesCikar() {
    print('İnsan sesi çikarir.');
  }

  void uyu() {
    print('8 saat uyurum.');
  }
}
