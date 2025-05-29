void main() {
  // Test etmek için bir sayı listesi tanımlayalım
  List<int> sayilar = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  // Fonksiyonumuzu çağırıp tek sayıları filtreleyelim
  List<int> tekSayilar = filtreleTekSayilar(sayilar);

  // Sonucu ekrana yazdıralım
  print("Orijinal Liste: $sayilar");
  print("Tek Sayılar Listesi: $tekSayilar"); // Beklenen Çıktı: [1, 3, 5, 7, 9]

  // Başka bir örnekle de test edelim
  List<int> karisikSayilar = [12, 15, 20, 23, 30, 31];
  List<int> karisikTekSayilar = filtreleTekSayilar(karisikSayilar);
  print("Karisik Liste: $karisikSayilar");
  print("Karisik Tek Sayılar: $karisikTekSayilar"); // Beklenen Çıktı: [15, 23, 31]
}

// GÖREV: Buraya 'filtreleTekSayilar' adında bir fonksiyon yazın.
// Bu fonksiyon:
// 1. Parametre olarak bir List<int> almalı.
// 2. Listenin içindeki her sayıyı kontrol etmeli.
// 3. Sadece tek olan sayıları yeni bir List<int> içine eklemeli.
// 4. Yeni oluşturduğu bu List<int> değerini geri döndürmeli.
// İPUCU: Bir sayının tek olup olmadığını kontrol etmek için modulo (%) operatörünü kullanabilirsin.
// (sayi % 2 != 0) tek sayılar için doğru döner.

List<int> filtreleTekSayilar(List<int> liste) {
  // --- KODUNU BURAYA YAZ ---
  List<int> tekSayilar = []; // Tek sayıları tutacak yeni bir liste oluşturalım
  for (int sayi in liste) { // Listenin her elemanı üzerinde dönelim
    if (sayi % 2 != 0) { // Eğer sayı tek ise
      tekSayilar.add(sayi); // Yeni listeye ekleyelim
    }
  }
  return tekSayilar; // Yeni listeyi döndürelim
  // --- KODUN SONU ---
}