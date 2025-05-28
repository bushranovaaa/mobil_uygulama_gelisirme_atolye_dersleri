List<T> listeyiTersCevir<T>(List<T> liste) {
  List<T> tersListe = []; // Boş bir ters liste oluştur
  for (int i = liste.length - 1; i >= 0; i--) {
    // Listenin sonundan başına doğru git
    tersListe.add(liste[i]); // Her elemanı ters sırayla ekle
  }
  return tersListe; // Ters listeyi döndür
}

// Kullanım
void main() {
  List<String> kelimeler = ['bir', 'iki', 'üç']; // Test listesi
  print(listeyiTersCevir(kelimeler)); // Çıktı: ['üç', 'iki', 'bir']
}
