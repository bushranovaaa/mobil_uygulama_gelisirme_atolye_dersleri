# 📚 5. Hafta Öğrenme Raporu: Dart'ta Fonksiyonlar ve Nesne Yönelimli Programlama (OOP) Serüveni! 🚀

Merhaba sevgili koddaşlar! 👋  Mobil Uygulama Atölyesi'nin 5. haftasına hoş geldiniz! Bu hafta, Dart dilindeki yeteneklerimizi bir üst seviyeye taşıyarak, kod yazma pratiğimizin temelini oluşturan fonksiyonları ve modern yazılım geliştirmenin kalbi olan **Nesne Yönelimli Programlama (OOP)** prensiplerini derinlemesine inceledik.

Bu hafta, sadece teorik bilgi edinmekle kalmadık, aynı zamanda gerçek dünya örnekleriyle bu kavramları nasıl hayata geçirebileceğimizi de gördük. Artık kodlarımız daha düzenli, daha tekrar kullanılabilir ve çok daha güçlü! 💪
---

## 🎯 Ders-1: Dart Temelleri ve Fonksiyonlar
Bu dersin ilk bölümünde Dart dilinin temel yapı taşlarına odaklandık. Veri tipleri, değişken tanımlamaları ve koleksiyonlar (List, Set, Map) gibi konuları işledik. Ardından, kod tekrarını önleyen ve programlarımızı daha modüler hale getiren fonksiyonların tanımı, yazımı ve kullanımı üzerinde durduk.

**Dart Temel Kavramlar**
    * **Data Types (Veri Tipleri):** String, int, double, bool gibi temel veri tiplerini tanıdık.
    * **Variable Oluşturma Yöntemleri:** `String name = 'MyName';` gibi değişken tanımlamalarını öğrendik.
    * **Değişken Bastırma ve Alıştırmalar:** Atölye boyunca değişkenleri ekrana yazdırma ve bunlarla ilgili çeşitli alıştırmalar yaptık.

**Değişken Tanımlama Örnekleri:**
```Dart
    int yas = 15;
    int yil = 2014;
    double notOrtalama = 87.50;
    double Sicaklik = 27.0;
    String isim = 'Büşra';
    String ders = 'Coğrafya';
    bool sinifdolumu = true;
    bool Haftabirgunmu = false;

    // Değer atamak zorunda değiliz:
    // int yas; // Sadece tanımlama
    // yas = 25;  // Sonradan değer atama
```

**`var` ve `const` Farkı:**

* `var:` Değişkenin tipi atama anında belirlenir ve daha sonra farklı tipte değer atanamaz, ancak değeri değiştirilebilir.

* `const:` Derleme zamanında değeri bilinen sabitlerdir. Değer atandıktan sonra değiştirilemez.

```Dart
    var a = 10; // a'nın tipi int olarak belirlendi

    // const a = 20; // Hata verir, 'a' zaten tanımlı
    const b = 10;
    // b = 20; // Hata verir, const değişkene sonradan değer atanamaz.
```

**Toplam (Sum) Örneği:**

Değişkenlerle basit matematiksel işlemler yapmayı öğrendik.

```Dart
    void main() { // main fonksiyonu içerisinde çalıştırılacak kodlar
    var a = 10;
    var b = 20;
    print('$a ve $b nin toplamı: ${a + b}'); // Çıktı: 10 ve 20 nin toplamı: 30
    }
```

**Koleksiyonlar (Collections) ve Kontrol Yapıları**

Bu dersimizde, verileri gruplamak için kullanılan koleksiyon tiplerini (List, Set, Map) ve program akışını kontrol etmek için kullanılan döngüler ile koşullu ifadeleri detaylıca ele aldık.

    * **Diziler (Listeler), Set, Map:** Collection type'ları hakkında bilgi verildi ve örnekler yapıldı.
    * **Döngüler ve Koşullu İfadeler:** Program akışını kontrol etmek için for, while döngüleri ve if-else koşullu ifadeler anlatıldı, bolca örnek çözüldü.

**Örnek Uygulama Kodu:**

