---
name: blender-mcp
description: Control Blender 3D from an AI agent via MCP (ahujasid/mcp-for-blender) — create/edit 3D scenes, models, materials and renders in Blender through natural-language commands. Use when the user wants Blender work driven by the agent. Requires a machine running Blender with the addon installed; the Blender on the user's own computer, not this VM (no Blender/GUI here).
---

# Blender MCP (ahujasid/mcp-for-blender)

Source repo cloned at `~/workspace/tools/video-skill-repos/blender-mcp/` (addon.py + main.py MCP server).

## How it works
1. In Blender (user's machine): install `addon.py` as a Blender addon, enable it, start the MCP server from the Blender sidebar.
2. The agent connects via the MCP server (`main.py` / `uvx blender-mcp`) and can create objects, apply materials, set lighting/cameras, and render.

## Status in this environment
- Repo installed and read. Not runnable on this VM: no Blender installed and no GUI.
- To use it, run Blender on a machine the agent can reach (user's PC/VPS with Blender), then connect the MCP server.
- Related installed skill sets that pair with it: `blender-skills` collection (94 skills) and `dream-loop` in custom-skills.
