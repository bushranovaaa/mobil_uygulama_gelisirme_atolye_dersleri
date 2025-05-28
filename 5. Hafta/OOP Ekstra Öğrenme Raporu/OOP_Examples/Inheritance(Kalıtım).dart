abstract class Printer {
  void printDocument();
}

class A extends Printer {
  @override
  void printDocument() {
    print('Abstract class');
  }
}
