# الحمد — design system handoff (read this first)

You are implementing the design system for the الحمد Flutter app in **two themes**: «ليل» (dark, default) and «نهار» (light, from the app icon). Everything you need is in this folder; do not invent values.

## Files
| File | What it is | Use it for |
|---|---|---|
| `DESIGN.md` | The spec: roles, rules, components, both themes | Read fully before writing code. Rules win over your defaults. |
| `tokens/tokens.json` | Single source of truth for every value, both themes | Generate from it; never hard-code a hex in a widget. |
| `tokens/alhamd_tokens.dart` | `AhColors` (`ThemeExtension`, `.layl` / `.nahar`), `AhSpace`, `AhRadius`, `AhBlur`, `AhMotion`, `AhShadow`, `AhType`, `ahTheme()` | Drop into `lib/theme/`. Regenerate from `tokens.json` if values change. |
| `tokens/tokens.css` | Same tokens as CSS custom properties (`--ah-*`), `[data-theme]` + `prefers-color-scheme` | Web/share-card rendering, Storybook-style previews. |
| `reference/design-sheet-layl-dark.html` | Visual sheet of the dark theme: palette, type, surfaces, mark, every component state | Match these pixel-for-pixel. Open in a browser. |
| `reference/design-sheet-nahar-light.html` | The same sheet in the light theme | Same. |
| `reference/app-icon-palette.png` | The icon and its measured mark (thread/dot/gap ratios, safe circle) | Wordmark + thread geometry, icon export. |

## Build order
1. `lib/theme/alhamd_tokens.dart` (given) → `lib/theme/alhamd_theme.dart` wiring `ahTheme(AhColors.layl)` and `ahTheme(AhColors.nahar)` into `MaterialApp.theme / darkTheme`, with a user text-scale (×1.0 / ×1.125 / ×1.25) applied to the whole ramp.
2. Fonts: bundle Amiri (400/700), Amiri Quran, IBM Plex Sans Arabic (300–700) in `pubspec.yaml`. No Latin UI font.
3. Widgets, each reading only `Theme.of(context).extension<AhColors>()`: `GlassCard` (card/raised/inset), `PrimaryButton`, `QuietButton`, `TextButtonAh`, `Chip` (outlined/filled/selected), `ToggleAh`, `SearchField`, `TopBar`, `BottomTabBar` (4 items, labels always), `QuranBlock`, `HadithBlock`, `ScholarBlock`, `PromptCard`, `CalendarCell`, `DialogAh`, `ToastAh`, `EmptyState`, `Wordmark` (+ thread), `ThreadProgress`, `StarLattice`, `ShareCard`.
4. A gallery screen that renders every widget in every state in both themes, side by side with the two reference sheets.

## Non-negotiables
- One widget tree for both themes; switching theme changes tokens only.
- `primary` is a fill, never text; white label ≥18px/600. `accent-text` is the only coloured text. In light, `accent` (terracotta) is never text under 24px.
- Ayah: Amiri Quran, inside ﴿ ﴾, `quran-text`, on `glass-inset` with `quran-border`. Never edited or truncated.
- Star lattice only on onboarding/reflection grounds. Spotlight cone dark-only; light uses two soft blobs.
- Arabic-Indic numerals through one formatter; RTL everywhere; no emoji.
- Thread/ThreadProgress: dot at the right, fill grows leftward; rule 0.02·S, dot 0.075·S, gap 0.20·S.
- Text ≥4.5:1 on its ground in both themes (3:1 at ≥24px). The values in `tokens.json` already pass; keep them.
- Reduced motion: no pulsing/breathing, instant sentence reveal, ambience 800ms.
