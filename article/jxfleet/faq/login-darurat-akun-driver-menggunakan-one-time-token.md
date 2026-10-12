---
title: "Login Darurat Akun Driver Menggunakan One-Time Token"
author: Asyraf Nur Adianto
last_updated: 2026-10-12 13:05
---

# Login Darurat Akun Driver Menggunakan One-Time Token

Dokumentasi ini menjelaskan prosedur masuk (*login*) darurat ke akun mitra pengemudi (*driver*) menggunakan **8-Digit One-Time Login Token**, baik melalui aplikasi **JXFleet Driver (Mobile App)** maupun peramban ponsel (**Mobile Web**).

---

## 📌 Latar Belakang & Kasus Penggunaan

Metode login menggunakan One-Time Token digunakan pada dua skenario operasional utama:

1. **Audit & Pemeriksaan Tim Internal**:
   - Tim internal (seperti *Driver Management*, *Operations Support*, atau *IT/Developer*) perlu melakukan audit, verifikasi penugasan, atau pengecekan tampilan aplikasi dari sisi pengemudi secara langsung tanpa harus meminta ataupun mengubah PIN pribadi pengemudi.
2. **Akses Darurat Mitra Pengemudi Lapangan**:
   - Pengemudi mengalami kendala tidak dapat masuk menggunakan PIN yang diingat (misalnya PIN terblokir atau lupa PIN), namun sedang berada dalam jadwal keberangkatan/muat armada yang sangat mendesak sehingga tidak memungkinkan menunggu proses penyetelan ulang (*reset*) PIN akun.

---

!!! info "Karakteristik & Ketentuan One-Time Token"
    - **Sifat Sekali Pakai (*Single-Use*)**: Kode token 8-digit hanya berlaku untuk **1 (satu) kali login**. Begitu pengemudi atau tim audit berhasil masuk ke sesi aplikasi, token langsung kedaluwarsa (*expired*) dan tidak dapat digunakan kembali.
    - **Tidak Mengubah PIN Asli**: Penggunaan token darurat sama sekali tidak mengubah atau mereset PIN akun driver yang tersimpan di sistem.
    - **Penerbitan Kredensial**: Kode token 8-digit diterbitkan oleh **Tim Driver Management** atau **Tim Pengembang JXFleet**.

---

## 🛠️ Tata Cara Login Menggunakan One-Time Token

Pilih platform yang Anda gunakan di bawah ini:

=== "📱 Mobile App (Android / iOS)"

    Berikut adalah langkah-langkah masuk menggunakan One-Time Token pada aplikasi **JXFleet Driver**:

    | Langkah & Instruksi | Tampilan Layar |
    | :--- | :---: |
    | **1.** Hubungi Tim Driver Management atau Tim Pengembang JXFleet untuk mendapatkan **8-digit One-Time Token**. | *(Diterbitkan oleh Admin / Support)* |
    | **2.** Buka aplikasi **JXFleet Driver** di ponsel Anda. Pada halaman awal, tekan opsi **Login Cara Lainnya**. | ![Pilih Login Cara Lainnya Mobile App](attachment/login-darurat-akun-driver-menggunakan-one-time-token/001.png){ style="height: 250px;" } |
    | **3.** Masukkan atau tempelkan (*paste*) 8-digit One-Time Token yang telah diberikan, lalu tekan tombol masuk. | ![Input Token Mobile App](attachment/login-darurat-akun-driver-menggunakan-one-time-token/002.png){ style="height: 250px;" } |
    | **4.** Sistem akan memvalidasi token dan Anda langsung diarahkan ke halaman utama aplikasi dengan sesi aktif. | ![Halaman Utama Mobile App via Token](attachment/login-darurat-akun-driver-menggunakan-one-time-token/003.png){ style="height: 250px;" } |

=== "🌐 Mobile Web"

    Bagi pengguna peramban ponsel (*Chrome/Safari*) di `web.jxfleet.com`:

    | Langkah & Instruksi | Tampilan Layar |
    | :--- | :---: |
    | **1.** Dapatkan **8-digit One-Time Token** dari Tim Driver Management atau Tim Pengembang JXFleet. | *(Diterbitkan oleh Admin / Support)* |
    | **2.** Buka peramban ponsel, akses [web.jxfleet.com](https://web.jxfleet.com), pilih **Login as Driver**, kemudian klik tautan **Login Cara Lainnya**. | ![Pilih Login Cara Lainnya Mobile Web](attachment/login-darurat-akun-driver-menggunakan-one-time-token/004.png){ style="height: 250px;" } |
    | **3.** Masukkan atau tempelkan (*paste*) 8-digit One-Time Token pada kolom yang disediakan. | ![Input Token Mobile Web](attachment/login-darurat-akun-driver-menggunakan-one-time-token/005.png){ style="height: 250px;" } |
    | **4.** Verifikasi berhasil dan Anda langsung masuk ke halaman dashboard Mobile Web. | ![Dashboard Mobile Web via Token](attachment/login-darurat-akun-driver-menggunakan-one-time-token/006.png){ style="height: 250px;" } |

---