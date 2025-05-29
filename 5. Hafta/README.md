# 📚 5. Hafta Öğrenme Raporu: Dart'ta Fonksiyonlar ve Nesne Yönelimli Programlama (OOP) Serüveni! 🚀
Merhaba sevgili koddaşlar! 👋 Hanka Mobil Uygulama Atölyesi'nin 5. haftasına hoş geldiniz! Bu hafta, Dart dilindeki yeteneklerimizi bir üst seviyeye taşıyarak, kod yazma pratiğimizin temelini oluşturan fonksiyonları ve modern yazılım geliştirmenin kalbi olan **Nesne Yönelimli Programlama (OOP)** prensiplerini derinlemesine inceledik.

Bu hafta, sadece teorik bilgi edinmekle kalmadık, aynı zamanda gerçek dünya örnekleriyle bu kavramları nasıl hayata geçirebileceğimizi de gördük. Artık kodlarımız daha düzenli, daha tekrar kullanılabilir ve çok daha güçlü! 💪

## 🎯 Ders-1: Dart'ta Fonksiyonlar
Fonksiyonlar, bir işi yapan kod bloklarıdır. Kodun tekrarını önler, okunabilirliği artırır ve programın daha modüler olmasını sağlar. Bu derste fonksiyonların temel yapısını ve kullanımını öğrendik.

**Fonksiyon Tanımlama ve Kullanımı**

Dart'ta bir fonksiyon şu şekilde tanımlanır:

```dart
    // int tipinde değer döndüren toplama fonksiyonu
    int toplama(int sayi1, int sayi2) {
    int toplam = sayi1 + sayi2;
    return toplam;
    }

    void main() {
    print(toplama(6, 4)); // Çıktı: 10
    }
```

**Liste İşlemleriyle Fonksiyonlar**
Fonksiyonlar, listeler gibi veri yapılarıyla da etkili bir şekilde kullanılabilir. Bu, veri manipülasyonunu kolaylaştırır:
```dart
    List<String> diziyeElemanEkle(List<String> liste, String eleman) {
    liste.add(eleman);
    return liste;
    }

    void main() {
    List<String> liste1 = ['Dikdörtgen', 'daire'];
    print(diziyeElemanEkle(liste1, 'Ucgen')); // Çıktı: [Dikdörtgen, daire, Ucgen]
```
## 💡 Ders-2: OOP'ye Giriş 
OOP (Object-Oriented Programming), gerçek dünyadaki nesneleri modelleyerek yazılım geliştirmeyi kolaylaştıran güçlü bir yaklaşımdır. Bu derste, OOP'nin temel yapı taşlarını ve felsefesini kavradık.

**Temel OOP Kavramları**
* **Class (Sınıf):** Nesnelerin şablonudur. Örneğin, "Araba" bir sınıf olabilir ve bu sınıfın özellikleri (renk, model) ve davranışları (hızlanma, durma) olur.

* **Object (Nesne):** Sınıflardan türetilen somut yapılardır. "BMW", "Mercedes", "Toyota" birer araba nesnesi olabilir; her biri "Araba" sınıfının birer örneğidir.

* **Instance Variable (Örnek Değişkeni):** Bir sınıfın özelliklerini tanımlayan değişkenlerdir. Araba sınıfının örnek değişkenleri `hız`, `beygirGucu`, `arabaTipi` (sedan vb.) olabilir.

**Method (Metot):** Bir sınıfın davranışlarını tanımlayan fonksiyonlardır. Araba sınıfının metotları `hizlan()`, `yavasla()`, `dur()` olabilir.

* **Constructor (Yapıcı Metot):** Bir nesne oluşturulduğunda otomatik olarak çalışan özel bir metottur. Genellikle nesnenin başlangıç değerlerini ayarlamak için kullanılır ve sınıf ismiyle aynıdır.

* **Inheritance (Kalıtım):** Bir sınıfın (alt sınıf/türetilmiş sınıf) başka bir sınıfın (üst sınıf/temel sınıf) tüm özelliklerini ve metotlarını almasıdır. `extends` anahtar kelimesiyle yapılır. Bir sınıf sadece tek bir sınıftan kalıtım alabilir.

* **Override (Ezme):** Alt sınıfın, üst sınıftan miras aldığı bir metodu kendi ihtiyacına göre yeniden tanımlamasıdır. Metodun imzası (adı ve argümanları) aynı kalır, ancak içeriği değişir. Genellikle `@override` annotation'ı ile belirtilir.

**Örnek Kodlar**
```dart
    // Insan sınıfı: Temel özellikler ve davranışlar
    class Insan {
    late String ad;
    late String soyad;
    late int yas;

    void konus() {
        print('Ben bir insanım');
    }

    // Constructor: Nesne oluşturulduğunda çalışır
    Insan() {
        print('Insan constructor\'ı');
    }

    void Uyu() {
        print('8 Saat uyurum.');
    }
    }

    // Bebek sınıfı: Insan sınıfından kalıtım alır ve kendi özelliklerini ekler
    class Bebek extends Insan {
    late int mamaSaati;

    Bebek() {
        print('Bebek constructor\'ı');
    }

    @override // Uyu metodunu eziyoruz
    void Uyu() {
        print('12 saat uyurum.'); // Bebekler daha çok uyur!
        super.Uyu(); // İstersen üst sınıfın Uyu() metodunu da çağırabilirsin
    }
    }

    void main() {
    var insan1 = Insan(); // Bir insan nesnesi oluşturduk
    var bebek1 = Bebek(); // Bir bebek nesnesi oluşturduk

    insan1.Uyu(); // Çıktı: 8 Saat uyurum.
    bebek1.Uyu(); // Çıktı: 12 saat uyurum. (veya super.Uyu() çağrıldıysa 8 Saat uyurum. da eklenir)
    }
```

