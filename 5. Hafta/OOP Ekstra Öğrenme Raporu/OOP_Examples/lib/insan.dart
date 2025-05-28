// hayvan.dart
class Hayvan {
  void sesCikar() {
    print('Hayvan ses çıkarır.');
  }
}

// kopek.dart
import 'hayvan.dart';

class Kopek extends Hayvan {
  @override
  void sesCikar() {
    print('Köpek havlar.');
  }
}

// main.dart
import 'hayvan.dart';
import 'kopek.dart';

void main() {
  Hayvan hayvan = Hayvan();
  hayvan.sesCikar(); // Hayvan ses çıkarır.

  Kopek kopek = Kopek();
  kopek.sesCikar(); // Köpek havlar.
}
