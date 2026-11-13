# Peta Koreografi (Rekonstruksi) — "IQ 400 / Brayden"

Rekonstruksi beat-per-beat dari video referensi yang dikirim user
2026-11-13 (46,03 detik, 1080x1920, 30fps). Peta ini membedah *bagaimana*
video itu digerakkan, supaya tekniknya bisa dipakai di produksi kita —
bukan untuk menyalin cerita, karakter, atau dialognya persis.

Pendamping: `report.md` di folder yang sama (bedah + transkrip terukur).
Timestamp kata dari faster-whisper atas file sumber.

## Spesifikasi global

| Item | Spek di video referensi |
| --- | --- |
| Kanvas | 1080x1920, 30fps, total 1.381 frame |
| Tempo narasi | ±250 kata/menit, deadpan, jeda hanya di pergantian babak |
| Caption | karaoke kata-per-kata, tengah-bawah (±y 1280-1480), putih tebal outline hitam, kata aktif lebih besar |
| Sistem papan IQ | billboard di atas kepala, mengikuti kepala dengan lag ±3-5 frame + bob kecil; ganti angka/warna = pop scale 1,25x → settle 1,0x dalam ±6 frame |
| Kode warna papan | biru = normal ±100 · hijau = tinggi 130-140 · emas + glow = 400 puncak · abu-abu kusam = 17 |
| Busur cahaya | luar angkasa gelap berbintang → siang terang keemasan (sekolah) → rumah redup kecoklatan → lorong nyaris gelap |
| Transisi | hard cut di kata jangkar; tidak ada dissolve. Punch-in dipakai sebagai "transisi di dalam adegan" |
| Musik/SFX | bed musik sangat tipis di bawah vokal; 1 SFX per momen kunci (lihat peta audio per adegan) |

## Inventaris set & rig (yang dipakai ulang)

- **Set:** luar angkasa + Bumi voxel · jalanan toko (IQ-O-MATIC, Burger) ·
  depan lab Brightvale · kamar tidur Brayden · kelas (papan rumus, deret
  meja) · kantor depan sekolah (mesin kopi) · kantin · koridor "PERIOD 5" ·
  jalan pulang perumahan · interior rumah (pintu depan, ruang keluarga,
  lorong).
- **Karakter:** Brayden (kaus bergaris) · Adik (hijau, lebih kecil) · Guru
  matematika (kacamata, IQ 118) · Guru kantor · Dokter 140 + Peneliti 130 ·
  Trio burger 98/100/102 · Murid-murid latar.
- **Rig bersama:** kepala (tilt/nod/look-at), alis, kelopak, mulut
  (datar/senyum/terbuka/O), lengan bahu+siku, kaki pinggul, torso lean,
  gait prosedural, pose duduk, pose rebahan. Properti dipegang menempel ke
  tulang tangan (hand socket).

---

## Adegan 1 — 0:00-0:03,8 (frame 0-114) · Premis dunia

- **Narasi:** "In this world, everyone has a number floating above their
  head showing how intelligent they are."
- **Aksi per kata:**
  - "In this world" (0,0-0,7): Bumi kubus voxel berputar perlahan di luar
    angkasa, bintang parallax, awan voxel melayang lewat.
  - "everyone has a number floating" (1,0-2,0): cut ke jalanan; deretan
    karakter dengan papan IQ berbeda-beda terlihat sekaligus.
  - "above their head" (2,0-2,7): kamera turun dari papan "IQ-O-MATIC" ke
    kepala-kepala karakter.
  - "showing how intelligent they are" (2,7-3,8): tahan di medium shot
    jalanan; semua papan terbaca dalam satu frame.
- **Kamera:** orbit ±30° + push-in lambat di Bumi (ease-in-out), lalu cut;
  tilt-down + dolly-in pendek di jalanan. Tidak pernah diam total.
- **Lapisan:** depan = karakter baris pertama; tengah = papan toko;
  belakang = bangunan voxel + langit.
- **Ekspresi:** semua datar/bosan (alis lurus, kelopak setengah).
- **Rig:** idle bob napas 2 detik/siklus, kepala menoleh kecil; papan
  melayang lag mengikuti kepala.
- **Teks layar:** papan toko "IQ-O-MATIC"; papan IQ tiap karakter.
- **SFX:** bed musik masuk dari frame 0; tanpa SFX khusus.

## Adegan 2 — 0:04,0-0:08,8 (frame 120-264) · Normal vs jenius

- **Narasi:** "Most people sit around 100. Some people hit 130, 140. Those
  are the doctors and the researchers."
