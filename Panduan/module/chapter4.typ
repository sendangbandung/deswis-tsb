
#import "modules.typ": chapter, numbered_eq, noindent, gap, semigap, questions, example

#chapter[Panduan  Markdown]
#set heading(numbering: "1.")
#counter(heading).update(3)

Markdown adalah bahasa markup ringan yang memungkinkan Anda untuk menulis teks terformat menggunakan editor teks biasa. Tujuannya adalah agar mudah dibaca dan ditulis. Dokumen Markdown kemudian dapat diubah menjadi HTML atau format lainnya.

---

== Judul (_Headings_)
Gunakan tanda pagar (`#`) untuk membuat judul. Jumlah tanda pagar menentukan level judul.

```markdown
# Judul Level 1
## Judul Level 2
### Judul Level 3
```

== Penekanan Teks (_Emphasis_)
Anda dapat membuat teks menjadi miring, tebal, atau dicoret.

#table(
  columns: (auto, auto, auto),
  inset: 8pt,
  align: (left, left, left),
  stroke: 0.4pt,
  [*Gaya*], [*Sintaks Markdown*], [*Contoh Hasil*],
  [Miring], [`*Teks miring*` atau `_Teks miring_`], [_Teks miring_],
  [Tebal], [`**Teks tebal**` atau `__Teks tebal__`], [*Teks tebal*],
  [Coret], [`~~Teks dicoret~~`], [#strike[Teks dicoret]],
)

== Daftar (_Lists_)

=== Daftar Tidak Berurutan
Gunakan tanda hubung (`-`), bintang (`*`), atau tambah (`+`).

```markdown
- Item pertama
- Item kedua
  * Sub-item A
- Item ketiga
```

=== Daftar Berurutan
Gunakan angka diikuti dengan titik.

```markdown
1. Buka kemasan
2. Masak air hingga mendidih
3. Masukkan mi
```

== Tautan (_Links_)
Gunakan format `[Teks tautan](URL)`.

```markdown
Kunjungi [Google](https://www.google.com).
```

== Gambar (_Images_)
Sintaksnya mirip dengan tautan, tetapi diawali dengan tanda seru (`!`).

```markdown
![Deskripsi gambar](path/to/image.png)
```
*Teks alternatif akan muncul jika gambar gagal dimuat.*

== Kutipan (_Blockquotes_)
Gunakan tanda lebih besar dari (`>`) di awal baris.

```markdown
> "Satu-satunya cara untuk melakukan pekerjaan hebat adalah dengan mencintai apa yang Anda lakukan."
>
> -- Steve Jobs
```
#set quote(block: true)
```
  Satu-satunya cara untuk melakukan pekerjaan hebat adalah dengan mencintai apa yang Anda lakukan.

  -- Steve Jobs
```

== Kode (_Code_)

=== Kode Sebaris (_Inline Code_)
Bungkus kode dengan satu `backtick` (`` \` ``). Contoh: Gunakan fungsi `printf()` untuk mencetak output.

=== Blok Kode
Bungkus blok kode dengan tiga `backtick` (\`\`\`). Anda bisa menambahkan nama bahasa untuk pewarnaan sintaks.

````markdown
```javascript
function sapa(nama) {
  console.log("Halo, " + nama + "!");
}
```
````

== Garis Horizontal
Buat garis pemisah dengan tiga atau lebih tanda hubung (`---`) atau bintang (`***`).
#line(length: 100%)

== Tabel
Gunakan pipa (`|`) untuk memisahkan kolom dan tanda hubung (`-`) untuk membuat baris header. Gunakan titik dua (`:`) untuk mengatur perataan kolom.

```markdown
| Rata Kiri | Tengah | Rata Kanan |
| :-------- | :------: | ---------: |
| Kolom 1   | Teks     |   Rp10.000 |
| Kolom 2   | Tengah   |     Rp2.500 |
```

== Daftar Centang (_Task Lists_)
Beberapa platform Markdown mendukung daftar tugas.

```markdown
- [x] Selesaikan Bab 1
- [ ] Mulai Bab 2
```
