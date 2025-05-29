// GÖREV 1: Buraya 'BankaHesabi' adında bir sınıf (class) oluşturun.
// Bu sınıfın aşağıdaki özelliklere (instance variables) sahip olması gerekiyor:
// - hesapSahibi (String)
// - bakiye (double)

class BankaHesabi {
  String hesapSahibi;
  double bakiye;

  // GÖREV 2: Bu sınıf için bir constructor (yapıcı metot) tanımlayın.
  // Constructor, 'hesapSahibi' ve 'bakiye' özelliklerini parametre olarak almalı
  // ve sınıfın özelliklerini bu parametrelerle başlatmalıdır.
  BankaHesabi(this.hesapSahibi, this.bakiye);

  // GÖREV 3: 'paraYatir' adında bir metot ekleyin.
  // Bu metot, double tipinde bir 'miktar' parametresi almalı ve bu miktarı 'bakiye'ye eklemelidir.
  // İşlem sonrası yeni bakiyeyi ekrana yazdırmalıdır.
  void paraYatir(double miktar) {
    if (miktar > 0) {
      bakiye += miktar;
      print("${hesapSahibi} hesabına ${miktar.toStringAsFixed(2)} TL yatırıldı. Yeni bakiye: ${bakiye.toStringAsFixed(2)} TL");
    } else {
      print("Yatırılacak miktar pozitif olmalıdır.");
    }
  }

  // GÖREV 4: 'paraCek' adında bir metot ekleyin.
  // Bu metot, double tipinde bir 'miktar' parametresi almalı.
  // - Eğer çekilmek istenen miktar 'bakiye'den az veya eşitse, miktarı 'bakiye'den çıkarmalı ve yeni bakiyeyi yazdırmalıdır.
  // - Eğer 'bakiye' yetersizse, bir hata mesajı yazdırmalıdır (örn: "Yetersiz bakiye!").
  void paraCek(double miktar) {
    if (miktar <= 0) {
      print("Çekilecek miktar pozitif olmalıdır.");
      return;
    }
    if (bakiye >= miktar) {
      bakiye -= miktar;
      print("${hesapSahibi} hesabından ${miktar.toStringAsFixed(2)} TL çekildi. Yeni bakiye: ${bakiye.toStringAsFixed(2)} TL");
    } else {
      print("Yetersiz bakiye! Çekmek istediğiniz miktar: ${miktar.toStringAsFixed(2)} TL, Mevcut bakiye: ${bakiye.toStringAsFixed(2)} TL");
    }
  }

  // Mevcut bakiyeyi gösteren yardımcı bir metot
  void bakiyeGoster() {
    print("${hesapSahibi}'nin mevcut bakiyesi: ${bakiye.toStringAsFixed(2)} TL");
  }
}

void main() {
  // Test Kodları: Yukarıdaki 'BankaHesabi' sınıfını kullanarak bir veya daha fazla hesap oluşturun.
  // Para yatırma, para çekme ve bakiye gösterme metotlarını test edin.
  // Özellikle yetersiz bakiye durumunu test etmeyi unutmayın.

  BankaHesabi benimHesabim = BankaHesabi("Kaan Yılmaz", 1000.00);

  print("--- İlk Durum ---");
  benimHesabim.bakiyeGoster(); // Beklenen: 1000.00 TL

  print("\n--- Para Yatırma Testleri ---");
  benimHesabim.paraYatir(500.00); // Başarılı yatırma
  benimHesabim.paraYatir(25.75);  // Küsuratlı yatırma
  benimHesabim.paraYatir(0.00);   // Geçersiz miktar
  benimHesabim.paraYatir(-100.00); // Geçersiz miktar

  print("\n--- Para Çekme Testleri ---");
  benimHesabim.paraCek(200.00);  // Başarılı çekme
  benimHesabim.paraCek(1500.00); // Yetersiz bakiye
  benimHesabim.paraCek(300.25);  // Başarılı çekme
  benimHesabim.paraCek(0.00);    // Geçersiz miktar
  benimHesabim.paraCek(-50.00);  // Geçersiz miktar

  print("\n--- Son Durum ---");
  benimHesabim.bakiyeGoster(); // Son bakiyeyi göster
}