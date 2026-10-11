# الحمد — «ليل» design system

Design tokens, brand book and component specs for the الحمد app. Live, browsable version: https://claude.ai/artifact/KSTSZAXMYLyWDtYWBFg8QP

| Path | What |
|---|---|
| `tokens.json` | Source of truth: colours (themes `dark` · `light` · `nahar`), type, spacing, radii, shadows, blur, opacity, text scale, icons |
| `tokens.css` | CSS custom properties generated from `tokens.json` (`[data-theme="…"]` switches themes) plus `@font-face` and type-style classes |
| `components/bundle.css` | Component classes (`ah-` prefix, on a root with class `ah`) |
| `components/<Name>/` | `README.md` guidelines and a static `preview.html` per component |
| `fonts/` | Amiri, Amiri Quran, IBM Plex Sans Arabic (Arabic-script woff2 subsets) |
| `assets/Patterns/` | Star-lattice tile |
| `source/` | The inputs this was extracted from: DESIGN.md v1 and the design-system sheet |

To preview a component locally, load `tokens.css` and `components/bundle.css` before its `preview.html` markup.

---

«الحمد» is a quiet gratitude app: one blessing (نعمة) a day, a moment of reflection, a private journal. «ليل» (night) is its visual language — a deep indigo ground, frosted glass, and gold reserved for the words of revelation. Every rule below serves calm: no streaks, no pressure, no noise.

## Content fundamentals

- **Arabic only, فصحى, RTL.** No Latin in the UI. Set `dir="rtl"` and `lang="ar"` on the root.
- **Arabic-Indic numerals everywhere** — ٠١٢٣٤٥٦٧٨٩ — through one formatter: «٧:٠٠ صباحًا», «٩:١٤ م», «سورة إبراهيم : ٣٤». Dates are Hijri: «٢٧ ذو الحجة ١٤٤٧ هـ».
- **Voice:** warm, brief, second person singular, never preachy. Invite, don't instruct: «أغمض عينيك لحظة... كيف يكون يومك لو غاب هذا النور؟». Empty states encourage: «سجلّك ما زال فارغًا... ابدأ بنعمة اليوم».
- **Naming:** a blessing is «نعمة X» (نعمة البصر); a category is «نعم X» (نعم العافية، نعم الدين). The main CTA is «استشعر النعمة».
- **Sacred text is shown exactly as given** — never edited, truncated, paraphrased or re-broken. Quran inside ﴿ ﴾; hadith and du'a inside « ». Scholar quotes verbatim; hide the scholar's name when the attribution starts with «مستفاد», «مأثور» or «إشارة».
- **No emoji, no exclamation marks, no gamification copy** (no streaks, no "don't break your chain"). Privacy is stated plainly: «نصّ سجلّك لا يغادر جهازك، ولا حساب هنا».

## Color

Dark («ليل») is the default theme; light is secondary and derived from the app-icon palette.

- **Grounds:** `ground` for the main tabs; `ground-deep` for onboarding and reflection; `ground-deepest` for the reflection step «التعمّق» only.
- **Glass:** `glass-card` (cards), `glass-raised` (sheets, dialogs, tab bar, toasts), `glass-inset` (Quran block, fields, prompts). Every glass surface has a 1px `hairline` edge.
- **Text:** `text` for titles and primary copy, `text-body` for paragraphs, `text-muted` for labels, references, timestamps and placeholders. All pass 4.5:1 on every ground and glass in both themes.
- **Gold is for revelation and the active state.** `gold-bright` is the only highlighted text colour: ayat (via `ayah`), the active tab, the gold text button, small gold labels, the wordmark thread. `gold-deep` draws outlines and marks: chip borders, calendar dots, ThreadProgress fill, scholar attribution.
- **Violet is a fill, never text.** `violet` fills the primary button, the today ring, toggle-on and prompt numbers, with `on-violet` labels at ≥18px/600 (white on violet is 4.3:1 — large-text only). Pressed: `violet-pressed`.
- `danger` only on delete, always with the word.
- **Light theme:** ink `text` `#14213D` on a 135° gradient `bg-grad-1 → bg-grad-2 → bg-grad-3` with two soft blobs `bg-blob-1`, `bg-blob-2` (blur ≈120, 60%). Gold-ink `#7A5F12` takes over BOTH the violet and gold roles; ayat turn ink. `text-muted` was lifted to `#566478` to pass.
- **نهار theme (`nahar`, alternative light):** the app icon's cream ground `#F4EDE3`, brown ink `#2A1F19`, and terracotta `#B9573B` filling both the gold and violet roles (`gold-bright` becomes terracotta-ink `#9E4A30` for text). It is not part of DESIGN.md v1. Choose `light` or `nahar` before shipping, not both. In `nahar`, `gold-deep` is 4.0:1, so use it only for outlines and marks.
- `icon-ground` and `icon-thread` belong to the app-icon artwork only. Never use them as UI surfaces.
- Share cards are always dark.

