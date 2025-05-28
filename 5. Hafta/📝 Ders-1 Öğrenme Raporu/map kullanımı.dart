void main() {
  // 1. Veri Tipleri
  String name = 'Bushra';
  int age = 23;
  double averageScore = 87.50;
  bool isClassFull = true;

  print('Öğrenci Adi: $name');
  print('Yaş: $age');
  print('Not Ortalamasi: $averageScore');
  print('Sinif Dolu Mu: $isClassFull');

  // 2. Değişken Oluşturma
  int year = 2001;
  print('Yıl: $year'); // year değişkeni burada kullanılıyor.

  // 3. Diziler, Set, Map
  List<String> days = ['Pazartesi', 'Sali', 'Çarşamba'];
  Map<int, String> plates = {01: 'Adana', 34: 'İstanbul'};
  Set<String> countries = {'Türkiye', 'ABD', 'Almanya'};

  print('Haftanin günleri: $days');
  print('Plakalar: $plates');
  print('Ülkeler: $countries');

  // 4. Döngüler ve Koşullu İfadeler
  for (int i = 0; i < days.length; i++) {
    print('${i + 1}. Gün: ${days[i]}');
  }

  var number = 15;
  if (number % 2 == 0) {
    print('Bu sayi çift sayidir.');
  } else {
    print('Bu sayi tek sayidir.');
  }

  // 5. Ödev
  print(
      'Ödev: Dart dilinde veri tiplerini ve değişken oluşturmayi uygulamali olarak deneyin.');
}
