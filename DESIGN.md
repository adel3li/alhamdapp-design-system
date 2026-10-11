# DESIGN.md — «الحمد» design system v2 — «ليل» (dark, default) + «نهار» (light)

Source of truth for values: `tokens/tokens.json` (and the generated `tokens.css`, `alhamd_tokens.dart`). Visual proof: `reference/design-sheet-layl-dark.html` and `reference/design-sheet-nahar-light.html`. The light theme is derived from the app-icon palette in `reference/app-icon-palette.png`: cream `#F4EDE3`, brown `#2A1F19`, terracotta `#B9573B`.

All UI Arabic (فصحى), RTL, Arabic-Indic numerals (٠١٢٣) through one formatter, Hijri dates, no emoji, no Latin UI font. Every token is named by **role**, so a screen built once renders in both themes with no per-theme code.

## 1. Colour — one role set, two themes

| Role | Token | ليل (dark) | نهار (light) | Rule |
|---|---|---|---|---|
| App ground | `ground` | `#15152A` | `#F4EDE3` | Home, journal, calendar, settings. |
| Deep grounds | `ground-deep` / `ground-deepest` | `#111126` / `#0C0C1C` | `#EDE3D4` / `#E6DAC8` | Onboarding + reflection / «التعمّق» step only. Only these carry the star lattice. |
| Card | `glass-card` | `#1E1E38` | `#FBF8F3` | white 6% over ground + blur 20 (light: white 60% + blur 24), 1px `hairline`, r24, `shadow-card`. |
| Raised | `glass-raised` | `#25232E` | `#FFFFFF` | Sheets, dialogs, tab bar, toast, filled chip. Blur 24, `shadow-raised`. |
| Inset | `glass-inset` | `#1B1B33` | `#EFE6D9` | Quran block, fields, prompt card. No shadow. |
| Hairline | `hairline` | `#2E2E4A` | `#DCCFBE` | Every 1px line, thread track, disabled fill, toggle-off track. |
| Text | `text` / `text-body` / `text-muted` | `#EDEDF5` / `#C7C4D8` / `#AEAECB` | `#2A1F19` / `#4A3B32` / `#6B5A4E` | All ≥4.5:1 on every ground and glass (light muted 5.6:1). |
| Highlighted text | `accent-text` | gold-bright `#E4C368` | terracotta-ink `#9E4A30` | The **only** coloured text: active tab, chip text, text buttons, ayah (dark). |
| Marks | `accent` / `accent-soft` | gold-deep `#C8A951` | terracotta `#B9573B` | Thread rule + dot, ThreadProgress fill, chip outlines, calendar «done» dots, scholar line, «ح» ring. Light: never text under 24px (4.0:1). |
| Action | `primary` / `primary-pressed` | violet `#6C63FF` / `#594DFF` | terracotta `#B9573B` / `#8F4229` | Primary button, today ring, toggle-on, prompt number. White label, 600, ≥18px. **Never running text.** |
| Ayah | `quran-text` / `quran-border` | gold-bright / gold 28% | ink `#2A1F19` / terracotta 35% | Amiri Quran inside ﴿ ﴾ on `glass-inset`. |
| Delete | `danger` | `#E5837A` | `#A63D30` | Delete only, always with the word «حذف». |

**Why the light theme has one hue.** On cream, gold loses its glow and violet reads as foreign. The icon's terracotta is warm enough to be the accent and dark enough (with a white label) to be the button, so نهار uses terracotta for both roles and the ayah returns to ink — as in a printed mushaf.

The brown icon ground `#2A1F19` with its `#D4704F` thread (`icon-ground`, `icon-thread`) is **icon artwork only**, never a UI surface.

## 2. Surfaces, texture, light
- **Glass recipe:** fill = `glass-*`, `BackdropFilter` blur 20/24, 1px `hairline`, radius 24, shadow per theme. Three elevations: card · raised · inset (no shadow).
- **Star lattice:** one 8-point-star tile (two overlapped squares), stroke only, `lattice-stroke` (text at 5%). **Onboarding and reflection only.**
- **Spotlight cone** (dark only): radial wash ≤6% behind «نعمة اليوم»; dropped if it fights the glass. **Light instead:** two soft blobs of `ground-deepest` at 60%, blur ≈120, on the deep grounds.
- Share cards (1080×1350, 1080×1920) follow the active theme: ground, glass card, ayah, wordmark + thread bottom-left.

