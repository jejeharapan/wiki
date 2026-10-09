---
title: Panduan Penulisan Dokumentasi Wiki
author: Tim Pengembang Sistem
last_updated: 2026-10-09 11:38
hide:
  - navigation
---

# Panduan Penulisan Dokumentasi Wiki (MkDocs)

Selamat datang di panduan resmi penulisan artikel dan dokumentasi sistem untuk **PT Jeje Harapan Transindo (Jeje Trans)**. Panduan ini mencakup arsitektur direktori terbaru, standar navigasi berkas `.pages`, format penamaan *kebab-case*, tata letak gambar, serta contoh sintaks kode beserta **Hasil Tampilan (Live Preview)** langsung yang dapat Anda lihat di halaman ini.

---

## 📁 1. Struktur Folder & Hirarki File

Seluruh berkas dokumentasi berformat Markdown (`.md`) disimpan di dalam direktori `/article` dengan arsitektur modular bertingkat berbasis sistem dan modul:

```
article/
├── .pages                             # Konfigurasi tab navigasi utama (TMS, JXFleet, JXPeople)
├── index.md                           # Halaman Beranda (Landing Page Wiki)
├── tutorial.md                        # Panduan penulisan dokumentasi (halaman ini)
│
├── tms/                               # Direktori Sistem TMS (Transport Management System)
│   ├── .pages                         # Pengaturan judul & urutan navigasi TMS
│   ├── index.md                       # Ringkasan sistem TMS
│   └── truck-utilization/             # Submodul Utilisasi Armada Truk
│       ├── .pages                     # Pengaturan judul & file aktif modul
│       ├── maintenance-work-order-create.md
│       └── maintenance-work-order-change-status-ongoing.md
│
├── jxfleet/                           # Direktori Sistem JXFleet
│   ├── .pages                         # Pengaturan judul & urutan navigasi JXFleet
│   ├── index.md                       # Ringkasan sistem JXFleet
│   ├── login/                         # Submodul Login & Autentikasi
│   │   ├── .pages
│   │   ├── index.md
│   │   ├── lupa-password-pin.md
│   │   └── attachment/                # Folder aset/screenshot khusus submodul login
│   │       └── login/
│   │           ├── 001.png
│   │           └── 002.png
│   └── driver-management/             # Submodul Divisi Driver Management
│       ├── .pages
│       ├── index.md
│       ├── driver-reset-pin.md
│       ├── driver-generate-token-login.md
│       ├── driver-deactivate-account.md
│       └── attachment/                # Folder aset/screenshot khusus driver management
│
└── jxpeople/                          # Direktori Sistem JXPeople (HR & Kepegawaian)
    ├── .pages                         # Pengaturan judul & navigasi JXPeople
    └── index.md                       # Ringkasan sistem JXPeople
```

### 📌 Aturan Penamaan & Standar Pengorganisasian:

1. **Format Huruf Kecil & Kebab-Case**:
   - Seluruh nama folder dan berkas `.md` wajib menggunakan huruf kecil dengan pemisah tanda hubung (*lowercase kebab-case*).
   - Contoh: `truck-utilization/`, `driver-management/`, `driver-reset-pin.md`, `maintenance-work-order-create.md`.
   - Hindari penggunaan huruf besar (*PascalCase/CamelCase*) atau spasi pada nama folder dan file.

2. **Pengelolaan Navigasi melalui Berkas `.pages`**:
   - Wiki menggunakan plugin **`awesome-pages`** sehingga struktur menu samping (*sidebar*) dan tab utama dikontrol melalui file `.pages` di tiap folder.
   - Atribut `title:` digunakan untuk memberi nama tampilan yang rapi (contoh: `title: Divisi Driver Management`).
   - Atribut `nav:` menentukan daftar dan urutan eksplisit artikel yang ditampilkan ke pembaca. File draft (seperti `draft.md`) cukup tidak dicantumkan di `nav:` agar tersembunyi dari menu navigasi.

3. **Subfolder Aset Gambar (`attachment/`)**:
   - Simpan seluruh berkas tangkapan layar (*screenshot*) di dalam subfolder `attachment/` lokal pada modul terkait.
   - Di dalam file `.md`, panggil gambar menggunakan path relatif (contoh: `![Langkah 1](attachment/login/001.png)`).

4. **Pemisah Section Konsisten (`---`)**:
   - Gunakan garis horizontal (`---`) untuk memisahkan setiap sub-bab serta akhiri setiap dokumen dengan garis penutup `---`.

---

## 📝 2. Metadata Artikel (YAML Frontmatter)

Setiap file `.md` wajib diawali dengan blok metadata YAML di baris paling atas untuk menampilkan badge informasi penulis dan tanggal pembaruan:

### Sintaks Kode:
```yaml
---
title: "Panduan Penulisan Dokumentasi Wiki"
author: Tim Pengembang Sistem
last_updated: 2026-10-09 11:38
---
```

