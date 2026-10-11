# Wordmark

«الحمد» set in Amiri Bold with the gold thread beneath it. There is no drawn logo — the mark is always live type.

**Consumer provides:** the size `S` via `--s` (font size), and the colour variant.

- Thread: a rule exactly the word's width, `gold-bright`; thickness 0.02·S, dot 0.075·S at the **right** end (where Arabic begins), gap 0.20·S. Markup order is dot then rule — in RTL the first child sits on the right.
- Word colour: `text` (share cards, about) or `gold-bright` with `ah-wordmark--gold` (sheet header, top bar).
- Under ~120px wide drop the thread and show the word alone (the home top bar).
- Monogram / favicon / avatar: «ح» alone (`ah-avatar`).
- One joined word, no diacritics, never stretched, never letter-spaced. Glow pulses once on reveal; none with reduced motion.
