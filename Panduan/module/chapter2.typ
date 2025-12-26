#import "modules.typ": chapter, numbered_eq, noindent, gap, semigap, questions, example

#chapter[Mengelola Artikel & Berita (Markdown)]
#set heading(numbering: "1.")
#counter(heading).update(2)

Semua artikel dan berita dikelola sebagai file terpisah di dalam folder `src/data/articles/`. Setiap satu file dengan format `.md` (Markdown) adalah satu artikel.

== Struktur File Artikel

Setiap file `.md` terdiri dari dua bagian:

1.  *Frontmatter*: Informasi meta tentang artikel (judul, tanggal, penulis) yang berada di antara `---`.
2.  *Konten*: Isi artikel yang ditulis di bawah *frontmatter* menggunakan format Markdown.

== Cara Mengelola Artikel

  - *Menambah Artikel Baru*: Buat sebuah file baru dengan ekstensi `.md` di dalam folder `src/data/articles/`. Contoh: `artikel-baru-seru.md`.
  - *Mengedit Artikel*: Buka file `.md` yang sudah ada dan ubah isinya.
  - *Menghapus Artikel*: Hapus file `.md` yang bersangkutan dari folder.;

== Contoh File Artikel (`kegiatan-agustus.md`)

```markdown
---
title: "Kegiatan Seru di Bulan Agustus"
description: "Rangkuman berbagai kegiatan menarik yang telah kami selenggarakan selama bulan Agustus."
thumbnail: "/content/kegiatan-agustus.jpg"
date: "2025-08-30"
author: "Admin Desa"
draft: false
---

Ini adalah paragraf pertama dari konten artikel Anda.

Anda bisa menulis teks seperti biasa di sini. Gunakan format Markdown untuk membuat heading, daftar, atau menebalkan teks.
```

*Penjelasan Frontmatter:*

  - *`title`*: Judul artikel yang akan tampil di halaman.
  - *`description`*: Ringkasan singkat artikel (untuk pratinjau dan SEO).
  - *`thumbnail`*: Path gambar utama artikel. Gambar harus sudah ada di folder `public/content/`.
  - *`date`*: Tanggal publikasi dengan format *TAHUN-BULAN-TANGGAL*.
  - *`author`*: Nama penulis artikel.
  - *`draft`*: Jika diatur ke `true`, artikel *tidak akan ditampilkan* di website (berguna untuk menyimpan draf). Jika `false`, artikel akan tampil.

-----

