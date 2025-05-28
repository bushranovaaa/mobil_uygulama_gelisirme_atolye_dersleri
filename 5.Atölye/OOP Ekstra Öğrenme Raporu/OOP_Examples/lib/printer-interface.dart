// printer.dart
abstract class Printer {
  void printDocument(); // Soyut bir metod, alt sınıflarda uygulanmak zorundadır.
}

class A extends Printer {
  @override
  void printDocument() {
    print('Abstract class');
  }
}

void main() {
  var printer = A(); // A sınıfından bir nesne oluşturuluyor.
  printer.printDocument(); // Çıktı: Abstract class
}
