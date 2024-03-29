---
layout: post
title:  "Python Introduction - Indonesia - Part 2"
tags: [python, coding, tutorial]
updated: "2023-11-28"
---
# Previous Part
[Part 1]({% link _posts/2023-11-22-python-tutorial.md %})

# Next Part
[Part 3]({% link _posts/2023-12-19-python-introduction-indonesia-part-3.md %})

## Exercises
Dalam post ini, saya akan kompilasikan beberapa coding exercises untuk belajar logic-logic sederhana

### 1. if else

<p>Question: </p>
<p>Jika ada dua bilangan bulat, kembalikan nilai perkalian keduanya jika hasilnya sama dengan atau lebih rendah dari 1000.</p>
<p>Selain itu, kembalikan hasil penjumlahan mereka</p>

<p>Contoh hasil:</p>

```
# Case 1
a = 20
b = 30

>> 600
```

```
# Case 2
a = 40
b = 30

>> 70
```

<details>

<summary>SPOILER: Contoh Jawaban</summary>

{% highlight python %}

def check(x, y):
    z = x*y
    v = x+y
    if z <= 500:
        print(z)
    elif z <= 1000 and z > 500:
        print(z/v) 
    else:
        print(v)

# case 1
a = 30
b = 20
check(a, b)

# case 2
a = 50
b = 60
check(a, b)

{% endhighlight %}

</details>

### 2. penjumlahan berturut
<p>Question: </p>
<p>Buatlah sebuah program yang akan terus-menerus beriterasi di 10 bilangan pertama (dimulai dari 0), dan di setiap iterasi, `print` hasil angka iterasi dengan angka iterasi sebelumnya</p>

<p>Contoh hasil: </p>

```
# Case 1

batas = 10

>> 0 + 0 = 0 # <- kita mulai dari 0, tidak dari -1
>> 1 + 0 = 1
>> 2 + 1 = 3
>> 3 + 2 = 5
>> 4 + 3 = 7
>> 5 + 4 = 9
>> 6 + 5 = 11
>> 7 + 6 = 13
>> 8 + 7 = 15
>> 9 + 8 = 17
```

### 3. odd/even number logic

<p>Question: </p>
<p>Print karakter dalam sebuah kata, yang indeks karakternya adalah bilangan ganjil (0 dianggap bilangan genap)</p>

<p>Contoh: </p>

```
# Case 1

kata = "luqman"

>> u
>> m
>> n
```


## CRUD

Nah, jadi kita sudah belajar banyak mengenai python, mulai dari syntax, konsep-konsep dasar, dan juga sedikit algoritma.

Sekarang kita bisa mulai mengaplikasikan apa yang telah kita pelajari, untuk membuat sebuah aplikasi kita sendiri!

Untuk itu, kita kenali konsep *CRUD*, _Create Read Update Delete_. CRUD secara esensial, adalah fundamental cara bekerja sebuah aplikasi.

Katakan kita membuka aplikasi marketplace untuk berjualan. Pertama kita pasti diminta untuk membuat sebuah akun. Lalu setelah itu, kita akan login, dan bisa memasukkan data barang yang akan dijual. Tapi ternyata setelah memasukkan data barang, ada data yang salah, misalkan jumlah stok atau deskripsi yang salah, sehingga kita melakukan perubahan. Dan setelah stok habis, kita berhenti berjualan barang tersebut, sehingga kita menghapus listing barang itu dari marketplace.

Kalau kita lihat skenario di atas, kita bisa secara general, mengkategorikan case di atas menjadi CRUD

### Create
- Membuat akun
- membuat daftar produk baru
### Read
- Login ke marketplace
- menampilkan daftar produk
### Update
- Mengubah data produk
### Delete
- Menghapus daftar produk

## Mengenal Terms & Concepts Yang Membantu

Untuk bisa melakukan operasi CRUD, kita juga harus mengenal beberapa terms dan concept yang lazim digunakan dalam pemrograman.

### Database

Pasti kata ini sudah sering didengar, tapi ya, seperti namanya, database adalah tempat sebuah program/aplikasi untuk menyimpan, membaca, memperbarui, menghapus data, CRUD!

Database bisa berbentuk macam-macam. Kalau di dunia nyata, kita bisa lihat ada database dalam bentuk buku catatan, atau tabel di papan tulis, atau bahkan otak kalian menyimpan memori dan ingatan. Semuanya adalah database. Nah, tapi dalam komputer, database lazimnya bisa berbentuk semua _file_, atau _kumpulan file + program/server database_.

Contoh, file sesimpel _.txt_, _.csv_ atau _.json_, bisa kita jadikan database. Namun akan ada banyak pertimbangan yang membuat biasanya... database dalam bentuk file simple seperti itu tidak disarankan.

### Aplikasi

Aplikasi adalah sebuah _layer_ yang digunakan oleh seorang _user_, untuk berinteraksi dengan sebuah _servis_. Nah, _servis_ ini bisa jadi menggunakan database, sehingga secara esensi, sebuah _user_ itu juga berinteraksi dengan _database_ (seperti contoh skenario marketplace di atas!). Lazimnya _user_ mengenal _Frontend_ sebagai aplikasi, karena ini bagian yang berinteraksi langsung dengan _user_. Sedangkan _Backend_ adalah bagian aplikasi yang hidupnya di _server/cloud_, yang _user_ tidak akan pernah langsung sentuh, dan _Database_ adalah salah satu komponen dari _Backend_. Dua bagian inilah, _Frontend_ & _Backend_ yang membuat sebuah aplikasi sebagai satu keutuhan.

### API
_Aplication Programming Interface_ adalah sebuah mekanisme cara menghubungkan dua atau lebih komponan program, untuk saling berbicara. Sebagai contoh yang paling sederhana, ketika kita membuka sebuah situs lewat _Browser_, kemungkinan besar, _Browser_ kita akan memanggil berbagai macam _API_ dari aplikasi atau program lain yang dibutuhkan oleh situs tersebut. Misalkan kita mau menonton video dari [YouTube](https://www.youtube.com), _browser_ kita akan memanggil _video API_ milik YouTube untuk membuffer/stream video dari _backend_ atau _database_ YouTube.

### Exercise!
Pada bagian di berikutnya, kita akan coba mengimplementasikan sebuah aplikasi penyimpanan data-data buku!

## Changelog

### 2023-12-20
- tambah cerita tentang database, dan aplikasi
### 2023-12-19
- added 3 simple exercises. Todo: example implementation
- mulai cerita singkat untuk CRUD