### Hasil Tampilan (Preview):
*(Metadata di atas secara otomatis dirender sebagai badge informasi elegan di bagian paling atas setiap artikel)*

---

## 🎨 3. Format Penulisan & Preview Tampilan

---

### A. Judul & Sub-Judul (Headings)

!!! note "Pembatasan Daftar Isi (TOC)"
    Daftar Isi (Table of Contents / TOC) di bilah kanan secara otomatis dibatasi hingga tingkat `##` (Level 2 Heading). Sub-judul tingkat 3 (`###`) dan 4 (`####`) tetap dapat ditulis untuk menstrukturkan isi dokumen.

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

Gunakan sintaks tinggi/persentase (`style="height: 250px;"` atau `width="50%"`) dan class `.center` agar gambar berada di posisi tengah layar dengan tampilan proporsional dan konsisten.

!!! tip "Indensasi Gambar & Penomoran List Berurutan (sane_lists)"
    Sistem wiki menggunakan ekstensi **`sane_lists`** yang memastikan urutan angka pada daftar berurutan (`1.`, `2.`, `3.`, `4.`) **selalu mematuhi angka yang diinput di file `.md`** dan tidak pernah ter-reset kembali ke `1.` saat diselingi oleh teks atau screenshot.
    
    Agar tampilan tersusun rapi saat menyisipkan gambar di antara langkah, **sejajarkan posisi gambar 7 spasi** (di bawah kolom teks poin langkah):

    ```markdown
    === "Tab Title"

        1. Langkah pertama penjelasannya.

           ![Gambar Langkah 1](attachment/login/001.png){ style="height: 250px;" .center }

        2. Langkah kedua penjelasannya.

           ![Gambar Langkah 2](attachment/login/002.png){ style="height: 250px;" .center }
    ```

#### Sintaks Kode:
```markdown
![Halaman Login](jxfleet/login/attachment/login/001.png){ style="height: 250px;" .center }
```

#### Hasil Tampilan (Preview):
![Halaman Login](jxfleet/login/attachment/login/001.png){ style="height: 250px;" .center }

!!! info "Fitur Perbesar Gambar Otomatis (Lightbox Modal)"
    Seluruh gambar dokumentasi secara otomatis dapat diklik untuk menampilkan jendela perbesar gambar (*lightbox modal*) dengan efek latar belakang redup (*blur backdrop*). Modal dapat ditutup dengan mengklik tombol **✕**, mengklik di luar area gambar, atau menekan tombol **Escape**.

---

### C. Catatan & Peringatan (Admonitions / Callouts)

#### Sintaks Kode:
```markdown
!!! note "Judul Catatan"
    Ini adalah contoh catatan informasi umum operasional.

!!! tip "Judul Tips"
    Ini adalah tips efisiensi atau trik mempercepat proses kerja di lapangan.

!!! warning "Judul Peringatan"
    Ini adalah peringatan mengenai potensi kesalahan pengguna (*user error*).

!!! important "Judul Penting"
    Ini adalah prosedur kritis atau batasan otorisasi hak akses (*role-based access*).
```

#### Hasil Tampilan (Preview):

!!! note "Judul Catatan"
    Ini adalah contoh catatan informasi umum operasional.

!!! tip "Judul Tips"
    Ini adalah tips efisiensi atau trik mempercepat proses kerja di lapangan.

!!! warning "Judul Peringatan"
    Ini adalah peringatan mengenai potensi kesalahan pengguna (*user error*).

!!! important "Judul Penting"
    Ini adalah prosedur kritis atau batasan otorisasi hak akses (*role-based access*).

---

### D. Konten Mini Tab Antar Platform (Content Mini Tabs)

Gunakan sintaks `=== "Tab Title"` untuk membuat tab kecil interaktif dalam satu dokumen (contoh: memisahkan langkah untuk Komputer, Mobile App, dan Mobile Web).

#### Sintaks Kode:
```markdown
=== "💻 Komputer (Desktop Web)"
    1. Buka peramban di komputer Anda dan akses `web.jxfleet.com`.
    2. Masukkan email atau nomor HP terdaftar beserta kata sandi akun Anda.

=== "📱 Mobile App (Android / iOS)"
    1. Buka aplikasi **JXFleet Driver** di ponsel Anda.
    2. Masukkan nomor HP terdaftar (diawali `62`) dan 6-digit PIN akun Anda.

=== "🌐 Mobile Web"
    1. Buka peramban ponsel dan kunjungi `web.jxfleet.com/driver`.
    2. Masukkan nomor telepon dan PIN, atau pilih menu **Login Cara Lainnya** untuk menggunakan One-Time Token.
```

#### Hasil Tampilan (Preview):

=== "💻 Komputer (Desktop Web)"
    1. Buka peramban di komputer Anda dan akses `web.jxfleet.com`.
    2. Masukkan email atau nomor HP terdaftar beserta kata sandi akun Anda.

=== "📱 Mobile App (Android / iOS)"
    1. Buka aplikasi **JXFleet Driver** di ponsel Anda.
    2. Masukkan nomor HP terdaftar (diawali `62`) dan 6-digit PIN akun Anda.

