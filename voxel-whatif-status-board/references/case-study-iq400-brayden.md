# Bedah Video Referensi — "IQ 400 / Brayden" (voxel what-if)

- **Tanggal riset:** 2026-11-13
- **Sumber:** file video yang dikirim user, tersimpan di
  `workspace/user/media_library/video/4a/4af3cb71808e27d733c576a5e6b6084f25ccb477da4a14e16cd164ac6fdcec36.mp4`
- **File pendamping:** `peta-koreografi.md` di folder yang sama — rekonstruksi
  peta koreografi beat-per-beat dari video ini.
- **Metode:** ffprobe (spesifikasi), faster-whisper (transkrip kata-per-kata
  bertimestamp), analisis volume RMS per 0,25 detik, deteksi pergantian adegan
  ffmpeg, dan pembacaan frame per adegan.
- **Status bukti:** spesifikasi, transkrip, dan timing = terukur dari file.
  Penilaian kamera/rigging/ekspresi = pembacaan frame. Penilaian SFX = dari
  trek audio; SFX di video ini memang tipis (lihat §5).

## 1. Spesifikasi teknis (terukur)

| Item | Nilai |
| --- | --- |
| Durasi | 46,03 detik (video) / 46,08 detik (audio) |
| Resolusi | 1080x1920 (9:16 vertikal) |
| Frame rate | 30 fps, 1.381 frame |
| Codec | H.264 High, AAC LC 48 kHz stereo 128 kb/s |
| Bitrate video | ±4,66 Mb/s |
| Volume audio | mean -19,1 dB, max -1,4 dB (volumedetect) |
| Narasi | 192 kata dalam ±46 detik (±250 kata/menit — sangat cepat) |
| Gaya visual | voxel/blok ala Minecraft, karakter blok dengan papan IQ melayang |

## 2. Ringkasan cerita

Di dunia tempat semua orang punya angka IQ melayang di atas kepala, Brayden
bangun dengan IQ 400. Dalam sehari ia lulus tes tanpa belajar, memperbaiki
mesin kopi dengan sekali pukul, membuat gurunya terpaku, dapat julukan
"THE BRAIN", dan meraih 10.000 followers. Pulang ke rumah, angkanya jatuh ke
17. Ternyata sistemnya tidak menambah kecerdasan — sistem *memindahkan*
kecerdasan di dalam rumah. Adiknya yang memegang 400 itu, sambil memegang
obeng, lampu, dan kabel ekstensi beraliran listrik. Penutup: adiknya bermain
Roblox dengan jari kaki, dan keduanya duduk lesu di lorong dengan listrik
padam.

Struktur: Premis (0:00-0:09) → Eskalasi montase (0:09-0:24) → Kepulangan &
kejatuhan (0:24-0:28) → Reveal twist (0:28-0:36) → Penjelasan sistem
(0:36-0:40) → Punchline ganda (0:40-0:46).

## 3. Transkrip bertimestamp (faster-whisper, bahasa Inggris asli)

| Waktu | Narasi |
| --- | --- |
| 0:00-0:03,8 | In this world, everyone has a number floating above their head showing how intelligent they are. |
| 0:04,0-0:08,8 | Most people sit around 100. Some people hit 130, 140. Those are the doctors and the researchers. |
| 0:09,2-0:12,8 | A kid named Brayden woke up one morning and his number said 400. He was excited. |
| 0:13,0-0:15,2 | He went to school and aced a test he never studied for. |
| 0:15,3-0:17,4 | He fixed the coffee machine in the front office by hitting it once. |
| 0:17,7-0:20,0 | He explained something to his math teacher and she just stood there. |
| 0:20,2-0:21,2 | By lunch he had a nickname. |
| 0:21,6-0:23,7 | By fifth period he grew to 10,000 followers. |
| 0:23,9-0:25,2 | He walked home feeling unstoppable. |
| 0:25,7-0:28,2 | Then he opened the front door and his number dropped to 17. |
| 0:28,2-0:29,7 | He became nervous and looked around. |
| 0:30,0-0:35,3 | His little brother was standing in the living room holding a screwdriver, a lamp, and a live extension cord. His number said 400. |
| 0:35,8-0:39,5 | Turns out the system didn't hand out extra intelligence. It just relocates it around the house. |
| 0:39,8-0:43,7 | Brayden spent his best day ever being excellent while his brother tried to play Roblox with his toes. |
| 0:44,0-0:45,9 | They're both currently sitting in the hallway with the power off. |