## Ek OOP Kavramları
* **Abstract Class (Soyut Sınıf):** Doğrudan nesnesi oluşturulamayan, ancak diğer sınıfların kalıtım alabileceği sınıflardır. Genellikle alt sınıfların uygulaması gereken soyut metotlar içerir.

* **Interface (Arayüz):** Bir sınıfın hangi metotları uygulaması gerektiğini belirten bir taslaktır. Dart'ta `implements` anahtar kelimesiyle kullanılır ve bir sınıf birden fazla arayüzü implemente edebilir.

* **Composition (Bileşim):** Bir sınıfın başka bir sınıfın nesnesini içermesi durumudur. Kalıtıma alternatif olarak daha esnek ilişkiler kurmayı sağlar.

* **Upcasting / Downcasting:** Kalıtım hiyerarşisinde nesnelerin tiplerinin dönüştürülmesi işlemleridir. `Upcasting` (alt sınıftan üst sınıfa dönüşüm) genellikle güvenlidir, `Downcasting` (üst sınıftan alt sınıfa dönüşüm) ise dikkatli yapılmalıdır.

* **Static Değişken ve Metotlar:** Bir sınıfa ait olan, ancak o sınıftan bir nesne oluşturmadan doğrudan sınıf adı üzerinden erişilebilen değişkenler ve metotlardır. Örneğin, `Math.pi` veya `DateTime.now()`.

## 🔗 GitHub Etkinliği
Bu haftaki Git ve GitHub bilgilerimizi pekiştirmek için gerçekleştirdiğimiz canlı etkinliğin kaydına buradan ulaşabilirsiniz. Versiyon kontrol sistemlerinin önemini bir kez daha kavradık!

##  **Git Etkinliği Canlı Kaydı:** [https://youtu.be/0IgB3rSYsAc](https://youtu.be/0IgB3rSYsAc)


## 📝 Bu Haftanın Ödevleri ve Kendi Çözümlerim
Öğrendiklerimizi pekiştirmek ve pratik becerilerimizi geliştirmek adına bu hafta verilen ödevler ve benim hazırladığım çözümler ayrı bir klasörde titizlikle düzenlenmiştir. Kendi çözümlerinizi karşılaştırmak veya farklı yaklaşımları incelemek için bu bölümü ziyaret edebilirsiniz:

* Ödev Soruları
* Hafta Ödev Cevap Anahtarı
* Kendi Ek Dart Fonksiyon ve OOP Alıştırmalarım (Tam 10 Adet!)

Burada, bu hafta boyunca birlikte yaptığımız ve 5. hafta konularını kapsayan tüm alıştırma dosyalarını bulabilirsin:

`./kendi-alistirmalarim/dart-fonksiyon-ve-OOP-alistirmalari/`

* `tek_sayilari_filtrele_alistirma.dart:` Bir listedeki tek sayıları filtreleyen fonksiyon yazma.
* `cift_sayi_sayici_alistirma.dart:` Bir listedeki çift sayıların adedini bulan fonksiyon yazma.
* `string_ters_cevirme_alistirma.dart:` Verilen bir string'i tersine çeviren fonksiyon yazma.
* `kitap_sinifi_olusturma_alistirma.dart:` Kitap sınıfı oluşturma, özellik ve metot tanımlama.
* `ogrenci_sinifi_alistirma.dart:` Ogrenci sınıfı oluşturma, not ortalamasına göre durum belirleme metodu.
sekil_siniflari_alistirma.dart: Soyut sınıf (Sekil) ve kalıtım (Daire, Dikdortgen) kullanarak alan hesaplama.
* `hesap_makinesi_sinifi.dart:` Basit bir HesapMakinesi sınıfı oluşturma ve temel matematiksel işlemleri metot olarak ekleme (sıfıra bölme kontrolü dahil).
* `asal_sayi_kontrolu_alistirma.dart:` Bir sayının asal olup olmadığını kontrol eden fonksiyon yazma.
* `banka_hesabi_sinifi_alistirma.dart:` BankaHesabi sınıfı oluşturma, para yatırma ve çekme gibi işlemleri yönetme.
* `liste_en_buyuk_sayi_alistirma.dart:` Bir listedeki en büyük sayıyı bulan fonksiyon yazma.
---
Bu hafta, mobil uygulama geliştirme yolculuğumuzda önemli bir dönüm noktası oldu. Fonksiyonlar ve OOP ile kodlama yeteneklerimizi daha da güçlendirdik. Öğrenmeye ve keşfetmeye devam!

Her türlü soru, geri bildirim veya katkı için lütfen iletişime geçmekten çekinmeyin. 😊

