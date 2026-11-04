# One-Click Short Video

## Goal

Delegate a complete short drama production task to the hosted DramaCanvas Agent.

## Profile requirement

This recipe requires the expert profile. Connect to https://dramacanva.com/api/mcp?profile=expert or use [configs/cursor-expert.mcp.json](../configs/cursor-expert.mcp.json).

## Prompt

Use the built-in MCP prompt `one_click_short_video`. It takes a `brief` argument describing the story and creative requirements.

## Tool sequence

1. Connect to the expert endpoint `https://dramacanva.com/api/mcp?profile=expert` and read `tools/list`; only call tools that are listed.
2. `get_account`, then select or create a project and a canvas.
3. `list_skills` / `search_skills` — find skills that fit the brief; read them with `get_skill` and attach the chosen ones with `add_skill`.
4. `agent_start` — hand the full brief to the built-in Agent with the `canvasId`, an `idempotencyKey` (8–128 characters), optional `skillIds` and an explicit budget if you want one.
5. `agent_get_run` — poll the run and return its actual outputs.
6. `get_canvas_link` — open the canvas in the browser.

## Example message

```text
Use the one_click_short_video prompt with this brief:
A 30-second sci-fi mystery teaser. A planetary surveyor discovers an active communications terminal inside a crystalline crater. Style: cinematic, atmospheric dust, moody blue lighting with warm console glow.
```

## What you get back

- An Agent run you can poll with `agent_get_run`.
- Whatever the Agent produced for the brief (text, images or video) on your canvas.
- A browser link from `get_canvas_link` to review and continue editing the work.

## Cost note

Text and media generation by the Agent charge credits immediately. The default Agent budget is 200 credits per turn; pass an explicit budget to change it. Spend limits are optional (default unlimited) and can be configured at https://dramacanva.com/access-keys.