## Typography

Three families, each with one job. No Latin UI face.

- **Amiri Quran** (`--font-quran`) — Quran only, `ayah` style (24 / 2.1), always inside ﴿ ﴾, colour `ayah`.
- **Amiri** (`--font-display`) — the wordmark, `blessing-title` (34/1.5, 700), `screen-title` (30/1.5, 700), `dialog-title`, `hadith` (20/1.9) and `scholar` (17/1.9).
- **IBM Plex Sans Arabic** (`--font-ui`) — everything else: `button` (18/600), `body` (16/1.8), `field` (15), `secondary` (14/1.8), `chip` (13), `label` (12/1.6), `tab` (11).
- **User text size** multiplies the whole ramp — `scale-normal` ×1 (عادي), `scale-large` ×1.125 (كبير), `scale-larger` ×1.25 (أكبر) — line heights preserved. It is a real scale, not a root zoom.
- Arabic needs height: keep the generous line heights (1.8 body, 2.1 ayah) so diacritics never collide.
- The font files shipped here are the Arabic-script subsets; Latin and digits fall back. Keep numerals Arabic-Indic.

## Spacing, radii, elevation

- 4pt `grid`. `page-inset` 20 · `card-pad` 20 / `card-pad-lg` 24 · `card-gap` 12 · `section-gap` 28. Touch targets ≥ `tap-min` (44). Primary buttons `button-h` (56).
- Radii by role: `radius-card` 24 · `radius-sheet` 20 (dialogs, tab bar) · `radius-button` 16 (buttons, rows, Quran block) · `radius-dialog-button` 14 · `radius-field` 12 · `radius-pill` (chips, toggles, toasts).
- Elevation is glass + shadow: `shadow-card` with `blur-card`, `shadow-raised` with `blur-raised`. Inset glass has no shadow. No coloured side borders, no gradients on cards.

## Pattern and light

- **Star lattice** (`ah-lattice`, `assets/Patterns/star-lattice.svg`): eight-point stars from two overlapped squares, stroke only at `lattice-opacity`. **Onboarding and reflection only.**
- **Spotlight cone** (`ah-cone`): an optional radial wash ≤ `cone-opacity` behind «نعمة اليوم», dark only; drop it if it competes with the glass.

## Brand mark

«الحمد» in Amiri Bold with a gold thread beneath — see the Wordmark component. At font size S: thread 0.02·S, dot 0.075·S at the **right** end, gap 0.20·S; the rule is exactly the word's width. Below ~120px wide, the word alone. Monogram, avatar and favicon: «ح». There is no vector logo; the mark is always set in type. The tagline is «نعمةٌ كلَّ يوم». **ThreadProgress** reuses the thread as the step indicator everywhere progress dots would go.

## Iconography

- Lucide (`lucide_icons_flutter` in the app), stroke `icon-stroke` 1.5, size `icon-size` 22 (`icon-size-tab` 24 in the tab bar), colour inherited (`text-body` idle, `gold-bright` active).
- The previews here use simplified stand-in glyphs from the design sheet; ship real Lucide icons (home, book-open, calendar, settings, share-2, clock).
- No emoji, no filled icons, no multicolour icons.

## Motion and haptics

- Durations: micro 150ms ease-out · standard 250ms ease-out-cubic · sentence fade-in 400ms · reflection ambience shift 2500ms ease-in-out-cubic (800ms with reduced motion).
- The «الحمد» glow pulses **once**. With reduced motion: no pulsing, no breathing, sentences appear instantly.
- Haptics: light — step advance, dhikr tap, toggle; heavy — every 33rd dhikr tap; success — reflection complete. No hourly haptic.

## Components

Buttons, chips, fields, toggles, setting rows, the top bar and the four-item tab bar; Quran, hadith and scholar blocks; the numbered prompt card; calendar cells (plain · done · today — never "missed"); dialog, toast and empty state; daily blessing and journal entry; share cards (1080×1350, 1080×1920). Use the classes in `components/bundle.css` (prefix `ah-`) on a root with class `ah`; each component's README lists what you provide.

**Intentional additions** beyond the source: a solid 2px `gold-bright` focus ring (≥3:1 on every ground); light-theme `chip-selected`; a `scrim` token behind chips on the lattice.
