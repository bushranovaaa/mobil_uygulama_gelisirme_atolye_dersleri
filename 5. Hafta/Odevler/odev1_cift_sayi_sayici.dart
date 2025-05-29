void main() {
  // Ödevdeki spesifik liste:
  List<int> numbers = [5, 10, 15, 20, 25];

  // Fonksiyonu çağırıp sonucu ekrana yazdıralım
  int ciftSayiAdedi = ciftSayilariSay(numbers);
  print("Verilen Liste: $numbers");
  print("Listedeki çift sayıların adedi: $ciftSayiAdedi"); // Çıktı: 2 (10 ve 20 var)
}

// Listedeki çift sayıların sayısını döndüren fonksiyon
int ciftSayilariSay(List<int> liste) {
  int sayac = 0;
  for (int sayi in liste) {
    if (sayi % 2 == 0) {
      sayac++;
    }
  }
  return sayac;
}