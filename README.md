# 🛒 Keranjang Belanja  
![Flutter](https://img.shields.io/badge/Flutter-3.x-blue?logo=flutter)
![Dart](https://img.shields.io/badge/Dart-3.x-blue?logo=dart)
![Provider](https://img.shields.io/badge/State%20Management-Provider-purple)
![Academic Project](https://img.shields.io/badge/Project-Academic-green)

Aplikasi keranjang belanja (*shopping cart*) berbasis mobile menggunakan **Flutter** dengan implementasi **Provider** sebagai state management.

---

## 👤 Informasi Project

**Nama:** Nabil Daffa Athalasyah  
**NIM:** 2409116090  
**Kelas:** C 2024  
**Mata Kuliah:** Pemrograman Aplikasi Bergerak  
**Pertemuan:** 4  

---

## 📖 Deskripsi

Keranjang Belanja merupakan aplikasi mobile sederhana yang dibuat untuk memahami konsep dasar pengembangan aplikasi menggunakan Flutter.  
Aplikasi ini mengimplementasikan sistem belanja digital yang memungkinkan pengguna untuk melihat produk, melakukan pencarian, memfilter kategori, menambahkan produk ke keranjang, serta melakukan checkout.

State management menggunakan **Provider** agar data keranjang dapat diperbarui secara real-time dan terstruktur dengan baik.

---

## ✨ Fitur

| Fitur | Keterangan |
|-------|------------|
| 📦 Daftar Produk | Menampilkan produk lengkap dengan gambar, nama, dan harga |
| 🔍 Pencarian | Mencari produk berdasarkan nama secara real-time |
| 🏷 Filter Kategori | Filter berdasarkan kategori seperti Elektronik, Gadget, Aksesoris |
| 🛒 Keranjang | Tambah, kurangi, dan hapus produk dari keranjang |
| 💰 Total Harga | Perhitungan otomatis berdasarkan jumlah item |
| 🧾 Checkout | Ringkasan pesanan dan form input data pengguna |
| ✅ Validasi | Validasi form sebelum konfirmasi pesanan |

---

## 🛠️ Tech Stack

- Flutter
- Dart
- Provider (State Management)
- Google Fonts
- Material Design

---

## 📂 Struktur Project

```
lib/
├── models/
│   └── product_model.dart
├── providers/
│   └── cart_provider.dart
├── screens/
│   ├── home_screen.dart
│   ├── cart_screen.dart
│   └── checkout_screen.dart
├── widgets/
│   └── product_card.dart
└── main.dart
```

Struktur folder dibuat terpisah untuk mempermudah pengelolaan kode dan meningkatkan keterbacaan project.

---

## 🚀 Cara Menjalankan

## 🚀 Cara Menjalankan

### 1️⃣ Clone Repository

```bash
git clone https://github.com/username/nama-repository.git
```

### 2️⃣ Masuk ke Folder Project

```bash
cd nama-folder-project
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

## 📸 Tampilan Aplikasi

Tambahkan screenshot aplikasi di sini jika diperlukan.

---

## 📌 Tujuan Pembelajaran

- Memahami struktur project Flutter  
- Mengimplementasikan state management menggunakan Provider  
- Mengelola data produk dan keranjang  
- Membuat UI interaktif berbasis Material Design  

---

## 🏷 Status

Project ini dibuat untuk keperluan tugas mata kuliah dan bersifat akademik.
