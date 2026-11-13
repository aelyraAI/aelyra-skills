---
name: voxel-whatif-status-board
description: Voxel what-if storytelling with a floating status board — teknik video pendek vertikal ala Minecraft/Roblox di mana sebuah papan status melayang berkode warna (angka/level/HP) menjadi alat cerita utama: satu kalimat narasi = satu bukti visual, repertoar kamera kecil yang disiplin, montase eskalasi rapat, dan twist yang ditanam sejak premis. Dipakai saat merancang, memetakan, atau menilai video what-if voxel/blok (PixelKai Universe dan sejenisnya), dan saat membedah video referensi bergaya sama.
license: MIT
metadata:
  author: Aelyra (untuk user)
  version: "1.0.0"
  updated: "2026-11-14"
---

# Voxel What-If Status-Board — Teknik Papan Status Melayang

Doktrin ini ditambang dari bedah terukur atas video referensi
"IQ 400 / Brayden" (46,0 dtk, 1080x1920, 30fps, 192 kata) dan dari bedah
pembanding atas video bedrock produksi sendiri (52,8 dtk, 125 kata) —
keduanya tersimpan penuh di `references/`. Skill ini mengatur TEKNIK
formatnya; mutu render umum tetap diatur `visual-director`, dan gerbang
peta channel tetap diatur doktrin channel masing-masing. Yang ditiru dari
referensi adalah tekniknya — cerita, karakter, dan dialognya tidak
disalin.

## 0. Kapan skill ini dipakai

- Merancang video what-if voxel/blok baru (Minecraft, Roblox, gaya blok
  lain) yang premisnya bisa diringkas jadi satu status yang berubah:
  IQ, HP, level, ping, uang, hari ke-, jumlah nyawa.
- Menilai video sendiri yang terasa "kurang selevel" dibanding referensi
  bergaya sama — pakai tabel ukur §8 sebagai diagnosis pertama.
- Membuat peta koreografi untuk format ini (format peta §7).

## 1. Sistem papan status (jantung format)

- Satu papan melayang di atas kepala (atau HUD setara) menampilkan status
  utama cerita. Papan adalah ALAT CERITA, bukan dekorasi: setiap perubahan
  cerita besar harus terlihat sebagai perubahan papan.
- **Berkode warna, konsisten sepanjang video.** Pola referensi: warna
  netral = normal, warna hidup = tinggi, emas + glow = legendaris/puncak,
  abu-abu kusam = jatuh/rendah. Penonton membaca status dari warna sebelum
  dari angkanya.
- Papan mengikuti kepala dengan **lag 3-5 frame + bob kecil** — tidak
  menempel kaku, tidak tertinggal jauh.
- Setiap perubahan angka/warna = **pop scale 1,25x → settle 1,0x dalam
  ±6 frame + satu SFX khas** (chime untuk naik kelas, drop pelan untuk
  jatuh). Perubahan papan adalah tanda baca visual; jangan pernah mengganti
  angka secara diam-diam.
- Papan dan caption tidak boleh bertabrakan: papan selalu di wilayah atas
  kepala, karaoke di tengah-bawah. Dua teks penting tidak pernah tampil di
  tempat yang sama.

## 2. Aturan satu kalimat = satu bukti visual

Uji naskah paling penting di format ini. Setiap kalimat narasi wajib bisa
ditunjuk bendanya di frame:

- "Lulus tes" → kertas tes dengan nilainya tertulis besar di permukaan
  benda.
- "Memperbaiki mesin" → mesin dengan label kerusakannya terlihat sebelum
  diperbaiki.
- "10.000 followers" → layar HP dengan angka yang benar-benar beranimasi
  naik sampai angka yang disebut.
- Klaim tanpa bukti visual = cacat naskah. Contoh nyata dari produksi
  sendiri: "No TNT can blow it up" tanpa ledakan yang divisualkan, dan
  "you build up" tanpa satu blok pun terpasang — dua-duanya gagal uji ini
  dan dua-duanya yang paling terasa kosong saat ditonton.

