class Printer {
  void printDocument() {
    print('Printer class');
  }
}

class A implements Printer {
  @override
  void printDocument() {
    print('A sınıfı');
  }
}
