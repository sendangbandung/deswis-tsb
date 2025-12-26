#import "modules.typ": chapter, numbered_eq, noindent, gap, semigap, questions, example

#chapter[Mengelola Galeri Foto]
#set heading(numbering: "1.")
#counter(heading).update(3)

Mengelola galeri foto sangatlah mudah. Anda hanya perlu fokus pada folder `src/data/galeri/`.

  - *Menambah Foto*: Untuk menambahkan foto baru ke galeri, cukup *letakkan file gambar* (format `.jpg`, `.jpeg`, `.png`, atau `.webp`) ke dalam folder `src/data/galeri/`. Foto akan otomatis muncul di website.
  - *Menghapus Foto*: Untuk menghapus sebuah foto dari galeri, cukup *hapus file gambarnya* dari folder `src/data/galeri/`.
  - *Mengganti Foto*: Hapus foto lama, lalu tambahkan foto baru dengan cara di atas.

*Tips Penting*: Beri nama file gambar yang deskriptif (contoh: `kegiatan-outbound-anak.jpg` atau `pemandangan-mata-air-sore-hari.webp`). Nama file ini akan digunakan secara otomatis untuk teks alternatif pada gambar, yang baik untuk SEO dan aksesibilitas.
