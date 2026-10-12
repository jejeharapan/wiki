---
title: "Penanganan Kendala Tugas Tidak Muncul pada Aplikasi Driver (Task Not Found)"
author: Asyraf Nur Adianto
last_updated: 2026-10-12 13:42
---

# Penanganan Kendala Tugas Tidak Muncul pada Aplikasi Driver

Panduan pemecahan masalah (*troubleshooting*) ini ditujukan bagi tim operasional (Driver Manager, Transport Control, Helpdesk) ketika mitra pengemudi (*driver*) melaporkan bahwa tugas pengiriman (*shipment task*) **belum atau tidak muncul pada aplikasi JXFleet Driver**, padahal penugasan telah dibuat di sistem TMS.

---

## 📌 Identifikasi Penyebab Utama

Kendala tugas yang tidak muncul pada aplikasi mobile pengemudi umumnya disebabkan oleh salah satu dari 4 (empat) kondisi berikut:

| Kondisi | Akar Penyebab Masalah | Pihak yang Menangani |
| :---: | :--- | :--- |
| **Kondisi 1** | Penugasan di TMS belum tersinkronisasi / belum terkirim ke JXFleet. | Tim Operasional (via TMS) |
| **Kondisi 2** | Penugasan driver sudah ada di TMS, namun perlu sinkronisasi ulang data pengemudi ke JXFleet. | Tim Operasional (via TMS) |
| **Kondisi 3** | Terdapat dua atau lebih penugasan aktif dengan waktu keberangkatan (*departure time*) yang bersamaan. | Tim Pengembang JXFleet |
| **Kondisi 4** | Jadwal tugas belum memasuki rentang periode visibilitas (*visibility window*) pada aplikasi driver. | Tim Pengembang JXFleet |

---

## 🛠️ Prosedur Penanganan Berdasarkan Kondisi

---

### Kondisi 1: Penugasan Belum Tersinkronisasi ke JXFleet

**Deskripsi Permasalahan**:
Order pengiriman sudah dibuat di TMS, namun data tugas sama sekali belum masuk atau belum ditemukan pada sistem JXFleet.

**Tahapan Penanganan**:

