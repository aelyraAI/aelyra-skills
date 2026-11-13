# Peta Koreografi REVISI — "What If You Broke Bedrock in Minecraft?"

- **Status:** DRAF PETA — menunggu persetujuan user sebelum produksi (gerbang
  peta berlaku: tidak ada render sebelum peta ini disetujui).
- **Dasar revisi:** video versi tayang user (52,8 dtk, 1080x1920, 60fps,
  125 kata) dibedah 2026-11-13 dan dibandingkan terukur dengan video
  referensi IQ 400 Brayden (46,0 dtk, 192 kata). Bedah referensi:
  `~/workspace/research_notes/bedah-video-iq400-brayden-20261113/`.
- **Naskah:** TIDAK berubah. Yang berubah: tempo penyampaian, sudut kamera,
  bukti visual per kalimat, detail benda hero, busur cahaya, dan audio.
- **Prinsip revisi (dari referensi):** satu kalimat = satu bukti visual;
  kamera tidak diam >2 detik; sudut berganti setiap kalimat; gerakan besar
  disimpan untuk kata jangkar (UNBREAKABLE, NEGATIVE 64, CRACK, mata).

## A. Target spek revisi vs versi tayang

| Item | Versi tayang | Target revisi |
| --- | --- | --- |
| Durasi | 52,8 dtk | **±40 dtk** (2.400 frame @60fps) |
| Tempo narasi | ±142 kata/menit, jeda 0,5-0,9 dtk | **±185 kata/menit**, jeda hanya di pergantian babak (maks 0,25 dtk) |
| Loudness | mean -26,1 dB (jauh di bawah standar) | **-14 LUFS terintegrasi, true peak ≤ -1 dBTP** (finishing.sh, ukur ulang) |
| Jumlah sudut kamera | ±6 potongan besar, sudut mirip berulang | **13 adegan, ≥17 sudut berbeda**, coverage 5 sudut untuk set lubang |
| Kecerahan | 20-55/255 selama ±35 dtk terakhir | Subjek utama selalu terbaca; gelap total hanya di 3 dtk klimaks mata + kartu voting tetap terang |
| Bukti visual | Ledakan TNT & adegan membangun tidak tampil | Semua klaim narasi divisualkan (lihat per adegan) |

**Voice-first (wajib):** VO direkam/di-render ulang dengan tempo target,
ditranskrip faster-whisper → words.json baru; semua batas adegan dan gerak
kunci di peta ini dihitung ulang dari timestamp kata jangkar di words.json
baru itu. Timecode di bawah adalah TARGET perencanaan (±0,3 dtk toleransi),
bukan angka final render.

## B. Aturan kamera revisi (mengikat semua adegan)

1. **Coverage 5 sudut set lubang bedrock** (dipakai bergiliran, tidak ada
   sudut yang dipakai 2 adegan berurutan):
   K1 top-down orbit · K2 medium 45° · K3 low angle dari permukaan bedrock ·
   K4 over-shoulder/POV ke lantai · K5 extreme close-up sisipan.
2. **Di dalam shot kamera selalu bergerak:** push-in merayap 0,15-0,35%/frame
   atau orbit busur 10-15° per adegan, jalur kurva halus (CatmullRom),
   parallax antar lapisan selalu terlihat.
3. **Punch-in hanya di kata jangkar** (zoom ±1,5x dalam 8-10 frame, ease-out).
4. **Sisipan maksimal 1 detik** (sepatu, retakan, percikan, angka HUD).
5. **Guncangan teranggaran:** getaran tanah = shake amplitudo naik bertahap
   (adegan 6-7), benturan = shake 3 frame lalu lepas, selain itu 0 shake.
6. **Kamera tidak pernah statis menghadap wajah >1,5 detik.**

## C. Aturan visual & rig revisi (mengikat)

- **Kepadatan (visual-director §2):** setiap adegan depan ≥3 properti,
  tengah ≥6, belakang ≥4. Void tidak boleh hitam polos: pulau melayang,
  puing bedrock bersiluet, partikel selalu mengisi.
- **Karakter selalu tampil utuh** (kaki terlihat) kecuali sisipan yang
  direncanakan. Posisi terbenam di bedrock DILARANG.
- **Semua ayunan punya anticipation + overshoot + settle**; properti di
  tangan berayun telat fase; pickaxe dicek tidak menembus wajah di posisi
  ayunan terjauh (QA still wajib).
