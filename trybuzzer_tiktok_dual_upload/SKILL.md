# TryBuzzer TikTok Dual Upload

## Check the brief before you dual upload

- Read the campaign brief and dual upload only when the brief allows TikTok as a platform.

- Use the same finished video for Instagram and TikTok when the brief allows both platforms.

- Use the same hashtags and call to action on TikTok that the brief requires for Instagram unless the brief gives TikTok different wording.

- Check the brief for the TikTok minimum views and the claim deadline before you upload.

- Skip TikTok when the brief does not list TikTok as an allowed platform.

## Upload the same video to TikTok

- Open TikTok Studio in the browser and upload the same video file that aired on Instagram.

- Set the TikTok cover from the Instagram cover image before you publish.

- Keep the video public and keep the caption, hashtags and call to action from the brief.

- Read the live TikTok link after the upload and keep that link for submission.

- Never delete a TikTok video that you already submitted to TryBuzzer and never repost it to fix a cover.

- Record the TikTok link, the campaign name and the publish time in ~/workspace/.tools/trybuzzer_tiktok.json.

## Handle the whirl puzzle without breaking Instagram

- Treat the TikTok whirl puzzle as a manual step that automation cannot solve.

- Tell the user before you start that a whirl puzzle needs one manual solve from them when it appears.

- Never promise that you can drag the whirl slider yourself and never retry synthetic drags after one fails.

- Skip TikTok for that slot when the whirl puzzle appears or the TikTok session is dead.

- Let the Instagram post and its TryBuzzer submission finish normally when you skip TikTok.

- Report the skip in one line and ask the user for one manual solve so the next TikTok upload can run.

- Reuse the browser session after a manual solve and do not ask for another solve while the session stays logged in.

## Submit for TikTok and record the result

- Submit the live TikTok link to the same campaign in TryBuzzer and choose TikTok as the platform.

- Check that TryBuzzer records the video for TikTok and keep its status from the submission page.

- Treat Instagram views and TikTok views as separate counts and never add them together.

- Update the TikTok state file with the submission status and the link after TryBuzzer accepts the video.

## Available connectors

- [Instagram](/opt/hatch/connectors/instagram/CONNECTOR.md) for the Instagram reel that supplies the video and cover for the TikTok upload.

- Use `muse.connector_search` to find other connectors and `muse.skill_search` to find related skills.

- If nothing here fits, look on the web for a maintained API or MCP server and set it up with [Custom Connectors and MCPs](/opt/muse/skills/custom-connector-setup/SKILL.md), or build a custom connector.

## Websites

- [TikTok](https://www.tiktok.com/) for uploading the video through TikTok Studio. Carry the video file, the cover image and the brief caption into the browser task and verify the live video link there.

- [TryBuzzer](https://trybuzzer.com/) for campaign status and TikTok submission state. Carry the campaign name and the live TikTok link into the check and verify that the video is recorded for TikTok there.

## Alternatives for better results

- Ask the user for one manual whirl solve as soon as the puzzle first appears instead of spending a slot on repeated drag attempts.

- Keep the Instagram slot on its schedule and treat TikTok as an extra submission instead of a blocker.

- Use the Instagram cover image for every TikTok upload so the thumbnail keeps the headline that the automatic frame can lose.
