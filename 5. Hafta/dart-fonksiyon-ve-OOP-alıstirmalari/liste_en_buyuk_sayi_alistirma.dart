void main() {
  // Fonksiyonu test etmek için örnek listeler
  List<int> sayilar1 = [3, 1, 8, 4, 12, 5];
  List<int> sayilar2 = [100, 20, 50, 70, 5];
  List<int> sayilar3 = [-5, -1, -10, -2]; // Negatif sayılar
  List<int> sayilar4 = [7]; // Tek elemanlı liste
  List<int> sayilar5 = []; // Boş liste

  // Fonksiyonu çağırıp sonuçları ekrana yazdıralım
  print("Liste 1: $sayilar1 -> En Büyük Sayı: ${enBuyukSayiyiBul(sayilar1)}"); // Beklenen: 12
  print("Liste 2: $sayilar2 -> En Büyük Sayı: ${enBuyukSayiyiBul(sayilar2)}"); // Beklenen: 100
  print("Liste 3: $sayilar3 -> En Büyük Sayı: ${enBuyukSayiyiBul(sayilar3)}"); // Beklenen: -1
  print("Liste 4: $sayilar4 -> En Büyük Sayı: ${enBuyukSayiyiBul(sayilar4)}"); // Beklenen: 7
  print("Liste 5: $sayilar5 -> En Büyük Sayı: ${enBuyukSayiyiBul(sayilar5)}"); // Beklenen: Hata mesajı veya null/özel değer
}

// GÖREV: Buraya 'enBuyukSayiyiBul' adında bir fonksiyon yazın.
// Bu fonksiyon:
// 1. Parametre olarak bir List<int> almalı.
// 2. Listenin içindeki en büyük sayıyı bulup geri döndürmeli.
// 3. Eğer liste boşsa, özel bir durum (örneğin, hata mesajı veya null) ele alınmalı.
//    (İPUCU: `null` döndürebilir veya bir hata fırlatabilirsin. `null` döndürmek daha basit olabilir.)

int? enBuyukSayiyiBul(List<int> liste) {
  // --- KODUNU BURAYA YAZ ---
  if (liste.isEmpty) {
    print("Liste boş olduğu için en büyük sayı bulunamadı.");
    return null; // Veya throw ArgumentError("Liste boş olamaz.");
  }

  int enBuyuk = liste[0]; // İlk elemanı şimdilik en büyük kabul edelim

  for (int i = 1; i < liste.length; i++) { // İkinci elemandan başlayarak listeyi dolaş
    if (liste[i] > enBuyuk) { // Eğer mevcut sayı, o ana kadarki en büyük sayıdan büyükse
      enBuyuk = liste[i]; // En büyük sayıyı güncelle
    }
  }
  return enBuyuk; // Bulunan en büyük sayıyı döndür
  // --- KODUN SONU ---
}