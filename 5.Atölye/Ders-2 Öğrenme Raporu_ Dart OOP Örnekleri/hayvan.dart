// Bebek sınıfı
import 'insan.dart';

class Bebek extends Insan {
  late int mamaSaati;

  Bebek() {
    print('Bebek constructor\'ı');
  }

  @override
  void uyu() {
    print('12 saat uyurum.');
    super.uyu(); // Üst sınıfın uyu metodunu çağırır
  }
}
