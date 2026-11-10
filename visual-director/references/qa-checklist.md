# Checklist QA Frame — Visual Director
Nilai setiap still (≥4 titik waktu per adegan). Semua item WAJIB harus lulus
sebelum klip dirender. Catat 3 perbedaan terbesar vs referensi sebelum memperbaiki.

## Geografi & Logika [WAJIB]
- [ ] Semua jalur menempel permukaan; tidak melintasi air/rintangan.
- [ ] Semua benda duduk di permukaan (sejajar normal lereng, tidak melayang).
- [ ] Struktur mengikuti fungsi aslinya (pipa mengalirkan, jalur menghubungkan
      dua tempat yang masuk akal, tanda terpasang pada tiang).
- [ ] Skala antarobjek masuk akal (manusia vs pipa vs danau vs dinding).

## Kepadatan [WAJIB]
- [ ] FG ≥3, MG ≥6, BG ≥4 elemen terbaca; tidak ada >25% frame kosong polos.
- [ ] ≥3 properti bercerita yang menjelaskan aktivitas tempat.
- [ ] Objek berkelompok alami (rapat di zona aktivitas, jarang di luar).

## Tekstur & Permukaan [WAJIB]
- [ ] Tidak ada permukaan polos tanpa tekstur di frame.
- [ ] Tekstur punya ≥3 lapis detail (speckle + struktur + noda).
- [ ] Warna sesuai dossier referensi (palet hex dibandingkan).

## Cahaya [WAJIB]
- [ ] ≥3 sumber bermotif; arah bayangan konsisten.
- [ ] Tidak ada wilayah penting yang hitam total tak terbaca, dan tidak ada
      ledakan putih (glow bertumpuk) yang menghapus detail.
- [ ] Subjek utama terbaca jelas dalam <1 detik.

## Gerak (cek di klip/dua still berurutan)
- [ ] ≥2 gerak ambient hidup; gerak sekunder berjedafase dari gerak utama.
- [ ] Kamera bergerak halus dengan paralaks; tidak ada lompatan jalur.
- [ ] Gait karakter: kaki mengayun, lengan berlawanan, muatan berayun telat.

## Karakter & Teks
- [ ] Karakter terbaca ekspresinya di ukuran final; pose sesuai beat peta.
- [ ] Teks hanya di safe zone (x 47–1033, y 114–1543 @1080×1920), kolom kanan
      x>880 kosong; teks bukti di dalam dunia terbaca tapi tidak menutupi subjek.

## Audio & Kirim [WAJIB]
- [ ] Loudness file final TERUKUR −14 LUFS ±0,5 dan true peak ≤ −1 dBTP
      (loudnorm 2-pass via ~/workspace/tools/finishing.sh — bukan perkiraan).
- [ ] Narasi sinkron dengan jangkar visual di kata yang direncanakan.
- [ ] File final diverifikasi dari file videonya (frame diekstrak dari MP4).
- [ ] Versi kompat terkirim + daftar jujur kekurangan tersisa ditulis.