```Dart
        void main() {
    // Değişkenler
    int yil = 2014;
    double notOrtalama = 87.50;

    // Diziler (Listeler)
    List<String> gunler = ['Pazartesi', 'Salı', 'Çarşamba', 'Perşembe', 'Cuma'];

    // Listede eleman bulma (indexOf metodu)
    var a = gunler.indexOf('Salı');
    print('Salı\'nın indexi: $a');

    // Map (Anahtar-Değer çiftleri)
    Map<int, String> plakalar = {
        01: 'Adana',
        34: 'Istanbul',
        35: 'Izmir',
        46: 'Kahramanmaras'
    };

    // Map'i yazdırma
    print('Plakalar: $plakalar');

    // Set (Benzersiz elemanlar kümesi)
    // Set oluşturma
    Set<String> ulkeler = {'Türkiye', 'ABD', 'Almanya', 'Fransa', 'Japonya'};

    // Set'in elemanlarını yazdırma
    print('Ülkeler: $ulkeler');

    // Koşullu ifadeler (if-else if-else)
    var sayi = 15;

    if (sayi % 2 == 0) {
        print('Bu sayı çift sayıdır.');
    } else if (sayi % 2 == 1) {
        print('Bu sayı tek sayıdır.');
    } else {
        print('Böyle bir sayı bulunamaz.');
    }

    // For Döngüsü (Listeyi dönmek için)
    List<int> sayilar = [5, 10, 15, 20, 25, 30];

    for (int i = 0; i < sayilar.length; i++) {
        print('${i}. index: ${sayilar[i]}');
    }

    // While döngüsü
    var i = 0;

    while (i < 5) {
        print('i\'nin şu anki değeri: $i');
        i++;
    }
    }

```
## 🔗 GitHub Etkinliği
Bu haftaki Git ve GitHub bilgilerimizi pekiştirmek için gerçekleştirdiğimiz canlı etkinliğin kaydına buradan ulaşabilirsiniz. Versiyon kontrol sistemlerinin önemini bir kez daha kavradık!

