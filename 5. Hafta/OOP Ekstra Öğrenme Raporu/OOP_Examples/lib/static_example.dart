// printer.dart
abstract class Printer {
  void printDocument(); // Soyut bir yöntem tanımlanıyor
}

class A implements Printer {
  // Printer arayüzünü implement eden A sınıfı
  @override
  void printDocument() {
    // Printer arayüzündeki yöntemi dolduruyor
    print('A sınıfı belgesini yazdırıyor.');
  }
}

class B implements Printer {
  // Başka bir sınıf daha
  @override
  void printDocument() {
    // Printer arayüzündeki yöntemi dolduruyor
    print('B sınıfı belgesini yazdırıyor.');
  }
}

void main() {
  Printer a = A(); // A sınıfından bir nesne oluşturuluyor
  Printer b = B(); // B sınıfından bir nesne oluşturuluyor

  a.printDocument(); // A sınıfının yazdırma işlemi
  b.printDocument(); // B sınıfının yazdırma işlemi
}
