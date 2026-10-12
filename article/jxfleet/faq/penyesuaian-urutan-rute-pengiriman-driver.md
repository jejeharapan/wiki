---
title: "Penyesuaian Urutan Rute Pengiriman Driver (Route Config)"
author: Asyraf Nur Adianto
last_updated: 2026-10-12 14:06
---

# Penyesuaian Urutan Rute Pengiriman Driver (Route Config)

Panduan operasional ini menjelaskan prosedur penyesuaian dan pengubahan urutan titik singgah rute pengiriman (*route order adjustment*) melalui fitur **Route Config** pada platform **JXFleet Web**, guna mengoptimalkan jalur tempuh mitra pengemudi (*driver*) di lapangan.

---

## 📌 Latar Belakang Penyesuaian Rute

Penataan ulang urutan rute penugasan armada dilakukan berdasarkan pertimbangan operasional berikut:

1. **Optimalisasi Jalur Pengiriman Lapangan**: Penugasan rute awal dari tim *Account Management (AM)* terkadang kurang optimal terhadap kondisi lalu lintas nyata, jam operasional gudang, atau alur kerja fisik di lapangan.
2. **Efisiensi Waktu & Bahan Bakar**: Tim operasional memiliki pengetahuan rute lokal yang lebih efisien untuk meminimalkan waktu tempuh dan konsumsi bahan bakar armada truk.
3. **Fleksibilitas Titik Rute**: Terdapat titik rute yang perlu diprioritaskan lebih awal agar pengemudi tidak bolak-balik dalam area pengiriman yang sama.
4. **Otorisasi Tim Operasional**: Penyesuaian urutan rute diizinkan untuk dieksekusi secara mandiri oleh personel **Tim Driver Manager** maupun **Tim Transport Control / Planner**.

---

!!! important "Aturan & Batasan Penukaran Rute (Constraints)"
    - **Pertukaran Sesuai Kategori Lokasi**:
        - Titik lokasi **Pickup (Muat)** hanya dapat ditukar posisinya dengan lokasi **Pickup lainnya**.
        - Titik lokasi **Dropoff (Bongkar)** hanya dapat ditukar posisinya dengan lokasi **Dropoff lainnya**.
        - Titik Pickup **tidak dapat** dipindahkan setelah titik Dropoff (prinsip pengambilan barang wajib mendahului pengiriman).
    - **Penghapusan Titik Rute (*Deletion*)**: Fitur *Route Config* hanya melayani penataan ulang urutan rute. Apabila terdapat titik rute yang ingin **dihapuskan sepenuhnya** dari penugasan, proses tersebut wajib melalui eskalasi ke **Tim Pengembang JXFleet**.

---

## 🛠️ Prosedur Mengubah Urutan Rute Pengiriman

Berikut adalah langkah-langkah penataan urutan rute pada portal JXFleet Web:

1. **Pencarian Data Order di JXFleet Web**:
   - Masuk ke portal [web.jxfleet.com](https://web.jxfleet.com) menggunakan akun operasional Anda.
   - Pada bilah navigasi utama di sisi kiri, buka menu: **Shipment** ➔ **Change Status V2**.
   - Masukkan nomor **Order ID** penugasan pada kolom pencarian filter.
   - Klik pada baris data penugasan yang ditemukan untuk membuka halaman rincian (*detail shipment*).

2. **Membuka Tab Route Config**:
   - Pada bagian atas halaman rincian penugasan, klik tab menu **Route Config**.
   - Sistem akan menampilkan daftar seluruh titik rute pengiriman yang terdaftar (lokasi Pickup dan Dropoff) beserta nomor urutnya saat ini.

3. **Mengatur Urutan Titik Rute**:
   - Gunakan tombol navigasi panah **Ke Atas (▲)** atau **Ke Bawah (▼)** pada masing-masing baris lokasi rute untuk menaikkan atau menurunkan nomor urutnya.
   - Sesuaikan posisi antar lokasi Pickup terlebih dahulu, kemudian atur posisi antar lokasi Dropoff sesuai urutan singgah terbaik.

4. **Menyimpan Konfigurasi Rute (*Save Route Order*)**:
   - Periksa kembali susunan urutan rute baru untuk memastikan urutan titik singgah sudah tepat dan efisien.
   - Tekan tombol **Save Route Order** di bagian bawah halaman untuk menyimpan perubahan ke basis data sistem.

5. **Verifikasi pada Aplikasi Driver**:
   - Konfigurasi rute yang baru disimpan akan otomatis disinkronkan ke aplikasi mobile pengemudi.
   - Arahkan mitra pengemudi untuk melakukan *pull-to-refresh* pada aplikasi **JXFleet Driver** di ponselnya agar urutan penugasan langsung diperbarui.

---

## ⚠️ Prosedur Khusus: Penghapusan Titik Rute

Jika terdapat titik rute pengiriman yang **dibatalkan atau tidak perlu dilalui sama sekali** oleh pengemudi:

!!! warning "Eskalasi Penghapusan Rute ke JXFleet Developer"
    Penghapusan titik rute tidak dapat dilakukan secara mandiri melalui tombol *Route Config*. Segera hubungi **Tim Pengembang JXFleet (JXFleet Developer Team)** melalui kanal komunikasi operasional resmi dengan melampirkan:
    
    - Nomor **Order ID / Trip ID** penugasan.
    - Nama dan alamat **Titik Lokasi Rute yang Ingin Dihapus** (Pickup / Dropoff).
    - Alasan operasional pembatalan/penghapusan titik singgah tersebut.

---

## 📋 Ringkasan Matriks Alur Tindakan

| Tahap | Aktivitas | Platform / Media | Penanggung Jawab |
| :---: | :--- | :--- | :--- |
| **1** | Analisis ketidakefisienan rute penugasan | Lapangan / Komunikasi Driver | Driver Manager / Transport Control |
| **2** | Buka Order & tab *Route Config* | Portal [web.jxfleet.com](https://web.jxfleet.com) | Tim Operasional |
| **3** | Atur urutan rute (Pickup ➔ Pickup, Dropoff ➔ Dropoff) | Menu *Route Config* (Tombol ▲/▼) | Tim Operasional |
| **4** | Simpan susunan rute (*Save Route Order*) | Menu *Route Config* | Tim Operasional |
| **5** | Muat ulang urutan penugasan di aplikasi | Aplikasi **JXFleet Driver** | Mitra Pengemudi |
| **6** | *(Opsional)* Permintaan hapus titik rute | Kanal Bantuan Pengembang | Tim Ops ➔ JXFleet Developer |

---