[GitHub Etkinliği Video Kaydı](https://youtu.be/0IgB3rSYsAc)

## 💡 Ders-2: Fonksiyonlar ve Nesne Yönelimli Programlamaya (OOP) Giriş

Bu derste, Dart dilinde fonksiyonların nasıl tanımlandığını ve kullanıldığını, ayrıca Nesne Yönelimli Programlama (OOP) prensiplerine giriş yaptık.

    * Dart fonksiyonlarının tanıtımı yapıldı ve çeşitli fonksiyon örnekleri incelendi.
    * OOP'ye genel bir bakış açısı kazandırıldı ve gerçek hayattan örneklerle bu kavramlar somutlaştırıldı.
    * OOP'de class, object, constructor, inheritance, override gibi temel kavramlar üzerinde duruldu. 

**Fonksiyon Örnekleri:**
```Dart
    int toplama(int sayi1, int sayi2) {
    int toplam = sayi1 + sayi2;
    return toplam;
    }

    void main() {
    print(toplama(6, 4));
    }

    List<String> diziyeElemanEkle(List<String> liste, String eleman) {
    liste.add(eleman);
    return liste;
    }

    void main() {
    List<String> liste1 = ['Dikdörtgen', 'daire'];
    print(diziyeElemanEkle(liste1, 'Ucgen'));
    }
```

**OOP Örnek Kodu:**
```Dart
    class Insan {
    late String ad;
    late String soyad;
    late int yas;

    void konus() {
        print('Ben bir insanım');
    }

    Insan() {
        print('Insan constructor\'ı');
    }

    void Uyu() {
        print('8 Saat uyurum.');
    }
    }

    // import 'Insan.dart'; // Bu satır genelde ayrı dosyalarda kullanılır, tek dosyada gerekmeyebilir

    class Bebek extends Insan {
    late int mamaSaati;

    Bebek() {
        print('Bebek constructor\'ı');
    }

    @override
    void Uyu() {
        print('12 saat uyurum.');
        super.Uyu();
    }
    }

    // import 'package:classdeneme/Bebek.dart'; // Bu satırlar da genelde dışa aktarmalar içindir
    // import 'package:flutter/material.dart'; // Flutter projesinde değilsek gereksiz

    void main() {
    var insan1 = Insan();
    var bebek1 = Bebek();

    insan1.Uyu();
    bebek1.Uyu();
    }
```
## OOP Ekstra Öğrenme Raporu

OOP dünyasının derinliklerine inerek, Inheritance (Kalıtım), Override, Abstract Class, Interface, Composition, Upcasting/Downcasting ve Statik Değişken/Metotlar gibi ileri düzey kavramları detaylıca inceledik.

**Inheritance (Kalıtım)**
Bir sınıfın (Class) başka bir sınıfın bütün özelliklerini ve metotlarını alması durumudur. Yani bir sınıfın başka bir sınıftan türemesidir. Dart'ta `extends` anahtar kelimesiyle yapılır. Unutulmamalıdır ki, bir sınıf sadece tek bir sınıftan kalıtım alabilir.

**Örnek:**
```dart
    class Hayvan {
    void sesCikar() {
        print('Hayvan ses çıkarır');
    }
    }

    class Kopek extends Hayvan {
    // Köpek sınıfı, Hayvan sınıfının tüm özelliklerini ve metotlarını alır
    }
```
**Override (Ezme)**

Temel sınıftaki (Base Class) bir metodun, kalıtım yoluyla türetilen alt sınıfta (Derived Class) aynı isim ve argümanlarla tekrar tanımlanması, ancak metodun içeriğinin (body'sinin) değiştirilmesidir. Bu, alt sınıfın kendi özel davranışını sergilemesini sağlar. Böyle fonksiyonların başına `@override` annotation'ı yazılması yaygın ve önerilen bir kullanımdır.

**Örnek:**
```dart 
    class Insan {
    late String ad;
    late String soyad;
    late int yas;

    void konus() {
        print('Ben bir insanım');
    }

    Insan() {
        print('Insan constructor\'ı');
    }

    void Uyu() {
        print('8 Saat uyurum.');
    }
    }

    // import 'Insan.dart'; // Eğer ayrı dosyadalarsa kullanılır

    class Bebek extends Insan {
    late int mamaSaati;

    Bebek() {
        print('Bebek constructor\'ı');
    }

    @override // Üst sınıftaki 'Uyu' metodunu eziyoruz
    void Uyu() {
        print('12 saat uyurum.'); // Bebekler daha çok uyur!
        super.Uyu(); // İsteğe bağlı olarak üst sınıfın 'Uyu' metodunu da çağırabiliriz.
    }
    }

    // import 'package:classdeneme/Bebek.dart'; // Harici importlar
    // import 'package:flutter/material.dart'; // Flutter kütüphanesi importu

    void main() {
    var insan1 = Insan();
    var bebek1 = Bebek();

    insan1.Uyu(); // Çıktı: 8 Saat uyurum.
    bebek1.Uyu(); // Çıktı: 12 saat uyurum. (Eğer super.Uyu() çağrılmadıysa)
    }
```
**Abstract Class (Soyut Sınıf)**

Doğrudan nesnesi oluşturulamayan, ancak başka sınıflar tarafından `extends` anahtar kelimesiyle kalıtım alınabilen sınıflardır. Genellikle alt sınıfların implemente etmek (doldurmak) zorunda olduğu soyut metotlar içerirler. Bir sınıf sadece bir abstract classtan extends alabilir.

**Örnek:**
```dart
    abstract class Printer {
    void printDocument(); // Soyut metot, alt sınıflar bunu implemente etmeli
    }

    class A extends Printer {
    @override
    void printDocument() {
        print('Abstract class\'tan türetilen sınıfın implementasyonu.');
    }
    }
```
**Interface (Arayüz)**

Alt sınıflarda doldurulması zorunlu olan metotların bir taslağını tanımlar. Dart'ta `implements` anahtar kelimesiyle bir sınıfa bağlanır. Bir sınıf birden fazla Interface'i implemente edebilir, bu da çoklu kalıtım benzeri bir esneklik sağlar.

**Örnek:**
```dart
    // Bu aslında bir Dart sınıfı ama 'implements' edildiğinde bir arayüz gibi davranır.
    class Printer {
    void printDocument() {
        print('Bu bir yazıcı arayüzü metodudur.');
    }
    }

    class A implements Printer { // A sınıfı, Printer arayüzünü implemente ediyor
    @override
    void printDocument() { // Arayüzdeki metodu doldurmak ZORUNLU
        print('A sınıfı belgeyi yazdırıyor.');
    }
    }
```
**Composition (Bileşim)**
Veritabanındaki "inner join"lere benzetilebilirsiniz. Bir sınıfın başka bir sınıfın nesnesini (objesini) içermesi durumudur. Kalıtıma (Inheritance) bir alternatif olarak daha esnek ve gevşek bağlı ilişkiler kurmayı sağlar. Bir sınıf, başka bir sınıfın işlevselliğini "sahip olarak" kullanır.

**Örnek (Kavramsal):**
```dart
    class Motor {
    void calistir() {
        print('Motor çalıştı.');
    }
    }

    class Araba {
    Motor motor = Motor(); // Araba, bir Motor nesnesine 'sahiptir' (composition)

    void sur() {
        motor.calistir(); // Arabayı sürerken motoru çalıştırırız
        print('Araba gidiyor.');
    }
    }

    // Burada Araba sınıfı Motor sınıfından miras almak yerine, Motor sınıfının bir örneğini içeriyor.
    // Bu, Araba'nın Motor'un özelliklerini kullanmasını sağlıyor ama sıkı bir "is-a" ilişkisi (kalıtım) kurmuyor.
    // Daha çok "has-a" (sahiptir) ilişkisi kuruyor.
```

**Upcasting / Downcasting**

    * Upcasting: Kalıtım hiyerarşisinde, alt sınıfın (derived class) tipinin temel sınıfa (base class) dönüştürülmesidir. Bu işlem genellikle güvenlidir ve otomatik olarak gerçekleşebilir.

    **Örnek:**
```dart
    class Insan {}
    class Bebek extends Insan {}

    void main() {
    Bebek bebek1 = Bebek(); // Bebek tipinde bir nesne
    Insan insan1 = bebek1; // Upcasting: Bebek nesnesini Insan tipinde referansla tuttuk. Güvenli.
    }
```

* **Downcasting:** Kalıtım hiyerarşisinde, temel sınıfın (base class) tipinin alt sınıfa (derived class) dönüştürülmesidir. Bu işlem riskli olabilir, çünkü temel sınıfın nesnesi aslında alt sınıfın özelliklerine sahip olmayabilir. Bu yüzden `as` anahtar kelimesi veya `is` kontrolü ile dikkatli yapılmalıdır.

**Örnek:**
```dart
    class Insan {}
    class Bebek extends Insan {}

    void main() {
    Insan insan1 = Bebek(); // Upcasting ile Insan tipinde tutulan bir Bebek nesnesi

    // Bebek bebek1 = insan1; // Hata verir: Direkt atama yapılamaz
    Bebek bebek2 = insan1 as Bebek; // Downcasting: Insan tipindeki nesneyi Bebek tipine dönüştürdük.
                                    // Güvenli olup olmadığını kontrol etmeli (örn. 'is' anahtar kelimesiyle).
    }
```
**Statik Değişken ve Metotlar**

Normalde bir sınıfın metotlarına veya değişkenlerine erişirken o sınıftan bir nesne (obje) oluşturmak zorundayız. Ancak, `static` anahtar kelimesiyle tanımlanan metot ve değişkenlere, sınıfın bir nesnesini oluşturmadan, doğrudan sınıf adı üzerinden erişilebilir. Bu, o özelliğin tüm sınıf örnekleri arasında paylaşılmasını ve sınıfın kendisiyle ilişkili olmasını sağlar, belirli bir nesneyle değil.

**Örnek:**
```dart
    class Matematik {
    static double pi = 3.14159; // Statik değişken

    static int topla(int a, int b) { // Statik metot
        return a + b;
    }
    }

    void main() {
    // Matematik sınıfından nesne oluşturmaya gerek yok
    print(Matematik.pi); // Çıktı: 3.14159
    print(Matematik.topla(5, 7)); // Çıktı: 12
    }
```



