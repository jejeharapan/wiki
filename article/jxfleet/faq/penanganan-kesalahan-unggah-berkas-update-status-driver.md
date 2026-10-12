---
title: "Penanganan Kesalahan Unggah Berkas Update Status Driver"
author: Asyraf Nur Adianto
last_updated: 2026-10-12 14:26
---

# Penanganan Kesalahan Unggah Berkas Update Status Driver

Panduan operasional ini menjelaskan prosedur penanganan ketika mitra pengemudi (*driver*) melakukan kesalahan saat mengunggah berkas bukti pembaruan status (*driver update status*), baik berupa kesalahan dokumen maupun kesalahan penempatan lokasi titik singgah pengiriman pada platform **JXFleet Web**.

---

## 📌 Identifikasi Permasalahan Unggah Berkas

Kesalahan pengunggahan dokumen bukti status oleh pengemudi di lapangan umumnya terbagi menjadi dua kondisi:

1. **Kesalahan Dokumen / Berkas (*Wrong Document File*)**:
   - Berkas atau foto bukti yang diunggah salah, buram (*unreadable*), tidak lengkap, atau tidak sesuai dengan jenis dokumen yang diminta (contoh: mengunggah foto struk bensin pada kolom Surat Jalan / POD).
2. **Kesalahan Lokasi Titik Singgah (*Misplaced Location Update*)**:
   - Pengemudi mengunggah berkas bukti pada titik rute yang keliru (contoh: berkas bongkar muat untuk titik *dropoff* **Surabaya** keliru diunggah pada titik *dropoff* **Gresik**).

Tindakan perbaikan yang harus diambil bergantung pada apakah berkas bukti tersebut **masih berstatus pending (*Pending*)** atau **sudah disetujui (*Approved*)**.

---

## 🛠️ Prosedur Penanganan Berdasarkan Status Bukti

---

### Skenario 1: Berkas Bukti Belum Disetujui (Status Pending)

Jika berkas bukti yang keliru masih berada dalam status antrean verifikasi (**Pending**), tim operasional dapat menolak (*reject*) berkas tersebut secara mandiri agar pengemudi dapat mengunggah kembali berkas yang benar.

**Tahapan Penanganan**:

1. **Pencarian Data Order di JXFleet Web**:
   - Masuk ke portal [web.jxfleet.com](https://web.jxfleet.com) menggunakan akun operasional Anda.
   - Pada menu bilah samping, buka: **Shipment** ➔ **Change Status V2**.
   - Masukkan nomor **Order ID** terkait pada bilah pencarian.
   - Klik pada baris data penugasan yang ditemukan untuk membuka halaman rincian penugasan (*shipment detail*).

2. **Buka Tab Driver Update**:
   - Pada bagian atas rincian penugasan, pilih tab menu **Driver Update**.
   - Temukan berkas dokumen bukti yang masih berstatus **Pending** dan terunggah pada titik lokasi yang salah atau berisi berkas yang keliru.

3. **Pastikan Timestamp Status Terisi**:
   - *(Prasyarat Satu Kali / Once)*: Sebelum melakukan tindakan penolakan, pastikan penanda waktu (*timestamp*) dari status tersebut sudah terperbarui dan tercatat dengan benar pada sistem.

4. **Tolak Bukti Status (Reject)**:
   - Tekan tombol **Reject** pada baris berkas bukti status yang dimaksud.
   - Sistem akan membatalkan berkas pending tersebut dan mengembalikan status ke pengemudi.

5. **Konfirmasi Pengunggahan Ulang oleh Pengemudi**:
   - Hubungi mitra pengemudi dan informasikan bahwa berkas sebelumnya telah ditolak karena keliru.
   - Arahkan pengemudi untuk membuka aplikasi **JXFleet Driver**, kemudian mengunggah ulang dokumen bukti yang benar pada titik lokasi rute yang sesuai.

---

### Skenario 2: Berkas Bukti Sudah Disetujui (Approved) / Pemindahan Lokasi Pembaruan Status

Apabila berkas bukti yang salah **sudah telanjur disetujui (Approved)** oleh tim operasional, atau pengemudi memerlukan **pemindahan riwayat lokasi update status** antar titik rute:

!!! warning "Eskalasi Penyesuaian ke Tim Pengembang JXFleet"
    Tombol penolakan (*Reject*) tidak lagi tersedia setelah status dokumen disetujui (*Approved*), dan pemindahan data log riwayat pembaruan status antar titik lokasi tidak dapat dilakukan secara manual melalui UI JXFleet Web.
    
    Tim operasional wajib melakukan eskalasi ke **Tim Pengembang JXFleet (JXFleet Developer Team)** melalui kanal komunikasi operasional resmi.

**Informasi yang Wajib Dilampirkan saat Eskalasi**:

- Nomor **Order ID / Trip ID** penugasan.
- **Nama Pengemudi** dan **Nomor Polisi Armada**.
- Nama titik lokasi awal yang salah dan titik lokasi tujuan yang seharusnya (contoh: *Pindah update bukti dari Dropoff Gresik ke Dropoff Surabaya*).
- Tangkapan layar (*screenshot*) bukti status pada tab **Driver Update**.
- Alasan permohonan perubahan / perbaikan data.

---

## 📋 Ringkasan Matriks Alur Tindakan

| Skenario | Status Bukti di JXFleet Web | Tindakan Operasional | Pelaksana |
| :--- | :---: | :--- | :--- |
| **Berkas salah / salah lokasi** | **Pending** | Buka tab *Driver Update*, cek *timestamp*, lalu tekan tombol **Reject**. Arahkan pengemudi untuk *re-upload*. | Tim Operasional (Mandiri) |
| **Berkas salah / salah lokasi** | **Approved** | Hubungi JXFleet Developer Team untuk penyesuaian status di basis data. | Tim Ops ➔ JXFleet Developer |
| **Pemindahan titik lokasi update status** | **Pending / Approved** | Hubungi JXFleet Developer Team untuk relokasi titik pembaruan status. | Tim Ops ➔ JXFleet Developer |

---
