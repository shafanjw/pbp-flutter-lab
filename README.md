# PBP FLUTTER LAB
# Tugas 7
**Shafa Najwa Nathania**
**PBP F**
**2106634414**

### Jelaskan apa yang dimaksud dengan _stateless widget_ dan _stateful widget_ dan jelaskan perbedaan dari keduanya.
**_Stateless widget_** adalah widget yang sifatnya statis atau tidak dapat dirubah. Selama app berjalan, stateless widget tidak akan berubah. Tidak akan ada perubahan dalam variabel, ikon, tombol, maupun pengambilan data tidak akan mengubah state dari app. Widget ini cocok digunakan pada tampilan aplikasi yang bersifat statis.

**_Stateful widget_** adalah widget yang bersifat dinamis atau dapat berubah. Misalnya saat kita membuat _text_, text dapat berubah ketika user melakukan action atau yang lainnya. Salah satu method yang hanya bisa digunakan pada _stateful widget_ adalah `setState()`.

**Perbedaan pada kedua widget ini terletak pada sifatnya, stateless widget bersifat statis, widget tidak akan mengubah tampilan UI. Stateful widget bersifat dinamis. Penggunaan `setState()` hanya dapat diaplikasikan pada stateful widget. **

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

* Container : Widget ini berfungsi sebagai pembungkus widget lain

* FloatingActionButton: Widget ini berfungsi untuk membuat sebuah tombol

* Scaffold : Widget ini memiliki peran untuk mengatur struktur _visual layout_ dengan mengimplementasikan material design

* Text : Widget ini berfungsi untuk menampilkan text pada aplikasi

* Row : Widget ini berfungsi untuk mengatur tata letak widget secara horizontal

* Column : Widget ini berfungsi untuk mengatur tata letak widget secara vertikal

* MaterialApp : adalah sebuah _parent_ dimana yang diapitnya akan menerapkan style _material design_

* TextStyle : Widget ini berfungsi untuk memberikan _styling_ pada text misalnya warna

* Center : Widget ini berfungsi untuk meletakkan widget didalamnya ke bagian tengah

* Expanded : Widget ini berfungsi untuk memperluas anak dari Row, Column atau flex sehingga mengisi ruang yang tersedia

### Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
`setState()` merupakan fungsi

### Jelaskan perbedaan antara `const` dengan `final`.
Const -> modifier ketika nilai variabel tetap, dan tidak dapat diubah lagi.  Const digunakan untuk mengassign value dari variable sebelum runtime.
Final -> modifier yang digunakan untuk mengassign value dari variabel setelah runtime, karena valuenya belum diketahui sebelum runtime.

### Jelaskan bagaimana cara kamu mengimplementasikan _checklist_ di atas.

1. Membuat direktori baru dan membuka `cmd` pada direktori tersebut.
2. Buat app project flutter baru dengan menjalankan `flutter create counter_7` pada `cmd`.
3. Edit proyek di `Android Studio`.
4. Buat fungsi  "\_decrementCounter" untuk mengurangi counter.
5. Membuat conditions untuk counter sehingga mencetak hasil 'GANJIL' ataupun 'GENAP', juga mengatur warnanya.
6. Membuat widget `FloatingActionButton` untuk tombol increment dan decrement dengan menyesuaikan fungsi `_decrementCounter()` dan `_incrementCounter()` ketika diklik.
7. Membuat container padding yg berisi button tersebut.
8. Isi children dari container dengan padding, icon, dan action ketika di-klik.
9. Menjalankan proyek program Flutter dengan `flutter run` pada `cmd`.
10. Melakukan `add-commit-push` proyek ke repositori `pbp-flutter-lab`.
