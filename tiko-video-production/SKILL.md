---
name: tiko-video-production
description: Doktrin produksi video channel Tiko (fakta horor/nyata, Remotion 2.5D): voice-first, safe zone, gaya visual & narasi yang konsisten antar episode. Wajib dipakai setiap membuat video Tiko.
---

# Produksi Video Tiko — Doktrin Tetap

## Gerbang (tidak bisa dilewati)
1. Fakta diverifikasi dari sumber terbuka SEBELUM naskah ditulis; daftar "fakta terkunci" ada di peta.
2. PETA KOREOGRAFI ditulis lengkap (per adegan: narasi, aksi visual per kata, kamera, lapisan, properti, teks layar, spek gerak) dan DISETUJUI user sebelum render apa pun.
3. Produksi mengikuti peta baris demi baris. Penyimpangan = lapor ke user.

## Voice-first (WAJIB, urutan tetap)
1. Narasi dibuat SATU panggilan ke ElevenLabs key pool: POST https://agentz.my.id/api/elevenlabs-pool/tts-proxy dengan header `User-Agent: Mozilla/5.0` dan `X-Auth-Token` (token dari user; JANGAN tulis nilainya di file mana pun) + JSON {text, voice_id: "pNInz6obpgDQGcFmaJgB", model_id: "eleven_multilingual_v2"}. Tanpa dua header itu request menggantung.
2. Transkrip audio hasil dengan faster-whisper (helper ~/workspace/tools/faster-whisper/transcribe.py — muat audio sebagai numpy, jangan path langsung) → words.json bertimestamp.
3. Batas adegan & semua gerakan kunci dihitung dari timestamp kata jangkar di words.json. Animasi mengikuti suara, BUKAN sebaliknya.
4. Karaoke kata-per-kata digenerate dari words.json yang sama.

## Safe zone (kanvas 1080×1920) — SEMUA teks wajib di dalam kotak aman
- Kotak aman teks: x 47–1033, y 114–1543.
- Kolom kanan x > 880: KOSONG dari teks penting (rel tombol like/komen/share).
- Bawah y > 1550: hindari (area caption platform). Karaoke ditempatkan tengah-bawah di y ±1280–1480, rata tengah-kiri.
- Chip & judul: atas-kiri (x 60–700, y 120–300). Pop kata raksasa: tengah (y 700–1100).

## Identitas visual (konsisten semua episode)
- Palet channel: latar biru malam gelap (navy→teal), judul putih tebal, sorotan blok kuning #FFD21A teks hitam, lencana merek lingkaran oranye.
- Font: Plus Jakarta Sans (fallback: sans-serif tebal sistem) untuk judul & pop; karaoke putih tebal outline hitam.
- Setiap frame penuh: tekstur permukaan, vignette lembut, bayangan halus, partikel melayang sesuai lokasi. Tidak ada frame kosong.
- Angka selalu jadi BENDA di dalam dunia (meteran, papan, termometer, layar), bukan sekadar overlay.
- Tiko: ciri terkunci (topi kuning miring, kaos oranye logo matahari, celana pendek biru, ransel biru, sepatu merah); rig SVG parametrik di ~/workspace/tools/tiko-rig/.

## Struktur narasi (adaptasi Hook→Tension→Solution→Result untuk fakta horor)
Hook "kamu" (penonton ditempatkan di lokasi) → Mekanisme (diajarkan visual, potongan melintang di tengah aksi) → Kejadian (gerakan jatuh tepat di kata) → Hening (satu adegan kamera terkunci, musik menipis) → Warisan masa kini → Penutup: pertanyaan personal + jendela permintaan episode berikutnya.

## Standar gerak
Easing semua gerak kecuali ancaman (gas/asap/api konstan). 1 gerak utama + ≥2 gerak sekunder per adegan. Tiko tidak membeku >2 dtk kecuali momen hening terencana. Ganti latar tiap ±6–10 dtk.

## Mesin komentar (periksa sebelum kunci naskah)
Minimal 3 dari: frasa yang bisa ditiru massal · nama tempat spesifik untuk check-in nostalgia · debat dua kubu dibiarkan menggantung · 1 celah fakta yang dijawab di komentar pin · pertanyaan penutup yang bisa dijawab dari pengalaman pribadi · jendela permintaan episode berikutnya.

## Render & kirim
- Remotion 1080×1920, 30fps. Musik: placeholder synth v1 sampai lisensi proper diganti (WAJIB sebelum tayang publik).
- Setelah render: verifikasi frame dari file final (bukan dari janji), lalu re-encode kompat: `ffmpeg -c:v copy -c:a aac -b:a 160k -ar 48000 -movflags +faststart` (MP4 mentah Remotion bisu di pemutar chat user).
- Kirim versi -kompat untuk dinilai user.

## FORMAT FINAL: DUNIA 3D + KAMERA MENYUSURI + KARAKTER 2D (perintah user 2026-11-10 12:01)
Meniru teknik video X @caesarscales (riset: `~/workspace/x-caesarscales/riset-caesarscales.md`). Jalur 2D SVG DITINGGALKAN untuk video Tiko.
- **Lingkungan = Three.js sungguhan** di proyek `~/workspace/tools/tiko-3d/` (@remotion/three): terrain displaced, tekstur kanvas prosedural (batu/tanah), cahaya & bayangan nyata, kabut untuk kedalaman, properti 3D berfungsi (pipa berasap, api menyala, danau).
- **Kamera bergerak MENYUSURI ruang**: jalur CatmullRom (CameraRig dari `three/common.tsx`, cam(t) deterministik dari frame) — turun/dolly/orbit ringan + goyang tangan halus; arah pandang menyapu subjek sesuai urutan narasi.
- **Tiko = billboard 2D di dalam dunia 3D** (persis referensi): PNG transparan dari rig (`tiko-rig` komposisi TikoCard → `tiko-3d/public/tiko-alpha.png`), plane yang selalu menghadap kamera (rotY dari posisi kamera), bob napas + goyang ringan. MUAT TEKSTUR DI POHON DOM dengan delayRender/continueRender lalu oper sebagai prop — useLoader+Suspense di dalam canvas TIDAK termuat saat render Remotion; delayRender di dalam canvas memicu error React #310.
- **Gerak prosedural detail untuk semua penghuni**: penambang 3D bergait penuh (ayun kaki/lengan berlawanan dari pinggul/bahu, bob 2x frekuensi langkah, keranjang berayun telat fase, lampu kepala + glow), api flicker multi-frekuensi + point light ikut berdenyut, asap naik-membesar-memudar berputar, bara beterbangan berkelok.
- Cahaya malam harus TERANG TERBACA (referensi terang): ambient ~0.85, hemi ~0.95, directional ~1.9; point light api intensitas fisik (ratusan, decay ~1.7). Material jangan digelapkan pengali warna di bawah tekstur.
- Bukti standar = KLIP adegan pertama (Ijen3D) sebelum produksi penuh; nilai dari frame yang diekstrak dari file video final.

## FILE MASTER & FINISHING (ditambahkan 2026-11-10)
- Sebelum produksi, baca file master proyek: ~/workspace/goals/tiko-fact-video-channel/files/master-proyek-tiko.md (identitas, folder, spesifikasi, glosarium tetap, gerbang persetujuan).
- Audio final WAJIB −14 LUFS terintegrasi (±0,5), true peak ≤ −1 dBTP, dinormalkan dengan ~/workspace/tools/finishing.sh (loudnorm 2-pass) lalu diukur ulang sebagai verifikasi. Mengatur volume pakai rasa dilarang.