- **Aksi per kata:**
  - "Most people sit around 100" (4,0-5,2): trio 98/100/102 duduk di bangku
    depan toko Burger, satu memegang burger.
  - "Some people hit 130, 140" (5,4-7,0): cut ke depan lab; papan 130 lalu
    140 terbaca bergantian.
  - "doctors and the researchers" (7,5-8,8): dua karakter jas lab tegak,
    satu memegang clipboard, satu tangan di saku jas.
- **Kamera:** static medium (trio) → cut → pull-back pelan membuka papan
  nama lab "BRIGHTVALE MEDICAL + RESEARCH LAB".
- **Ekspresi:** trio bosan/mengantuk; dokter senyum tipis, tegak.
- **Rig:** pose duduk (pinggul 90°, tangan di pangkuan); pose berdiri
  shifting weight ±1 siklus.
- **Teks layar:** papan toko/lab sebagai penanda status sosial.
- **SFX:** — (hening fungsi: kontras status dibaca visual saja).

## Adegan 3 — 0:09,2-0:12,8 (frame 276-384) · Bangun jadi 400

- **Narasi:** "A kid named Brayden woke up one morning and his number said
  400. He was excited."
- **Aksi per kata:**
  - "woke up one morning" (9,9-10,7): Brayden rebahan di kasur, mata
    terpejam, papan masih biru "IQ 103".
  - "his number said 400" (11,0-11,9): ia duduk; papan pop: angka berganti
    103 → 400, warna biru → emas + glow, scale memantul.
  - "He was excited" (12,3-12,8): punch-in ke wajah: mata melebar, mulut
    terbuka → senyum lebar, dua lengan stretch ke atas.
- **Kamera:** wide kamar → punch-in cepat (zoom ±1,6x dalam ±8 frame,
  ease-out) tepat di kata "400".
- **Lapisan:** depan = kasur + Brayden; tengah = meja/lampu kamar;
  belakang = dinding + jendela pagi.
- **Ekspresi:** terpejam → kaget → senang (tiga keyframe ekspresi dalam
  3,5 detik — perubahan ekspresi terpadat di video).
- **Rig:** rebahan → duduk (torso rotate up) → stretch dua lengan; rahang
  membuka; papan pop mengikuti kepala.
- **SFX:** chime/denting emas sinkron frame pergantian papan.

## Adegan 4 — 0:13,0-0:15,2 (frame 390-456) · Tes A+

- **Narasi:** "He went to school and aced a test he never studied for."
- **Aksi per kata:**
  - "went to school" (13,0-13,6): wide kelas, deret meja, murid-murid
    mengerjakan tes.
  - "aced a test" (13,8-14,3): push-in ke meja Brayden; kertas tes terisi
    penuh.
  - "never studied for" (14,5-15,2): kertas terlihat jelas: nilai "A+ 100%"
    besar; Brayden mata terpejam puas, satu lengan terangkat.
- **Kamera:** wide → push-in sedang berhenti di close-up kertas.
- **Ekspresi:** Brayden smug; teman di belakang menoleh heran (alis naik).
- **Rig:** pose duduk menulis untuk latar; Brayden freeze pose selebrasi.
- **Properti hero:** kertas tes — nilai ditulis besar di permukaan benda.

## Adegan 5 — 0:15,3-0:17,4 (frame 459-522) · Mesin kopi

- **Narasi:** "He fixed the coffee machine in the front office by hitting
  it once."
- **Aksi per kata:**
  - "fixed the coffee machine" (15,3-16,2): guru di depan mesin kopi,
    papan kecil di mesin: "BROKEN again :(".
  - "in the front office" (16,2-16,8): kamera geser, ruang kantor terbaca.
  - "by hitting it once" (16,9-17,4): Brayden masuk frame, SATU ayunan
    lengan memukul mesin; mesin menyala normal.
- **Kamera:** medium static, pan kecil mengikuti Brayden masuk.
- **Ekspresi:** guru lelah/pasrah; Brayden datar seolah sepele.
- **Rig:** ayunan lengan tunggal (anticipation 3 frame, pukul, settle);
  guru idle pasrah.
- **SFX:** bunyi pukul pendek + bunyi mesin menyala, tepat di kata "once".

## Adegan 6 — 0:17,7-0:20,0 (frame 531-600) · Guru terpaku

- **Narasi:** "He explained something to his math teacher and she just
  stood there."
- **Aksi per kata:**
  - "explained something" (17,7-18,3): Brayden gestur satu tangan ke arah
    papan penuh rumus.
  - "to his math teacher" (18,5-19,0): two-shot Brayden + guru IQ 118.
  - "she just stood there" (19,4-20,0): close-up guru: tangan di dagu,
    alis naik, mulut sedikit terbuka — lalu FREEZE total sampai cut.
