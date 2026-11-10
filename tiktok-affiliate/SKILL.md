---
name: tiktok-affiliate
description: Automate a faceless TikTok Shop affiliate workflow from product discovery to rendered upload-ready video.
metadata: { "openclaw": { "skillKey": "tiktok-affiliate", "requires": { "bins": ["ffmpeg"] } } }
command-dispatch: tool
command-tool: tiktok_affiliate
command-arg-mode: raw
---

# TikTok Affiliate

Use this skill to automate:

1. Product discovery and filtering in TikTok Shop Creator Center
2. Script generation (hook, benefit, CTA)
3. External TTS voiceover generation
4. FFmpeg faceless video rendering
5. Upload packaging (caption, hashtags, affiliate disclosure)

## Browser workflow

- Use the `browser` tool to log in manually (never paste credentials into prompts).
- Browse Open Collaborations and collect product cards with:
  - title
  - description
  - commission rate
  - affiliate URL
  - media asset paths saved under `/tmp/openclaw/uploads` (or `${os.tmpdir()}/openclaw/uploads` fallback)
- Pass those products to `tiktok_affiliate action=score_products`.

## Commands

These slash commands dispatch directly to `tiktok_affiliate`:

```text
/tiktok_affiliate score_products --niche "kitchen gadgets" --top-k 5
/tiktok_affiliate session_status
/tiktok_affiliate ensure_tiktok_session --wait-for-login true --max-wait-ms 300000
/tiktok_affiliate discover_products_live --niche "kitchen gadgets" --limit 15 --max-pages 4
/tiktok_affiliate extract_products --niche "kitchen gadgets" --snapshot-file "/tmp/openclaw/tiktok-snapshot.txt" --limit 15
/tiktok_affiliate generate_script --niche "desk setup" --product-title "Cable Organizer" --commission-rate 0.35
/tiktok_affiliate download_assets --asset-url "https://cdn.example.com/p1.jpg" --asset-url "https://cdn.example.com/p2.mp4" --max-assets 8
/tiktok_affiliate synthesize_voiceover --script "Hook...\nBenefit...\nCTA..."
/tiktok_affiliate render_video --source-path "/tmp/openclaw/uploads/p1.jpg" --source-path "/tmp/openclaw/uploads/p2.jpg" --voiceover-path "/tmp/openclaw/uploads/tiktok-affiliate/voice.mp3" --style-preset product_showcase --transition-style fade --background-music-path "/tmp/openclaw/uploads/tiktok-affiliate/music-bed.mp3" --burn-in-captions true
/tiktok_affiliate run_pipeline --niche "home gym" --product-title "Ab Roller" --commission-rate 0.4 --source-path "/tmp/openclaw/uploads/ab1.jpg" --source-path "/tmp/openclaw/uploads/ab2.jpg" --style-preset text_heavy --subtitle-text "Top affiliate pick this week"
/tiktok_affiliate upload_to_tiktok --video-path "/tmp/openclaw/uploads/tiktok-affiliate/faceless-video.mp4" --publish-mode review_only
/tiktok_affiliate history_status --history-limit 20
/tiktok_affiliate run_full_dry_run --niche "kitchen gadgets" --product-title "Mini Blender"
/tiktok_affiliate create_upload_plan --script "Hook...\nBenefit...\nCTA..." --affiliate-url "https://www.tiktok.com/shop/product/123" --hashtag "TikTokShop"
/tiktok_affiliate build_cron_job --job-name "Daily Shop Run" --cron-expr "0 9 * * *" --timezone "America/New_York"
```

## Scheduling

Use `cron` for recurring runs. Example:

```text
1) Collect products with browser and save assets.
2) Run /tiktok_affiliate run_pipeline ...
3) Use browser upload flow to publish on TikTok.
4) Use /tiktok_affiliate build_cron_job ... for a ready-made cron template.
```

## Notes

- `run_pipeline` returns `MEDIA:` paths for generated voiceover and final video.
- If external TTS is not configured, pass `--voiceover-path` manually or configure `plugins.entries.tiktok-affiliate.config.tts`.
- `--dry-run` is useful for validating arguments before API/render costs.
- Use `--human-handoff true` to return handoff checkpoints instead of hard failing when selectors drift.
- Use `--post-daily-cap` and `--post-cooldown-minutes` for per-run publish guardrail overrides.
