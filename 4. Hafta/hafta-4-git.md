# 📄 4. Hafta Öğrenme Raporu: Git ve GitHub'a İlk Adımlarımız

Bu hafta, mobil uygulama geliştirme sürecinin temel taşlarından biri olan **Versiyon Kontrol Sistemleri** ve özellikle **Git ile GitHub** konularını derinlemesine inceledik. Bu kavramlar, projelerimizi daha düzenli yönetmemizi, ekip içinde işbirliği yapmamızı ve kod değişikliklerimizi güvenle takip etmemizi sağlıyor. Hadi, bu haftanın detaylarına birlikte göz atalım!

---

## 🚀 Ders-1: Git Nedir ve Temel Kullanımı

Bu ders, Git'in ne olduğunu ve neden bu kadar kritik bir araç olduğunu anlamamızla başladı. Git, sadece bir kod yönetim sistemi değil, aynı zamanda yazılım geliştirme süreçlerinde bir devrim niteliğinde!

### Git Nedir?

**Git**, yazılım projelerini yönetmek için kullanılan **ücretsiz ve açık kaynaklı** bir versiyon kontrol sistemidir (VCS). Temel olarak, yazılım geliştirme süreçlerinde kod değişikliklerini **izlemeye, işbirliği yapmaya ve projeleri düzenli bir şekilde yönetmeye** olanak tanır. Bir nevi, projenizin zaman içindeki tüm evrimini kaydeden akıllı bir günlük gibidir.

### Terminal Kullanımı: Komut Satırında Git Macerası

Git'i en verimli şekilde kullanmanın yolu, terminal komutlarına hakim olmaktan geçiyor. Powershell ve CMD arasındaki farklardan, temel komutlara kadar birçok konuya değindik:

* **Powershell vs CMD (Komut Satırı):** Powershell, CMD'nin çok daha **gelişmiş ve esnek** bir versiyonu olarak karşımıza çıkıyor. Daha güçlü komut setleri ve otomasyon yetenekleri sunuyor.
* **(Baş harfler küçük olmalı!)** Git komutları genellikle küçük harfle yazılır, bu önemli bir detay!

#### Temel Terminal Komutları:

* `pwd`: "print working directory" kısaltmasıdır, **bulunduğumuz dizini (konumu) belirtir.**
* `dir` (Windows) / `ls` (Linux/macOS): Bulunduğumuz dizindeki **dosyaları ve klasörleri listeler.**
* `cd ..`: Bir üst dizine çıkmamızı sağlar.
* `clear`: Terminal ekranını temizler, böylece daha düzenli bir çalışma alanı elde ederiz.
* `mkdir [klasör_adı]`: Bulunduğumuz yerde **yeni bir klasör oluşturur.**
* `rm [dosya_adı]`: Belirtilen **dosyayı siler.**

### Git Sistemimize E-posta ve Kullanıcı Adı Kaydetmek

Git'i kullanmaya başlamadan önce kim olduğumuzu Git'e tanıtmamız gerekiyor. Bu, her bir commit'in kime ait olduğunu belirtir.

* Git Bash veya terminale girdikten sonra:
    * `git config --global user.name "Kullanıcı Adınız"`: Git sistemine genel (global) kullanıcı adımızı kaydederiz. Bu, yaptığımız commit'lerde görünecek isimdir.
    * `git config --global user.email "epostaadresiniz@ornek.com"`: Aynı şekilde, e-posta adresimizi de kaydederiz.
    * Kullanıcı adımızı görmek için: `git config user.name` komutunu kullanabiliriz.

---

## 💻 Git Etkinliği ve Canlı Uygulama

Bu dersin teorik bilgileriyle birlikte, pratik bir Git etkinliği de gerçekleştirdik! Aşağıdaki video kaydından bu etkinliği tekrar izleyebilirsiniz:

