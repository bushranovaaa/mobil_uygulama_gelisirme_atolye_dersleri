// Ana dosya
import 'insan.dart';
import 'bebek.dart';
import 'printer.dart';

void main() {
  // Kalıtım örneği
  var insan1 = Insan();
  var bebek1 = Bebek();

  insan1.uyu(); // "8 saat uyurum."
  bebek1.uyu(); // "12 saat uyurum." ardından "8 saat uyurum."

  // Abstract sınıf örneği
  var printer = A();
  printer.printDocument(); // "Abstract class içeriği yazdırıldı."

  // Statik değişken ve metodlar
  print('Statik değişken ve metod örneği:');
  MyStaticClass.staticMethod();
  print('Statik değişken: ${MyStaticClass.staticVariable}');
}

// Statik değişken ve metod içeren sınıf
class MyStaticClass {
  static int staticVariable = 10;

  static void staticMethod() {
    print('Statik metod çalişti.');
  }
}
