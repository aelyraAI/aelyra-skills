# Perpustakaan Resep — Visual Director
Resep terbukti dari produksi nyata. Teknik baru yang diterima user ditambahkan
di sini pada sesi yang sama (SKILL §4).

## Rig cahaya kawah malam (Ijen 3D, diterima sebagai basis v3/v4)
- ambient #7d92b8 @0.85; hemisphere (#3d5a80 / #141a12) @0.95.
- directional bulan #a9c2ff @1.9 dari (30,42,18), castShadow, peta 1024,
  kamera bayangan ±42, bias −0.0004.
- Api: point light biru di zona api, intensitas RATUSAN (240±flicker →
  diturunkan 165 agar tidak meledak) dengan decay 1.7, distance ~36 —
  di three versi ini intensitas kecil tidak terlihat.
- Lampu praktikal karakter: point #FFE9A8 @60, distance 15.
- Fog #0A1424 dari 60 ke 215 memberi kedalaman tanpa menghitamkan subjek.
- Langit: points berbintang WAJIB memakai glow texture sebagai map —
  tanpa map, pointsMaterial menggambar KOTAK.

## Tekstur prosedural kanvas (pola umum)
- Fungsi makeTex(size, draw, repeatX, repeatY) → CanvasTexture RepeatWrapping.
- Batu dinding kawah: dasar #403B33 + 5.200 speckle + 6 pita strata gelap
  (dengan garis belerang tipis di bawahnya) + 90 alur erosi vertikal
  bergelombang + 10 noda pucat radial. Repeat 11×3 pada silinder.
- Apron ventilasi: dasar pucat #B7AE97 + speckle + 22 noda kuning radial +
  46 alur menurun searah lereng.
- Lantai: dasar #2E2720 + speckle terang + 16 noda belerang radial samar.

## Pola heightfield bersama (kunci adegan lereng)
- Satu fungsi apronPoint(u,v) → [x,y,z] dipakai BERSAMA oleh: geometri mesh
  (grid manual BufferGeometry + computeVertexNormals), pipa, api, jalur,
  penempatan batu & karakter. Karena satu sumber kebenaran, tidak ada benda
  yang melayang relatif terhadap permukaan.
- Geometri manual: material WAJIB DoubleSide (lihat defect-log 2026-11-10).
- Properti di lereng: kuaternion setFromUnitVectors(up, normalLereng),
  posisi ditenggelamkan 0,02–0,05.

## Karakter 2D billboard di dunia 3D (pola muat tekstur)
- useLoader + Suspense di dalam canvas TIDAK termuat saat render Remotion;
  delayRender di dalam komponen canvas memicu error React #310.
- Pola yang jalan: muat gambar di pohon DOM (komponen wrapper) dengan
  delayRender/continueRender, buat THREE.CanvasTexture, oper sebagai prop.
- Billboard: plane menghadap kamera (rotY = atan2 dari posisi kamera),
  alphaTest 0.04, tint menyatu dengan cahaya adegan, bob halus + Glow lampu.
- Pose berganti tekstur pada kata jangkar (mis. ekspresi kaget tepat di kata
  pemicu) + pop scale eksponensial meluruh.

## Gait prosedural (penambang)
- Fase φ = t·speed + offset. Kaki: grup di pinggul, rotX = sin(φ·π·2/… )
  berlawanan ±0.62 rad; lengan berlawanan ±0.5; bob badan |sin|·0.055;
  muatan punggung berayun dengan fase TERLAMBAT 0.7 rad.
- Pikulan (keranjang gantung di bambu bahu): tiang rotZ 90°, dua keranjang
  menggantung berayun rotX sin(φ−0.7±0.5)·0.13 — ikonik untuk pengangkut beban.
- Jalur gerak: curvePoint CatmullRom atas titik jalur; total siklus dibungkus
  (t mod total) agar mengulang mulus.

## Api biru mengalir (rantai di lereng)
- Inti aliran: TubeGeometry sepanjang garis lereng, material aditif biru
  opacity berdenyut — membaca sebagai aliran, bukan benda padat.
- Lidah api: kelompok kerucut aditif 3 lapis warna (biru tua luar, biru muda,
  inti nyaris putih) + 2 lidah samping miring tak simetris; rantai 12 lidah
  rapat menuruni lereng dengan gelombang nyala merambat (fase per indeks).