- **Kamera:** two-shot → push-in/potong ke close-up guru di kata "stood".
- **Ekspresi:** guru = punchline (bingung terpukau); Brayden yakin.
- **Rig:** Brayden gestur berirama 2 ketukan; guru freeze (semua tulang
  berhenti, termasuk bob napas — diamnya disengaja dan terbaca).

## Adegan 7 — 0:20,2-0:23,7 (frame 606-711) · THE BRAIN + 10.000 followers

- **Narasi:** "By lunch he had a nickname. By fifth period he grew to
  10,000 followers."
- **Aksi per kata:**
  - "By lunch" (20,2-20,5): Brayden jalan di kantin membawa nampan.
  - "he had a nickname" (20,5-21,2): papan pelangi "THE BRAIN" besar di
    belakangnya terbaca.
  - "By fifth period" (21,6-22,2): cut koridor, papan "PERIOD 5", Brayden
    dikerumuni teman yang mengangkat HP.
  - "grew to 10,000 followers" (22,5-23,7): extreme close-up HP: profil
    "BLOKSTAR @brayden400", angka followers beranimasi naik 9.108 → 10.000.
- **Kamera:** tracking follow dari samping/depan mengikuti gait; cut ke
  koridor tetap tracking; cut ke close-up HP statis dengan angka bergerak.
- **Ekspresi:** Brayden senyum lebar kontinu; teman menganga.
- **Rig:** gait penuh: kaki ayun dari pinggul, lengan berlawanan, bob
  vertikal ±2x frekuensi langkah, torso lean ke depan; nampan di dua
  tangan tetap level (properti tidak ikut bob — "dikunci" ke dunia).
- **SFX:** tik/notifikasi berurutan selama angka followers naik, berhenti
  tepat di 10.000.

## Adegan 8 — 0:23,9-0:28,2 (frame 717-846) · Unstoppable → 17

- **Narasi:** "He walked home feeling unstoppable. Then he opened the
  front door and his number dropped to 17."
- **Aksi per kata:**
  - "walked home feeling unstoppable" (23,9-25,2): low angle, Brayden
    jalan di perumahan, dagu naik, dada busung.
  - "Then he opened the front door" (25,7-26,8): cut interior rumah yang
    redup; tangan mendorong pintu.
  - "his number dropped to 17" (27,2-28,2): papan pop turun: emas 400 →
    abu-abu 17; cahaya frame ikut meredup; langkah berhenti mendadak.
- **Kamera:** low angle tracking (kamera di ±40% tinggi karakter, tilt ke
  atas) → cut → static dari dalam rumah menghadap pintu.
- **Ekspresi:** puas menyipit → alis turun, mata melirik samping, mulut
  mengecil.
- **Rig:** gait percaya diri (stride panjang, torso tegak) → stop 1 frame →
  bahu turun, kepala siap menoleh.
- **SFX:** suara pintu; bed musik menipis mulai frame pintu terbuka;
  bunyi "drop" pelan sinkron pergantian papan.

## Adegan 9 — 0:28,2-0:35,3 (frame 846-1059) · Reveal adik

- **Narasi:** "He became nervous and looked around. His little brother was
  standing in the living room holding a screwdriver, a lamp, and a live
  extension cord. His number said 400."
- **Aksi per kata:**
  - "became nervous and looked around" (28,2-29,7): close Brayden, kepala
    menoleh kiri-kanan 2x, bahu naik.
  - "little brother was standing in the living room" (30,0-31,4): pan
    pelan membuka ruang keluarga; adik di tengah ruangan.
  - "holding a screwdriver" (31,8-32,2): kamera menyorot tangan kanan.
  - "a lamp" (32,6-32,9): sorot tangan kiri, lampu terangkat.
  - "a live extension cord" (33,3-34,2): ujung kabel berpercik listrik.
  - "His number said 400" (34,4-35,3): tilt-up ke papan hijau "IQ 400" di
    atas kepala adik.
- **Kamera:** pan menyapu satu arah (mengikuti arah tolehan Brayden) —
  penonton menemukan adik bersamaan dengan Brayden. Close-up properti
  berurutan mengikuti urutan kata narasi persis.
- **Ekspresi:** adik senyum polos bangga; Brayden panik diam di latar.
- **Rig:** adik: dua lengan terangkat, properti beda per tangan, bob kecil
  ±1 siklus/2 detik. Brayden: freeze di background (depth staging).
- **SFX:** percik listrik pendek berulang 2-3x di kata "live extension
  cord"; suasana ruangan hening.

## Adegan 10 — 0:35,8-0:45,9 (frame 1074-1377) · Sistem + punchline ganda

