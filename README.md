# Aelyra Skills

Koleksi lengkap skill untuk **Aelyra** — asisten personal berbasis Muse yang beroperasi sebagai operator produksi: video fakta berkarakter (channel Tiko), otomasi campaign TryBuzzer (Threads/Instagram/TikTok), affiliate TikTok, dan produksi media kode (Remotion/Three.js/Blender).

Repo ini berisi **241 skill** aktif yang terpasang di `~/workspace/custom-skills/` — setiap folder adalah satu skill mandiri dengan berkas `SKILL.md` sebagai pintu masuknya: doktrin, alur kerja, dan resep yang dipakai Aelyra untuk menyelesaikan pekerjaan secara konsisten dari sesi ke sesi.

## Isi repo

- **Channel, Sosial & Produksi Konten** — 9 skill
- **Video, Motion & Web** — 67 skill
- **3D, Game & Aset** — 66 skill
- **Gaya Visual & Mood** — 40 skill
- **Audio, Suara & Musik** — 14 skill
- **Desain Game** — 13 skill
- **Lainnya & Utilitas** — 32 skill

## Cara memakai

1. Clone repo ini ke folder skill kustom Muse:

   ```bash
   git clone https://github.com/aelyraAI/aelyra-skills.git ~/workspace/custom-skills
   ```

2. Setiap skill dibaca dari `SKILL.md`-nya. Skill dengan folder `references/` menyimpan resep, log, dan checklist pendukung di dalamnya.
3. Skill buatan sendiri yang menjadi tulang punggung produksi:
   - `visual-director` — mesin kualitas video kode: protokol riset-dulu, anggaran kepadatan adegan, lingkaran QA frame, log cacat hidup, standar detail benda lima lapis, dan lipsync.
   - `tiko-video-production` — doktrin produksi channel fakta Tiko: gerbang peta koreografi, voice-first ElevenLabs, safe zone, mesin komentar.
   - `trybuzzer_threads_campaigns` — alur campaign TryBuzzer Threads dari aset resmi sampai terbit dan submit.
   - `tiktok-affiliate` — alur produksi video affiliate TikTok.

## Katalog lengkap

### Channel, Sosial & Produksi Konten