- **Bedrock = benda hero bertahap 3 stadium retak:** Stadium 1 retak rambut
  (adegan 6) → Stadium 2 retak bercahaya ungu menyebar (adegan 7) →
  Stadium 3 pecah berkeping dengan interior bercahaya (adegan 8).
- **Mata = benda hero 5 lapis** (adegan 10): permukaan (putih mata berurat +
  kilap basah) · isi fungsional (iris bertekstur, pupil yang membesar dan
  mengikuti karakter) · pengikat/material (kelopak voxel berlapis, tepian
  retak tempat mata menempel) · momen bukaan (kelopak membuka dari bawah di
  tengah aksi) · lapisan tak terlihat digambar (cahaya merah lokal memancar
  ke lantai dan tepi karakter — BUKAN vignette memenuhi layar).
- **Pickaxe kuno = benda hero 5 lapis** (adegan 5): permukaan (gagang kayu
  retak, bilah logam gelap dengan rune ungu terukir) · isi fungsional (inti
  kristal ungu berdenyut di tengah bilah) · pengikat (lilitan tali + paku
  kuno) · momen bukaan (retakan gagang membuka memperlihatkan inti saat
  pertama digenggam) · lapisan tak terlihat (medan ungu digambar sebagai
  garis energi di lantai sekitar).
- **Cahaya 3 tingkat, turun bertahap:** Tingkat 1 terang siang (adegan 1-5)
  → Tingkat 2 redup ungu (adegan 6-8) → Tingkat 3 gelap klimaks (adegan
  10-13, tapi subjek diterangi cahaya mata/blok, tidak hilang).
- **Glow ungu bersifat lokal:** hanya lantai, retakan, dan rim light tepi
  karakter. Warna kulit/pakaian karakter TIDAK berubah jadi merah muda.
- **HUD diperbaiki:** toast Advancement digeser ke bawah bar hearts (tidak
  bertumpuk); angka damage muncul di titik benturan di dunia, bukan di
  tengah layar; slot hotbar berganti hanya mengikuti item yang disebut
  narasi; chip judul tidak menutupi wajah.
- **Caption:** karaoke kata-per-kata tetap seperti versi tayang (sudah
  bagus), kata kunci berkode warna dipertahankan.

## D. Inventaris set & properti baru

- **Set utama (dipakai ulang):** lubang galian rumput → lantai bedrock di
  kedalaman -64, penampang lapisan bumi untuk adegan 4, ruang void di bawah
  bedrock untuk adegan 9-13.
- **Properti pembawa cerita baru:** 3 pickaxe patah tertancap (usaha pemain
  sebelumnya) · tumpukan TNT + sumbu · papan peringatan retak "DO NOT DIG" ·
  obor di dinding lubang · tulang/kerangka kecil di sudut · meteran
  kedalaman di dinding penampang · tangga tali di tepi lubang.
- **Karakter:** Steve (karakter utama, kostum & wajah sama seperti versi
  tayang). Tidak ada karakter baru.

---

## E. Peta per adegan

### Adegan 1 — Hook poster · target 0:00-0:02,5 (frame 0-150)
- **Narasi:** "What if you actually broke bedrock in Minecraft?"
- **Kata jangkar:** "broke bedrock" → punch-in.
- **Kamera:** K1 top-down orbit 20° sambil turun (dive) menuju lubang;
  di kata "bedrock" punch-in ke lantai bedrock di dasar lubang. Frame 0 =
  poster: lubang + karakter kecil di tepi + lantai bedrock gelap terbaca.
- **Aksi per kata:** "What if" — orbit mulai; "actually broke" — kamera
  menukik; "bedrock in Minecraft" — berhenti di medium lantai bedrock,
  karakter masuk frame berjalan ke tepi (gait penuh, kaki terlihat).
- **Rig/ekspresi:** gait masuk 4 langkah; ekspresi penasaran (alis naik).
- **Lapisan:** depan = tepi lubang + papan peringatan + pickaxe patah;
  tengah = dinding galian berlapis + tangga tali; belakang = lantai
  bedrock + langit.
- **HUD/teks:** chip judul "BEDROCK: UNBREAKABLE?!" masuk pop di akhir
  adegan (bukan dari frame 0 menutupi pemandangan).
- **Cahaya/SFX:** Tingkat 1 terang. SFX: whoosh turun kamera; denting chip.

### Adegan 2 — Aturan + uji TNT · target 0:02,5-0:06,0 (frame 150-360)
- **Narasi:** "Every player knows bedrock is completely unbreakable.
  No TNT can blow it up."
