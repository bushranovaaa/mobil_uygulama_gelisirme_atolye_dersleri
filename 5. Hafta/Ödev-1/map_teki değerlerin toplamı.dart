void main() {
  // 1. Listeyi tanımlayın
  List<int> numbers = [5, 10, 15, 20, 25];

  // 2. Çift sayıların sayısını tutacak değişken
  int ciftSayilarinSayisi = 0;

  // 3. Liste üzerinden döngü ile geçin
  for (int sayi in numbers) {
    // 4. Sayının çift olup olmadığı kontrol edin
    if (sayi % 2 == 0) {
      ciftSayilarinSayisi++; // Eğer çiftse sayacı artır
    }
  }

  // 5. Çift sayıların sayısını ekrana yazdırın
  print('Çift sayıların sayısı: $ciftSayilarinSayisi');
}