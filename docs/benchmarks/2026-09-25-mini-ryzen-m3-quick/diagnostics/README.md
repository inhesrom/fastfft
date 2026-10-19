# Matched N=4096 diagnostic

Forward in-place f32, quick profile, core 2, three processes per cell;
rows `fastfft,rustfft,lab/dit-ymm-r8`. `before` is the existing arena
executable at the start of ticket 10; `after` is the final rebuilt
executable used for both published runs. These small runs illustrate the
fix; the complete main run is the checkpoint evidence.

Both runs passed the environment check and stayed below 3% recorded drift.
Raw control cells are retained. No times or metadata were rewritten.
