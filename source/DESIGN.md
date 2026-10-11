# DESIGN.md — «الحمد» design system «ليل» (v1 — Step 1, pending approval)

Derived from the six reference screens (`design-refs/`) and the measured tokens in the brief (A6). Dark is the default theme; light derives from the app-icon palette. All UI Arabic (فصحى), RTL, Arabic-Indic numerals, no emoji.

## 1. Tokens — dark (default)

| Token | Value | Role | Contrast (on ground / on glass) |
|---|---|---|---|
| ground | `#15152A` | app background | — |
| ground-deep | `#111126` | onboarding + reflection background | — |
| ground-deepest | `#0C0C1C` | reflection step «deepen» only | — |
| glass-card | `#1E1E38` | = white 6% over ground + blur 20 + 1px hairline, r24 | — |
| glass-raised | `#25232E` | sheets, dialogs, tab bar | — |
| hairline | `#2E2E4A` | 1px borders, dividers, thread track | — |
| text | `#EDEDF5` | titles, primary text | **15.4 / 13.9** ✓ |
| text-body | `#C7C4D8` | body copy | **10.5 / 9.5** ✓ |
| text-muted | `#AEAECB` | labels, timestamps, placeholders | **8.3 / 7.5** ✓ (kept — passes, no lift needed) |
| gold-bright | `#E4C368` | ayah text, active tab, small gold labels, thread dot | **10.5 / 9.5** ✓ |
| gold-deep | `#C8A951` | chip outlines, calendar dots, thread fill | **7.9** ✓ |
| violet | `#6C63FF` | primary button fill, today ring, toggle-on | white label 4.3:1 → labels ≥18px/600 (large-text ≥3:1 ✓); ring vs ground 4.2:1 (non-text ≥3 ✓). Violet is **never body text**. |
| violet-pressed | `#594DFF` | pressed state | white label 5.3 ✓ |
| danger | `#E5837A` | delete only | **6.1 on glass** ✓ |
| quran-block | fill `#1B1B33`, border `rgba(200,169,81,.28)`, text gold-bright | ayah container | gold 9.8 ✓ |

## 2. Tokens — light (secondary, from the app-icon palette)

Background: 135° gradient `#DCEBF5 → #E7F2E6 → #FBF8F2` + two soft blobs (`#CFE3F2`, `#DDEFD9`, blur ≈120, 60%). Glass = white 72% + blur 24 + white 90% hairline, r24.