- **Kata jangkar:** "unbreakable" → punch-in wajah yakin; "blow it up" →
  ledakan.
- **Kamera:** K2 medium 45° untuk kalimat pertama (push-in merayap);
  cut di "No TNT" ke K3 low angle dari lantai: tumpukan TNT di atas
  bedrock, sumbu menyala; kamera mundur cepat (dolly-out) saat ledakan.
- **Aksi per kata:** "Every player knows" — karakter menepuk lantai
  bedrock, berdebu tipis, lantai utuh; "completely unbreakable" — ia
  berdiri di atasnya, melompat sekali, tetap utuh; "No TNT can blow it
  up" — **ledakan betulan divisualkan**: bola api + asap + puing tanah
  beterbangan, debu mereda → bedrock utuh tanpa goresan, angka damage
  "-0" kecil muncul di titik ledakan.
- **Rig/ekspresi:** yakin → menutup telinga saat ledakan → mengangkat bahu
  "sudah kubilang".
- **Lapisan:** depan = TNT + sumbu + serpih tanah; tengah = karakter +
  lantai; belakang = dinding lubang + obor.
- **Cahaya/SFX:** Tingkat 1; kilat ledakan 3 frame menerangi dinding.
  SFX: sumbu mendesis, ledakan penuh, debu jatuh.

### Adegan 3 — Uji netherite · target 0:06,0-0:08,5 (frame 360-510)
- **Narasi:** "No Netherite pickaxe can scratch it."
- **Kata jangkar:** "scratch" → sisipan percikan.
- **Kamera:** K4 over-shoulder melihat pickaxe netherite di tangan; cut
  ke K5 extreme close-up titik benturan (maks 1 dtk); kembali K2 medium.
- **Aksi per kata:** "No Netherite pickaxe" — hotbar berganti ke netherite
  (dimotivasi narasi), karakter mengayun; "can scratch it" — benturan:
  percikan beterbangan, pickaxe mental/memantul, lantai tanpa goresan;
  sisipan close-up permukaan bedrock: bersih.
- **Rig/ekspresi:** ayunan dengan anticipation 5 frame + recoil terhuyung
  setengah langkah; ekspresi kesal (alis miring, mulut datar).
- **SFX:** dentang logam + percikan; bunyi mental pegas pendek.

### Adegan 4 — Dasar dunia · target 0:08,5-0:11,0 (frame 510-660)
- **Narasi:** "It is the bottom of the world."
- **Kamera:** kamera MENYELAM di penampang samping bumi: melewati lapisan
  rumput → tanah → batu → deepslate → berhenti di lapisan bedrock, jalur
  kurva halus satu gerakan kontinu (seperti orbit pembuka referensi,
  versi vertikal).
- **Aksi per kata:** lapisan berganti mengikuti gerakan kamera; meteran
  kedalaman di tepi penampang berjalan: Y 64 → 0 → **-64** mengunci merah
  di kata "bottom".
- **Teks layar:** meteran kedalaman adalah benda di dalam dunia, bukan
  overlay lepas.
- **Cahaya/SFX:** terang menurun bertahap mengikuti kedalaman (jembatan ke
  Tingkat 2). SFX: whoosh selam + klik meteran di -64.

### Adegan 5 — Penemuan pickaxe kuno · target 0:11,0-0:15,5 (frame 660-930)
- **Narasi:** "Or, so we thought — deep at negative 64, you find an
  ancient illegal pickaxe."
- **Kata jangkar:** "negative 64" → angka HUD; "ancient illegal pickaxe"
  → orbit benda hero.
- **Kamera:** K2 medium: karakter berjalan mengelilingi lantai (gait
  penuh, pertama kali ia bergerak bebas di adegan ini); di kata "find"
  kamera orbit 30° mengelilingi pickaxe yang tertancap di tengah lantai;
  punch-in ke inti kristal di kata "illegal".
- **Aksi per kata:** "Or, so we thought" — karakter berhenti, menoleh ke
  sudut gelap lubang (kepala look-at); "deep at negative 64" — chip
  kedalaman "-64" pop; "you find" — cahaya inti ungu pertama berdenyut
  dari retakan gagang; "ancient illegal pickaxe" — ia mencabutnya:
  gagang bergetar, debu kuno jatuh, chip judul berganti "ANCIENT ILLEGAL
  PICKAXE!" (toast Advancement muncul DI BAWAH bar hearts).
