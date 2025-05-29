void main() {
  // Fonksiyonu test etmek için örnek listeler
  List<int> sayilar1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> sayilar2 = [11, 13, 15, 17, 19, 20, 22];
  List<int> sayilar3 = [2, 4, 6, 8, 10];
  List<int> sayilar4 = [1, 3, 5, 7, 9]; // Hiç çift sayı yok

  // Fonksiyonu çağırıp sonuçları ekrana yazdıralım
  print("Liste 1: $sayilar1 - Çift Sayı Adedi: ${ciftSayilariSay(sayilar1)}"); // Beklenen: 5
  print("Liste 2: $sayilar2 - Çift Sayı Adedi: ${ciftSayilariSay(sayilar2)}"); // Beklenen: 2
  print("Liste 3: $sayilar3 - Çift Sayı Adedi: ${ciftSayilariSay(sayilar3)}"); // Beklenen: 5
  print("Liste 4: $sayilar4 - Çift Sayı Adedi: ${ciftSayilariSay(sayilar4)}"); // Beklenen: 0
}

// GÖREV: Buraya 'ciftSayilariSay' adında bir fonksiyon yazın.
// Bu fonksiyon:
// 1. Parametre olarak bir List<int> almalı.
// 2. Listenin içindeki her sayıyı kontrol etmeli.
// 3. Sadece çift olan sayıların toplam adedini bir int olarak geri döndürmeli.
// İPUCU: Bir sayının çift olup olmadığını kontrol etmek için modulo (%) operatörünü kullanabilirsin.
// (sayi % 2 == 0) çift sayılar için doğru döner.

int ciftSayilariSay(List<int> liste) {
  // --- KODUNU BURAYA YAZ ---
  int sayac = 0; // Çift sayı adedini tutacak bir sayac değişkeni
  for (int sayi in liste) { // Listedeki her sayı için döngü
    if (sayi % 2 == 0) { // Eğer sayı çift ise
      sayac++; // Sayacı bir artır
    }
  }
  return sayac; // Toplam çift sayı adedini döndür
  // --- KODUN SONU ---
}