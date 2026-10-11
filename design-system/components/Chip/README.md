# Chip

Pill label for a blessing or its category (نعمة الأم، نعم العافية).

**Consumer provides:** the text; `selected` state for filters.

- Outlined (default): `accent` 1px border, `accent-text` 13px text, `radius-pill`, padding 6×14. Journal entries and share cards.
- Selected: add `ah-chip--selected` — `accent-soft` fill (accent at 18% dark / 14% light).
- Filled: `ah-chip--filled` — `glass-raised` fill, `text-body`. Category pill on the home blessing.
- On the star lattice, back it with `ah-onscrim` so it stays legible.
