# GlassCard

The one container. Three elevations, all with a 1px `hairline` edge.

**Consumer provides:** children; padding override (`card-pad` 20 or `card-pad-lg` 24).

| Elevation | Classes | Fill · blur · shadow | Use |
|---|---|---|---|
| Card | `ah-glass` | `glass-card` · `blur-card` · `shadow-card`, `radius-card` 24 | Hadith of the day, journal entries, settings groups |
| Raised | `ah-glass ah-glass--raised` | `glass-raised` · `blur-raised` · `shadow-raised` | Sheets, dialogs, tab bar |
| Inset | `ah-glass ah-glass--inset` | `glass-inset`, no shadow | Quran block, fields, prompts |

- No coloured borders, no gradients on cards. Light theme: white 72% + blur 24 over the gradient.
