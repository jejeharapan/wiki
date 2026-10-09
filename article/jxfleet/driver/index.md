---
title: "Tim Driver Manager"
author: Asyraf Nur Adianto
last_updated: 2026-10-09 14:06
---

# Tim Driver Manager (Driver Management)

**Tim Driver Manager** adalah unit operasional di PT Jeje Harapan Transindo (Jeje Trans) yang bertanggung jawab langsung atas pembinaan, administrasi, dukungan teknis, serta pengelolaan status seluruh mitra pengemudi (*driver*) di ekosistem platform **JXFleet**.

Tim ini bertindak sebagai jembatan utama antara manajemen operasional, tim pengendali pengiriman (*Transport Control / Planner*), dan pengemudi di lapangan guna memastikan seluruh armada memiliki personel yang siap jalan, terverifikasi, dan didukung penuh saat bertugas.

---

## 🎯 Peran & Tanggung Jawab Utama

Tim Driver Manager mengemban fungsi krusial dalam operasional harian Jeje Trans:

### 1. Manajemen Kredensial & Akses Pengemudi (*First-Line Authentication Support*)
- Memastikan setiap mitra pengemudi dapat mengakses aplikasi **JXFleet Driver** (Mobile App maupun Mobile Web) tanpa kendala.
- Melayani permintaan bantuan penanganan lupa PIN melalui fitur pengaturan ulang kredensial (*Reset PIN*).
- Menerbitkan **One-Time Login Token (8-Digit)** sebagai akses darurat bagi pengemudi yang mengalami kendala masuk saat berada dalam jadwal keberangkatan mendesak.

### 2. Pengelolaan Siklus Hidup Akun (*Driver Lifecycle Management*)
- Memverifikasi data pengemudi yang didaftarkan ke sistem JXFleet.
- Mengatur status akun pengemudi pada portal [web.jxfleet.com](https://web.jxfleet.com):
    - **Aktif**: Pengemudi siap menerima penugasan perjalanan (*shipment*).
    - **Nonaktif Sementara (*Deactivate*)**: Pengemudi sedang dalam masa cuti, istirahat sakit, atau dalam evaluasi administratif.
    - **Penghapusan Akun (*Delete*)**: Pengemudi yang sudah tidak lagi bermitra atau mengakhiri kontrak kerja sama di Jeje Trans.

### 3. Dukungan & Eskalasi Kendala Lapangan (*Driver Helpdesk*)
- Bertindak sebagai lini pertama (*first response*) dalam menampung kendala aplikasi mobile yang dialami pengemudi di lapangan.
- Melakukan verifikasi identitas fisik dan legalitas pengemudi sebelum mengeksekusi perubahan data atau kredensial sensitif.
- Menjadi narahubung ke **Tim Pengembang JXFleet** jika kendala membutuhkan penanganan sistem atau basis data tingkat lanjut.

### 4. Koordinasi Kesiapan Armada dengan Tim Terkait
- Berkoordinasi intensif dengan **Tim Transport Control / Planner (Shipment Manager)** untuk memastikan ketersediaan driver pada setiap armada truk yang dijadwalkan jalan.
- Memastikan pengemudi memahami standar operasional prosedur (SOP) keselamatan, tata tertib operasional, dan kepatuhan pelaporan perjalanan di aplikasi.

---

## 📚 Standar Prosedur Operasional (SOP) Tim Driver Manager

Berikut adalah dokumentasi langkah operasional yang dieksekusi oleh Tim Driver Manager di portal [web.jxfleet.com](https://web.jxfleet.com):

| Prosedur Kerja | Deskripsi & Tindakan | Kategori |
| :--- | :--- | :--- |
| [**Reset PIN Driver**](driver-reset-pin.md) | Penyetelan ulang 6-digit PIN akun pengemudi ke nilai standar (`123456`) atau PIN kustom baru. | Autentikasi |
| [**Generate One-Time Login Token**](driver-generate-token-login.md) | Penerbitan 8-digit kode token sekali pakai untuk akses login darurat pengemudi di perjalanan tanpa mereset PIN permanen. | Akses Darurat |
| [**Deaktivasi & Hapus Akun Driver**](driver-deactivate-account.md) | Tata cara menonaktifkan sementara akun driver (misal: cuti/skorsing) atau menghapus akun driver dari sistem. | Manajemen Akun |

---
