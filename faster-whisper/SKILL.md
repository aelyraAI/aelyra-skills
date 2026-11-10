---
name: faster-whisper
description: Automatic captions/transcription with faster-whisper (OpenAI Whisper via CTranslate2, runs locally on CPU). Use when a video needs subtitles, word-level timestamps for karaoke captions, or a transcript — e.g. IG/TikTok/YT shorts captions, timing narration, or transcribing reference videos. Installed and verified 2026-11-09.
---

# faster-whisper — caption otomatis dari suara

- Venv: `~/workspace/tools/faster-whisper-venv` (faster-whisper 1.2.1, CPU int8).
- Helper: `~/workspace/tools/faster-whisper/transcribe.py <media> [model] [bahasa]`
  menghasilkan `<nama>.srt` + `<nama>.words.json` (timestamp per kata, buat caption karaoke kata-per-kata).
- Model: `tiny`/`base` cepat untuk cek kasar; `small`/`medium` untuk hasil produksi bahasa Indonesia. Model terunduh otomatis ke cache HF saat pertama dipakai.
- PENTING (bug lingkungan): jangan beri path file langsung ke `transcribe()` — PyAV versi baru menolak argumen `metadata_errors`. Muat audio sebagai numpy float32 (ffmpeg -> wav 16k mono -> stdlib wave), seperti di helper.
- Terverifikasi: transkrip video referensi Roblox 25 detik (EN) akurat termasuk timestamp per kata.
- Pemakaian di proyek kita: caption karaoke video stickman fakta-nyata, subtitle reel IG (pipeline render_ig.py juga memakai faster-whisper), dan transkrip video referensi.
