# Wordmark

«الحمد» set in Amiri Bold with the `accent` thread beneath it. There is no drawn logo — the mark is always live type.

**Consumer provides:** the size `S` via `--s` (font size), and the colour variant.

- Thread: a rule exactly the word's width in `accent`; thickness 0.02·S, dot 0.075·S at the **right** end (where Arabic begins), gap 0.20·S. Markup order is dot then rule — in RTL the first child sits on the right.
- Word colour: `accent-text` in ليل, `text` in نهار (the CSS switches by theme). `ah-wordmark--ink` forces `text` in both.
- On the app icon the word sits on `icon-ground` with an `icon-thread` thread — icon artwork only.
- Under ~120px wide drop the thread and show the word alone (the home top bar).
- Monogram / favicon / avatar: «ح» alone (`ah-avatar`).
- One joined word, no diacritics, never stretched, never letter-spaced. Glow pulses once on reveal; none with reduced motion.