## 3. Typography
- **Amiri Quran** — `textUthmani` only, inside ﴿ ﴾, colour `quran-text`. Never any other use.
- **Amiri** 700/400 — wordmark, screen & blessing titles, dialog titles, hadith, du'a, scholar lines.
- **IBM Plex Sans Arabic** — all UI text.

Ramp @ عادي: wordmark 72/1 · blessing title 34/1.5 · screen title 30/1.5 · ayah 24/2.1 · hadith 20/1.9 · dialog title 19/1.5 · scholar 17/1.9 · button 18/600 · body 16/1.8 · field 15/1.8 · secondary 14/1.8 · chip 13/1.6 · label 12/1.6 · tab 11/1.6. User sizes **عادي ×1.0 · كبير ×1.125 · أكبر ×1.25** multiply the whole ramp; line heights preserved.

## 4. Spacing · radii · icons · motion · haptics
- 4-pt grid: page inset 20 · card padding 20–24 · card gap 12 · section gap 28 · tap targets ≥44 · primary button 56.
- Radii: card 24 · sheet/dialog/tab bar 20 · button/row/quran block 16 · dialog button 14 · field 12 · pill 999.
- Icons: Lucide (`lucide_icons_flutter`), stroke 1.5, 22 (tab bar 24). Colour: `accent-text` active, `text-muted` inactive, `text-body` neutral.
- Motion: micro 150 easeOut · standard 250 easeOutCubic · sentence fade 400 · ambience shift 2500 easeInOutCubic (800 reduced). «الحمد» glow pulses **once**. Reduced motion: no pulsing, instant reveal.
- Haptics: light = step advance, dhikr tap, toggle · heavy = every 33 taps · success = reflection complete. **No hourly haptic.**

## 5. Brand mark & thread
Wordmark «الحمد» Amiri Bold (one joined word, no diacritics) + **thread**: a rule exactly the wordmark's ink width below it, dot at the **right** end. At font size S: rule 0.02·S, dot 0.075·S, gap 0.20·S. Below ~120px wide → wordmark alone (home top bar). Colour: word `accent-text` (dark) / `text` (light); rule + dot `accent`. Monogram/avatar/favicon: «ح» alone. Tagline: «نعمةٌ كلَّ يوم».

**ThreadProgress** replaces all progress dots: dot fixed at the right, `accent` fill grows **leftward** over a `hairline` track; fill = (step+1)/steps.

## 6. Components (states on the sheets)
Glass card · primary button (`primary`, white 600 ≥18; pressed; disabled = `hairline` fill + `text-muted`) · quiet button (hairline outline, `text-body`) · text button (`accent-text`) · outlined chip (`accent` border, `accent-text`) · filled chip (`glass-raised`; selected = `accent-soft` fill) · toggle (`primary` track, white knob) · time-picker row · search field (`glass-inset`, r12) · bottom tab bar — 4 items, labels on every screen (الرئيسية · سجل الحمد · المداومة · الإعدادات), active `accent-text` with a short bar above · top bar (wordmark centre, «ح» avatar → «عن التطبيق», calendar icon → المداومة) · sheet · dialog · toast · empty state · quran block ﴿ ﴾ · hadith block («رواه مسلم · صحيح») · scholar block (name hidden when attribution starts with مستفاد/مأثور/إشارة) · numbered prompt card (3 optional questions, saved as separate fields) · calendar cell (`accent` dot = done · `primary` ring = today · plain — never "missed") · share cards.

## 7. Content rules
Sacred text is shown exactly as given, never truncated or re-broken. Quran in ﴿ ﴾, hadith/du'a in « ». No streaks, no "don't break the chain", no exclamation marks. CTA: «استشعر النعمة». Empty state: «سجلّك ما زال فارغًا... ابدأ بنعمة اليوم». Privacy stated plainly: «نصّ سجلّك لا يغادر جهازك، ولا حساب هنا».
