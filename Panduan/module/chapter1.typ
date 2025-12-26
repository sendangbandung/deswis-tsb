#import "modules.typ": chapter, numbered_eq, noindent, gap, semigap, questions, example

#chapter[Mengelola Konten Halaman Utama (`konfigurasi.js`)]
#set heading(numbering: "1.")
#counter(heading).update(1)

Hampir semua teks, judul, dan data pada halaman utama diatur dalam satu file pusat: `src/data/konfigurasi.js`. Dengan mengubah file ini, Anda dapat memperbarui sebagian besar konten website.

Berikut adalah penjelasan untuk setiap bagian di dalam file tersebut:

== `hero`;

Bagian ini mengontrol area paling atas (tampilan utama) di halaman depan.

  - *`title`*: Judul utama yang besar.
  - *`subtitle`*: Teks deskripsi di bawah judul utama.
  - *`video`*: Path ke file video latar belakang. Contoh: `"/hero0001-0922-final.mp4"`.


```javascript
const hero = {
    title: "Desa Wisata Taman Sendang Bandung",
    subtitle: "Temukan ketenangan dan keindahan alam asli...",
    video: "/hero0001-0922-final.mp4"
}
```

== `potensi`

Menampilkan berbagai potensi atau daya tarik yang ada di desa wisata.

  - *`title`*: Judul seksi, contoh: "Potensi Unggulan".
  - *`subtitle`*: Deskripsi singkat untuk seksi potensi.
  - *`items`*: Daftar semua potensi. Untuk menambah, mengedit, atau menghapus, Anda hanya perlu mengubah daftar ini.
      - *`title`*: Nama potensi (misal: "Mata Air Sendang").
      - *`description`*: Penjelasan singkat tentang potensi tersebut.
      - *`icon`*: Emoji yang mewakili potensi tersebut.


```javascript
const potensi = {
    title: "Potensi Unggulan",
    subtitle: "Jelajahi beragam pesona...",
    items: [
        { title: "Mata Air Sendang", description: "Saksikan keindahan alam...", icon: "💧" },
        { title: "Joglo", description: "Nikmati suasana tradisional...", icon: "🛖" },
        // Tambahkan atau hapus item di sini
    ]
}
```

== `bot`

Mengatur teks awal untuk fitur Chat Bot.

  - *`title`*: Judul di bagian atas jendela chat.
  - *`subtitle`*: Sub-judul di jendela chat.
  - *`question`*: Pesan sambutan otomatis dari bot.


```javascript
const bot = {
    title: "Tanya Bot Sendang",
    subtitle: "Dapatkan jawaban cepat...",
    question: "Halo! Ada yang bisa saya bantu?"
}
```

== `history`

Mengontrol seksi sejarah atau kisah desa.

  - *`title`*: Judul seksi, contoh: "Kisah Desa Kami".
  - *`description`*: Deskripsi sejarah dalam bentuk paragraf. Setiap teks di dalam `[]` akan menjadi satu paragraf.
  - *`items`*: Sorotan atau statistik singkat (misal: jumlah spot foto).


```javascript
const history = {
    title: "Kisah Desa Kami",
    description: [
        "Paragraf pertama tentang sejarah desa.",
        "Paragraf kedua tentang pengembangan desa."
    ],
    items: [
        { kuantity: "10+", kind: "Spot Foto" },
        // ... item lainnya
    ]
}
```

== `paket`

Mengelola daftar paket wisata yang ditawarkan.

  - *`title`*: Judul seksi, contoh: "Paket Wisata".
  - *`subtitle`*: Deskripsi singkat untuk seksi paket.
  - *`packets`*: Daftar semua paket.
      - *`name`*: Nama paket (misal: "Paket Meeting").
      - *`img`*: Path ke gambar paket. Pastikan gambar sudah ada di folder `public/packets/`.
      - *`description`*: Penjelasan singkat tentang paket.


```javascript
const paket = {
    title: "Paket Wisata",
    subtitle: "Pilih paket yang paling sesuai...",
    packets: [
        {
            name: "Paket Meeting",
            img: "/packets/meeting.webp",
            description: "Fasilitas lengkap untuk rapat kerja Anda..."
        },
        // Tambah, edit, atau hapus paket di sini
    ]
}
```

== `kontak`

Mengatur semua informasi kontak dan lokasi peta.

  - *`title`*: Judul seksi, contoh: "Kunjungi Kami".
  - *`subtitle`*: Deskripsi singkat untuk seksi kontak.
  - *`maps`*: Link *embed* dari OpenStreetMap.
  - *`address`*: Alamat lengkap lokasi.
  - *`contact`*: Daftar narahubung. Pastikan untuk mengubah `phone` (nomor yang ditampilkan) dan `link` (link ke WhatsApp).
  - *`instagram`*: Username dan link profil Instagram.
  - *`email`*: Alamat email kontak.


```javascript
const kontak = {
    // ...
    contact: [
        {
            name: "Nuna",
            phone: "+62 811-8004-488",
            link: "https://wa.me/628118004488",
        },
        // ...
    ],
    //...
}
```

== `testimoni`

Menampilkan ulasan atau testimoni dari pengunjung.

  - *`title`*: Judul seksi, contoh: "Apa Kata Mereka".
  - *`subtitle`*: Deskripsi singkat untuk seksi testimoni.
  - *`items`*: Daftar semua testimoni.
      - *`name`*: Nama pemberi testimoni.
      - *`comment`*: Isi komentar atau ulasan.
      - *`rating`*: Peringkat bintang (angka dari 1 sampai 5).

-----

