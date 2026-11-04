# Batch First Frames

## Goal

Generate consistent first frames for storyboard shots across a production unit.

## Prompt

Use the built-in MCP prompt `batch_first_frames`. It takes a `brief` argument describing shot framing, references, and style.

## Tool sequence

1. `get_account`, `get_unit_workspace`, `canvas_get_state` and `canvas_read_storyboard` — get the real shot, row and node IDs.
2. `list_models` — select a model and check existing character references.
3. `generate_media` — one call per shot, using that shot's actual prompt and reference node IDs, with a stable and distinct `idempotencyKey` for each.
4. Refresh `canvas_get_state` between writes to get the latest `snapshotHash`.
5. `wait_generations` (or `get_generation` with `waitSeconds` up to 50) — inspect failures instead of blindly retrying billable calls.
6. Return the generated task and node IDs and `get_canvas_link`.

## Example message

```text
Use the batch_first_frames prompt with this brief:
Generate first frames for Unit 1 shots:
Shot 1: Wide establishing shot of a foggy harbor at dawn with wooden docks.
Shot 2: Medium shot of a dockworker untying a heavy hemp rope from a wet post.
Shot 3: Over-the-shoulder shot looking toward an approaching cargo vessel.
```

## What you get back

- A first-frame image for each storyboard shot, placed on the canvas.
- Updated canvas nodes containing the generated frames.
- A browser link from `get_canvas_link` to review the visual sequence.

## Cost note

`generate_media` submits and charges credits immediately for every frame generated. Spend limits are optional (default unlimited) and can be configured at https://dramacanva.com/access-keys.