Jeda narasi (napas cerita) terukur di sekitar 0:03,8 · 0:08,8 · 0:20,2 ·
0:22,3 · 0:23,8 · 0:28,3 · 0:29,8 · 0:37,8 · 0:41,8 — semuanya di titik
pergantian babak atau sebelum punchline.

## 4. Bedah per adegan — kamera, ekspresi, rigging

### Adegan 1 — 0:00-0:04 · Dunia kubus + aturan main
- **Kamera:** orbit lambat + push-in mengelilingi Bumi kubus voxel di luar
  angkasa; awan voxel melayang dengan parallax. Cut ke jalanan: kamera turun
  dari papan "IQ-O-MATIC" ke deretan karakter (establishing yang menyapu).
- **Ekspresi:** semua wajah datar, mata setengah bosan — disengaja, dunia ini
  menganggap angka di kepala normal.
- **Rigging:** idle saja: bob napas halus, kepala sedikit menoleh. Papan IQ
  melayang mengikuti kepala dengan jeda gerak kecil (lag), tidak menempel kaku.

### Adegan 2 — 0:04-0:09 · Kebanyakan 100, dokter 130-140
- **Kamera:** static medium shot di depan toko Burger (trio IQ 98/100/102),
  lalu pull-back pelan di depan "BRIGHTVALE MEDICAL + RESEARCH LAB"
  (IQ 130 dan 140, kostum jas lab, satu memegang clipboard).
- **Ekspresi:** trio burger bosan/mengantuk; dokter lebih tegak, senyum tipis.
- **Rigging:** pose duduk di bangku, tangan di pangkuan; yang berdiri cuma
  shifting weight. Kontras status dibuat dari pose, kostum, warna papan.

### Adegan 3 — 0:09-0:13 · Brayden bangun, 103 → 400
- **Kamera:** wide kamar tidur → punch-in cepat ke wajah saat angka berubah →
  close-up papan emas "IQ 400".
- **Ekspresi:** perubahan paling jelas di video: terpejam tidur → mata melebar
  kaget → mulut terbuka → senyum lebar sambil meregang.
- **Rigging:** urutan lengkap satu adegan: rebahan → duduk di kasur → stretch
  dua lengan ke atas → mulut membuka. Papan memantul kecil saat berganti emas.

### Adegan 4 — 0:13-0:15 · Lulus tes tanpa belajar
- **Kamera:** wide kelas (semua murid terlihat) → push-in ke meja Brayden dan
  kertas tes "A+ 100%".
- **Ekspresi:** Brayden smug, mata terpejam puas, satu lengan terangkat.
  Teman di belakang menoleh heran.
- **Rigging:** pose duduk di meja; selebrasi satu lengan. Benda hero = kertas
  tes; hasil dibaca dari benda, bukan dari dialog.

### Adegan 5 — 0:15-0:18 · Mesin kopi, sekali pukul
- **Kamera:** medium shot guru di depan mesin kopi bertuliskan
  "BROKEN again :(" → kamera bergeser mengikuti Brayden masuk frame.
- **Ekspresi:** guru berkacamata lelah/pasrah; Brayden datar, sepele.
- **Rigging:** satu ayunan lengan memukul mesin. Gerakan pendek tunggal =
  leluconnya. Jenius versi video ini tidak memakai alat, cukup *bonk*.

### Adegan 6 — 0:18-0:20 · Menjelaskan ke guru matematika
- **Kamera:** two-shot di depan papan penuh rumus → close-up guru IQ 118.
- **Ekspresi:** Brayden yakin sambil gestur; guru tangan di dagu, alis naik,
  mulut sedikit terbuka, lalu membeku. Ekspresi guru = punchline; isi
  penjelasan tidak pernah diperdengarkan.
- **Rigging:** Brayden gestur satu tangan; guru freeze total. Kontras
  bergerak vs membeku = teknik murah tapi efektif.

