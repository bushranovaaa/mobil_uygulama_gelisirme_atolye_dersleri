List<int> tekSayilariBul(List<int> sayilar) {
  List<int> tekSayilar = []; // Tek sayılar için boş bir liste oluştur
  for (int sayi in sayilar) {
    if (sayi % 2 != 0) { // Eğer sayı tekse
      tekSayilar.add(sayi); // Tek sayıyı yeni listeye ekle
    }
  }
  return tekSayilar; // Tek sayılardan oluşan listeyi döndür
}

// Kullanım
void main() {
  List<int> sayilar = [1, 2, 3, 4, 5, 6]; // Test listesi
  print(tekSayilariBul(sayilar)); // Çıktı: [1, 3, 5]
}
