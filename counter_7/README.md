# counter_7

# Tugas 8 Shafa Najwa Nathania 2106634414

## Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement!
-> Navigator.push adalah suatu navigator routing yang hanya akan menambahkan page pada top of stack
-> Navigator.pushReplacement adalah suatu navigator routing yang bisa menghapus page paling atas, lalu navigator tersebut menambahkan page yang akan dirouting sehingga dia akan mengganti posisi page pada urutan top of stack menjadi page yang baru akan diroute. Dengan demikian, page yang terbaru akan menjadi top of stack)

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya!
-> TextStyle: berfungsi untuk memberikan styling pada text

-> Text: untuk menampilkan text pada aplikasi yang dibuat

-> Column: berfungsi untuk mengatur posisi letak widget

-> MaterialApp: merupakan parent yang akan menerapkan style material design pada sesuatu yang diapitnya

-> Scaffold: untuk mengatur struktur visual layout yang diimplementasikan melalui material design

-> Center: untuk meletakkan widget ke bagian tengah

-> Container: menjadi pembungkus dari widget lainnya

-> ListView.builder: untuk menampilkan list of children yang dapat discroll

-> DropdownButton: sebagai suatu dropdown

-> TextFormField: sebagai form dari text

-> ButtonStyle: styling pada button

-> Drawer: membuat nabvar pada app

-> SizedBox: berguna untuk membuat box agar dapat menambah jarak

-> Card: untuk menampilkan card

## Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed)!
- onPressed
- onChanged
- onClick
- onSaved
- onTap
- onHover

## Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter!
Cara kerja Navigator ketika mengganti page dari aplikasi Flutter adalah dengan menggunakan mekanisme yang hampir mirip dengan prinsip stack. Page atau halaman akan dimuat dipush pada top of stack, sedangkan ketika ingin mengakses halaman sebelumnya, Navigator ini akan melakukan pop pada stack. Dengan demikian, page yang sedang dilihat saat ini akan dihapus dari stack lalu akan ditampilkan halaman sebelumnya pada pengguna

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas!
1) Hal pertama yang saya lakukan adalah dengan membuat dan meletakkan drawer.dart pada semua dart / class sehingga akan menjadi navbar pada setiap page
2) Membuat beberapa class dengan tujuan menjadi page yang akan dirouting pada drawer
3) Menambahkan folder dan membuat class Model sebagai class yang akan menampung data budget pengguna. Dengan demikian, pada class tersebut disertakan memiliki atribut judul, nominal, dan jenis
4) Lalu membuat beberepa class, seperti databudget.dart untuk menampilkan data-data yang sudah disimpan dalam list sebelumnya. selanjutnya juga menambahkan form.dart sebagai form budget dari user
5) Lalu diimplementasikan sesuai dengan soal :)

# Tugas 9 - Integrasi mywatchlist

## Pengambilan data JSON tanpa membuat model

Mengambi data JSON tanpa membuat model dapat dilakukan dalam bentuk HTTP Response dengan data raw.
Namun, kekurangannya adalah pengembang akan sulit untuk mengakses data tersebut. Hal tersebut tidak lebih baik daripada membuat model sebelum melakukan pengambilan data JSON, sehingga lebih baik untuk membuat model terlebih dahulu karena pengembang akan lebih mudah melakukan operasi pada data yang telah berubah menjadi _objek dart_.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

- `MaterialApp` : adalah sebuah _parent_ dimana yang diapitnya akan menerapkan style _material design_
- `Scaffold` : Widget ini memiliki peran untuk mengatur struktur _visual layout_ dengan mengimplementasikan material design
- `Text` : Widget ini berfungsi untuk menampilkan text pada aplikasi
- `TextStyle` : Widget ini berfungsi untuk memberikan _styling_ pada text misalnya warna
- `Column` : Widget ini berfungsi untuk mengatur tata letak widget
- `FloatingActionButton`: Widget ini berfungsi untuk membuat sebuah tombol
- `Expanded` : Widget ini berfungsi untuk memperluas anak dari Row, Column atau flex sehingga mengisi ruang yang tersedia
- `Padding` : Widget ini berfungsi untuk mengatur padding dari widget lainnya
- `FutureBuilder` : Widget ini berfungsi untuk fetching data
- `Row` : Widget ini berfungsi untuk mengatur tata letak widget
- `Container` : Widget ini berfungsi sebagai pembungkus widget lain
- `Center` : Widget ini berfungsi untuk meletakkan widget didalamnya ke bagian tengah
- `ListTile` : memberi bentuk list di widget dalamnya.
- `Card` : Widget ini berfungsi untuk menampilkan card


## Mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter

Membuat class model untuk mendefinisikan data dari JSON,
Membuat method untuk melakukan _fetch data_ dari website JSON tugas 3 dengan http, dimana method ini di _refactor_ menjadi file baru,
Response dari http akan diubah menjadi object Dart dan dimasukkan kedalam list,
Untuk mendisplay data tersebut, data dapat memanfaatkan `FutureWidget`, dimana widget ini digunakan karena result dari server menggunakan Future yang memberikan delay dalam pengambilan data,
Melakukan iterasi terhadap data yang ada, untuk menampilkan data

## Implementing checklist :
Membuat class `mywatchlist.dart` dimana class ini akan menjadi model dari untuk page watchlist dan menampung data JSON,
Menambahkan _page route drawer_ untuk di route ke view MyWatchlist ,
Membuat method untuk melakukan fetch data dari website json tugas 3 dengan http, dimana method ini di refactor menjadi file baru,
Membuat page view dari mywatchlist yaitu untuk menampilkan list movie dan page detail untuk menampilkan movie detail,
Buat text dan lain-lain diimplementasikan sesuai soal :)