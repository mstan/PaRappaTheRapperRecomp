# PaRappa the Rapper v0.1.3

- Pin the merged shared engine and current launcher UI, preserving original
  timing assist, digital-pad input, adaptive widescreen and native-card settings.
- Shared Internal Resolution defaults ON at 4x, with saved Native (1x) through
  32x choices and a native fallback when disabled. Widescreen remains 21:9.
- Use the maintained shared release builder with fresh per-build selective
  runtime PGO; keep the existing 60 ms audio-buffer target and netplay OFF.
- Remove generic CD Speed and Fast Loading packages from release catalogs.
- Honor public setup-wizard OFF while retaining the developer setup option.

The production release gate covers build/package identity and a brief boot for
profile collection. It does not establish a new gameplay, audio-quality or
per-title speedup result. The owner quick visual/play check is separate.
Native memory cards remain persistent; snapshots are specific to each build.

## Previous release v0.1.2

The combined fork shipped the previously accepted Stage 1 timing-assist and
21:9 display work with a parsed 60 ms audio target. Timing assist was default
OFF; widescreen defaulted to 21:9 and controller reporting was locked digital.
Other stages/full-stage completion and audio latency were not exhaustively
validated. Existing historical measurements and limits remain in README/DISC.
