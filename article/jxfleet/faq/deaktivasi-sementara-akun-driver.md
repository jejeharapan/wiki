---
title: "Deaktivasi Sementara Akun Driver (Cuti dan Tindakan Disiplin)"
author: Asyraf Nur Adianto
last_updated: 2026-10-12 14:32
---

# Deaktivasi Sementara Akun Driver (Cuti dan Tindakan Disiplin)

Panduan operasional ini menjelaskan prosedur penonaktifan sementara (*deactivate*) akun mitra pengemudi (*driver*) pada platform **JXFleet Web** ketika pengemudi sedang mengajukan cuti, izin tidak bekerja, atau sedang menjalani masa sanksi disiplin/skorsing operasional.

---

## 📌 Latar Belakang Deaktivasi Akun Driver

Penonaktifan sementara akun driver dilakukan oleh **Tim Driver Manager** berdasarkan pertimbangan berikut:

1. **Pengecualian Kewajiban Absensi (*Attendance Reminder System*)**:
   - Pengemudi yang berstatus nonaktif sementara (*deactivated*) secara otomatis **dikecualikan dari kewajiban absensi harian** dalam sistem pengingat (*reminder bot/system*), sehingga tidak menimbulkan alarm ketidakhadiran atau catatan mangkir palsu.
2. **Pencegahan Penyalahgunaan Akses Akun**:
   - Selama masa cuti atau sanksi disiplin, pengemudi tidak dapat masuk (*login*) ke aplikasi **JXFleet Driver** di ponselnya, mencegah penerimaan order pengiriman secara tidak sengaja.
3. **Fleksibilitas Reaktivasi**:
   - Akun yang dinonaktifkan sementara dapat diaktifkan kembali (*re-activate*) kapan saja secara mandiri tanpa kehilangan data profil maupun riwayat penugasan sebelumnya.

---

## 🛠️ Prosedur Deaktivasi Sementara Akun Driver

Berikut adalah tahapan penonaktifan sementara akun mitra pengemudi melalui portal JXFleet Web:

1. **Pencarian Data Pengemudi di JXFleet Web**:
   - Masuk ke portal [web.jxfleet.com](https://web.jxfleet.com) menggunakan akun operasional Anda.
   - Pada menu bilah samping kiri, buka: **Driver Management** ➔ **Account**.
   - Gunakan kolom pencarian di bagian atas tabel untuk mencari akun berdasarkan **Nama Driver** atau **Nomor Telepon**.

2. **Membuka Menu Aksi Pengemudi**:
   - Pada baris data driver yang ditemukan, geser tampilan tabel (*scroll horizontal*) hingga ke kolom paling kanan.
   - Klik tombol aksi **Tiga Titik (Triple Dot / `⋮`)**.

3. **Memilih Opsi Deactivate**:
   - Dari menu *dropdown* yang muncul, pilih opsi **Deactivate**.

4. **Pengisian Alasan & Konfirmasi Deaktivasi**:
   - Pada jendela dialog *modal* yang muncul, pilih atau isi keterangan alasan penonaktifan akun secara jelas (contoh: *Cuti Tahunan*, *Izin Sakit*, *Diberhentikan Sesaat / Skorsing*, atau *Kendala Operasional*).
   - Periksa kembali nama akun dan alasan yang diisikan, lalu tekan tombol **Confirm** untuk memproses deaktivasi.
   - Status akun pengemudi akan berubah menjadi nonaktif (*Inactive / Deactivated*).

---

## 🔄 Prosedur Reaktivasi Akun Driver

Setelah periode cuti selesai atau masa sanksi disiplin berakhir, tim Driver Manager dapat mengaktifkan kembali akun pengemudi dengan langkah-langkah berikut:

1. Buka kembali menu **Driver Management** ➔ **Account** di portal [web.jxfleet.com](https://web.jxfleet.com).
2. Cari nama akun mitra pengemudi yang bersangkutan (pastikan filter status menampilkan akun yang tidak aktif).
3. Geser ke bagian paling kanan baris data, lalu klik tombol **Tiga Titik (`⋮`)**.
4. Pilih opsi **Activate**.
5. Konfirmasi pengaktifan pada jendela dialog modal yang muncul.
6. Mitra pengemudi kini dapat kembali melakukan *login* ke aplikasi **JXFleet Driver** seperti biasa.

---

## ⚠️ Perbedaan Deaktivasi Sementara vs Hapus Akun (Delete)

!!! important "Perhatikan Perbedaan Opsi Deactivate dan Delete"
    - **Deactivate (Nonaktif Sementara)**:
        - Pengemudi tidak dapat login selama dinonaktifkan.
        - Data riwayat penugasan dan identitas tetap aman di sistem.
        - Dapat direaktivasi kembali sewaktu-waktu secara mandiri oleh Tim Driver Manager.
    - **Delete (Hapus Akun Permanen)**:
        - Digunakan hanya untuk pengemudi yang telah mengundurkan diri permanen (*resign*) atau diberhentikan secara tetap (*PHK*).
        - Akun dihapus dari daftar operasional aktif.
        - Pemulihan data yang terhapus wajib melalui eskalasi ke **Tim Pengembang JXFleet**.

---

## 📋 Ringkasan Matriks Alur Tindakan

| Kondisi Pengemudi | Tindakan Sistem | Menu / Jalur | Penanggung Jawab |
| :--- | :---: | :--- | :--- |
| **Cuti / Izin Sakit** | **Deactivate** | *Driver Management* ➔ *Account* ➔ Titik 3 (`⋮`) ➔ *Deactivate* | Tim Driver Manager |
| **Sanksi Disiplin / Skorsing** | **Deactivate** | *Driver Management* ➔ *Account* ➔ Titik 3 (`⋮`) ➔ *Deactivate* | Tim Driver Manager |
| **Selesai Masa Cuti / Skorsing** | **Activate** | *Driver Management* ➔ *Account* ➔ Titik 3 (`⋮`) ➔ *Activate* | Tim Driver Manager |
| **Resign / Berhenti Permanen** | **Delete** | *Driver Management* ➔ *Account* ➔ Titik 3 (`⋮`) ➔ *Delete* | Tim Driver Manager |

---