| Token | Value | Contrast vs gradient (darkest→lightest stop) |
|---|---|---|
| ink | `#14213D` | 13.1 → 15.0 ✓ |
| body | `#33415C` | 8.4 → 9.6 ✓ |
| muted | `#566478` (**lifted** from ref's `#6B7A90`, which was 3.6–4.1 ✗) | 4.9 → 5.7 ✓ |
| accent (gold-ink) | `#7A5F12` — fills BOTH the violet and gold roles in light | 5.0 → 5.7 ✓; white on it 6.0 ✓ |
| danger | `#A63D30` | 5.9 ✓ |
| ayah | ink `#14213D` in Amiri Quran, quran-block = white 60% + `rgba(122,95,18,.35)` border | ✓ |

## 3. Surfaces

- **Glass recipe (dark):** fill = white 6% over ground, `BackdropFilter` blur 20, 1px hairline `#2E2E4A`, radius 24, shadow `0 12px 32px rgba(0,0,0,.35)`. Three elevations: **card** (`#1E1E38`), **raised** (`#25232E`, blur 24 — sheets/dialogs/tab bar), **inset** (`#1B1B33`, no shadow — quran block, fields).
- **Star lattice:** one tile, 8-point star (two overlapped squares), stroke-only, tiled; opacity 3–5%. **Allowed only on onboarding and reflection.** Never on home/journal/calendar/settings.
- **Spotlight cone (ref-01):** optional radial wash behind the daily blessing, ≤6% opacity, dark theme only; dropped if it fights the glass.

## 4. Typography

- **Amiri Quran** — `textUthmani` only, always inside ﴿ ﴾, gold-bright (dark) / ink (light). Never any other use.
- **Amiri (Bold/Regular)** — wordmark, screen titles, blessing titles, hadith, scholar line, du'a.
- **IBM Plex Sans Arabic** — all UI text. No Latin UI font anywhere.

Scale (logical px @ عادي; line-height): screen title Amiri 700 30/1.5 · blessing title Amiri 700 34/1.5 · ayah Amiri Quran 24/2.1 · hadith & du'a Amiri 20/1.9 · body Plex 400 16/1.8 · secondary 14/1.8 · label/tab 12/1.6. User sizes: **عادي ×1.0 · كبير ×1.125 · أكبر ×1.25** (real scale multiplier, applied to the whole ramp; line-heights preserved). Arabic-Indic numerals ٠١٢٣ via one formatter, everywhere.

## 5. Spacing · radii · icons · motion · haptics

- 4-pt grid: page inset 20, card padding 20–24, card gap 12, section gap 28. Tap targets ≥44.
- Radii: **24 cards · 16 buttons · 12 fields · 999 chips**. Buttons height 56.
- Icons: `lucide_icons_flutter`, strokeWidth **1.5**, size 22 (tab bar 24).
- Motion: micro 150ms easeOut · standard 250ms easeOutCubic · sentence fade-in 400ms · reflection ambience shift 2500ms easeInOutCubic (800ms with reduced motion) · hamd glow pulses **once**. Reduced motion: no pulsing/breathing, instant sentence reveal.
- Haptics: light = step advance, dhikr tap, toggle · heavy = every 33 dhikr taps · success = reflection completion. **No hourly haptic.**

## 6. Brand mark & thread

Wordmark «الحمد» Amiri Bold (one joined word, no diacritics) + thread: rule exactly the wordmark's width below it, **dot at the RIGHT end**. At font size S: thread 0.02·S, dot 0.075·S, gap 0.20·S. Below ~120px wide → wordmark alone (so the home top bar shows the wordmark alone, as in ref-01). Gold-bright on dark, ink on light. Favicon/monogram = «ح» alone.

**ThreadProgress** replaces all progress dots (onboarding, reflection): dot fixed at the right end, gold-deep fill grows **leftward** from the dot over a hairline track; fill fraction = (step+1)/steps.

## 7. Components (states in the visual sheet)

Glass card · primary button (violet, white 600 ≥18px; pressed `#594DFF`; disabled fill `#2E2E4A` text muted) · quiet button (hairline outline, text-body) · gold-outlined chip (ref-03) · filled chip (+ selected: gold 18% fill, gold-bright text) · toggle (violet track, ref-04) · time-picker row · search field (inset glass, r12) · bottom tab bar — **4 items, labels on every screen** (الرئيسية · سجل الحمد · المداومة · الإعدادات), active gold-bright with short gold bar above · top bar (ref-01: wordmark centre, «ح» avatar → «عن التطبيق», calendar icon → المداومة) · sheet · dialog · toast · empty state · quran block ﴿ ﴾ · hadith block · scholar block (name hidden when attribution starts with مستفاد/مأثور/إشارة) · numbered prompt card (ref-05) · calendar cell (gold dot done / violet ring today / plain — no "missed" styling) · share cards 1080×1350 & 1080×1920 (night ground, glass card, gold ayah, wordmark+thread bottom-left).

## 8. "Better than the reference" — applied

Tab labels on every screen · ayat in ﴿ ﴾ not «» · ThreadProgress instead of dots · light-theme muted lifted (#566478) — dark muted passes as-is · spotlight cone kept at ≤6% · ref-05 compose adopted as-is · «ح» avatar opens «عن التطبيق» (no accounts) · CTA is «استشعر النعمة».

## Open — decided in Step 2

Position of «حديث اليوم» vs «نعمة اليوم» above the fold; tasbih session-only vs lifetime total.