- **Narasi:** "Turns out the system didn't hand out extra intelligence. It
  just relocates it around the house. Brayden spent his best day ever being
  excellent while his brother tried to play Roblox with his toes. They're
  both currently sitting in the hallway with the power off."
- **Aksi per kata:**
  - "didn't hand out extra intelligence" (35,8-37,7): wide two-shot
    Brayden (17, abu-abu) dan adik (400, hijau) satu frame — perbandingan
    status terbaca tanpa kata tambahan.
  - "relocates it around the house" (38,1-39,5): papan/angka divisualkan
    berpindah konteks rumah; kamera sedikit pull-back membuka ruangan.
  - "best day ever being excellent" (39,8-41,7): cutaway kelas: Brayden
    angkat trofi, confetti jatuh, teman bersorak.
  - "play Roblox with his toes" (42,1-43,7): adik selonjor depan TV
    (layar game Roblox), kaki terangkat memainkan kontroler dengan jari
    kaki yang bergerak-gerak.
  - "sitting in the hallway with the power off" (44,0-45,9): cut lorong
    gelap; berdua duduk di lantai, lesu; tahan sampai akhir tanpa gerak.
- **Kamera:** wide static (penjelasan) → cutaway medium (trofi) → medium
  TV → static lorong gelap, kamera terkunci penuh sebagai beat hening
  penutup.
- **Ekspresi:** trofi: teriak senang; TV: fokus datar; lorong: mata sayu
  berdua.
- **Rig:** confetti = partikel jatuh prosedural; jari kaki wiggle (rig kaki
  dipakai sebagai lelucon); adegan akhir semua rig diam (mati gaya =
  listrik padam).
- **SFX:** sorakan pendek + confetti di trofi; bunyi game 8-bit dari TV;
  akhir: keheningan, tanpa musik penutup.

---

## Ringkasan repertoar gerak (untuk ditiru)

| Teknik | Dipakai di | Aturan pakainya di video ini |
| --- | --- | --- |
| Orbit + push-in | Adegan 1 | Hanya untuk pembuka dunia; lambat, satu arah |
| Tilt-down dari papan ke subjek | Adegan 1, 9 | Papan/tanda selalu dibaca sebelum orangnya |
| Punch-in di kata jangkar | Adegan 3 ("400"), 6 ("stood") | Zoom cepat ±8 frame, ease-out, berhenti di close-up |
| Tracking follow gait | Adegan 7, 8 | Kamera sejajar langkah; properti di tangan dikunci level |
| Low angle kuasa | Adegan 8 | Hanya saat karakter di puncak; dicabut begitu ia jatuh |
| Pan reveal satu arah | Adegan 9 | Pan mengikuti arah pandangan karakter utama |
| Freeze rig sebagai reaksi | Adegan 6, 9, 10 | Karakter pembanding membeku total, termasuk bob napas |
| Kamera terkunci penutup | Adegan 10 | Beat hening terakhir: 0 gerak kamera, 0 gerak rig |
| Pop papan (scale + warna) | Adegan 3, 8, 9 | Setiap perubahan status = pop 1,25x → settle ±6 frame + SFX |

## Peta audio ringkas

| Waktu | Isi |
| --- | --- |
| 0:00-0:46 | Narasi deadpan kontinu ±250 kata/menit; bed musik tipis di bawah vokal |
| 0:11,9 | Chime emas — papan jadi 400 |
| 0:17,3 | Pukul + mesin menyala — kata "once" |
| 0:22,8-0:23,7 | Tik notifikasi — followers naik ke 10.000 |
| 0:26,5 | Pintu + bed menipis — masuk rumah |
| 0:27,7 | Drop pelan — papan jadi 17 |
| 0:33,5-0:34,2 | Percik listrik — kabel ekstensi |
| 0:40-0:41,7 | Sorakan pendek — trofi |
| 0:42-0:43,7 | Bunyi game 8-bit — TV Roblox |
| 0:44-0:46 | Hening — listrik padam, tanpa penutup musik |

## Catatan penerapan untuk produksi kita

- Peta ini adalah *rekonstruksi teknik*: repertoar kamera, sistem papan,
  aturan satu-kalimat-satu-bukti, dan peta audionya boleh dipakai untuk
  ide orisinal kita (PixelKai Universe / Roblox Short 2D / voxel what-if).
- Yang TIDAK ditiru: cerita Brayden, nama, dialog, dan susunan twist-nya
  persis — sesuai aturan komisi Roblox Short 2D (referensi hanya untuk
  teknik).
- Standar kepadatan visual-director tetap berlaku saat peta ini diwujudkan:
  tiga lapisan terisi, permukaan bertekstur, benda hero lima lapis, gait
  prosedural penuh, dan QA still multi-titik sebelum klip dikirim.
