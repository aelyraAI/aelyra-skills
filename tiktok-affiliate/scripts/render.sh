#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat >&2 <<'EOF'
Usage:
  render.sh --voice /path/to/voice.mp3 --out /path/to/out.mp4 --source /path/to/img1.jpg [--source /path/to/img2.jpg ...]

Notes:
  - This helper is intentionally simple and mirrors the plugin render defaults.
  - Prefer the `tiktok_affiliate` tool for full automation and metadata output.
EOF
  exit 2
}

voice=""
out=""
sources=()

while [[ $# -gt 0 ]]; do
  case "$1" in
    --voice)
      voice="${2:-}"
      shift 2
      ;;
    --out)
      out="${2:-}"
      shift 2
      ;;
    --source)
      sources+=("${2:-}")
      shift 2
      ;;
    *)
      echo "Unknown arg: $1" >&2
      usage
      ;;
  esac
done

if [[ -z "$voice" || -z "$out" || ${#sources[@]} -eq 0 ]]; then
  usage
fi

work="$(mktemp -d)"
trap 'rm -rf "$work"' EXIT

i=0
for src in "${sources[@]}"; do
  i=$((i + 1))
  ffmpeg -hide_banner -loglevel error -y \
    -loop 1 -t 2.5 -i "$src" \
    -vf "scale=1080:1920:force_original_aspect_ratio=decrease,pad=1080:1920:(ow-iw)/2:(oh-ih)/2,fps=30,format=yuv420p" \
    -an -c:v libx264 -pix_fmt yuv420p -r 30 \
    "$work/segment-$i.mp4"
done

{
  for seg in "$work"/segment-*.mp4; do
    printf "file '%s'\n" "${seg//\\/\/}"
  done
} > "$work/segments.txt"

ffmpeg -hide_banner -loglevel error -y \
  -f concat -safe 0 -i "$work/segments.txt" \
  -i "$voice" \
  -c:v libx264 -pix_fmt yuv420p -c:a aac -shortest \
  "$out"

echo "$out"

