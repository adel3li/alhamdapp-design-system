«الحمد» is a quiet gratitude app: one blessing (نعمة) a day, an ayah, a hadith, a short reflection, a private journal, a tasbih. Two themes share one set of role-named tokens — **«ليل»** (dark, the default: night ground, glass, gold for revelation, violet for the one action) and **«نهار»** (light, from the app icon: cream ground, brown ink, one terracotta hue). Build a screen once against the roles and it renders in both.

## Content fundamentals

- **Arabic only, فصحى, RTL.** No Latin in the UI. Set `dir="rtl"` and `lang="ar"` on the root.
- **Arabic-Indic numerals everywhere** — ٠١٢٣٤٥٦٧٨٩ — through one formatter: «٧:٠٠ صباحًا», «٩:١٤ م», «سورة إبراهيم : ٣٤». Dates are Hijri: «٢٧ ذو الحجة ١٤٤٧ هـ».
- **Voice:** warm, brief, second person singular, never preachy. Invite, don't instruct: «أغمض عينيك لحظة... كيف يكون يومك لو غاب هذا النور؟». Empty states encourage: «سجلّك ما زال فارغًا... ابدأ بنعمة اليوم».
- **Naming:** a blessing is «نعمة X» (نعمة البصر); a category is «نعم X» (نعم العافية). The main CTA is «استشعر النعمة».
- **Sacred text is shown exactly as given** — never edited, truncated, paraphrased or re-broken. Quran inside ﴿ ﴾, hadith and du'a inside « ». Hadith carries its grading («رواه مسلم · صحيح»). Scholar quotes carry their attribution; hide the name when it starts with «مستفاد», «مأثور» or «إشارة».
- **No emoji, no exclamation marks, no gamification copy** (no streaks, no "don't break the chain", no «missed day»). Privacy is stated plainly: «نصّ سجلّك لا يغادر جهازك، ولا حساب هنا».

## Color — one role set, two themes

| Role | Tokens | Rule |
|---|---|---|
| Grounds | `ground` · `ground-deep` · `ground-deepest` | Main tabs · onboarding and reflection · the «التعمّق» step only. Only the deep grounds carry the star lattice. |
| Glass | `glass-card` · `glass-raised` · `glass-inset` | Cards · sheets, dialogs, tab bar, toast, filled chip · Quran block, fields, prompts (no shadow). Every glass has a 1px `hairline` edge. |
| Text | `text` · `text-body` · `text-muted` | Titles · paragraphs · labels, references, timestamps, placeholders. All ≥4.5:1 on every ground and glass in both themes. |
| Highlighted text | `accent-text` | The **only** coloured text: ayah (ليل), active tab, chip text, text buttons, wordmark (ليل). Gold-bright in ليل, terracotta-ink in نهار. |
| Marks | `accent` · `accent-soft` | Thread rule and dot, ThreadProgress fill, chip outlines, calendar «done» dots, scholar attribution, «ح» ring · selected-chip fill. In نهار `accent` is never text under 24px (4.0:1). |
| Action | `primary` · `primary-pressed` · `on-primary` | Primary button, today ring, toggle-on, prompt number. `on-primary` label at ≥18px/600 only. **Never running text.** Violet in ليل, terracotta in نهار. |
| Ayah | `quran-text` · `quran-border` | Amiri Quran inside ﴿ ﴾ on `glass-inset`. Gold in ليل, ink in نهار — as in a printed mushaf. |
| Delete | `danger` | Delete only, always with the word «حذف». |
| Texture | `lattice-stroke` · `cone` · `scrim` | Star-lattice stroke (text at 5%) · the spotlight wash (ليل) or the two soft blobs (نهار) behind «نعمة اليوم» · backing for a chip on the lattice. |
| Icon artwork | `icon-ground` · `icon-thread` | The app icon only. Never a UI surface. |

Why نهار has one hue: on cream, gold loses its glow and violet reads as foreign; the icon's terracotta is warm enough to be the accent and dark enough (with a white label) to be the button.

## Typography

Three families, each with one job. No Latin UI face.