- **Rig/ekspresi:** penasaran → kaget (mata melebar) → ragu menatap
  pickaxe di dua tangan.
- **Detail hero:** pickaxe sesuai spek 5 lapis di §C; glow hanya rim
  ungu di tangan dan lantai sekitar, kulit tetap warna asli.
- **Lapisan:** depan = pickaxe patah-patah lama; tengah = karakter +
  pickaxe kuno; belakang = dinding retak + obor meredup.
- **SFX:** denyut kristal (denting rendah berulang 2x), bunyi cabut batu,
  debu.

### Adegan 6 — Sepatu & tanah bergetar · target 0:15,5-0:18,0 (frame 930-1080)
- **Narasi:** "Your boots dig into the floor. The ground starts trembling."
- **Kata jangkar:** "trembling" → shake mulai.
- **Kamera:** K5 sisipan sepatu menancap (MAKS 0,8 dtk) → cut K3 low angle
  lebar: seluruh lantai terlihat; shake mikro mulai di kata "trembling",
  amplitudo naik perlahan sampai akhir adegan.
- **Aksi per kata:** "boots dig into the floor" — kaki menekuk siap
  (stance melebar, lutut menekuk — anticipation ayunan disimpan untuk
  adegan 8); "ground starts trembling" — kerikil kecil melompat-lompat,
  **retak Stadium 1** muncul sebagai garis rambut dari bawah sepatu.
- **Rig/ekspresi:** tegang awal (alis turun, mulut lurus); badan ikut
  bergetar halus mengikuti tanah (rig sekunder, bukan cuma kamera).
- **SFX:** gemuruh frekuensi rendah masuk perlahan; kerikil berderak.

### Adegan 7 — Retak petir ungu · target 0:18,0-0:20,5 (frame 1080-1230)
- **Narasi:** "Purple lightning cracks across the stone."
- **Kata jangkar:** "lightning cracks" → retak menyebar.
- **Kamera:** K4 POV menatap lantai dari atas bahu; kamera ikut mundur
  setengah langkah bersama karakter saat retak menjalar ke arah kamera.
- **Aksi per kata:** retak **Stadium 2** menjalar bercabang mengikuti
  urutan kata, cahaya ungu mengalir di dalam retakan seperti petir di
  tanah; percik energi kecil melompat di cabang terbesar.
- **Cahaya:** Tingkat 2 penuh: cahaya utama sekarang dari retakan;
  rim ungu di tepi karakter dan pickaxe; wajah tetap terbaca oleh cahaya
  obor sisa.
- **SFX:** derak retakan berurutan sinkron cabang; dengung energi naik.

### Adegan 8 — Ayunan & pecah · target 0:20,5-0:24,0 (frame 1230-1440)
- **Narasi:** "You swing with all your power. CRACK!"
- **Kata jangkar:** "swing" → ayunan; "CRACK!" → benturan (frame benturan
  dihitung dari words.json: teks "CRACK!" tampil tepat di frame itu).
- **Kamera:** K2 medium 45° melebar sedikit (memberi ruang ayunan);
  follow arc mengikuti pickaxe dengan lag 2 frame; shake benturan 3
  frame lalu lepas; punch-in kecil ke titik pecah.
- **Aksi per kata:** "swing with all your power" — anticipation penuh:
  jongkok, pickaxe ditarik jauh ke belakang (cek QA: tidak menembus
  wajah), wajah tegang maksimal (alis tajam, gigi terlihat, mata
  menyipit); ayunan lengkung dengan jejak gerak (motion trail tipis);
  "CRACK!" — **Stadium 3**: bedrock pecah berkeping, kepingan beterbangan
  dengan fisika (gravitasi + pantulan), interior keping bercahaya ungu,
  gelombang debu menyapu kamera.
- **Rig:** follow-through: torso memutar melewati titik benturan,
  terhuyung 1 langkah, pickaxe berayun telat fase di tangan.
- **SFX:** whoosh ayunan, CRACK besar + gemuruh runtuh, kepingan jatuh.

### Adegan 9 — Mengira void kosong · target 0:24,0-0:26,5 (frame 1440-1590)
- **Narasi:** "You expect to see an empty void."
- **Kamera:** debu mereda; K4 POV mengintip dari tepi lubang pecah ke
  bawah; kamera menunduk perlahan (tilt-down) mengikuti pandangan.
