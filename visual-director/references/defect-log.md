# Log Cacat Hidup — Visual Director
Baca di awal setiap produksi. Setiap entri = satu aturan permanen.
Format entri baru: tanggal · proyek · gejala (kata user bila ada) · akar penyebab · ATURAN.

## 2026-11-09 · Rice cooker (contoh fakta 2D)
- Gejala: user menolak — "visual jelek dan kurang detail, terutama magic com".
- Akar: benda hero digambar sebagai siluet sederhana tanpa bagian-bagian fungsionalnya.
- ATURAN: benda hero yang disebut narasi wajib dimodelkan bagian fungsionalnya
  (tutup, panel, tombol, kabel) — penonton membandingkan dengan benda aslinya.

## 2026-11-09 · Cordyceps 2D
- Gejala: ditolak — "masih jelek kurang hidup".
- Akar: adegan statis; tidak ada partikel, cahaya berubah, atau gerak ambient.
- ATURAN: setiap adegan wajib ≥2 gerak ambient hidup (lihat SKILL §2).

## 2026-11-09 · Cordyceps 3D (Three.js primitif)
- Gejala: ditolak — "jelek banget, jauh dibanding Facebook orang".
- Akar: primitif polos tanpa tekstur, kelompok jarang, cahaya datar.
- ATURAN: primitif polos dilarang di frame final; semua permukaan bertekstur,
  objek berkelompok rapat, cahaya ≥3 sumber bermotif.

## 2026-11-10 · Ijen 2D (93 dtk, 9 adegan)
- Gejala: ditolak — "scene nya semuanya jelek banget ga ada detailnya".
- Akar: permukaan flat, properti sedikit, kedalaman hanya 1–2 lapis.
- ATURAN: anggaran kepadatan SKILL §2 berlaku untuk 2D dan 3D.

## 2026-11-10 · Ijen 3D v1
- Gejala: cacat teramati sendiri — jalur penambang memotong permukaan danau.
- Akar: jalur digambar tanpa memeriksa geografi adegan.
- ATURAN: sebelum render, periksa semua jalur/penempatan terhadap geografi
  (air, lereng, rintangan) di still multi-sudut.

## 2026-11-10 · Ijen 3D v2
- Gejala: ditolak — "zigzag apaan ga logis banget; gambar lingkungannya jelek
  banget; seharusnya riset dulu lingkungan aslinya kaya gimana".
- Akar: lingkungan dibangun dari bayangan model, bukan tempat aslinya; jalur
  dibuat sebagai tabung melayang menempel dinding.
- ATURAN: Protokol Riset-Dulu (SKILL §1) wajib untuk subjek nyata; jalur dan
  struktur mengikuti logika dunia nyata (menempel permukaan, mengikuti fungsi).

## 2026-11-10 · Ijen 3D v3 (bangun ulang)
- Gejala: lereng apron TIDAK TERLIHAT sama sekali di render — pipa & batu
  melayang di depan dinding.
- Akar: geometri BufferGeometry manual dengan winding satu sisi + material
  FrontSide → ter-cull dari sudut kamera.
- ATURAN: geometri manual wajib material DoubleSide (atau verifikasi winding),
  dan QA still dari ≥3 sudut sebelum menyimpulkan adegan benar.

## 2026-11-10 · Ijen 3D v3→v4
- Gejala: lempeng kerak & tabung terlihat melayang di lereng curam.
- Akar: properti datar diletakkan horizontal di permukaan miring.
- ATURAN: properti di lereng wajib sejajar normal permukaan (kuaternion dari
  vektor normal) + ditenggelamkan 0,02–0,05; tidak ada benda melayang.

## 2026-11-10 · Proses (ElevenLabs)
- Gejala: diagnosis "egress VM bermasalah" ternyata SALAH — akar sebenarnya
  request tanpa header User-Agent + token.
- ATURAN: diagnosis dilaporkan hanya setelah tes minimal membuktikan akar
  penyebab; koreksi diagnosis yang salah disampaikan terbuka ke user.