- **Amiri Quran** (`--font-quran`) — ayat only, `ayah` style (24 / 2.1), always inside ﴿ ﴾, colour `quran-text`.
- **Amiri** (`--font-display`) — `wordmark` (72/1), `blessing-title` (34/1.5, 700), `screen-title` (30/1.5, 700), `dialog-title` (19/1.5, 700), `hadith` (20/1.9), `scholar` (17/1.9).
- **IBM Plex Sans Arabic** (`--font-ui`) — `button` (18/600), `body` (16/1.8), `field` (15), `secondary` (14/1.8), `chip` (13), `label` (12/1.6), `tab` (11).
- **User text size** multiplies the whole ramp — `scale-normal` ×1 (عادي), `scale-large` ×1.125 (كبير), `scale-larger` ×1.25 (أكبر) — line heights preserved. A real scale, not a root zoom.
- Keep the generous line heights (1.8 body, 2.1 ayah) so diacritics never collide.
- The font files here are the Arabic-script subsets; keep numerals Arabic-Indic so nothing falls back.

## Spacing, radii, elevation

- 4pt `grid`. `page-inset` 20 · `card-pad` 20 / `card-pad-lg` 24 · `card-gap` 12 · `section-gap` 28. Touch targets ≥ `tap-min` (44). Primary buttons `button-h` (56).
- Radii by role: `radius-card` 24 · `radius-sheet` 20 (dialogs, sheets, tab bar) · `radius-button` 16 (buttons, rows, Quran block, top bar) · `radius-dialog-button` 14 · `radius-field` 12 · `radius-pill`.
- Elevation is glass + shadow: `shadow-card` with `blur-card` (20; light uses 24), `shadow-raised` with `blur-raised` (24). Inset glass has no shadow. No coloured side borders, no gradients on cards.

## Pattern and light

- **Star lattice** (`ah-lattice`, tile in `assets/Patterns/star-lattice.svg`): eight-point stars from two overlapped squares, stroke only in `lattice-stroke`. **Onboarding and reflection only.**
- **Behind «نعمة اليوم»** (`ah-cone`): in ليل an optional radial wash of `cone` (≤6%), dropped if it fights the glass; in نهار two soft blobs of `cone` (ground-deepest at 60%, blur ≈120) instead.

## Brand mark

«الحمد» in Amiri Bold — one joined word, no diacritics — with the **thread** beneath: a rule exactly the word's ink width in `accent`, dot at the **right** end. At font size S: rule 0.02·S, dot 0.075·S, gap 0.20·S. Below ~120px wide, the word alone (home top bar). Word colour `accent-text` in ليل, `text` in نهار. Monogram, avatar and favicon: «ح». There is no vector logo; the mark is always set in type. Tagline «نعمةٌ كلَّ يوم». **ThreadProgress** reuses the thread as the step indicator wherever progress dots would go: dot fixed right, `accent` fill grows leftward over a `hairline` track.

## Iconography

- Lucide (`lucide_icons_flutter`), stroke `icon-stroke` 1.5, size `icon-size` 22 (`icon-size-tab` 24). Colour by role: `accent-text` active, `text-muted` inactive, `text-body` neutral.
- The previews use simplified stand-in glyphs from the design sheets; ship real Lucide icons (home, book-open, calendar, settings, share-2, clock).
- No emoji, no filled or multicolour icons, no second library.

## Motion and haptics

- `micro` 150ms ease-out · `standard` 250ms ease-out-cubic · `sentence` 400ms · `ambience` 2500ms ease-in-out-cubic (800ms with reduced motion).
- The «الحمد» glow pulses **once**. Reduced motion: no pulsing, no breathing, instant sentence reveal.
- Haptics: light — step advance, dhikr tap, toggle; heavy — every 33rd dhikr tap; success — reflection complete. No hourly haptic.

## Components

Buttons, chips, fields, toggles, setting rows, the top bar and the four-item tab bar (labels on every screen); Quran, hadith and scholar blocks; the numbered prompt card; calendar cells (plain · done · today — never "missed"); dialog, toast and empty state; daily blessing and journal entry; share cards (1080×1350, 1080×1920, following the active theme). Use the `ah-` classes in `components/bundle.css` on a root with class `ah`; each component's README lists what you provide.

**Intentional additions** beyond the spec: a solid 2px `accent-text` focus ring for keyboard users (≥3:1 on every ground), and the `DailyBlessing` and `JournalEntry` compositions taken from the app's own screens.
