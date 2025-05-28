// Dart 2.6.1 

main() {
  //1. Map'ı tanımlayın
  Map<String, int> notlar = {'Ali': 4, 'Veli': 6, 'Ahmet': 8};
  
  //2. Toplam. değerini tutacak değişken 
  int toplamNot = 0;
  
  //3. Map üzerimden değerleri toplayın
  for (var not in notlar.values) {
    toplamNot += not; // Her bir notu toplamNot'a ekle
  }
  
  //4. Toplamı kontrol edin ve uygun mesajı yazdırın
  if (toplamNot > 10) {
    print('Büyük');
  } else {
    print('Küçük');
  }
}