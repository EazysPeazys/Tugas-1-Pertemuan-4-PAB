# 🛒 Nabdaff Official Store

![Flutter](https://img.shields.io/badge/Flutter-3.x-blue?logo=flutter)
![Dart](https://img.shields.io/badge/Dart-3.x-blue?logo=dart)
![Provider](https://img.shields.io/badge/State%20Management-Provider-purple)
![Academic Project](https://img.shields.io/badge/Project-Mobile%20App-green)

Aplikasi e-commerce sederhana berbasis **Flutter** yang mengimplementasikan sistem katalog produk dan keranjang belanja menggunakan **Provider** sebagai state management.

---

## 👤 Informasi Project

**Nama:** Nabil Daffa Athalasyah  
**NIM:** 2409116090  
**Kelas:** C 2024  
**Mata Kuliah:** Pemrograman Aplikasi Bergerak  

---

## 📌 Deskripsi

Nabdaff Official Store merupakan aplikasi simulasi toko online yang memungkinkan pengguna untuk:

- Melihat daftar produk
- Melakukan pencarian produk
- Memfilter berdasarkan kategori
- Menambahkan produk ke keranjang
- Mengatur jumlah item
- Melihat total harga secara otomatis

State management menggunakan **Provider** untuk memastikan data produk dan keranjang selalu sinkron secara real-time.

---

## ✨ Fitur Utama

| Fitur | Keterangan |
|-------|------------|
| 🏪 Landing Page | Halaman pembuka aplikasi |
| 🔍 Pencarian Produk | Mencari produk berdasarkan nama |
| 🏷 Filter Kategori | Menyaring produk berdasarkan kategori |
| 🛍 Daftar Produk | Tampilan produk dalam bentuk card |
| 🛒 Keranjang | Tambah & kurangi quantity |
| 💰 Total Harga | Perhitungan otomatis |
| 🔔 Badge Keranjang | Indikator jumlah item |

---

## 🛠️ Teknologi yang Digunakan

- Flutter
- Dart
- Provider (State Management)
- Material Design
- Google Fonts

---

## 📂 Struktur Project

```
lib/
├── models/
│   └── product_model.dart
├── providers/
│   └── cart_provider.dart
├── screens/
│   ├── landing_screen.dart
│   ├── home_screen.dart
│   └── cart_screen.dart
├── widgets/
│   └── product_card.dart
└── main.dart
```

Struktur folder dipisahkan berdasarkan tanggung jawab untuk meningkatkan keterbacaan dan maintainability kode.

---

## 🚀 Cara Menjalankan

### 1️⃣ Clone Repository

```bash
git clone https://github.com/username/nabdaff-official-store.git
```

### 2️⃣ Masuk ke Folder Project

```bash
cd nabdaff-official-store
```

### 3️⃣ Install Dependency

```bash
flutter pub get
```

### 4️⃣ Jalankan Aplikasi

```bash
flutter run
```

Pastikan emulator atau perangkat fisik sudah terhubung.

---

# 📱 Dokumentasi Tampilan Aplikasi

---

## 🏪 1. Landing Page

<p align="center">
  <img width="693" height="1015" alt="Screenshot 2026-02-24 231017" src="https://github.com/user-attachments/assets/6e3e5d22-fc67-4cce-9add-5960d0258140" />
</p>

### Deskripsi

Landing page berfungsi sebagai halaman pembuka aplikasi yang menampilkan identitas store serta tombol navigasi untuk memulai belanja.

---

## 🛍 2. Halaman Produk

<p align="center">
  <img src="assets/images/home.png" width="300"/>
</p>

### Deskripsi

Halaman ini menampilkan daftar produk dalam bentuk card.  
Tersedia fitur pencarian dan filter kategori untuk memudahkan pengguna menemukan produk.

---

## 🛒 3. Halaman Keranjang

<p align="center">
  <img src="assets/images/cart.png" width="300"/>
</p>

### Deskripsi

Menampilkan daftar produk yang telah dipilih pengguna.  
Pengguna dapat menambah atau mengurangi jumlah item serta melihat total harga secara otomatis.

---

## 🏷 4. Filter Kategori

<p align="center">
  <img src="assets/images/filter.png" width="300"/>
</p>

### Deskripsi

Fitur filter digunakan untuk menyaring produk berdasarkan kategori seperti Car, Fashion, Jewelry, dan Electronics.

---

## 💳 5. Halaman Konfirmasi Pembayaran

<p align="center">
  <img src="assets/images/payment_confirmation.png" width="300"/>
</p>

### Deskripsi

Halaman ini menampilkan ringkasan pesanan sebelum transaksi diproses.  
Pengguna dapat meninjau kembali produk yang dibeli, jumlah item, serta total pembayaran.

### Fitur:
- Ringkasan daftar produk
- Informasi total harga
- Tombol konfirmasi pembayaran
- Validasi sebelum melanjutkan transaksi

Halaman ini berfungsi sebagai tahap verifikasi akhir sebelum pembayaran dinyatakan berhasil.

---

## ✅ 6. Halaman Transaksi Sukses

<p align="center">
  <img src="assets/images/success.png" width="300"/>
</p>

### Deskripsi

Halaman ini ditampilkan setelah proses pembayaran berhasil dilakukan.  
Menampilkan notifikasi bahwa transaksi telah sukses.

### Informasi yang Ditampilkan:
- Pesan konfirmasi keberhasilan
- Ringkasan singkat transaksi
- Tombol kembali ke halaman utama

Halaman ini memberikan feedback visual kepada pengguna bahwa proses pembelian telah selesai.

---

## 📌 Tujuan Pembelajaran

- Memahami struktur project Flutter
- Mengimplementasikan state management menggunakan Provider
- Mengelola data dan navigasi antar halaman
- Membangun UI responsif berbasis Material Design

---

## 🏷 Status

Project ini dibuat untuk keperluan akademik dan pembelajaran.