Konsekuensi produksi: naskah ditulis sebagai daftar klaim yang bisa
difilmkan. Kalimat penjelasan abstrak ("sistemnya bekerja dengan cara...")
diubah jadi perbandingan visual dua status dalam satu frame.

## 3. Struktur cerita (premis → eskalasi → jatuh → twist tertanam)

1. **Premis (0:00-0:09):** aturan dunia + skala status ditunjukkan dengan
   contoh orang biasa vs orang luar biasa. Jangan menjelaskan aturan
   dengan teks — tunjukkan dua kelompok dengan papan berbeda.
2. **Karakter + lonjakan (±0:09-0:13):** satu karakter biasa menerima
   status ekstrem. Perubahan papannya adalah punch-in pertama video.
3. **Montase eskalasi (rapat, 1-3 detik per pencapaian):** 4-5 pencapaian
   berurutan, masing-masing satu kalimat = satu bukti (§2). Naiknya harus
   cepat supaya jatuhnya terasa jauh.
4. **Kejatuhan (satu kata jangkar):** status runtuh dalam satu momen
   (pintu dibuka, memasuki wilayah, bertemu karakter lain). Cahaya dan
   warna papan berubah di frame yang sama.
5. **Reveal twist:** penyebabnya ditunjukkan, bukan diceritakan —
   karakter kedua dengan status kebalikannya, satu frame dua status
   berlawanan (depth staging).
6. **Penjelasan sistem (≤5 detik):** aturan sebenarnya dibuka lewat
   perbandingan visual, bukan monolog.
7. **Punchline visual penutup:** akibat twist dimainkan sampai habis
   (rig dimatikan sebagai lelucon terakhir adalah pola yang terbukti:
   "listrik padam" = semua karakter diam total). Untuk channel dengan
   mesin komentar, ganti/akhiri dengan pertanyaan + voting biner.

**Twist wajib ditanam sejak premis.** Di referensi, sejak detik pertama
ditegaskan angka itu benda fisik yang melayang — jadi penjelasan "sistem
hanya memindahkan status di dalam rumah" terasa adil. Twist yang tidak
ditanam terasa ditempel.

## 4. Repertoar kamera (kecil, disiplin, tidak pernah diam)

Kamera hampir tidak pernah diam >2 detik, tapi repertoarnya sengaja
kecil. Gerakan besar disimpan hanya untuk perubahan status.

| Teknik | Dipakai untuk |
| --- | --- |
| Orbit + push-in lambat | Pembuka dunia/premis saja |
| Tilt-down dari tanda/papan ke subjek | Papan dan tanda selalu dibaca sebelum orangnya |
| Push-in merayap (0,15-0,35%/frame) | Shot dialog/aksi biasa — pengganti shot diam |
| Tracking follow sejajar gait | Adegan berjalan; properti di tangan dikunci level |
| Low angle | Hanya saat karakter di puncak kuasa; dicabut saat ia jatuh |
| Punch-in cepat (±8-10 frame, ease-out) | Hanya di kata jangkar perubahan status |
| Pan reveal satu arah | Reveal mengikuti arah pandangan karakter utama |
| Kamera terkunci total | Hanya beat hening terencana (maks ±0,5-2 dtk) |

Aturan turunan dari bedah pembanding (video sendiri yang kalah):

- **Sudut berganti setiap kalimat**, bukan setiap babak. Satu lokasi
  tetap wajib punya coverage ≥5 sudut bergiliran (top-down, medium 45°,
  low angle, over-shoulder/POV, close-up sisipan) dan tidak ada sudut
  yang dipakai dua adegan berurutan.
- **Sisipan (insert) maksimal 1 detik.** Sisipan sepatu selama 4 detik
  adalah contoh nyata shot yang membunuh tempo.