### Adegan 7 — 0:20-0:24 · "THE BRAIN" + followers 10.000
- **Kamera:** tracking shot mengikuti jalan di kantin membawa nampan (papan
  pelangi "THE BRAIN" di belakang) → koridor "PERIOD 5" dikerumuni teman →
  extreme close-up layar HP: "BLOKSTAR @brayden400", followers beranimasi
  9.108 → 10.000.
- **Ekspresi:** Brayden senyum lebar terus; teman-teman menganga, angkat HP.
- **Rigging:** gait jalan penuh: lengan-kaki berayun berlawanan, torso miring
  ke depan, nampan dua tangan tetap stabil.

### Adegan 8 — 0:24-0:28 · Pulang "unstoppable", jatuh ke 17
- **Kamera:** low angle dari bawah saat jalan pulang (terlihat besar/berkuasa)
  → kamera static di dalam rumah di pintu; cahaya langsung jauh lebih gelap.
- **Ekspresi:** di luar dagu naik, mata menyipit puas. Papan berubah abu-abu
  "IQ 17": alis turun, mata melirik samping, mulut mengecil.
- **Rigging:** gait dada busung → berhenti mendadak → bahu turun → kepala
  menoleh kiri-kanan mencari penyebab.

### Adegan 9 — 0:28-0:36 · Reveal adiknya
- **Kamera:** pan pelan dari Brayden di pintu menyapu ruang keluarga →
  close-up bergantian ke properti di tangan adik: obeng, lampu, ujung kabel
  ekstensi menyala/berpercik → papan hijau "IQ 400" di atas kepala adik.
- **Ekspresi:** adik tersenyum polos, tidak sadar bahaya — lucu sekaligus
  ngeri. Brayden panik diam.
- **Rigging:** adik berdiri di tengah ruangan, dua lengan terangkat memegang
  properti berbeda, bob kecil bangga. Brayden membeku di latar belakang:
  depth staging dua status berlawanan dalam satu frame.

### Adegan 10 — 0:36-0:46 · Penjelasan sistem + penutup gelap
- **Kamera:** wide two-shot 17 vs 400 untuk penjelasan relokasi → cutaway
  kelas: Brayden angkat trofi di tengah confetti → adik selonjor di depan TV
  bermain Roblox → static shot lorong gelap, listrik padam.
- **Ekspresi:** perayaan: teriak senang dua lengan ke atas. Lorong terakhir:
  berdua lesu, mata sayu.
- **Rigging:** lelucon rig paling berani di video: kaki adik terangkat
  memainkan kontroler dengan jari kaki. Adegan akhir rig sengaja dimatikan:
  dua karakter duduk diam di lantai — kehabisan listrik divisualkan lewat
  karakter yang ikut "mati gaya".

## 5. Sound effect & audio

Kekuatan audio video ini ada di narasi, bukan di keramaian SFX.

- **Narator:** pria Inggris, datar/deadpan, tempo ±250 kata/menit, hampir
  tanpa jeda — jeda hanya muncul di pergantian babak (lihat §3).
- **Trek:** didominasi vokal (mean -19,1 dB). Musik latar sangat tipis di
  bawah vokal, tidak pernah mengambil alih.
- **SFX fungsional, ditempatkan di titik visualnya:**
  - denting/chime emas saat IQ berubah jadi 400 (adegan 3);
  - bunyi hitungan/notifikasi saat followers naik ke 10.000 (adegan 7);
  - percik listrik pendek di kabel ekstensi (adegan 9);
  - suara pintu + suasana ruangan menipis saat masuk rumah (adegan 8);
  - confetti/sorakan sangat pendek di adegan trofi (adegan 10);
  - bunyi game 8-bit dari TV di adegan Roblox pakai kaki (adegan 10);
  - penutup: keheningan + rasa listrik padam — tidak ada musik penjelas,
    potong gelap itu sendiri punchline-nya.
- **Pelajaran:** satu SFX per momen kunci, selalu sinkron ke benda/angka di
  layar. SFX tidak dipakai untuk mengisi kekosongan.

## 6. Sistem visual yang membuat video ini kuat

