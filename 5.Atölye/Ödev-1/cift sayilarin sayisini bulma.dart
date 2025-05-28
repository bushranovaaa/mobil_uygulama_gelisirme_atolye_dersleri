// static_example.dart
class MathUtil {
  // Statik bir değişken
  static int counter = 0;

  // Statik bir metot
  static void incrementCounter() {
    counter++;
    print('Counter: $counter');
  }

  // Normal bir metot
  void resetCounter() {
    counter = 0;
    print('Counter sıfırlandı.');
  }
}

void main() {
  // Statik metot ve değişkene erişim
  MathUtil.incrementCounter(); // Counter: 1
  MathUtil.incrementCounter(); // Counter: 2

  // Nesne oluşturarak normal metodu çağırma
  var mathUtil = MathUtil();
  mathUtil.resetCounter(); // Counter sıfırlandı.

  // Statik metot çağrısı sonrasında
  MathUtil.incrementCounter(); // Counter: 1
}
