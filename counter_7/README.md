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
