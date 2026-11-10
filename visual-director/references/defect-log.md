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