* **Git Etkinliği Canlı Kaydı:** [https://youtu.be/DYJbErSFgU4](https://youtu.be/DYJbErSFgU4)

---

## 🎯 Ders-2: Git’in Temel Kavramları ve GitHub'ın Gücü

Git'in temel prensiplerini ve GitHub'ın bu süreçteki rolünü keşfettiğimiz bu ders, versiyon kontrol sistemlerine olan bakış açımızı tamamen değiştirdi!

### Git’in Temel Kavramları:

Bu kavramlar, Git'in yapı taşlarıdır ve her yazılımcının bilmesi gereken temel terimlerdir:

* **Depo (Repository):** Projenizin tüm dosyalarını, klasörlerini ve geçmişteki her bir **değişikliğini sakladığınız merkezi yerdir.** Bir projenin tüm tarihçesi burada bulunur.
* **Commit:** Yapılan değişikliklerin kaydedildiği bir **adımdır.** Her commit, projedeki belirli bir değişiklik setini temsil eder ve bir mesajla bu değişikliği açıklarsınız. "Projemin fotoğrafını çektim" gibi düşünebilirsin.
* **Branch (Dal):** Ana projeden **bağımsız bir şekilde geliştirme yapmanıza** olanak tanıyan çalışma alanlarıdır. Yeni bir özellik veya hata düzeltmesi üzerinde çalışırken ana kodu etkilemeden denemeler yapabilirsin.
* **Merge:** Farklı dallarda yapılan değişiklikleri **birleştirme** işlemidir. Genellikle bir özelliğin geliştirilmesi tamamlandığında ana dala geri birleştirmek için kullanılır.
* **Clone:** Uzaktaki (genellikle GitHub gibi bir platformdaki) bir depoyu **yerel bilgisayarınıza kopyalama** işlemidir. Projenin tüm tarihçesini ve dosyalarını lokalinize indirirsiniz.
* **Push:** Yerel bilgisayarınızda yaptığınız değişiklikleri (commit'leri) **uzaktaki depoya gönderme** işlemidir. "Değişikliklerimi sunucuya gönderdim!" anlamına gelir.
* **Pull:** Uzaktaki depoda yapılan değişiklikleri **yerel depoya alma** işlemidir. Başka bir ekip üyesinin yaptığı güncellemeleri kendi çalışma ortamınıza çekmek için kullanılır.

### GitHub Nedir? Dijital Proje Merkezi

**GitHub**, Git depolarını barındıran ve yönetmenizi sağlayan **web tabanlı bir platformdur.** Özellikle **işbirliği ve kod paylaşımı** için tasarlanmıştır. Kullanıcıların projeler üzerinde birlikte çalışmalarına, kodlarını gözden geçirmelerine ve geri bildirimde bulunmalarına olanak tanır. Yazılım geliştiricilerin sosyal medya platformu gibi düşünebilirsin!

#### GitHub’ın Temel Özellikleri:

* **Depo (Repository):** GitHub üzerinde projelerinizi barındırdığınız yerdir, Git depolarınızın çevrimiçi evidir.
* **Fork:** Başka bir kullanıcının (veya kuruluşun) deposunun **kopyasını oluşturur** ve üzerinde özgürce çalışmanızı sağlar. Orijinal projeye katkıda bulunmak istediğinizde bu kopyayı kullanırsınız.
* **Pull Request (PR):** Kendi yaptığınız değişiklikleri (fork'ladığınız depodaki) **orijinal projeye dahil edilmesi için önerdiğiniz** mekanizmadır. Kodunuzun gözden geçirilmesini ve ana projeye entegrasyonunu talep edersiniz.
* **Issues:** Projelerdeki **hataları, önerileri ve görevleri takip etmenizi** sağlayan bir sistemdir. "Yapılacaklar listesi" ve "hata raporlama" aracı olarak kullanılır.
* **Actions:** Sürekli entegrasyon ve teslimat (CI/CD) işlemlerini **otomatikleştirmenizi** sağlayan güçlü bir özelliktir. Kodunuz her değiştiğinde otomatik testler çalıştırma veya uygulamayı dağıtma gibi işlemleri kolaylaştırır.

---

Bu hafta Git ve GitHub'ın temellerini atarak, projelerimizi daha profesyonel ve düzenli bir şekilde yönetme becerisi kazandık. Versiyon kontrol sistemleri, modern yazılım geliştirmenin vazgeçilmez bir parçasıdır ve bu bilgileri öğrenmek kariyerimde önemli bir dönüm noktası oldu! 😊