1. **Papan IQ = alat cerita, berkode warna.** Biru = normal (±100),
   hijau = tinggi (130-140, dan 400 di kepala adik), emas = 400 legendaris
   (Brayden di puncak), abu-abu = rendah (17). Status terbaca dari warna
   sebelum angkanya dibaca.
2. **Satu kalimat narasi = satu bukti visual.** "Aced a test" → kertas A+.
   "Fixed the coffee machine" → mesin bertuliskan BROKEN. "10,000 followers"
   → layar HP dengan angka yang benar-benar beranimasi naik. Tidak ada
   kalimat yang dibiarkan jadi omongan saja.
3. **Kamera hampir tidak pernah diam, tapi tidak memusingkan.** Repertoarnya
   kecil: push-in, pan mengikuti jalan, low angle, punch-in saat angka
   berubah. Gerakan besar disimpan untuk dua momen: naik ke 400 dan jatuh
   ke 17.
4. **Eskalasi montase rapat.** Tes → mesin kopi → guru → julukan → followers,
   masing-masing 1-3 detik. Naiknya cepat, jatuhnya terasa jauh.
5. **Twist ditanam sejak premis.** Dari awal ditegaskan angka itu benda fisik
   yang melayang di atas kepala; penjelasan "sistem hanya memindahkan
   kecerdasan di dalam rumah" terasa adil (fair) saat dibuka.
6. **Akting dari pose + properti, bukan wajah rumit.** Wajah voxel hanya
   punya alis, kelopak, arah mata, dan mulut sederhana — semuanya dipakai
   tepat: guru membeku, adik tersenyum polos sambil memegang kabel hidup,
   Brayden membusung lalu mengkeret.
7. **Cahaya ikut bercerita.** Siang sekolah terang keemasan di puncak →
   rumah redup kecoklatan saat reveal → lorong nyaris gelap total di akhir.
8. **Dua teks tidak pernah bertabrakan.** Caption karaoke kata-per-kata di
   tengah-bawah (putih tebal, outline hitam); papan IQ selalu di atas
   kepala. Keduanya terbaca bersamaan.
9. **Frame 0 berfungsi sebagai poster:** Bumi kubus voxel di luar angkasa —
   satu gambar yang langsung menjelaskan genre dan premis visualnya.

Kelemahan yang tercatat: ekspresi mulut karakter pendukung hampir tidak
berubah; video sangat bergantung pada tempo narasi — diperlambat sedikit
saja, kepadatannya terasa runtuh.

## 7. Pola yang bisa ditiru (teknik, bukan cerita)

Untuk produksi kita (PixelKai Universe, Roblox Short 2D, dan pekerjaan
voxel/3D lain) — tiru tekniknya, jangan salin karakter/cerita/dialognya:

- **HUD status melayang berkode warna** sebagai alat cerita utama: satu
  benda visual yang berubah warna/angka di momen twist.
- **Aturan "satu kalimat = satu bukti visual"** sebagai uji naskah: setiap
  baris narasi harus bisa ditunjuk bendanya di frame.
- **Repertoar kamera kecil yang disiplin** (push-in / tracking follow /
  low angle kuasa / punch-in di kata jangkar) sesuai doktrin visual-director:
  kamera jalur kurva halus, punch-in pada kata jangkar narasi.
- **Gait prosedural penuh** untuk adegan jalan (lengan-kaki berlawanan,
  bob, muatan/properti stabil atau berayun telat fase) — sama seperti resep
  gait di visual-director §5.
- **Satu SFX per momen kunci**, sinkron benda, bukan lapisan ramai.
- **Busur cahaya** yang mengikuti busur emosi cerita (terang → redup → gelap).
- **Rig dimatikan sebagai lelucon penutup**: karakter diam total setelah
  "listrik padam" — keheningan gerak sebagai punchline terakhir.
- **Eskalasi montase 1-3 detik per pencapaian** sebelum satu kejatuhan besar.

## 8. Berkas terkait

- Video sumber: lihat bagian atas dokumen ini.
- Peta koreografi rekonstruksi: `peta-koreografi.md` (folder yang sama).
- Transkrip mentah hasil analisis: SRT + words.json dibuat saat riset
  (sementara, tidak disimpan permanen; transkripnya sudah masuk §3).
