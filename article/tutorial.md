---
title: Panduan Penulisan Dokumentasi Wiki
author: Tim Pengembang Sistem
last_updated: 2026-10-09
hide:
  - navigation
---

# Panduan Penulisan Dokumentasi Wiki (MkDocs)

Selamat datang di panduan resmi penulisan artikel dan dokumentasi sistem untuk **PT Jeje Harapan Transindo (Jeje Trans)**. Panduan ini dilengkapi dengan contoh sintaks kode beserta **Hasil Tampilan (Live Preview)** langsung yang dapat Anda lihat hasilnya di halaman ini.

---

## 📁 1. Struktur Folder & Hirarki File

Seluruh berkas dokumentasi berformat Markdown (`.md`) disimpan di dalam direktori `/article` dengan hirarki bertingkat hingga 3 subfolder:

```
/article/
├── <Nama_Aplikasi_atau_Grup>/
│   ├── <Kategori_Layanan>/
│   │   ├── <Fitur_atau_Subkategori>/
│   │   │   ├── 001-namaLangkah1.md
│   │   │   ├── 001-namaLangkah1-001.png
│   │   │   └── 002-namaLangkah2.md
```

### Aturan Penamaan:
1. Gunakan nama folder yang ringkas dan jelas (contoh: `JXFleet`, `TMS`, `FATTrack`).
2. Simpan gambar pendukung di dalam folder yang sama dengan file `.md` tempat gambar tersebut digunakan.
3. Gunakan penamaan file berurut jika berupa panduan sekuensial (contoh: `001-driverLoginPIN.md`, `002-driverLoginToken.md`).

---

## 📝 2. Metadata Artikel (YAML Frontmatter)

Setiap file `.md` wajib diawali dengan blok metadata YAML di baris paling atas:

### Sintaks Kode:
```yaml
---
title: Panduan Penulisan Dokumentasi Wiki
author: Tim Pengembang Sistem
last_updated: 2026-10-09
---
```

### Hasil Tampilan (Preview):
*(Metadata di atas secara otomatis dirender sebagai badge informasi di bagian paling atas setiap artikel)*

---

## 🎨 3. Format Penulisan & Preview Tampilan

---

### A. Judul & Sub-Judul (Headings)

#### Sintaks Kode:
```markdown
## Ini Adalah Sub-Bab Utama (H2)
### Ini Adalah Rincian Sub-Bab (H3)
#### Ini Adalah Sub-Sub-Bab (H4)
```

#### Hasil Tampilan (Preview):

## Ini Adalah Sub-Bab Utama (H2)
### Ini Adalah Rincian Sub-Bab (H3)
#### Ini Adalah Sub-Sub-Bab (H4)

---

### B. Memasukkan & Mengatur Ukuran Gambar

#### 1. Gambar Rata Tengah (Center) & Ukuran Persentase (Rekomendasi)

##### Sintaks Kode:
```markdown
![Layar Login](001-driverLoginPIN-001.png){ width="30%" .center }
```

##### Hasil Tampilan (Preview):
![Layar Login](JXFleet/Mobile App/Login/001-driverLoginPIN-001.png){ width="30%" .center }

---

### C. Catatan & Peringatan (Admonitions / Callouts)

#### Sintaks Kode:
```markdown
> [!NOTE]
> Ini adalah contoh catatan informasi umum operasional.

> [!TIP]
> Ini adalah tips efisiensi atau trik mempercepat proses kerja.

> [!WARNING]
> Ini adalah peringatan mengenai potensi kesalahan pengguna (*user error*).

> [!IMPORTANT]
> Ini adalah prosedur kritis yang wajib dipatuhi demi keamanan data.
```

#### Hasil Tampilan (Preview):

> [!NOTE]
> Ini adalah contoh catatan informasi umum operasional.

> [!TIP]
> Ini adalah tips efisiensi atau trik mempercepat proses kerja.

> [!WARNING]
> Ini adalah peringatan mengenai potensi kesalahan pengguna (*user error*).

> [!IMPORTANT]
> Ini adalah prosedur kritis yang wajib dipatuhi demi keamanan data.

---

### D. Penulisan Kode & Perintah Terminal

#### Sintaks Kode:
````markdown
```bash
# Perintah mengecek status kontainer Docker
sudo docker compose up --build -d
```
````

#### Hasil Tampilan (Preview):

```bash
# Perintah mengecek status kontainer Docker
sudo docker compose up --build -d
```

---

### E. Tabel Data

#### Sintaks Kode:
```markdown
| Parameter | Tipe Data | Keterangan |
| :--- | :--- | :--- |
| `phone_number` | String | Nomor HP terdaftar diawali `62` |
| `pin` | Number | 6 digit PIN akun driver |
| `status` | Enum | Active / Suspended |
```

#### Hasil Tampilan (Preview):

| Parameter | Tipe Data | Keterangan |
| :--- | :--- | :--- |
| `phone_number` | String | Nomor HP terdaftar diawali `62` |
| `pin` | Number | 6 digit PIN akun driver |
| `status` | Enum | Active / Suspended |

---

### F. Konten Bertingkat (Tabbed Content)

#### Sintaks Kode:
```markdown
=== "Mobile App (Android / iOS)"
    1. Buka aplikasi **JXFleet Driver**.
    2. Masukkan nomor HP dengan format `628xxxxxxxx`.
    3. Masukkan PIN 6-digit.

=== "Portal Website"
    1. Buka situs `web.jxfleet.com`.
    2. Klik tombol **Login as Driver**.
    3. Masukkan nomor HP dan PIN terdaftar.
```

#### Hasil Tampilan (Preview):

=== "Mobile App (Android / iOS)"
    1. Buka aplikasi **JXFleet Driver**.
    2. Masukkan nomor HP dengan format `628xxxxxxxx`.
    3. Masukkan PIN 6-digit.

=== "Portal Website"
    1. Buka situs `web.jxfleet.com`.
    2. Klik tombol **Login as Driver**.
    3. Masukkan nomor HP dan PIN terdaftar.

---

### G. Blok Konten Buka-Tutup (Expand / Collapse Accordion)

#### Sintaks Kode:
```markdown
??? note "Klik untuk membuka / menutup grup detail"
    Ini adalah isi grup konten yang dapat di-expand (dibuka) atau di-collapse (ditutup) oleh pengguna.

???+ tip "Grup terbuka secara bawaan (Expand by Default)"
    Grup ini secara bawaan terbuka saat halaman dimuat, namun tetap dapat ditutup oleh pengguna.
```

#### Hasil Tampilan (Preview):

??? note "Klik untuk membuka / menutup grup detail"
    Ini adalah isi grup konten yang dapat di-expand (dibuka) atau di-collapse (ditutup) oleh pengguna.

???+ tip "Grup terbuka secara bawaan (Expand by Default)"
    Grup ini secara bawaan terbuka saat halaman dimuat, namun tetap dapat ditutup oleh pengguna.

---

## 🚀 4. Alur Kerja Kontribusi (Git Workflow)

1. Buat artikel baru di folder terkait di bawah `/article/`.
2. Simpan gambar screenshot di folder yang sama dengan file `.md`.
3. Verifikasi penulisan dan sertakan preview komponen.
4. Commit dan push perubahan ke branch `main`:

```bash
git add .
git commit -m "docs: tambah artikel panduan operasional baru"
git push origin main
```