- **Close-up wajah ekstrem maksimal ±1,5 detik** dan tidak boleh menjadi
  tempat tinggal adegan; akting tubuh harus tetap terlihat.
- **Adegan jatuh/tersedot: kamera ikut bergerak bersama karakter**
  (tracking sejajar, partikel/puing melewati lensa), bukan kamera diam
  melihat karakter berputar di tengah gelap.
- Jalur kamera kurva halus; guncangan hanya teranggaran (getaran
  bertahap untuk ancaman menaik, 3 frame untuk benturan, lalu lepas).

## 5. Rigging & ekspresi (akting dari pose + properti)

- Wajah voxel hanya punya alis, kelopak, arah mata, dan mulut sederhana —
  semuanya dipakai sebagai keyframe ekspresi yang ditulis di peta
  (tidur → kaget → senang; yakin → terpaku; busung → mengkeret).
- **Freeze rig adalah alat reaksi:** karakter pembanding membeku total
  (termasuk bob napas) saat menerima informasi mengejutkan; karakter
  utama tetap bergerak. Kontras bergerak vs membeku = punchline murah
  yang efektif. Freeze juga dipakai sebagai punchline akhir (rig mati =
  listrik padam).
- **Gait prosedural penuh** untuk semua adegan jalan: kaki ayun dari
  pinggul, lengan berlawanan, bob vertikal ±2x frekuensi langkah, torso
  lean, properti di tangan tetap level atau berayun telat fase.
- Semua ayunan/pukulan punya **anticipation (3-6 frame) + overshoot +
  settle**; satu gerakan pendek yang tepat ("bonk" sekali) lebih lucu
  daripada gerakan ramai.
- Karakter tidak boleh tampil terbenam/setengah badan tertutup set tanpa
  alasan peta — tanpa kaki terlihat, tidak ada beban dan tidak ada tenaga.
- Properti di tangan diperiksa di QA still posisi terjauh: tidak boleh
  menembus wajah/kepala.

## 6. Cahaya, audio, dan tempo (angka acuan terukur)

- **Busur cahaya mengikuti busur emosi:** terang di puncak, redup saat
  reveal, gelap hanya di klimaks. Ukuran dari bedah pembanding: video
  yang gelap (kecerahan 20-55/255) selama ±35 dari 53 detik terasa
  melelahkan; referensi hanya gelap di ±2 detik terakhirnya. Turunkan
  cahaya **bertahap dalam tingkat**, jangan sekali jatuh lalu tinggal.
- **Glow bersifat lokal:** cahaya status (emas/ungu/dll.) hanya menyentuh
  papan, retakan, dan rim light tepi karakter — tidak membasuh seluruh
  karakter sampai warna asli dan teksturnya hilang.
- **Tempo narasi adalah kepadatan:** referensi ±250 kata/menit terasa
  hidup tapi ekstrem; lantai aman format ini **±180 kata/menit**. Versi
  142 kata/menit dengan jeda 0,5-0,9 detik terasa kosong walau gambarnya
  sama. Jeda hanya di pergantian babak (maks ±0,25 dtk) + satu beat
  hening terencana sebelum reveal.
- **SFX: satu per momen kunci, sinkron benda/angka di layar** (chime
  papan naik kelas, dentang benturan, percik listrik, klik blok, dentum
  reveal). SFX tidak dipakai mengisi kekosongan. Bed musik selalu tipis
  di bawah vokal, menipis/hilang di beat hening.
- **Finishing:** -14 LUFS terintegrasi (±0,5), true peak ≤ -1 dBTP,
  diukur ulang dari file final. Video pembanding terukur mean -26,1 dB —
  7 dB di bawah referensi — dan langsung terasa "jauh" saat ditonton.

## 7. Alur kerja produksi dengan skill ini

