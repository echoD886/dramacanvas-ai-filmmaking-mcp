# Script to Storyboard

## Goal

Turn a raw script into structured episodes, unit shot breakdowns, and linked storyboard nodes on an infinite canvas.

## Prompt

Use the built-in MCP prompt `script_to_storyboard`. It takes a `brief` argument containing your script or creative brief.

## Tool sequence

1. `get_account` — Confirm the connected account.
2. `list_projects` or `create_project` — Select an existing project or create a new one.
3. Split the script into episodes yourself.
4. `import_script` — Import the split script into the project.
5. `list_units` — Inspect the created unit records.
6. `set_unit_shots` — Set shot breakdowns for empty units.
7. `create_canvas` and `link_canvas_to_project` — Create an infinite canvas and link it to the project.
8. `canvas_create_storyboard` — Lay out storyboard nodes on the canvas.
9. `get_canvas_link` — Get a browser URL to open the result on DramaCanvas.

## Example message

```text
Use the script_to_storyboard prompt with this brief:
Episode 1: The Vault Signal.
Scene 1: An archivist finds a glowing bronze dial behind a bookshelf in the reading room.
Scene 2: The dial spins rapidly and points toward the locked basement stairs.
```

## What you get back

- Project and unit records containing the shot breakdowns.
- A linked canvas populated with storyboard nodes.
- A browser link from `get_canvas_link` to inspect and arrange the storyboard layout.

## Cost note

This recipe stops before `generate_media`, which is the step that charges for image and video generation. See https://dramacanva.com/pricing for current pricing.
