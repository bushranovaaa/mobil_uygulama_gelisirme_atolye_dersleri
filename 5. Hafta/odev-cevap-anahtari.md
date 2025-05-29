# 📝 5. Hafta Ödevleri ve Cevap Anahtarı

Bu bölümde, 5. haftanın ödevlerini ve cevap anahtarlarını bulabilirsiniz. Ödevler, öğrendiğimiz konuları pekiştirmek ve pratik becerilerimizi geliştirmek için harika bir fırsattır.

---

## 📌 Ödevler

**1.** `List<int> numbers = [5, 10, 15, 20, 25];`
Listedeki çift sayıların sayısını bulan bir Dart programı yazınız.

**2.** `Map<String, int> notlar = {'Ali': 4, 'Veli': 6, 'Ahmet': 8};`
Verilen map'teki değerlerin toplamı 10'dan büyükse "Büyük", küçükse "Küçük" yazan bir Dart programı yazınız.

**3.** Bir `int` tipinde set oluşturun ve içerisinde 10 sayısı var mı diye kontrol eden bir Dart programı yazınız. Eğer varsa, "10 bulundu", yoksa "10 bulunamadı" yazınız.

---

## ✅ Cevap Anahtarı

Aşağıdaki kısımda 1. Ödevimizin Cevap anahtarını görebilirsiniz. Unutmayın çalıştığı sürece kodların sırası ya da yazılış biçimlerni farklı olabilir :)

**1.**

```dart
void main() {
  List<int> numbers = [5, 10, 15, 20, 25];
  int count = 0;

  for (int number in numbers) {
    if (number % 2 == 0) {
      count++;
    }
  }

  print("Listedeki çift sayıların sayısı: $count"); // Çıktı: 2
}
```
2. 
```dart 
void main() {
  Map<String, int> notlar = {'Ali': 4, 'Veli': 6, 'Ahmet': 8};
  int toplam = 0;

  for (int not in notlar.values) {
    toplam += not;
  }

  if (toplam > 10) {
    print("Büyük"); // Çıktı: Büyük
  } else {
    print("Küçük");
  }
}
```

3. 
```dart
void main() {
  Set<int> sayiKumesi = {1, 5, 9, 14, 10};

  if (sayiKumesi.contains(10)) {
    print("10 bulundu"); // Çıktı: 10 bulundu
  } else {
    print("10 bulunamadı");
  }
}
```
Atölye sağlayıcısı: Beyza Yalvaç

Her türlü sorunuz için: beyzayalvac@kodluyoruz.org veya Discord sunucusu üzerinden iletişime geçebilirsiniz.