# 📱 Flutter UI Widget Örnekleri

Bu repo, Flutter’da temel **UI widget’larını** öğrenmek için hazırlanmış örnek kodları içerir.  
Her widget için ayrı `.dart` dosyası bulunur ve README dosyası, bu widget’ların kullanımını detaylı şekilde açıklar.

---

## 🧩 Layout Widget'ları (Column, Row)
- **Column** → Widget’ları dikey olarak sıralar.
- **Row** → Widget’ları yatay olarak sıralar.
- `mainAxisAlignment` ve `crossAxisAlignment` ile hizalama yapılır.
- Örnek dosya: `layout_widgetleri.dart`

---

## 📐 Margin
- **Margin** → Widget’ın dış boşluğunu ayarlamak için kullanılır.
- `Container` içinde `margin: EdgeInsets.all(...)` şeklinde tanımlanır.
- Örnek dosya: `margin_ornek.dart`

---

## 📦 Padding
- **Padding** → Widget’ın iç boşluğunu ayarlamak için kullanılır.
- `Padding` widget’ı veya `Container.padding` ile uygulanır.
- Örnek dosya: `padding_ornek.dart`

---

## ✍️ TextField
- Kullanıcıdan metin girişi almak için.
- `decoration` ile label, hint, ikon eklenebilir.
- `obscureText: true` → şifre alanı oluşturur.
- Örnek dosya: `textfield_ornek.dart`

---

## ☑️ CheckBox
- Basit onay kutusu.
- `value` → true/false değerini tutar.
- `onChanged` → işaretleme değiştiğinde çalışır.
- Örnek dosya: `checkbox_ornek.dart`

---

## 📋 CheckBoxListTile
- Checkbox + başlık + alt açıklama + ikon tek satırda.
- Kullanıcıya daha açıklamalı seçim sunar.
- Örnek dosya: `checkbox_listtile_ornek.dart`

---

## 🔀 Switch
- Aç/kapat anahtarı.
- `value` → true/false değerini tutar.
- `onChanged` → değişiklikleri yakalar.
- Örnek dosya: `switch_ornek.dart`

---

## 🔘 SwitchListTile
- Switch + başlık + alt açıklama + ikon tek satırda.
- Kullanıcıya daha anlaşılır aç/kapat seçeneği sunar.
- Örnek dosya: `switch_listtile_ornek.dart`

---

## ⬇️ DropdownButton
- Açılır liste menüsü.
- `items` → seçenekler listesi.
- `onChanged` → seçilen değer güncellenir.
- Örnek dosya: `dropdownbutton_ornek.dart`

---

## 🎚️ Slider
- Belirli aralıkta değer seçmek için.
- `min`, `max`, `divisions` ile özelleştirilebilir.
- `label` → seçilen değeri gösterir.
- Örnek dosya: `slider_ornek.dart`

---

## 🔲 OutlinedButton
- Kenarlıklı buton.
- Hafif görünümlü, ikincil aksiyonlar için uygundur.
- Örnek dosya: `outlinedbutton_ornek.dart`

---

## 📝 TextButton
- Basit yazı butonu.
- Minimalist tasarım, genelde link veya küçük aksiyonlar için.
- Örnek dosya: `textbutton_ornek.dart`

---

## ⬆️ ElevatedButton
- Yükseltilmiş (gölge efektli) buton.
- Daha belirgin ve dikkat çekici aksiyonlar için.
- `style` ile özelleştirilebilir.
- Örnek dosya: `elevatedbutton_ornek.dart`

---

## 📂 Dosya Yapısı
/lib
├── layout_widgetleri.dart
├── margin_ornek.dart
├── padding_ornek.dart
├── textfield_ornek.dart
├── checkbox_ornek.dart
├── checkbox_listtile_ornek.dart
├── switch_ornek.dart
├── switch_listtile_ornek.dart
├── dropdownbutton_ornek.dart
├── slider_ornek.dart
├── outlinedbutton_ornek.dart
├── textbutton_ornek.dart
└── elevatedbutton_ornek.dart


---

## 🎯 Amaç
Bu örnekler, Flutter’da **UI bileşenlerini tanımak ve kullanmak** için hazırlanmıştır.  
Her dosya, ilgili widget’ın temel kullanımını gösterir. Öğrenciler bu örnekleri çalıştırarak hem teoriyi hem pratiği öğrenebilir.

---

## 📖 Not
- `setState` → Stateful widget’larda kullanıcı etkileşimini güncellemek için kullanılır.  
- `MaterialApp` ve `Scaffold` → her örnekte temel uygulama yapısını sağlar.  
- Kodlar basit tutulmuştur, gerçek projelerde daha gelişmiş state management yöntemleri kullanılabilir.
