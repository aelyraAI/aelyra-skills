# TryBuzzer Threads Campaigns

## Source the draft from the official assets

- Take every draft image and video from the campaign Drive asset folder and let the caption theme follow what those files actually show.

- Never build a draft from the campaign banner or a rendered banner image when the Drive folder is available.

- Post a photo as a photo and a video as a video and never turn a photo into a video for a Threads post.

- When the Drive folder cannot be opened, do not ask for access and do not stop work. Build the draft from your own idea inspired by the wording and examples in the brief and use an official campaign visual when one is available.

- Treat a missing brief link as unproven rather than as proof that no brief exists. The public campaign field can be empty while the authenticated brief source returns the real document link, so fetch the brief through the authenticated source before you call a draft ready.

- Treat accepting_submissions false as the closed signal when you check a campaign before a slot airs, because the campaign status can still read active while submissions are closed. Pull the draft when the campaign is closed and never let a closed campaign take a new slot.

## Write the caption and first reply

- Write captions in lowercase gaul Indonesian that sound like a person typing on a phone, with short uneven lines, a concrete detail from the assets or the brief, and a light question that invites a reply.

- Avoid tidy advertising structure and stock AI phrasing and keep emoji to at most one per post.

- Keep every hook caption and every reply caption at 500 characters or fewer and aim for 490 or fewer and count links as characters. Treat a draft over 500 characters as not ready to air and shorten it before it airs.

- Give every post a reply caption from the same account so it reads as a thread in two parts. Leave one thing deliberately unfinished in the main post and let the reply finish it with the answer, the twist, the debate or the required link.

- Treat a draft without a reply caption as not ready to air.

- When you publish through the official Threads API, never put a required hashtag first in any caption or reply text. The first hashtag in API published text loses its hash mark and becomes a topic tag, while posts published through the browser do not lose it.

- Start every caption and reply that you publish through the official Threads API with a sacrificial natural hashtag that the brief does not require. Put every required hashtag after that first hashtag, so each required hashtag keeps its hash mark.

- After a post airs through the official Threads API, read the live post and check that every required hashtag still shows its hash mark. When the first hashtag lost its mark, publish a correction reply that starts with a sacrificial hashtag and then repeats the required hashtags in full.

- Attach two or three media files from the campaign asset folder to every post. Put the main video first when video and photos are both available, then add the best photos, and drop any file that is blurry, dark or irrelevant to the campaign.

- Use only one official campaign visual when the Drive folder is locked and the fallback rule applies.

- For a Keranjang Kuning campaign, put the required product link in the reply to the main post and never in the caption. Treat a Keranjang Kuning draft without the link in its reply as not ready to air.

## Check the rules before a slot airs

- Run the correction gate on every queued draft that airs more than 60 minutes later and fix its hook and reply against the brief before it airs.

- Before a slot airs, check the length of every queued hook and reply and skip a draft over 500 characters and move to the next due draft instead of letting it block the queue. Take due drafts in scheduled time order with the earliest first, so one broken draft cannot block a later draft.

- Check follow, mention, hashtag, first reply and submission for every queued draft and every published post against the brief, the caption and the live account data.

- Check the account profile each hour against the queued drafts and reconcile any post that aired without a recorded link. Publish its missing first reply, submit its link to TryBuzzer and mark it submitted, and flag any draft that was due more than an hour ago and is not on the profile.

- Keep the approved posting rhythm of six posts a day on the three hour grid and do not raise the pace without the user approving the change.

- Verify counts and results through the live source before you report them. Read the download list, the post and its reply count directly and correct a wrong report as soon as the check shows it.

- Re-download and diff a shared dashboard or worker file against its newest backup before you patch it, and save a backup first. A parallel chat can overwrite the same file, so never patch from a stale local copy.

## Publish, follow and submit

- Publish the main post first, then publish the reply, then follow the campaign brand account only when the upload has finished, and only then submit the post to TryBuzzer.

- Never follow a campaign brand in advance of its upload.

- Use only visible page elements when you drive the publishing flow in a browser. A hidden element that matches a locator can fail the whole run, so prefer a visible locator and confirm the element is shown before you click it.

- Record the newest post code on the account profile before you publish, so you can identify the new post after it airs. When the network capture gives no post link, as with a photo carousel, take the new post code from the profile instead of reporting a failure, then continue with the reply, the follow and the submission.

- Never retry a publish blindly when the result is uncertain. Look the post up first, because the first attempt may already have published.

- Return the live post link and name any step that failed and why, instead of reporting a post as published from an accepted upload alone.

## Available connectors

- Threads for text and media posts, carousels and replies.

- Google Drive for finding and reading the campaign asset folders and brief documents.

- Use muse.connector_search to find other connectors and muse.skill_search to find related skills.

- If nothing here fits, look on the web for a maintained API or MCP server and set it up with Custom Connectors and MCPs, or build a custom connector.

## Websites

- TryBuzzer for campaign briefs, campaign status and submission state. Carry the campaign name and the brief link into the check and verify the status and the required rules there before a draft airs.

## Alternatives for better results

- Change one thing at a time across posts, such as the opening line or the media order, so the results show what made the difference.

- Prefer the strongest real asset over a polished render when the two disagree, because the brief rewards what the assets actually show.

- Keep the correction gate and the hourly rule check running quietly and report only a new violation or a failed publish, so routine runs stay silent.