| Skill | Deskripsi |
| --- | --- |
| `bang-motion` | Membangun motion graphic sinematik di browser (promo video, opener, intro, bumper, kinetic typography, explainer/video penjelas... |
| `captions-overlay` | Overlay doctrine for captions in HyperFrames videos — the caption MODEL (drop / rail / embed) and the rule that captions are an... |
| `clipforge-video` | Create short vertical videos (TikTok / Reels / Shorts / 抖音 / 快手 / 小红书) from a topic, a product link/image, or a script you alre... |
| `remotion-captions` | Transcribing, displaying and animating captions |
| `tiko-video-production` | Doktrin produksi video channel Tiko (fakta horor/nyata, Remotion 2.5D): voice-first, safe zone, gaya visual & narasi yang konsi... |
| `tiktok-affiliate` | Automate a faceless TikTok Shop affiliate workflow from product discovery to rendered upload-ready video. |
| `trybuzzer_threads_campaigns` | — |
| `trybuzzer_tiktok_dual_upload` | — |
| `visual-director` | Mesin kualitas untuk semua video gambar-kode (Remotion/Three.js/2D): protokol riset-dulu dari referensi nyata, anggaran kepadat... |

### Video, Motion & Web

| Skill | Deskripsi |
| --- | --- |
| `ai-video-gen` | / |
| `animate` | Make a short procedural animation in any style — an explainer, a history, a little story — as a single-file canvas video with a... |
| `animation` | Game-ready animation in Blender including walk/run/idle cycles, combat, mechanical animation, camera animation, constraints, Gr... |
| `avatar-video` | / |
| `beautiful-mermaid` | Render Mermaid diagrams as SVG and PNG using the Beautiful Mermaid library. Use when the user asks to render a Mermaid diagram. |
| `canopy-part-title` | Leaves sweep through the frame and part to reveal the headline. HyperFrames block, 1920×1080, 12s, 11 variables. |
| `changelog-video` | Turn a weekly changelog .md into a finished branded changelog video (square 1080, ~45-60s, Annie VO, animated brand background,... |
| `code-slice-hero` | A tiled headline surface flips cell by cell under a sweeping depth field to reveal the rear headline. HyperFrames block, 1920×1... |
| `create-video` | / |
| `cuboid-carousel` | A chain of bevelled cuboids rides a travelling wave as a content carousel. HyperFrames block, 1920×1080, 6.666666666666667s, 40... |
| `cut-the-curve` | The technique catalog: five velocity-matched SEAMS (zoom-through, INVERSE zoom-through, cut-the-curve, waterfall cut, rack-focu... |
| `d3-viz` | Creating interactive data visualisations using d3.js. This skill should be used when creating custom charts, graphs, network di... |
| `directing-stickman-videos` | Turn topics, requirements, articles or scripts into stickman videos. Director mode creates approved storyboards and standalone ... |
| `figma` | Bring Figma into a HyperFrames video - rendered assets, brand tokens, components, storyboard frames as reconstructed motion (fr... |
| `framer-motion` | Use when implementing Disney's 12 animation principles with Framer Motion in React applications |
| `glass-shard-title` | Glass shards fly in through fog and tile themselves into the headline. HyperFrames block, 1920×1080, 12.16s, 19 variables. |
| `gsap-core` | Official GSAP skill for the core API — gsap.to(), from(), fromTo(), easing, duration, stagger, defaults, gsap.matchMedia() (res... |
| `gsap-frameworks` | Official GSAP skill for Vue, Svelte, and other non-React frameworks — lifecycle, scoping selectors, cleanup on unmount. Use whe... |
| `gsap-performance` | Official GSAP skill for performance — prefer transforms, avoid layout thrashing, will-change, batching. Use when optimizing GSA... |
| `gsap-plugins` | Official GSAP skill for GSAP plugins — registration, ScrollToPlugin, ScrollSmoother, Flip, Draggable, Inertia, Observer, SplitT... |
| `gsap-react` | Official GSAP skill for React — useGSAP hook, refs, gsap.context(), cleanup. Use when the user wants animation in React or Next... |
| `gsap-scrolltrigger` | Official GSAP skill for ScrollTrigger — scroll-linked animations, pinning, scrub, triggers. Use when building or recommending s... |
| `gsap-timeline` | Official GSAP skill for timelines — gsap.timeline(), position parameter, nesting, playback. Use when sequencing animations, cho... |
| `gsap-utils` | Official GSAP skill for gsap.utils — clamp, mapRange, normalize, interpolate, random, snap, toArray, wrap, pipe. Use when the u... |
| `hyperframes` | Read first to make, edit, animate or render any video with HyperFrames (HTML rendered to video), including launch films, explai... |
| `hyperframes-animation` | All animation knowledge for HyperFrames — atomic motion rules, multi-phase scene blueprints, scene transitions, broader motion-... |
| `hyperframes-cli` | The HyperFrames CLI by job - scaffold, check, look at frames, edit the timeline, preview, render locally or in the cloud, publi... |
| `hyperframes-core` | The HyperFrames composition contract — build one renderable project. Use for composition structure, the `data-*` timing attribu... |
| `hyperframes-creative` | Non-animation creative direction for HyperFrames videos. Use for design spec (frame.md / design.md) handling, palettes, typogra... |
| `hyperframes-media` | Audio and media assets for HyperFrames compositions, produced by one shared audio engine (`scripts/audio.mjs`) — multi-provider... |
| `hyperframes-registry` | About 450 ready-made HyperFrames blocks and components installed as editable source - transitions, overlays, titles, kinetic ty... |
| `line-art-animation` | Build animated line-art components in SVG and TypeScript — thin ink lines on paper, people and animals that walk, run, cycle an... |
| `lottie-bodymovin` | Use when implementing Disney's 12 animation principles with Lottie animations exported from After Effects |
| `motion-doctrine` | GATEWAY — load FIRST before composing any HyperFrames animation or video. The high-level motion law that makes a multi-scene vi... |
| `motion-graphics` | > |
| `motionmaxxing` | Direct and build professional motion-graphics films (launch videos, product promos, feature reveals, brand stings, kinetic-type... |
| `orbit-card` | A single feature card orbits a dot sphere on approved Blender camera motion. HyperFrames block, 1920×1080, 10s, 4 variables. |
| `oversized-cursor` | House-style oversized macOS cursor technique for HyperFrames launch videos. Load whenever a scene involves cursors or a pointer... |
| `remotion` | Toolkit-specific Remotion patterns — custom transitions, shared components, and project conventions. For core Remotion framewor... |
| `remotion-best-practices` | Router for all Remotion skills |
| `remotion-create` | Create a new Remotion video |
| `remotion-docs` | Search Remotion documentation |
| `remotion-interactivity` | Structure Remotion markup for interactivity |
| `remotion-license` | Find Remotion license information, FAQs, terms, and where to buy a license. |
| `remotion-maps` | Remotion Map animation knowledge |
| `remotion-markup` | Content, animation and effects best practices |
| `remotion-multimedia` | Interacting with Mediabunny |
| `remotion-render` | Export a Remotion video |
| `remotion-saas` | Build an app with Remotion |
| `remotion-studio` | Preview a Remotion video |
| `remotion-to-hyperframes` | Bring existing video code or footage into HyperFrames and verify it frame by frame against the original - Remotion first, also ... |
| `remotion-upgrade` | Upgrade Remotion, and related packages |
| `reverse-any-video` | Rebuild any video file as an editable HyperFrames project - motion graphics, talking heads, live action or AI-generated footage... |
| `seam-craft` | Render-correctness doctrine for scene-to-scene seams in HyperFrames launch videos — the prerequisites that make transitions com... |
| `slideshow` | Build a HyperFrames slideshow to present live - slides, fragment reveals, branching hotspots and presenter mode with speaker no... |
| `tailwind-design-system` | Build scalable design systems with Tailwind CSS v4, design tokens, component libraries, and responsive patterns. Use when creat... |
| `vercel-composition-patterns` | React composition patterns that scale. Use when refactoring components with |
| `vercel-react-best-practices` | React and Next.js performance optimization guidelines from Vercel Engineering. This skill should be used when writing, reviewin... |
| `video-download` | / |
| `video-edit` | / |
| `video-shotcraft` | Create cinematic product videos from frontend projects or webpages with Remotion, real page captures, shot cards, the Ink Press... |
| `video-translate` | / |
| `video-understand` | / |
| `video_toolkit` | Create professional videos autonomously using claude-code-video-toolkit — AI voiceovers, image generation, music, talking heads... |
| `web-design-guidelines` | Review UI code for Web Interface Guidelines compliance. Use when asked to "review my UI", "check accessibility", "audit design"... |
| `website-to-video` | Capture a general website/URL and turn it into a HyperFrames video (site tour, showcase, or social clip from the site's own vis... |
| `wireframe-portal-title` | A wireframe portal bursts open, the title comes through, then its letters swap into a second phrase. HyperFrames block, 1920×10... |

### 3D, Game & Aset

| Skill | Deskripsi |
| --- | --- |
| `3d-asset-generation` | Generate, reconstruct, inspect, and route production 3D assets for OpenMontage worlds using Atlas Cloud, fal.ai, licensed catal... |
| `3dviz-pro-max` | Design and build expressive 3D scenes, explainers and interactive models with grounded subject knowledge. Use for 3D creation o... |
| `anatomy` | Build crafted, highly detailed, interactive isometric SVG figures that explain a technical idea as a real physical object (a te... |
| `asset-optimization` | Validates and optimizes Blender assets for polycount, topology, UV efficiency, material count, naming, collections, and game-re... |
| `blender-director` | Use when starting any Blender asset task, planning a production pipeline, coordinating multiple disciplines, or matching a refe... |
| `blender-mcp` | Control Blender 3D from an AI agent via MCP (ahujasid/mcp-for-blender) — create/edit 3D scenes, models, materials and renders i... |
| `blender-modeler` | Core Blender modeling specialist for Edit Mode, modifiers, collections, precision modeling, and scene organization. Use for gen... |
| `camera-cinematography` | Cinematic camera work in Blender including framing, lenses, composition, camera animation, and shot language beyond basic rende... |
| `canvas-procedural-animation` | Use p5.js/canvas for local procedural character effects: particles, weather, squash/stretch, walk cycles, and environmental mot... |
| `character-animation-qa` | Review local character animation with schema checks, Playwright browser previews, frame sampling, and FFmpeg/ffprobe final outp... |
| `character-archetypes` | Character archetype art direction for Blender covering fantasy races, horror creatures, roles (knight, assassin, detective), an... |
| `character-artist` | AAA character modeling for human anatomy, stylization, facial topology, clothing, hair, and animation-ready meshes. Use for gam... |
| `character-rigging` | Build data-driven 2D character rigs for local animation: parts, pivots, layers, constraints, views, and reusable rig packages. |
| `cloth-sim` | Garment blockout, cloth simulation, pin groups, and bake to shape keys or caches for characters and props in Blender via MCP. |
| `collision-proxy` | Collision proxy authoring for games including UCX/UHX naming, convex hulls, capsules, and simple collider meshes in Blender via... |
| `compositing` | Blender compositor workflows for beauty stacks, render passes, color grade, glare, and delivery outputs via MCP. |
| `creature-artist` | AAA creature modeling for fantasy, aliens, monsters, and organic creature design with believable anatomy and movement. Use for ... |
| `environment-artist` | AAA environment art for modular kits, buildings, terrain, vegetation, architecture, and scene composition. Use for game-optimiz... |
| `export-pipeline` | Production export from Blender to FBX, GLTF, OBJ, USD, and Alembic with scale, pivot, rotation, normals, materials, animation, ... |
| `frost-sequence-camera-orbit` | An orbiting camera follows an ice logo as it breaks apart, reforms into two text moments, and fades. HyperFrames block, 1920×10... |
| `geometry-nodes` | Blender Geometry Nodes for procedural modeling, scatter systems, vegetation, buildings, pipes, cables, and reusable node groups... |
| `godot-export` | Godot-specific Blender export favoring GLTF/GLB with correct scale, materials, animation clips, and collision shapes via MCP. |
| `hair-groom` | Hair and fur grooming in Blender using curves, particle hair, geometry nodes, and game hair-card workflows. Use for characters,... |
| `hard-surface` | AAA hard surface modeling for sci-fi, industrial, military, vehicles, weapons, robotics, and mechanical props. Use for boolean/... |
| `lighting` | Cinematic and game lighting in Blender including three-point lighting, HDRI, horror lighting, volumetrics, rim lighting, and mo... |
| `lod-pipeline` | Dedicated LOD generation, naming, screen-size targets, and validation for game meshes in Blender via MCP. |
| `lookdev` | Look development loop for Blender assets combining materials, lighting, camera, and screenshot comparison until shading reads c... |
| `materials` | Blender PBR and stylized material creation for metal, wood, concrete, fabric, glass, dirt, rust, and procedural shaders. Use fo... |
| `physics-sim` | Rigid body, soft body, and destruction setups in Blender including constraints, cell fracture debris, and baked caches via MCP. |
| `pose-library-design` | Design reusable 2D character pose libraries, action cycles, and expression states for data-driven animation. |
| `procedural-modeling` | Procedural asset creation for rocks, buildings, vegetation, roads, terrain, pipes, cables, and sci-fi panels using Geometry Nod... |
| `prop-artist` | Everyday and hero prop modeling for furniture, tools, household objects, kitbash parts, and readable game props. Use when hard-... |
| `rendering` | Blender rendering with Cycles and Eevee including sampling, denoising, camera setup, render passes, color management, and rende... |
| `retopology` | Production retopology for animation-ready, low-poly, quad-dominant meshes with proper edge loops and efficient polygon flow. Us... |
| `rigging` | Production rigging in Blender with armatures, IK/FK, constraints, weight painting, mechanical rigs, facial rigs, and drivers. U... |
| `scene-assembly` | Large scene layout in Blender with collections, linking, overrides, streaming-friendly organization, and set assembly via MCP. |
| `sculpting` | Blender sculpting for organic and hard surface detail using Dyntopo, multiresolution, brushes, alpha workflow, wrinkles, and da... |
| `set-dressing` | Set dressing and environmental storytelling placement for interiors and exteriors using prop density, narrative clusters, and r... |
| `svg-character-animation` | Animate SVG character rigs with GSAP, CSS transforms, Remotion frame control, and HyperFrames-compatible browser previews. |
| `texture-workflow` | Production texture workflow for atlases, baking AO/curvature/normal/roughness maps, decals, and texture memory optimization. Us... |
| `threejs-3d-generator` | Generate, texture, rig, animate, stylize, convert, and download 3D assets for Three.js games via the Tripo API. Use for text-to... |
| `threejs-aaa-graphics-builder` | Upgrade Three.js games from prototype visuals to premium browser graphics: art-direction critique, procedural model building, m... |
| `threejs-animation` | Three.js animation - keyframe animation, skeletal animation, morph targets, animation mixing. Use when animating objects, playi... |
| `threejs-audio-generator` | Generate, convert, clean, and integrate audio for Three.js browser games with ElevenLabs: sound effects, looping ambience, musi... |
| `threejs-debug-profiler` | Debug and profile Three.js browser games: blank canvases, render and runtime bugs, asset and audio loading, animation, resize, ... |
| `threejs-fundamentals` | Three.js scene setup, cameras, renderer, Object3D hierarchy, coordinate systems. Use when setting up 3D scenes, creating camera... |
| `threejs-game-director` | Entrypoint for building, upgrading, and finishing Three.js browser games. Routes work across the sibling threejs-* skills for g... |
| `threejs-game-ui-designer` | Design premium Three.js game UI: HUDs, menus, overlays, pause/win/lose screens, settings, icon controls, touch UI, typography, ... |
| `threejs-gameplay-systems` | Build and iterate playable Three.js game systems: starter scaffold, architecture, design briefs, core loops, level and encounte... |
| `threejs-geometry` | Three.js geometry creation - built-in shapes, BufferGeometry, custom geometry, instancing. Use when creating 3D shapes, working... |
| `threejs-image-generator` | Generate and edit 2D image assets for Three.js games with Google's Gemini image API: concept sheets, image-to-3D inputs, textur... |
| `threejs-interaction` | Three.js interaction - raycasting, controls, mouse/touch input, object selection. Use when handling user input, implementing cl... |
| `threejs-lighting` | Three.js lighting - light types, shadows, environment lighting. Use when adding lights, configuring shadows, setting up IBL, or... |
| `threejs-loaders` | Three.js asset loading - GLTF, textures, images, models, async patterns. Use when loading 3D models, textures, HDR environments... |
| `threejs-materials` | Three.js materials - PBR, basic, phong, shader materials, material properties. Use when styling meshes, working with textures, ... |
| `threejs-postprocessing` | Three.js post-processing - EffectComposer, bloom, DOF, screen effects. Use when adding visual effects, color grading, blur, glo... |
| `threejs-qa-release` | Verify and release Three.js browser games: playtest QA, automated bot playtests, mobile and responsive checks, production build... |
| `threejs-shaders` | Three.js shaders - GLSL, ShaderMaterial, uniforms, custom effects. Use when creating custom visual effects, modifying vertices,... |
| `threejs-textures` | Three.js textures - texture types, UV mapping, environment maps, texture settings. Use when working with images, UV coordinates... |
| `threejs-world-generation` | Build deterministic, editable, free-viewpoint Three.js worlds from text or structured briefs. Use for cinematic 3D terrain, sem... |
| `unity-export` | Unity-specific Blender export for scale, axis, materials, humanoid/generic rigs, LODs, and collision import via MCP. |
| `unreal-export` | Unreal Engine-specific Blender export for FBX scale, LODs, UCX collision, sockets, materials, and skeletal mesh workflows via MCP. |
| `uv-workflow` | Production UV unwrapping for seam placement, UV packing, texel density, UDIM, lightmap UVs, and modular UV layouts. Use when pr... |
| `vegetation-artist` | Vegetation and foliage authoring for Blender including trees, plants, grass cards, canopy LODs, and game-friendly leaf atlases ... |
| `vehicle-artist` | Dedicated vehicle modeling for cars, trucks, aircraft, ships, boats, mechs, and transit assets with proportion, panel flow, and... |
| `vfx-fx` | Cinematic and game VFX in Blender including smoke, fire, particles, trails, and Geometry Nodes FX setups via MCP. |

### Gaya Visual & Mood

| Skill | Deskripsi |
| --- | --- |
| `analog-found-footage-horror` | Analog, VHS, CRT, and found-footage horror aesthetics for Blender shots including camera imperfections and documentary framing. |
| `anime-style` | Anime and cel-shaded art direction for Blender with hard color breaks, toon shaders, clean silhouettes, and anime proportion la... |
| `body-horror-style` | Body horror art direction for Blender focusing on flesh wrongness, mutation, fusion, and visceral material storytelling. |
| `brutalist-mood` | Brutalist and concrete-monument mood direction for Blender architecture and scenes with raw concrete, monumental scale, and aus... |
| `cartoon-3d-short` | Make a ~55-70 s vertical cartoon story short in the "2D characters in a colourful 3D world" style (flat bean-head cartoon cards... |
| `cartoon-style` | Cartoon art direction for Blender with squash-stretch readable shapes, bold colors, and graphic silhouettes for games and anima... |
| `chibi-style` | Chibi and SD proportion art direction for Blender characters with oversized heads, simplified anatomy, and cute silhouette rules. |
| `comic-book-style` | Comic book and graphic-novel art direction for Blender with ink-line emphasis, halftone cues, and high-contrast framing. |
| `cosmic-eldritch-horror` | Cosmic, eldritch, and Lovecraftian horror art direction for Blender with non-Euclidean cues, impossible scale, and incomprehens... |
| `cozy-wholesome-mood` | Cozy, cute, wholesome, relaxing, and peaceful mood direction for Blender assets and scenes. |
| `dark-gritty-mood` | Dark, grim, gritty, rusty, abandoned, decayed, industrial, lonely, and melancholic mood direction for Blender. |
| `dream-loop` | Build a game or app from a description so that a live screenshot matches a generated rendering. Use when the user says "dream l... |
| `dream-surreal-mood` | Dreamlike, surreal, mysterious, mystical, hopeful, and chaotic mood direction for Blender scenes. |
| `dream-weirdcore-style` | Dreamcore, weirdcore, and traumacore-inspired art direction for Blender with nostalgic wrongness, liminal nostalgia, and surrea... |
| `folk-horror-style` | Folk horror art direction for Blender with rural ritual uncanny, pastoral daylight dread, and community-wrongness storytelling. |
| `frutiger-aero-style` | Frutiger Aero art direction for Blender with glossy skeuomorphism, aqua UI cues, nature-tech optimism, and mid-2000s futurism. |
| `hand-painted-style` | Hand-painted texture art direction for Blender with brushwork albedo, soft value transitions, and stylized PBR restraint. |
| `hd-2d-style` | HD-2D art direction combining pixel characters/sprites with 3D environments, depth of field, and theatrical lighting. |
| `horror-style` | Psychological horror art direction for Blender assets inspired by Silent Hill, Resident Evil, Chilla's Art, Fear to Fathom, and... |
| `indie-horror-aesthetics` | Indie horror aesthetic pack for Blender covering Silent Hill, Fear to Fathom, Puppet Combo, corporate horror, cabin/forest/hosp... |
| `isometric-style` | Isometric and strategy-game art direction for Blender including diorama framing, true-iso camera setup, readable silhouettes, a... |
| `liminal-space-style` | Liminal space and Backrooms art direction for Blender with empty transitional architecture, wrong familiarity, and endless repe... |
| `lowpoly-style` | Low-poly art direction for Blender inspired by PS1/PS2, Lethal Company, Mouthwashing, and Fear to Fathom. Use for readable silh... |
| `manga-style` | Manga-inspired art direction for Blender emphasizing monochrome value design, speed lines, screentone feel, and manga panel sta... |
| `mascot-puppet-horror` | Mascot and puppet horror art direction for Blender with cheerful brand characters made wrong, felt/foam materials, and uncanny ... |
| `minimalist-style` | Minimalist and abstract-leaning art direction for Blender with reduced forms, limited palettes, and negative space. |
| `neon-retrofuturism` | Neon, vaporwave, synthwave, and retrofuturistic mood/art direction for Blender with grid horizons, chrome, and dusk palettes. |
| `noir-style` | Noir art direction for Blender with high-contrast lighting, wet streets, silhouettes, and monochrome or limited-color grading. |
| `painterly-style` | Painterly art direction spanning watercolor and oil-painting looks for Blender using soft edges, pigment texture, and illustrat... |
| `pixel-art-style` | Pixel-art and texel-constrained art direction for Blender assets destined for pixel rendering, low-res textures, or HD-2D-adjac... |
| `psx-horror-style` | PS1/PSX-era horror art direction combining low-poly affine textures, limited color depth, fog, and psychological horror staging... |
| `realistic-style` | Photorealistic AAA art direction for Blender including photogrammetry cleanup, real-world scale, high-poly workflows, PBR accur... |
| `retro-16bit-style` | Retro 16-bit art direction for Blender-assisted SNES/Genesis-era color richness, dither cues, and sprite-like clarity. |
| `retro-8bit-style` | Retro 8-bit art direction for Blender-assisted pixel/low-res aesthetics inspired by NES-era constraints. |
| `stop-motion-craft-style` | Stop-motion and craft aesthetics for Blender including claymation, paper craft, and handmade physical-material cues. |
| `style-sampling` | Make a new episode in a proven video style - Collage Explainer, Finance Explainer, Animated Science Explainer, 3D Brand Explain... |
| `stylized-style` | Stylized art direction for Blender with shape language, exaggeration, color harmony, NPR rendering, and hand-painted asset work... |
| `vector-style` | Vector-clean art direction for Blender with flat fills, sharp silhouettes, and UI-like graphic clarity. |
| `visual-style` | / |
| `voxel-style` | Voxel and Minecraft-adjacent art direction for Blender with block grid modeling, limited palettes, and chunk-friendly assets. |

### Audio, Suara & Musik

| Skill | Deskripsi |
| --- | --- |
| `acestep` | AI music generation with ACE-Step 1.5 — background music, vocal tracks, covers, stem extraction for video production. Use when ... |
| `azure-speech-to-text` | Transcribe audio to text using Azure AI Speech (Fast Transcription REST API). Use when converting audio/video to text, generati... |
| `azure-text-to-speech` | Generate neural narration audio using Azure AI Speech (REST text-to-speech). Use when synthesizing voiceovers or narration in O... |
| `doubao-tts` | Generate Mandarin and multilingual narration with Volcengine Doubao Speech 2.0. Use when creating Chinese voiceovers, when the ... |
| `elevenlabs` | Generate AI voiceovers, sound effects, and music using ElevenLabs APIs. Use when creating audio content for videos, podcasts, o... |
| `faster-whisper` | Automatic captions/transcription with faster-whisper (OpenAI Whisper via CTranslate2, runs locally on CPU). Use when a video ne... |
| `fish-audio-tts` | Generate expressive, multilingual narration with fish.audio (S1 / S2-generation models) and reuse cloned voices via reference_i... |
| `gemini-omni` | / |
| `lyria` | Generate and validate music with Google Lyria through the Gemini Interactions API. Use before calling OpenMontage `google_music... |
| `music` | Generate music using ElevenLabs Music API. Use when creating instrumental tracks, songs with lyrics, background music, jingles,... |
| `music-to-video` | Use when the user has a music track (an audio file, or a video to pull audio from) and wants a beat-synced HyperFrames video, c... |
| `sound-effects` | Generate sound effects from text descriptions using ElevenLabs. Use when creating sound effects, generating audio textures, pro... |
| `speech-to-text` | Transcribe audio to text using ElevenLabs Scribe v2. Use when converting audio/video to text, generating subtitles, transcribin... |
| `text-to-speech` | / |

### Desain Game

| Skill | Deskripsi |
| --- | --- |
| `genre-action-combat` | Art direction for action, hack-and-slash, beat 'em up, and fighting-game readable combat spaces and prop language in Blender. |
| `genre-card-party-idle` | Art direction for card games, deck builders, party games, idle/incremental, educational, and rhythm game presentational spaces ... |
| `genre-metroidvania-roguelike` | Art direction for metroidvania, roguelike, and roguelite games in Blender with biome gates, room modules, and run-readable props. |
| `genre-narrative-vn` | Art direction for visual novel, interactive movie, walking simulator, and story-driven presentation spaces in Blender. |
| `genre-open-world-sandbox` | Art direction for open world and sandbox games in Blender with biome landmarks, traversable scale, and discovery props. |
| `genre-puzzle-platformer` | Art direction for puzzle and platformer games in Blender with readable interactables, jump volumes, and clear hazard language. |
| `genre-racing-sports` | Art direction for racing and sports games in Blender with track landmarks, stadium kits, and high-speed readability. |
| `genre-rpg` | Art direction for RPG, JRPG, CRPG, ARPG, and MMORPG worlds in Blender including loot rarity reads and region identity. |
| `genre-shooter` | Art direction for FPS, TPS, shooter, battle royale, and extraction-shooter maps and props in Blender with sightline and cover l... |
| `genre-soulslike` | Art direction for soulslike games in Blender with monumental melancholy spaces, fog gates, bonfire landmarks, and lethal readab... |
| `genre-stealth` | Art direction for stealth-game spaces in Blender with shadow volumes, patrol-friendly layouts, and concealment materials. |
| `genre-strategy-sim` | Art direction for strategy, RTS, turn-based strategy, tower defense, MOBA, city builder, colony sim, and simulation games in Bl... |
| `genre-survival` | Art direction for survival and survival-horror gameplay spaces in Blender emphasizing resource props, crafting readability, and... |

### Lainnya & Utilitas

| Skill | Deskripsi |
| --- | --- |
| `agents` | Build voice AI agents with ElevenLabs. Use when creating voice assistants, customer service bots, interactive voice characters,... |
| `apocalypse-worlds` | Apocalyptic and dystopian world art direction for Blender including post-apocalyptic, zombie, alien invasion, post-human, dysto... |
| `archviz` | Architectural visualization in Blender for interiors/exteriors with real-world scale, camera composition, PBR materials, and st... |
| `atlas-cloud` | Generate or edit images and videos through the Atlas Cloud gateway. Use for Atlas-hosted Seedance 2.5/2.0, Gemini Omni Flash, M... |
| `bfl-api` | BFL FLUX API integration guide covering endpoints, async polling patterns, rate limiting, error handling, webhooks, and regiona... |
| `biome-worlds` | Biome and setting art direction for Blender covering underwater, desert, arctic, jungle, underground, and floating-island envir... |
| `comfyui` | Use when working with ComfyUI workflows in OpenMontage, including comfyui_image/comfyui_video/comfyui_music, custom workflow_js... |
| `dashscope` | DashScope (Alibaba Cloud Bailian / 阿里云百炼) integration — image generation (qwen-image-2.0-pro), text-to-speech (qwen3-tts-flash)... |
| `faceswap` | / |
| `fantasy-worlds` | Fantasy world-building art direction for Blender covering medieval, high fantasy, dark fantasy, and urban fantasy asset language. |
| `ffmpeg` | Video and audio processing with FFmpeg. Use for format conversion, resizing, compression, audio extraction, and preparing asset... |
| `flux-best-practices` | Comprehensive guide for BFL FLUX image generation models. Covers prompting, T2I, I2I, structured JSON, hex colors, typography, ... |
| `grok-media` | xAI Grok image and video generation guide covering authentication, endpoints, prompt structure, image editing, reference-image ... |
| `heygen` | / |
| `historical-worlds` | Historical and period world art direction for Blender including Western, pirate, samurai/ninja, Viking, ancient Egypt/Greece/Ro... |
| `kling-official` | Official Kling direct API guidance for OpenMontage providers. Use before calling `kling_official_video`, `kling_official_image`... |
| `ltx2` | AI video generation with LTX-2.3 22B — text-to-video, image-to-video clips for video production. Use when generating video clip... |
| `manim-composer` | / |
| `manimce-best-practices` | / |
| `manimgl-best-practices` | / |
| `media-use` | Get or make any media for a HyperFrames video - music, sound effects, images, icons, logos, voiceover, avatar and generated vid... |
| `minimax-h3` | / |
| `playwright-recording` | Record browser interactions as video using Playwright. Use for capturing demo videos, app walkthroughs, and UI flows for Remoti... |
| `provider-model-refresh` | Use the September 2026 image, video, speech and Avatar V adapters with explicit model/host contracts. |
| `provider-refresh-oct23` | API contracts and production routing for the October 23, 2026 provider refresh. |
| `qa-review` | Production QA gate for Blender assets using viewport screenshots, validation checklists, naming audits, and ship/no-ship verdic... |
| `sci-fi-punk-worlds` | Sci-fi and punk world art direction for Blender including hard sci-fi, space, cyberpunk, steampunk, dieselpunk, atompunk, solar... |
| `seedance-2-0` | / |
| `seedance-2-5` | / |
| `setup-api-key` | Guides users through setting up an ElevenLabs API key for ElevenLabs MCP tools. Use when the user needs to configure an ElevenL... |
| `synthetic-screen-recording` | Synthetic terminal-style screen recording guidance for Remotion `TerminalScene`. |
| `visual-console-eras` | Visual era art direction for Blender covering PS1–PS5 stylistic cues, retro arcade, DOS, CRT, VHS, and film-grain presentation. |

## Catatan

- Sebagian skill berasal dari koleksi repo publik komunitas (antara lain 12 repo pembuat video dari Threads @jvri.sa/Jhev dan bang-motion dari bangtutorial) yang dipasang apa adanya untuk dipakai Aelyra; skill di kategori Channel adalah karya dan doktrin internal.
- Folder `node_modules/` dan cache Python tidak ikut tersimpan (lihat `.gitignore`) — jalankan instalasi dependensi masing-masing skill bila diperlukan.
- Repo ini privat dan dipakai sebagai cadangan + sumber sinkronisasi skill antar-mesin Aelyra.