## Umum · Pengiriman video
- Gejala: MP4 mentah Remotion tampil bisu di pemutar chat user.
- ATURAN: selalu kirim versi kompat (re-encode AAC 160k/48kHz + faststart,
  video copy) — lihat recipes.md.

## 2026-11-10 · Ijen 3D v4 (frame pembuka)
- Gejala: ditolak — "Lingkungan aneh. Sungai aneh. Semuanya aneh." Screenshot
  user menunjukkan frame 0:00: danau terbaca sebagai lempeng toska datar
  (user menyebutnya sungai), kompleks apron kecil jauh, Tiko terpotong di
  pojok, latar depan gelap kosong.
- Akar: (1) QA still tidak pernah menilai FRAME 0 sebagai poster hook —
  komposisi pembuka tidak dirancang, hanya posisi awal jalur kamera;
  (2) danau = lingkaran sempurna + warna tunggal + cincin tepi keras →
  membaca sebagai benda buatan, bukan danau kawah;
  (3) tepi apron berakhir mendadak → celah segitiga gelap di kedua sudut
  bawah apron; (4) karakter di luar sumbu pandang awal.
- ATURAN: frame 0 dinilai sebagai POSTER (komposisi hero: karakter di
  sepertiga foreground dalam sumbu pandang, subjek dunia di belakangnya);
  bentuk danau/pantai wajib tak beraturan (modulasi radius) + tekstur
  warna belang; tepi struktur lereng wajib MENYATU ke tanah (taper di
  fungsi ketinggian bersama), bukan berakhir sebagai dinding; QA still
  selalu menyertakan frame 0 dan frame 30.

## 2026-11-11 · Ijen PENUH 9 adegan (standar v5 + lipsync)
- Gejala: ditolak — "waduh masih jauh banget levelnya". Kepadatan, geografi,
  lipsync, dan finishing semua lolos; yang ditolak LEVEL RENDER-nya.
- Akar: (1) permukaan masih flat-shaded warna tunggal — batu = ikosahedron
  polos, danau = hamparan datar; (2) penambang masih primitif kapsul/blok;
  (3) TIDAK ADA post-processing sama sekali — tanpa ACES tone mapping dan
  bloom, api biru terbaca sebagai kristal menyala, bukan api, dan cahaya
  tidak "mahal"; (4) Tiko billboard 2D datar di dunia 3D makin kontras
  murahnya di samping model referensi. Roadmap ACES+bloom ditunda terus
  sejak v5 — itu kesalahan prioritas: kepadatan dikejar, render tidak.
- ATURAN: kepadatan TIDAK cukup. Standar render (ACES + bloom, material
  bertekstur berlapis dengan variasi roughness, model karakter beronderdil,
  cahaya sinematik) wajib DIBUKTIKAN di satu adegan hero dan dibandingkan
  frame-to-frame melawan frame referensi (How Come/Kacaurus) SEBELUM
  produksi penuh. Item roadmap yang menyangkut level render tidak boleh
  ditunda melewati satu siklus produksi.

## 2026-11-11 · Ijen penuh — tindak lanjut penolakan (aksi tidak diperagakan)
- Gejala: user menegaskan — "tidak menampilkan orang menambang dll".
  Narasi S6 bercerita penambang mengungkit belerang dengan linggis di
  mulut pipa, tapi yang tampil di layar hanya demo bongkahan tumbuh;
  penambang WorkerBent hanya figuran kecil yang tidak terbaca aksinya
  dari jarak shot yang dipakai.
- Akar: peta memetakan kata narasi ke OBJEK demo, bukan ke AKSI manusia;
  tidak ada satu pun medium/close shot orang bekerja di seluruh video.
- ATURAN: setiap klaim aksi di naskah ("menambang", "memikul", "menimbang")
  wajib dipetakan ke shot AKSI yang terbaca — karakter memeragakan proses
  dalam medium/close shot (mengungkit → bongkahan pecah → keranjang diisi
  → pikul berangkat), bukan sekadar hadir sebagai figuran latar. Saat
  menulis peta, tandai per segmen: AKSI SIAPA, terlihat dari jarak apa.
