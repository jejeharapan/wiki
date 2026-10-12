---
title: "Penanganan Kendala Tugas Tidak Muncul pada Aplikasi Driver (Task Not Found)"
author: Asyraf Nur Adianto
last_updated: 2026-10-12 14:14
---

# Penanganan Kendala Tugas Tidak Muncul pada Aplikasi Driver

Panduan pemecahan masalah (*troubleshooting*) ini ditujukan bagi tim operasional (Driver Manager, Transport Control, Helpdesk) ketika mitra pengemudi (*driver*) melaporkan bahwa tugas pengiriman (*shipment task*) **belum atau tidak muncul pada aplikasi JXFleet Driver**, padahal penugasan telah dibuat di sistem TMS.

---

## 📌 Identifikasi Penyebab Utama

Kendala tugas yang tidak muncul pada aplikasi mobile pengemudi umumnya disebabkan oleh salah satu dari 5 (lima) kondisi berikut:

| Kondisi | Akar Penyebab Masalah | Pihak yang Menangani |
| :---: | :--- | :--- |
| **Kondisi 1** | Penugasan di TMS belum tersinkronisasi / belum terkirim ke JXFleet. | Tim Operasional (via TMS) |
| **Kondisi 2** | Penugasan driver sudah ada di TMS, namun perlu sinkronisasi ulang data pengemudi ke JXFleet. | Tim Operasional (via TMS) |
| **Kondisi 3** | Status tugas pada JXFleet masih dalam kondisi tersembunyi (*Hidden*). | Tim Operasional (via JXFleet Web) |
| **Kondisi 4** | Terdapat dua atau lebih penugasan aktif dengan waktu keberangkatan (*departure time*) yang bersamaan / bentrok. | Tim Operasional (via *Hide Task*) |
| **Kondisi 5** | Jadwal tugas belum memasuki rentang periode visibilitas (*visibility window*) pada aplikasi driver. | Tim Pengembang JXFleet |

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

### Kondisi 3: Status Tugas Masih dalam Kondisi "Hidden"

**Deskripsi Permasalahan**:
Tugas pengiriman sudah tersinkronisasi dan ter-assign ke pengemudi di JXFleet Web, namun status tugas masih berada dalam kondisi nonaktif/tersembunyi (*Hidden*), sehingga tidak ditampilkan pada antarmuka aplikasi driver.

**Tahapan Penanganan**:

1. **Pengecekan di JXFleet Web**:
   Buka portal [web.jxfleet.com](https://web.jxfleet.com), masuk ke menu **Shipment** ➔ **Change Status V2**, alihkan tab ke mode **All**, lalu lakukan pencarian berdasarkan **Nama Driver** atau **Order ID**, dan pastikan filter Status Task telah memilih **Hidden** sebagai salah satu pilihannya.
2. **Buka Menu Tindakan Data Order**:
   Pada baris data order yang ditemukan, klik ikon titik tiga (**⋮**) di bagian paling kanan data.
3. **Pilih Menu Activate Task**:
   Tekan pilihan menu **Activate Task**.
4. **Konfirmasi Pengaktifan**:
   Konfirmasi dengan menekan tombol **Activate Task** pada jendela dialog modal yang muncul.
5. **Konfirmasi pada Aplikasi Driver**:
   Minta mitra pengemudi melakukan *pull-to-refresh* pada aplikasi **JXFleet Driver** di ponselnya untuk memastikan tugas telah berhasil tampil.

---

### Kondisi 4: Bentrok Waktu Keberangkatan pada Penugasan Driver

**Deskripsi Permasalahan**:
Tugas sudah terdaftar dan ter-assign dengan benar ke driver di JXFleet Web (*Change Status V2*), namun driver memiliki lebih dari satu tugas dengan jadwal keberangkatan (*departure time*) yang persis sama, sehingga sistem aplikasi menahan tampilan tugas agar tidak tumpang tindih. Tim operasional dapat menyelesaikan kendala ini secara mandiri dengan menyembunyikan (*hide*) tugas yang belum akan dikerjakan terlebih dahulu.

**Tahapan Penanganan**:

1. **Pengecekan di JXFleet Web**:
   Buka portal [web.jxfleet.com](https://web.jxfleet.com), masuk ke menu **Shipment** ➔ **Change Status V2**, alihkan tab ke mode **All**, lalu lakukan pencarian berdasarkan **Nama Driver** atau **Order ID**.
2. **Buka Menu Tindakan pada Tugas yang Ditunda**:
   Identifikasi tugas yang jadwalnya bentrok namun belum akan dikerjakan saat ini. Pada baris data order tersebut, klik ikon titik tiga (**⋮**) di bagian paling kanan data.
3. **Pilih Menu Hide Task**:
   Tekan pilihan menu **Hide Task**.
4. **Konfirmasi Penyembunyian**:
   Konfirmasi dengan menekan tombol **Hide Task** pada jendela dialog modal yang muncul.
5. **Verifikasi pada Aplikasi Driver**:
   Minta mitra pengemudi melakukan *pull-to-refresh* pada aplikasi ponselnya. Tugas utama yang tidak disembunyikan akan langsung tampil dan dapat dikerjakan.

!!! tip "Mengaktifkan Kembali Tugas yang Disembunyikan"
    Setelah tugas pertama selesai dijalankan oleh mitra pengemudi, buka kembali menu **Change Status V2**, cari data tugas yang sebelumnya di-hide (pastikan filter *Hidden* aktif), lalu aktifkan kembali dengan memilih opsi **Activate Task** sesuai panduan pada **Kondisi 3**.

---

### Kondisi 5: Tugas Belum Memasuki Periode Visibilitas Aplikasi

**Deskripsi Permasalahan**:
Tugas sudah ter-assign dengan benar di JXFleet Web, status tidak dalam kondisi *Hidden*, dan tidak ada jadwal bentrok, namun jadwal keberangkatan tugas masih terlalu jauh di masa depan sehingga belum masuk ke dalam rentang waktu tampilan (*visibility window*) di aplikasi pengemudi.

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
| **4** | **Data Driver Belum Sesuai** | Perbarui data driver di TMS, tekan **Submit to JXFleet**, tunggu 1–2 menit, lalu cek kembali. | Tim Ops |
| **5** | **Status Tugas "Hidden"** | Pada menu *Change Status V2*, tekan titik 3 (**⋮**) ➔ **Activate Task** ➔ Konfirmasi. | Tim Ops |
| **6** | **Jadwal Keberangkatan Bentrok** | Pada tugas yang belum dikerjakan, tekan titik 3 (**⋮**) ➔ **Hide Task** ➔ Konfirmasi. | Tim Ops |
| **7** | **Belum Masuk Periode Visibilitas** | Jika jadwal masih di luar *visibility window*, eskalasikan ke Tim Pengembang JXFleet. | Tim Ops ➔ JXFleet Developer |

---
