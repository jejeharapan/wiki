---
title: "Reset PIN Driver"
author: Asyraf Nur Adianto
last_updated: 2026-10-09 11:00
---

# Panduan Reset PIN Akun Driver

Panduan ini ditujukan bagi tim **Driver Management** dan Administrator untuk melakukan pengaturan ulang (*reset*) PIN akun pengemudi (*driver*) yang mengalami kendala lupa PIN atau kendala autentikasi pada aplikasi **JXFleet Driver** maupun versi Mobile Web.

---

!!! important "Batasan & Hak Akses (Constraints)"
    - **Otorisasi Khusus (Role-Based Access)**: Fitur reset PIN driver hanya dapat diakses oleh pengguna yang memiliki kewenangan peran (*role*) **Driver Management** atau **Super Admin**.
    - **Platform Akses**: Penyetelan ulang PIN dilakukan melalui portal komputer (*Desktop Web*) di [web.jxfleet.com](https://web.jxfleet.com).

---

## 🛠️ Langkah-Langkah Reset PIN Driver

### 1. Mengakses Menu Akun Driver
Masuk ke [web.jxfleet.com](https://web.jxfleet.com) menggunakan akun operasional Anda. Pada menu navigasi utama di sebelah kiri, pilih:
> **Driver Management** ➔ **Account**

---

### 2. Mencari & Menemukan Data Driver
Gunakan kolom pencarian di bagian atas tabel untuk menemukan akun driver yang membutuhkan bantuan. Anda dapat melakukan pencarian berdasarkan salah satu data berikut:
- **Nama Driver**
- **Nomor Handphone Terdaftar** (format diawali `62`)
- **Alamat Email**
- **Region Operasional**

Setelah baris data driver ditemukan pada tabel:
1. Geser ke kolom aksi di sisi paling kanan baris data tersebut.
2. Klik tombol menu **Tiga Titik (Triple Dot / `⋮`)**.
3. Pilih opsi **Reset PIN**.

---

### 3. Memilih Metode Reset PIN pada Pop-Up Konfirmasi
Sistem akan menampilkan jendela sembulan (*modal dialog*) untuk konfirmasi reset PIN. Anda memiliki dua pilihan metode:

- **Metode A — Reset ke PIN Default (`123456`)**:
  Tekan langsung tombol **Confirm Reset** tanpa mengisi teks apa pun pada formulir. Sistem secara otomatis akan mengubah PIN driver menjadi PIN standar: `123456`.

- **Metode B — Menetapkan PIN Kustom Baru**:
  Ketikkan 6-digit angka PIN baru yang diinginkan pada kolom input (pastikan tepat terdiri dari 6 angka numerik), kemudian klik tombol **Confirm Reset**.

---

### 4. Notifikasi Berhasil & Verifikasi Driver
1. Sistem akan menampilkan notifikasi sukses bahwa PIN akun driver telah berhasil diperbarui.
2. Sampaikan PIN baru (atau PIN default `123456`) kepada rekan driver yang bersangkutan.
3. Arahkan driver untuk membuka aplikasi **JXFleet Driver** atau Mobile Web dan melakukan login ulang menggunakan nomor handphone terdaftar beserta PIN yang baru disetel.

---

!!! tip "Alternatif Akses Cepat Lapangan"
    Jika driver sedang dalam perjalanan mendesak dan butuh masuk ke aplikasi secara instan tanpa melakukan reset PIN akun permanen, tim Driver Management dapat menerbitkan **One-Time Login Token (8-Digit)** melalui menu token darurat.

---

## 📋 Tabel Rincian Opsi Reset PIN

| Opsi Reset | Nilai PIN | Keterangan & Kasus Penggunaan |
| :--- | :--- | :--- |
| **Default Reset** | `123456` | Tekan langsung *Confirm Reset*. Cocok untuk reset cepat dan meminta driver mengganti PIN setelah berhasil masuk. |
| **Custom PIN** | 6-Digit Angka | Ketikkan 6 angka pilihan driver sebelum menekan *Confirm Reset*. Cocok jika driver sudah menentukan PIN baru sendiri. |

---
