void main() {
  // Fonksiyonu test etmek için örnek sayılar
  print("7 asal mı? ${asalMi(7)}");   // Beklenen: true
  print("10 asal mı? ${asalMi(10)}"); // Beklenen: false
  print("2 asal mı? ${asalMi(2)}");   // Beklenen: true (En küçük asal sayı)
  print("1 asal mı? ${asalMi(1)}");   // Beklenen: false (Asal değildir)
  print("0 asal mı? ${asalMi(0)}");   // Beklenen: false
  print("-5 asal mı? ${asalMi(-5)}"); // Beklenen: false (Negatif sayılar asal değildir)
  print("17 asal mı? ${asalMi(17)}"); // Beklenen: true
  print("99 asal mı? ${asalMi(99)}"); // Beklenen: false
}

// GÖREV: Buraya 'asalMi' adında bir fonksiyon yazın.
// Bu fonksiyon:
// 1. Parametre olarak bir 'int' sayı almalı.
// 2. Sayının asal olup olmadığını kontrol etmeli (asal ise 'true', değilse 'false' döndürmeli).
// Tanım: Asal sayı, 1'den büyük olan ve 1 ile kendisinden başka pozitif tam böleni olmayan sayıdır.
// İPUCU:
// - 1'den küçük veya 1'e eşit sayılar asal değildir.
// - 2 özel bir asal sayıdır.
// - Bir sayı asal mı diye kontrol ederken, 2'den başlayıp sayının kareköküne kadar (veya sayının yarısına kadar) olan sayılarla bölünebilirliğini kontrol etmek yeterlidir.
// - Eğer herhangi bir sayıya tam bölünüyorsa (kalan 0 ise), asal değildir.

bool asalMi(int sayi) {
  // --- KODUNU BURAYA YAZ ---
  if (sayi <= 1) { // 1'den küçük veya eşit sayılar asal değildir
    return false;
  }
  if (sayi == 2) { // 2 özel bir asal sayıdır
    return true;
  }
  // 2'den başlayarak sayının kareköküne kadar kontrol etmek yeterlidir.
  // Çünkü bir sayının böleni varsa, bu bölenlerden biri karekökünden küçük veya eşit olmak zorundadır.
  for (int i = 2; i * i <= sayi; i++) {
    if (sayi % i == 0) { // Eğer sayı, i'ye tam bölünüyorsa asal değildir
      return false;
    }
  }
  return true; // Hiçbir sayıya bölünmediyse asaldır
  // --- KODUN SONU ---
}