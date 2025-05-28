void main() {
  Map<String, int> notlar = {'Ali': 4, 'Veli': 6, 'Ahmet': 8};

  // Değerlerin toplamını hesaplama
  int toplam = notlar.values.reduce((a, b) => a + b);

  // Toplama göre mesaj yazma
  if (toplam > 10) {
    print('Büyük');
  } else {
    print('Küçük');
  }
}
