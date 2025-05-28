// bebek.dart
import 'insan.dart';

class Bebek extends Insan {
  late int mamaSaati;

  Bebek() {
    print('Bebek constructor\'ı');
  }

  @override
  void Uyu() {
    print('12 saat uyurum.');
    super.Uyu(); // Ana sınıfın Uyu metodunu çağırır.
  }
}
