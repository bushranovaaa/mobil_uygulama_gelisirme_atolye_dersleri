void main() {
  // Fonksiyonu test etmek için örnek string'ler
  String metin1 = "Merhaba Dünya!";
  String metin2 = "Flutter Öğreniyorum";
  String metin3 = "Dart";
  String metin4 = "a";
  String metin5 = ""; // Boş string testi

  // Fonksiyonu çağırıp sonuçları ekrana yazdıralım
  print("Orijinal: \"$metin1\" -> Ters Çevrilmiş: \"${stringiTersCevir(metin1)}\"");
  // Beklenen: "!aynüD abahreM"

  print("Orijinal: \"$metin2\" -> Ters Çevrilmiş: \"${stringiTersCevir(metin2)}\"");
  // Beklenen: "muroynerğÖ rettulF"

  print("Orijinal: \"$metin3\" -> Ters Çevrilmiş: \"${stringiTersCevir(metin3)}\"");
  // Beklenen: "traD"

  print("Orijinal: \"$metin4\" -> Ters Çevrilmiş: \"${stringiTersCevir(metin4)}\"");
  // Beklenen: "a"

  print("Orijinal: \"$metin5\" -> Ters Çevrilmiş: \"${stringiTersCevir(metin5)}\"");
  // Beklenen: ""
}

// GÖREV: Buraya 'stringiTersCevir' adında bir fonksiyon yazın.
// Bu fonksiyon:
// 1. Parametre olarak bir String almalı.
// 2. Aldığı string'i tersine çevirerek yeni bir String olarak geri döndürmeli.
// İPUCU: String'i karakterlere ayırmak için `split('')` metodu,
// bu karakter listesini tersine çevirmek için `reversed` getter'ı
// ve sonra tekrar birleştirmek için `join('')` metodu işine yarayabilir.

String stringiTersCevir(String metin) {
  // --- KODUNU BURAYA YAZ ---
  return metin.split('').reversed.join();
  // --- KODUN SONU ---
}