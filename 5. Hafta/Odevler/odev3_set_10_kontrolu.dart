void main() {
  Set<int> sayiSeti = {1, 5, 10, 15, 20}; // Ödevdeki tanıma göre bir set
  int kontrolEdilecekSayi = 10;

  print("Set: $sayiSeti");
  print("Kontrol Edilecek Sayı: $kontrolEdilecekSayi");

  if (sayiSeti.contains(kontrolEdilecekSayi)) {
    print("$kontrolEdilecekSayi bulundu"); // Çıktı: 10 bulundu
  } else {
    print("$kontrolEdilecekSayi bulunamadı");
  }
}