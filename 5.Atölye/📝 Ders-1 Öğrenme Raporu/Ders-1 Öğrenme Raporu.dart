void main() {
  //1. Int tipinde bir set oluşturun
  Set<int> sayilar = {5, 10, 15, 20, 25};

  //2. 10 sayısının set içerisinde olup olmadığını kontrol edin
  if (sayilar.contains(10)) {
    print('10 bulundu');
  } else {
    print('10 bulunamadı');
  }
}