- **Aksi:** lubang gelap di bawah; partikel debu melayang turun; karakter
  mencondongkan badan, satu tangan menahan tepi — **beat hening 0,5 dtk**:
  kamera nyaris diam, musik berhenti, hanya debu bergerak. (Satu-satunya
  shot nyaris diam yang direncanakan.)
- **Rig/ekspresi:** lega berubah waspada (alis tengah naik).
- **SFX:** keheningan terencana; satu tetes batu jatuh jauh di bawah.

### Adegan 10 — Mata membuka · target 0:26,5-0:31,0 (frame 1590-1860)
- **Narasi:** "Instead, an enormous red eye opens beneath you, staring
  straight into your soul."
- **Kata jangkar:** "eye opens" → kelopak membuka; "staring" → pupil
  mengunci karakter.
- **Kamera:** mulai dari POV adegan 9 (kontinu, tanpa cut) — kamera
  mundur naik (dolly-up) saat mata membuka, membingkai mata di bawah dan
  karakter kecil di tepi atas frame sekaligus (depth staging dua subjek);
  DILARANG close-up bola mata memenuhi layar.
- **Aksi per kata:** "Instead" — permukaan gelap di bawah bergerak;
  "enormous red eye opens" — kelopak membuka dari bawah sesuai spek
  5 lapis: putih berurat, iris bertekstur, kilap basah; "staring straight
  into your soul" — pupil membesar dan BERGERAK mengikuti karakter yang
  mundur setengah langkah; cahaya merah lokal memancar ke lantai dan
  wajah karakter dari bawah (bukan vignette layar).
- **Rig/ekspresi:** karakter membeku 0,5 dtk (freeze rig sebagai reaksi,
  seperti guru di referensi) → mundur terhuyung; mulut terbuka O.
- **SFX:** dentum rendah basah saat kelopak membuka; dengung horor tipis;
  narasi diberi ruang (volume bed turun).

### Adegan 11 — Gravitasi berbalik · target 0:31,0-0:34,5 (frame 1860-2070)
- **Narasi:** "The gravity inverts. Everything gets sucked into the pit."
- **Kata jangkar:** "inverts" → dunia miring; "sucked" → arus partikel.
- **Kamera:** kamera ikut miring (roll bertahap ±12°) lalu **ikut jatuh
  bersama karakter** (tracking turun sejajar), puing beterbangan MELEWATI
  kamera dari bawah ke atas — arah gerak partikel membalik di kata
  "inverts".
- **Aksi per kata:** kerikil dan kepingan bedrock yang tadi jatuh kini
  melayang naik; karakter terangkat dari lantai, tungkai mengayuh panik;
  obor dan properti ringan ikut tersedot lebih dulu (properti bercerita
  bereaksi sesuai massa).
- **Rig:** pose jatuh bebas: lengan menggapai tepi, kaki mengayuh, baju/
  rambut mengikuti arah sedot telat fase.
- **Cahaya/SFX:** Tingkat 3; angin tersedot naik nada; bunyi properti
  beterbangan.

### Adegan 12 — Membangun putus asa · target 0:34,5-0:38,0 (frame 2070-2280)
- **Narasi:** "You desperately build up, but the void is pulling you down."
- **Kata jangkar:** "build up" → blok pertama terpasang; "pulling you
  down" → blok tersedot.
- **Kamera:** K3 low angle menyamping: pilar blok tumbuh ke atas frame
  mengikuti karakter; kamera naik bersama pilar (crane-up) lalu tersentak
  turun setiap blok tersedot.
- **Aksi per kata:** karakter memasang blok satu-satu dengan tempo cepat
  (klik-klik teratur, penghitung blok di hotbar berkurang 32 → habis);
  setiap blok ke-3 tersedot turun melewati kamera sebelum sempat
  diinjak; pilar runtuh sebagian; ia berpegangan di blok terakhir.
- **Rig/ekspresi:** panik terkendali: tangan cepat, kepala bolak-balik
  menatap bawah (mata) dan atas (tepi lubang); mulut mengatup tegang.
- **SFX:** klik pasang blok berirama dipercepat; whoosh sedot di setiap
  blok yang lepas; napas tersengal tipis di bawah narasi.

### Adegan 13 — Pertanyaan + voting · target 0:38,0-0:40,5 (frame 2280-2430)
- **Narasi:** "Could you survive breaking bedrock? Vote in the comments."
- **Kamera:** pull-back besar terakhir ke wide lubang utuh: karakter
  berpegangan di tepi, mata merah mengintip dari lubang pecah di bawah —
  seluruh cerita terbaca dalam satu frame; kamera berhenti (hold) selama
  kartu voting tampil.