- Cakram cahaya tanah aditif di pangkal setiap lidah + sprite Glow.

## Finishing audio −14 LUFS (standar platform, diadopsi 2026-11-10 dari sistem Syaiful Amin)
- Ukur dulu: ffmpeg -af loudnorm=print_format=json → input_i/input_tp.
- Skrip baku: ~/workspace/tools/finishing.sh <in.mp4> <out.mp4> — loudnorm
  2-pass (I=-14, TP=-1.5, LRA=11, linear) + AAC 160k/48kHz + faststart.
- Verifikasi wajib: ukur ulang output (target −14 ±0,5 LUFS, TP ≤ −1 dBTP).
  Bukti pertama: Ijen v4 dari −16,64 → −14,05 LUFS, TP −1,73.

## Render & kirim kompat
- Render Remotion biasa, lalu:
  ffmpeg -i in.mp4 -c:v copy -c:a aac -b:a 160k -ar 48000 -movflags +faststart out-kompat.mp4
- Verifikasi: ekstrak 2 frame dari file kompat (ffmpeg -ss) sebelum mengirim.

## Standar detail benda (dari ngulikin.com — kartu tol NFC, 2026-11-10)

Satu benda hero dibangun sebagai benda SUNGGUHAN yang bisa dibuka:
1. Permukaan: desain cetak persis aslinya (teks kecil, ikon, nomor, garis halus) —
   digambar di tekstur kanvas, bukan warna polos.
2. Isi fungsional: chip + lilitan kawat antena mengikuti keliling kartu, jalur
   penghubung ke chip — digambar sebagai geometri/tekstur tersendiri.
3. Pengikat & material: kepala baut berslot di sudut mesin, lubang speaker,
   jahitan putus-putus di lapisan kartu, baret khas sebagai identitas benda.
4. Potongan/bukaan di tengah aksi: kartu "terkupas" terbuka seperti dompet,
   lapisan terpisah (exploded) tepat saat narasi menyebut isinya.
5. Fisika tak terlihat digambar: cincin medan magnet (torus aditif teal),
   panah aliran energi; angka kunci + sumbernya ("13,56 juta — ISO/IEC 14443")
   sebagai kartu info di layar.
Konsistensi: detail mikro yang sama (baut, lubang, bayangan lilitan di bawah
permukaan) muncul di SEMUA bidikan benda itu — jangan digambar ulang beda-beda.

## Lipsync billboard (Tiko, diterapkan 2026-11-10)

1. Varian mulut dirender dari RIG sumber (komposisi kartu berparameter `bicara`
   0,22/0,55/1,0 + bentuk 'o'), bukan digambar ulang — gaya ilustrasi konsisten.
2. Envelope amplitudo: decode mp3 narasi → RMS per frame (30fps) → normalisasi
   p95 → envelope follower (attack 1 frame, release ×0,72/frame) → JSON
   `mouth-<proyek>.json` {levels, o}.
3. Viseme dasar: dari words.json — vokal terakhir kata o/u → status O bila
   level ≥0,3. Status: 0 tutup (<0,07), 1 kecil (<0,30), 2 sedang (<0,58),
   3 lebar; buang kedip 1 frame + tahan minimum 2 frame.
4. Billboard menukar map tekstur per status; ekspresi khusus (kaget) menimpa
   lipsync selama jendelanya.
5. QA: still di frame level maks + frame O + frame diam, wajah di-crop besar.
   PERINGATAN: jalankan QA still dalam sistem TENANG — still yang dirender
   bersamaan render video berat bisa menangkap state tekstur yang belum settle
   (kejadian nyata 2026-11-10: Tiko hilang/mulut tertutup di still, padahal kode
   benar; still ulang setelah render latar mati langsung lulus).

## Roadmap peningkatan render (belum diterapkan — kandidat siklus berikutnya)
- ACESFilmicToneMapping + exposure terkalibrasi di ThreeCanvas.
- Bloom selektif (UnrealBloomPass via three/examples postprocessing) untuk
  api & lampu malam — uji dampaknya ke waktu render dulu di 1 adegan.
- Tekstur dari foto nyata (dipotong dari referensi riset) untuk permukaan hero.
