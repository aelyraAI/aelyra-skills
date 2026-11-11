---
name: visual-director
description: Mesin kualitas untuk semua video gambar-kode (Remotion/Three.js/2D): protokol riset-dulu dari referensi nyata, anggaran kepadatan adegan, lingkaran QA frame melawan checklist cacat, log cacat hidup yang bertambah dari setiap penolakan user, dan perpustakaan resep teknik yang berkembang. Gunakan skill ini SEBELUM dan SELAMA produksi video apa pun untuk user — video fakta Tiko, video 3D, explainer, bumper — dan setiap kali user menilai hasil ("jelek", "kurang detail", "naikkan lagi", "belum selevel"), atau meminta kualitas selevel kreator referensi. Skill ini duduk DI ATAS skill doktrin channel (mis. tiko-video-production): doktrin mengatur ISI, skill ini mengatur MUTU dan PROSES mencapainya.
license: MIT
metadata:
  author: Aelyra (untuk user)
  version: "1.4.0"
  updated: "2026-11-11"
---

# Visual Director — Mesin Kualitas Video Kode

Tujuan skill ini: menutup kesenjangan mutu dengan kreator referensi (yang umumnya
bermodal model lebih kuat + iterasi panjang) lewat PROSES yang bisa diulang:
riset nyata dulu, bangun dengan anggaran kepadatan, nilai frame dengan checklist,
perbaiki cacat spesifik, dan ubah setiap kegagalan menjadi aturan permanen.

## 0. Urutan wajib setiap produksi
1. Baca `references/defect-log.md` — aturan dari kegagalan masa lalu berlaku penuh.
2. Jalankan Protokol Riset (§1) bila subjeknya dunia/tempat/benda nyata.
3. Bangun mengikuti Anggaran Kepadatan (§2) + resep di `references/recipes.md`.
4. Jalankan Lingkaran QA (§3) — TIDAK ADA klip ke user tanpa lulus still QA.
5. Setelah putusan user: perbarui log cacat / resep (§4, §8) di sesi yang sama.

## 1. Protokol Riset-Dulu (lahir dari penolakan Ijen v2, 2026-11-10)
- Kumpulkan ≥4 referensi NYATA subjeknya (foto/video asli, bukan karya orang lain
  yang bergaya sama). Untuk tempat: foto udara + foto darat siang + foto malam bila
  adegannya malam + foto aktivitas manusia di sana.
- Ekstrak dan tulis DOSSIER (file `riset-*.md` di folder kerja):
  palet warna (perkiraan hex), proporsi elemen dominan (persen frame/volume),
  inventaris elemen wajib ada, logika cahaya (sumber + arah + warna), dan logika
  struktur (jalur menempel permukaan, benda mengikuti fungsi aslinya).
- Dossier ditunjukkan ke user; pembangunan mulai setelah user menyetujui.
- DILARANG membangun lingkungan nyata dari bayangan/ingatan model.

## 2. Anggaran Kepadatan (minimum per adegan hero)
- Tiga lapisan selalu terisi: latar depan ≥3 properti, tengah ≥6, belakang ≥4
  (siluet/tekstur dinding termasuk). Tidak ada wilayah frame >25% yang kosong polos.
- SEMUA permukaan terlihat wajib bertekstur (prosedural kanvas ≥512px, ≥3 lapis:
  speckle dasar + garis struktur + noda/kerak). Primitif polos tanpa tekstur
  DILARANG tampil di frame final.
- Cahaya: ≥3 sumber bermotif jelas (key + fill/ambient + aksen praktikal seperti
  lampu karakter/api). Setiap sumber bisa dijelaskan "ini cahaya apa".
- Properti bercerita ≥3 per adegan (benda yang menjelaskan aktivitas tempat itu:
  alat kerja, papan tanda, wadah, kendaraan) — bukan dekorasi acak.
- BENDA HERO sedetail Ngulikin (standar user 2026-11-10, "Kalo Benda sedetail ini"): benda yang jadi subjek/hook wajib dibangun LIMA lapis — (1) DESAIN PERMUKAAN (cetak/grafis/label/plat nomor persis benda aslinya), (2) ISI FUNGSIONAL (chip, lilitan, mekanisme — bagian yang membuat benda itu bekerja), (3) PENGIKAT & MATERIAL (baut, jahitan, engsel, goresan/baret khas), (4) momen POTONGAN/BUKAAN yang memperlihatkan isi itu di tengah aksi, (5) lapisan FISIKA TAK TERLIHAT digambar (medan, aliran, panas) + satu angka bersumber di layar. Benda polos berbentuk mirip saja = belum selesai. Resep: references/recipes.md § Standar detail benda.
- Gerak ambient: ≥2 gerak sekunder selalu hidup (asap, partikel, riak, kibaran,
  flicker) + gerak kamera; kamera diam >2 detik hanya untuk beat hening yang
  memang direncanakan di peta.

## 3. Lingkaran QA Frame (inti skill ini)
Untuk SETIAP adegan yang akan ditunjukkan ke user:
1. Render still di ≥4 titik waktu (awal, tengah, akhir, + momen terdekat kamera).
2. Nilai dengan `references/qa-checklist.md` — semua item WAJIB harus lulus.
3. Bandingkan still berdampingan dengan dossier referensi: catat 3 perbedaan
   terbesar secara eksplisit sebelum memperbaiki.
4. Perbaiki cacat, render still ulang. Adegan hero: minimum 2 siklus QA.
5. Baru render klip. Setelah render, ekstrak ≥2 frame DARI FILE VIDEO final
   (bukan dari still) untuk verifikasi terakhir.
