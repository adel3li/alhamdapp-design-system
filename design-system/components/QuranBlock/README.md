# QuranBlock

An ayah, shown exactly as the content gives it.

**Consumer provides:** the Uthmani text and the reference («سورة إبراهيم : ٣٤»). The component adds ﴿ ﴾ if the text lacks them.

- `glass-inset`, 1px `quran-border`, `radius-button`, padding 18, centred. Text: `ayah` style (Amiri Quran, 22–24px / 2.1) in `quran-text` (gold on ليل, ink on نهار). Reference: 12px `text-muted`.
- Never edit, truncate, ellipsise or re-break an ayah. Never use «» for Quran — those are for hadith.
- Amiri Quran is used nowhere else.
