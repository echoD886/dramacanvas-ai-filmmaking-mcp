# Character Lookbook

## Goal

Build character visual references with consistent identity across scenes and storyboard shots.

## Prompt

Use the built-in MCP prompt `character_lookbook`. It takes a `brief` argument containing character visual details.

## Profile requirement

This prompt is only listed in the expert profile. Connect to https://dramacanva.com/api/mcp?profile=expert or use [configs/cursor-expert.mcp.json](../configs/cursor-expert.mcp.json).

## Tool sequence

1. `get_account`, then select a project and canvas.
2. `list_characters` / `get_character` — read existing characters.
3. `create_character` / `update_character` — define stable face, costume and palette traits.
4. `list_models`, `canvas_list_node_types` and `canvas_get_state` — pick a model and read the canvas.
5. `generate_media` — generate one canonical portrait, then wait with `get_generation`.
6. Use that portrait's reference node for every further view so the identity stays the same.
7. `set_character_representations` — attach the approved images (after linking outputs to project assets).
8. Return the character IDs and `get_canvas_link`.

## Example message

```text
Use the character_lookbook prompt with this brief:
Character: Elena Vance, 34-year-old deep-sea diver.
Visual traits: Short black hair, dark green wetsuit with orange accents, heavy utility belt, neutral portrait lighting.
```

## What you get back

- Character records with stable face, costume and palette traits.
- A canonical portrait and further views on the canvas, built from the same reference.
- Character IDs and a browser link from `get_canvas_link`.

## Cost note

`generate_media` submits and charges credits immediately, without a confirmation step. Spend limits are optional (default unlimited) and can be set when creating an API key at https://dramacanva.com/access-keys.
