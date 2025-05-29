void main() {
  Map<String, int> notlar = {'Ali': 4, 'Veli': 6, 'Ahmet': 8};

  int toplamNot = 0;
  for (int not in notlar.values) {
    toplamNot += not;
  }

  print("Notlar Map'i: $notlar");
  print("Toplam Not: $toplamNot");

  if (toplamNot > 10) {
    print("Büyük"); // Çıktı: Büyük (4+6+8 = 18 > 10)
  } else {
    print("Küçük");
  }
}