1. **Pengecekan di JXFleet Web**:
   Buka portal [web.jxfleet.com](https://web.jxfleet.com), masuk ke menu **Shipment** ➔ **Change Status V2**, alihkan tab ke mode **All**, lalu lakukan pencarian berdasarkan **Nama Driver** atau **Order ID**.
2. **Buka Order di Portal TMS**:
   Jika data tugas belum ada di JXFleet, buka order tersebut pada TMS melalui dashboard penugasan atau gunakan tautan pintasan langsung:
   ```text
   https://tms-jeje.web.app/ordermanagement/detailshipment/{ORDER_ID}
   ```
   *(Ganti `{ORDER_ID}` dengan nomor order terkait, contoh: `277131`)*.
3. **Kirim Data (Submit to JXFleet)**:
   Pada bilah informasi atas halaman detail shipment di TMS, klik tombol **Submit to JXFleet**, lalu beri jeda waktu **1–2 menit** untuk pemrosesan antrean integrasi.
4. **Verifikasi Ulang di JXFleet Web**:
   Buka kembali menu **Shipment** ➔ **Change Status V2** di JXFleet dan lakukan pencarian ulang. Pastikan order sudah muncul dan seluruh rincian (driver, nomor armada, rute) telah sesuai dengan TMS.
5. **Konfirmasi pada Aplikasi Driver**:
   Minta mitra pengemudi melakukan *pull-to-refresh* (tarik layar ke bawah) pada aplikasi **JXFleet Driver** di ponselnya untuk memastikan tugas telah tampil.

---

### Kondisi 2: Data Driver pada Penugasan Belum Sesuai / Perlu Re-Sync

**Deskripsi Permasalahan**:
Penugasan sudah dibuat di TMS namun nama pengemudi baru saja diperbarui atau belum terdistribusi dengan benar ke sistem JXFleet.

**Tahapan Penanganan**:

1. **Buka Order di Portal TMS**:
   Buka order yang dimaksud di TMS secara langsung melalui tautan pintasan:
   ```text
   https://tms-jeje.web.app/ordermanagement/detailshipment/{ORDER_ID}
   ```
2. **Pastikan Penetapan Driver**:
   Periksa kembali bahwa data mitra pengemudi dan armada kendaraan yang ditugaskan sudah terisi dengan benar dan tersimpan di TMS.
3. **Kirim Data (Submit to JXFleet)**:
   Klik tombol **Submit to JXFleet** di bagian atas halaman detail TMS, lalu tunggu sekitar **1–2 menit** agar perubahan penugasan tersinkronisasi ke server JXFleet.
4. **Verifikasi Ulang di JXFleet Web**:
   Buka menu **Shipment** ➔ **Change Status V2** di portal [web.jxfleet.com](https://web.jxfleet.com). Pastikan nama driver yang tertera pada order sudah identik dengan yang ada di TMS.
5. **Konfirmasi pada Aplikasi Driver**:
   Minta mitra pengemudi melakukan *pull-to-refresh* pada aplikasi ponselnya dan pastikan tugas telah berhasil masuk.

---

### Kondisi 3: Bentrok Waktu Keberangkatan pada Penugasan Driver

**Deskripsi Permasalahan**:
Tugas sudah terdaftar dan ter-assign dengan benar ke driver di JXFleet Web (*Change Status V2*), namun driver memiliki lebih dari satu tugas dengan jadwal keberangkatan (*departure time*) yang persis sama, sehingga sistem aplikasi menahan tampilan tugas kedua agar tidak tumpang tindih.

**Tahapan Penanganan**:

1. **Pengecekan di JXFleet Web**:
   Buka menu **Shipment** ➔ **Change Status V2** di [web.jxfleet.com](https://web.jxfleet.com), cari akun driver terkait, dan periksa kolom jadwal keberangkatan (*departure time*) pada seluruh tugas aktifnya.
2. **Identifikasi Jadwal Duplikat**:
   Periksa apakah terdapat jadwal keberangkatan yang bersamaan/bentrok pada dua atau lebih tugas yang diberikan kepada driver tersebut.
3. **Eskalasi ke Tim Pengembang JXFleet**:
   Hubungi **Tim Pengembang JXFleet (JXFleet Developer Team)** melalui kanal dukungan operasional resmi untuk penyesuaian jadwal atau status penugasan.
4. **Penyampaian Informasi Kendala**:
   Sampaikan rincian pendukung berikut kepada tim pengembang:
   - Nomor **Order ID / Trip ID** tugas yang mengalami jadwal bentrok.
   - **Nama Lengkap & Nomor HP** mitra pengemudi terdaftar.
   - Tangkapan layar (*screenshot*) baris penugasan pada menu *Change Status V2*.

---

### Kondisi 4: Tugas Belum Memasuki Periode Visibilitas Aplikasi

**Deskripsi Permasalahan**:
Tugas sudah ter-assign dengan benar di JXFleet Web dan tidak ada jadwal bentrok, namun jadwal keberangkatan tugas masih terlalu jauh di masa depan sehingga belum masuk ke dalam rentang waktu tampilan (*visibility window*) di aplikasi pengemudi.

**Tahapan Penanganan**:

1. **Pengecekan di JXFleet Web**:
   Buka menu **Shipment** ➔ **Change Status V2** di [web.jxfleet.com](https://web.jxfleet.com), cari Order ID tugas tersebut, dan periksa tanggal serta jam keberangkatan yang dijadwalkan.
2. **Evaluasi Batas Visibilitas**:
   Pastikan apakah tanggal dan jam penugasan armada sudah masuk ke dalam rentang periode visibilitas aktif aplikasi mobile driver.
3. **Eskalasi ke Tim Pengembang JXFleet**:
   Jika jadwal keberangkatan mendesak atau perlu dimajukan jendela visibilitasnya, hubungi **Tim Pengembang JXFleet (JXFleet Developer Team)**.
4. **Penyampaian Informasi Kendala**:
   Sampaikan rincian pendukung berikut kepada tim pengembang:
   - Nomor **Order ID / Trip ID** penugasan.
   - Tanggal dan jam keberangkatan yang terdaftar.
   - **Nama Lengkap & Nomor HP** mitra pengemudi terkait.

---

## 📋 Ringkasan Matriks Alur Tindakan

| Tahap | Skenario / Hasil Pengecekan | Tindakan yang Harus Dilakukan | Pihak Terkait |
| :---: | :--- | :--- | :--- |
| **1** | **Laporan Masuk** | Driver melapor bahwa tugas belum muncul di aplikasi ponsel. | Driver ➔ Tim Ops |
| **2** | **Pemeriksaan di JXFleet Web** | Buka menu *Shipment* ➔ *Change Status V2* (mode *All*) dan cari Order ID / Nama Driver. | Tim Ops |
| **3** | **Tugas Belum Ada di JXFleet** | Buka TMS Detail Shipment, tekan tombol **Submit to JXFleet**, tunggu 1–2 menit, lalu cek kembali. | Tim Ops |
| **4** | **Data Sudah Masuk & Sesuai** | Minta driver melakukan *pull-to-refresh* pada aplikasi ponselnya. Tugas siap dijalankan. | Driver |
| **5** | **Tugas Ada tapi Tidak Tampil di HP** | Indikasi bentrok jam keberangkatan (*departure*) atau belum masuk periode visibilitas. Eskalasikan ke Developer. | Tim Ops ➔ JXFleet Developer |
| **6** | **Sinkronisasi Gagal / Error** | Jika tugas tetap tidak muncul setelah ditekan *Submit*, kirimkan Order ID dan tangkapan layar ke Developer. | Tim Ops ➔ JXFleet Developer |

---