- **Aksi:** kartu voting A/B tampil sebagai papan di dalam dunia di dua
  sisi karakter (A: "Climb the falling blocks!" / B: "Jump into the
  eye?!") — dipertahankan dari versi tayang karena mesin komentarnya
  bekerja, tapi kartunya sekarang di dalam set, bukan overlay menutupi
  wajah; karakter menunjuk bergantian ke A lalu B mengikuti kata "Vote".
- **Teks layar:** pertanyaan besar di atas kartu (karaoke selesai,
  berganti teks statis bersih); tahan minimal 2,5 detik sampai akhir.
- **Cahaya/SFX:** campuran Tingkat 2-3: wajah dan kartu tetap terang
  terbaca; denting lembut di kemunculan tiap kartu; musik bed kembali
  tipis lalu potong bersih di frame terakhir.

---

## F. Peta audio ringkas (revisi)

| Target waktu | Isi |
| --- | --- |
| 0:00-0:40,5 | Narasi tempo ±185 kata/menit, jeda maks 0,25 dtk kecuali beat hening adegan 9 |
| 0:02,5-0:06 | Desis sumbu, LEDAKAN TNT penuh, debu |
| 0:06-0:08,5 | Dentang netherite + percikan + bunyi mental |
| 0:08,5-0:11 | Whoosh selam penampang, klik meteran di -64 |
| 0:11-0:15,5 | Denyut kristal 2x, bunyi cabut batu, debu kuno |
| 0:15,5-0:20,5 | Gemuruh rendah naik, kerikil, derak retak berurutan, dengung energi |
| 0:20,5-0:24 | Whoosh ayunan, CRACK besar, runtuhan, kepingan jatuh |
| 0:24-0:26,5 | Hening terencana; satu batu jatuh jauh |
| 0:26,5-0:31 | Dentum basah kelopak mata, dengung horor tipis |
| 0:31-0:34,5 | Angin tersedot naik nada, properti beterbangan |
| 0:34,5-0:38 | Klik blok berirama cepat, whoosh sedot per blok lepas |
| 0:38-0:40,5 | Denting kartu A dan B, bed tipis, potong bersih |
| Finishing | -14 LUFS terintegrasi (±0,5), true peak ≤ -1 dBTP, loudnorm 2-pass, ukur ulang |

## G. Yang sengaja TIDAK diubah dari versi tayang

- Naskah dan urutan twist-nya (mata di bawah bedrock) — sudah bekerja.
- Sistem HUD hearts + chip judul + hotbar yang berganti mengikuti narasi.
- Caption karaoke kata-per-kata berkode warna.
- Kartu voting A/B sebagai penutup (dipindah ke dalam dunia, isinya sama).
- Karakter dan kostum Steve versi tayang.

## H. Checklist QA sebelum klip dikirim (visual-director §3)

1. Still di ≥4 titik waktu untuk adegan hero (5 penemuan, 8 ayunan,
   10 mata): awal, tengah, akhir, momen terdekat kamera.
2. Cek still ayunan terjauh adegan 8: pickaxe TIDAK menembus wajah/kepala.
3. Cek keterbacaan: di still tergelap (adegan 11-12), wajah + kartu/HUD
   tetap terbaca; ukur kecerahan subjek, bukan rata-rata frame.
4. Cek tumpukan HUD di still adegan 5: toast di bawah hearts, chip tidak
   menutupi wajah.
5. Cek kepadatan: tidak ada wilayah frame >25% kosong polos kecuali beat
   hening adegan 9 (maks 0,5 dtk).
6. Bandingkan still berdampingan dengan peta ini per adegan; catat 3
   perbedaan terbesar sebelum memperbaiki.
7. Setelah render: ekstrak ≥2 frame dari FILE VIDEO final untuk
   verifikasi terakhir + ukur loudness file final.
8. Adegan hero minimal 2 siklus QA still sebelum render klip penuh.

## I. Gerbang berikutnya

Peta ini menunggu persetujuan user. Setelah disetujui: (1) render VO tempo
baru + words.json, (2) kunci ulang timecode adegan dari words.json,
(3) bangun aset hero (bedrock 3 stadium, pickaxe 5 lapis, mata 5 lapis),
(4) still QA per §H, (5) render klip, kirim versi kompat untuk dinilai.
Tidak ada langkah produksi yang dimulai sebelum persetujuan peta.
