# الحمد — design system «ليل» · «نهار»

Handoff for the الحمد Flutter app: two themes, one role-named token set. **Start with `CLAUDE.md`, then `DESIGN.md`.** Live, browsable version: https://claude.ai/artifact/KSTSZAXMYLyWDtYWBFg8QP

| Path | What |
|---|---|
| `CLAUDE.md` | Handoff brief: file map, build order, non-negotiables |
| `DESIGN.md` | The spec: roles, rules, components, both themes |
| `tokens/tokens.json` | Single source of truth for every value, both themes |
| `tokens/alhamd_tokens.dart` | `AhColors` (`.layl` / `.nahar`), `AhSpace`, `AhRadius`, `AhBlur`, `AhMotion`, `AhShadow`, `AhType`, `ahTheme()` — drop into `lib/theme/` |
| `tokens/tokens.css` | Same tokens as `--ah-*` custom properties (`[data-theme]` + `prefers-color-scheme`) |
| `reference/design-sheet-layl-dark.html` · `…-nahar-light.html` | Visual sheets of each theme — match pixel-for-pixel |
| `reference/app-icon-palette.png` | *(to add)* the icon and its measured mark |
| `design-system/` | The browsable system: brand book (`README.md`), `tokens.json` (same values + the font files and type samples), generated `tokens.css`, 22 component specs with HTML previews, bundled Arabic fonts, the star-lattice tile |

The `design-system/` CSS uses unprefixed variables (`--accent`, `--primary`…); `tokens/tokens.css` uses the `--ah-` prefix for the app. Same names, same values.
