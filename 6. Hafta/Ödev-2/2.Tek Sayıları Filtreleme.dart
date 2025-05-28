int elemanlariTopla(List<int> sayilar) {
  int toplam = 0; // Toplam değişkenini başlat
  for (int sayi in sayilar) {
    toplam += sayi; // Listedeki her sayıyı toplam değişkenine ekle
  }
  return toplam; // Toplamı döndür
}

// Kullanım
void main() {
  List<int> sayilar = [1, 2, 3, 4, 5]; // Test listesi
  print(elemanlariTopla(sayilar)); // Çıktı: 15
}