1. **Bedah referensi dulu** (bila ada referensi baru): ukur file-nya
   (durasi, fps, jumlah kata, volume), transkrip kata-per-kata
   bertimestamp, bedah per adegan. Hasilnya dossier seperti
   `references/case-study-iq400-brayden.md`.
2. **Peta koreografi sebelum render** (gerbang, tidak bisa dilewati):
   per adegan tulis narasi + kata jangkar, aksi per kata, sudut kamera
   (kode coverage), lapisan depan/tengah/belakang, keyframe ekspresi,
   spek rig, properti, teks layar, cue SFX, transisi. Contoh terisi
   penuh: `references/choreography-map-iq400-brayden.md` (rekonstruksi
   referensi) dan `references/example-bedrock-revision-map.md` (peta
   revisi produksi nyata).
3. **Voice-first:** VO final → transkrip faster-whisper → words.json;
   batas adegan dan gerak kunci dihitung dari timestamp kata jangkar,
   bukan sebaliknya.
4. **Kepadatan & benda hero mengikuti visual-director §2** (tiga lapisan
   terisi; benda hero lima lapis; retak/status bertahap bila benda
   berubah sepanjang cerita).
5. **QA still multi-titik per adegan hero sebelum klip** (visual-director
   §3), termasuk tiga cek khas format ini: papan terbaca di still
   tergelap, caption tidak menutupi papan, properti tidak menembus wajah.

## 8. Tabel diagnosis cepat (gejala → penyebab → obat)

| Gejala saat ditonton | Penyebab terukur | Obat di peta |
| --- | --- | --- |
| "Terasa lama/kosong" padahal ceritanya sama | Kata/menit <150 atau jeda >0,5 dtk antar kalimat | Padatkan VO ke ≥180 kata/menit atau tambah klaim berbukti |
| Bosan di satu tempat | Sudut sama >2 kalimat; kamera diam >2 dtk | Coverage ≥5 sudut bergiliran; push-in merayap di semua shot |
| Klaim terasa bohong | Kalimat tanpa bukti visual (§2) | Tulis ulang jadi vignette bukti 0,7-3 dtk |
| Twist terasa ditempel | Aturan twist tidak ditanam di premis | Tanam sifat fisik status di adegan premis |
| Mata lelah di tengah video | Gelap >1/3 durasi; glow membasuh karakter | Busur cahaya bertingkat; glow lokal saja |
| Ayunan terasa lemah | Tanpa anticipation; karakter terbenam | Anticipation 3-6 frame + karakter utuh berkaki |
| Reveal kurang nendang | Close-up hero memenuhi layar terlalu lama | Depth staging: hero + karakter kecil satu frame |
| Suara terasa jauh/tipis | Mean volume jauh di bawah -19 dB / tidak difinishing | Finishing -14 LUFS + ukur ulang |

## 9. Batas skill ini

- Ini teknik format satu-status (satu papan/angka sebagai poros). Untuk
  serial voting multi-episode atau fakta non-voxel, doktrin channel
  masing-masing yang memimpin; skill ini menyumbang repertoar kamera,
  aturan bukti visual, dan tabel diagnosisnya saja.
- Angka tempo/loudness adalah acuan dari dua sampel terukur, bukan
  hukum platform — sesuaikan bila channel punya data retensi sendiri,
  dan catat perubahan acuannya di changelog.

## Changelog

- 1.0.0 (2026-11-14) — Dibuat atas permintaan user dari bedah video
  referensi IQ 400 Brayden + bedah pembanding video bedrock produksi
  sendiri (keduanya 2026-11-13): sistem papan status berkode warna,
  aturan satu kalimat = satu bukti visual, struktur twist tertanam,
  repertoar kamera, freeze rig sebagai reaksi, angka acuan tempo/
  loudness/kecerahan terukur, dan tabel diagnosis cepat. Referensi:
  studi kasus + peta rekonstruksi + peta revisi contoh di
  `references/`.