6. Kirim versi kompat (aturan di resep) + daftar jujur kekurangan yang tersisa.
Kegagalan klasik yang dicegah lingkaran ini: geometri tak terlihat dari sudut
tertentu, jalur melintasi danau, tabung melayang, prop melayang di lereng —
semuanya hanya terlihat di still multi-sudut, tidak di kode.

## 4. Log Cacat Hidup
- Setiap penolakan/koreksi user → entri baru di `references/defect-log.md` di
  sesi yang sama: tanggal, proyek, gejala (kata user), akar penyebab, ATURAN
  permanen yang lahir. Naikkan versi patch skill + satu baris changelog.
- Setiap teknik baru yang DITERIMA user → resep baru di `references/recipes.md`.
- Log dibaca di awal setiap produksi (§0 langkah 1). Aturan di log tidak boleh
  dilanggar tanpa persetujuan eksplisit user.

## 5. Gerak (dilipat dari motionmaxxing & motion-doctrine)
- Setiap gerak masuk punya anticipation kecil + overshoot + settle; easing
  disebut namanya di kode (bukan linear kecuali gerak mekanis konstan).
- Gerak sekunder mengikuti gerak utama dengan jeda fase (keranjang pikulan,
  kain, antena, asap) — tidak pernah sinkron kaku.
- Karakter berjalan: gait prosedural lengkap (ayun kaki dari pinggul, lengan
  berlawanan, bob vertikal, muatan berayun telat fase). Spesifikasi per beat
  mengikuti peta koreografi channel.
- LIPSYNC karakter narator WAJIB (perintah user 2026-11-10): varian mulut dirender dari rig sumber karakter (bukan gambar ulang), digerakkan envelope amplitudo audio narasi per frame (attack cepat, release lambat, tahan min. 2 frame) + viseme dasar (vokal akhir o/u → mulut O). Resep: references/recipes.md § Lipsync billboard.
- Kamera: jalur kurva halus (CatmullRom), selalu ada paralaks antar lapisan,
  punch-in pada kata jangkar narasi.

## 6. Eskalasi Jujur
- Renderer kita (Three.js waktu-nyata di Remotion) punya langit-langit di bawah
  render offline Blender. Bila satu shot menuntut lebih: katakan terus terang,
  tawarkan rute nyata (upgrade pasca-proses: ACES + bloom; tekstur dari foto;
  atau terima stilisai dengan sadar) — JANGAN kirim hasil sketsa dengan janji
  "nanti diperbaiki".
- Diagnosis kegagalan wajib dibuktikan dengan tes minimal sebelum dilaporkan
  (pelajaran diagnosis egress VM yang salah, 2026-11-10).

## 7. Hubungan dengan skill lain
- Doktrin isi channel: `tiko-video-production` (gerbang peta, voice-first,
  safe zone, mesin komentar) — tetap berlaku penuh, skill ini tidak menimpanya.
- Motion web/HTML (bumper, kinetic typography): `bang-motion` + GSAP.
- Skill ini mengatur mutu untuk SEMUA jalur itu.

## 8. Cara skill ini berkembang
- Pemicu update: putusan user atas hasil (aturan §4), resep baru yang diterima,
  atau kegagalan proses yang teridentifikasi.
- Setiap update: edit file terkait + naikkan versi (patch untuk aturan/resep,
  minor untuk bagian baru) + baris changelog bertanggal.
- Skill dianggap basi bila log cacat tidak bertambah setelah ada penolakan.

## Changelog
- 1.4.0 (2026-11-11) — Resep baru "Gait solver & gerak sekunder" di recipes.md, ditambang dari repo line-art-animation (JDhruv14, MIT; terpasang sebagai skill referensi gerak): gait 4 aturan (kaki tumpu diam di dunia, ayunan minimum-jerk, tumit mengelupas, pinggul dari jangkauan kaki — tanpa bob sinus), preset geser untuk penambang pikulan, spring/pendulum untuk gerak sekunder, peringatan integrasi deterministik di Remotion.
- 1.3.0 (2026-11-10) — Lipsync masuk §5 + resep Lipsync billboard (varian mulut dari rig + envelope amplitudo + viseme o/u); catatan QA: still di bawah beban CPU berat bisa menangkap state tekstur belum settle — verifikasi still tekstur WAJIB di sistem tenang (render latar dimatikan dulu).
- 1.2.0 (2026-11-10) — Standar detail benda lima lapis dari riset ngulikin.com (kartu tol NFC) masuk §2 + resep; riset pendamping Kacaurus untuk model channel serial (satu set rumah dipakai ulang, properti pembawa plot, Bagian + Cerita Lengkap).
- 1.1.0 (2026-11-10) — Standar finishing audio: loudness −14 LUFS terukur
  (loudnorm 2-pass, skrip finishing.sh) masuk checklist [WAJIB] + resep;
  diadopsi dari riset sistem Syaiful Amin bersama file master proyek Tiko.
- 1.0.1 (2026-11-10) — Penolakan Ijen v4 ("semuanya aneh", frame pembuka):
  aturan frame-0-sebagai-poster, danau tak beraturan + tekstur belang,
  taper tepi apron; 1 entri log cacat baru.
- 1.0.0 (2026-11-10) — Dibuat atas permintaan user ("buat skillnya dan buat
  skill itu berkembang"). Diisi dari seluruh pelajaran produksi 8–10 Nov 2026:
  protokol riset Ijen, anggaran kepadatan, lingkaran QA, log cacat berisi 10
  kegagalan nyata, resep rig kawah malam + pola heightfield + billboard.