=== "🌐 Mobile Web"
    1. Buka peramban ponsel dan kunjungi `web.jxfleet.com/driver`.
    2. Masukkan nomor telepon dan PIN, atau pilih menu **Login Cara Lainnya** untuk menggunakan One-Time Token.

---

### E. Blok Konten Buka-Tutup (Expand / Collapse Accordion)

#### Sintaks Kode:
```markdown
??? note "Klik untuk membuka / menutup rincian instruksi"
    Ini adalah rincian instruksi tambahan yang dapat dibuka atau ditutup pengguna.

???+ tip "Grup terbuka secara bawaan (Expand by Default)"
    Grup ini terbuka secara bawaan saat halaman dimuat, namun tetap dapat ditutup pengguna.
```

#### Hasil Tampilan (Preview):

??? note "Klik untuk membuka / menutup rincian instruksi"
    Ini adalah rincian instruksi tambahan yang dapat dibuka atau ditutup pengguna.

???+ tip "Grup terbuka secara bawaan (Expand by Default)"
    Grup ini terbuka secara bawaan saat halaman dimuat, namun tetap dapat ditutup pengguna.

---

### F. Penulisan Kode & Perintah Terminal

#### Sintaks Kode:
````markdown
```bash
# Mengecek status layanan kontainer
docker compose ps
```
````

#### Hasil Tampilan (Preview):

```bash
# Mengecek status layanan kontainer
docker compose ps
```

---

### G. Visualisasi Diagram & Alur Koordinasi (Native Markdown Table)

!!! warning "Rekomendasi Diagram Alur"
    Untuk alur kerja, urutan proses, dan sequence koordinasi, **disarankan menggunakan tabel Native Markdown** alih-alih diagram Mermaid.js. Tabel standar terjamin ter-render 100% cepat, responsif di seluruh layar ponsel/komputer, dan tidak membutuhkan parser JavaScript eksternal.

#### Sintaks Kode:
```markdown
| Tahap | Pihak & Platform | Tindakan & Penjelasan |
| :---: | :--- | :--- |
| **1** | **Driver Lapangan** ➔ **Driver Management** | Driver meminta bantuan masuk akibat kendala autentikasi. |
| **2** | **Driver Management** ➔ **Web Admin** | Petugas membuka menu akun driver dan memilih aksi yang diperlukan. |
| **3** | **Sistem JXFleet** | Sistem memverifikasi kredensial dan menerbitkan akses. |
```

#### Hasil Tampilan (Preview):

| Tahap | Pihak & Platform | Tindakan & Penjelasan |
| :---: | :--- | :--- |
| **1** | **Driver Lapangan** ➔ **Driver Management** | Driver meminta bantuan masuk akibat kendala autentikasi. |
| **2** | **Driver Management** ➔ **Web Admin** | Petugas membuka menu akun driver dan memilih aksi yang diperlukan. |
| **3** | **Sistem JXFleet** | Sistem memverifikasi kredensial dan menerbitkan akses. |

---

### H. Tabel Langkah & Screenshot Bersisian (2 Kolom)

Untuk membuat panduan alur yang sangat rapi dan ringkas, Anda dapat menyandingkan teks instruksi di kolom kiri dan gambar screenshot di kolom kanan:

#### Sintaks Kode:
```markdown
| Langkah & Instruksi | Tampilan Layar |
| :--- | :---: |
| **1.** Akses halaman utama sistem di browser komputer. | ![Langkah 1](jxfleet/login/attachment/login/001.png){ style="height: 250px;" } |
| **2.** Masukkan email atau nomor HP terdaftar beserta password. | ![Langkah 2](jxfleet/login/attachment/login/002.png){ style="height: 250px;" } |
```

#### Hasil Tampilan (Preview):

| Langkah & Instruksi | Tampilan Layar |
| :--- | :---: |
| **1.** Akses halaman utama sistem di browser komputer. | ![Langkah 1](jxfleet/login/attachment/login/001.png){ style="height: 250px;" } |
| **2.** Masukkan email atau nomor HP terdaftar beserta password. | ![Langkah 2](jxfleet/login/attachment/login/002.png){ style="height: 250px;" } |

---

## 🚀 4. Alur Kerja Kontribusi (Git Workflow)

1. Buat atau perbarui file `.md` di folder modul terkait di bawah `/article/` menggunakan format *lowercase kebab-case*.
2. Pastikan file terdaftar di dalam `nav:` pada berkas `.pages` modul terkait jika ingin dimunculkan di sidebar navigasi.
3. Simpan seluruh file gambar screenshot pendukung di dalam folder `attachment/` lokal.
4. Verifikasi penulisan, kelengkapan frontmatter YAML, dan penutup pemisah section `---`.
5. Lakukan staging, commit, dan push perubahan ke branch `main`:

```bash
git add .
git commit -m "docs: perbarui panduan modul dan struktur navigasi"
git push origin main
```

---