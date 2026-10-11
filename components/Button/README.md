# Button

One violet primary per screen for the action the screen exists for; everything else is quiet or a gold text button.

**Consumer provides:** the label (an Arabic verb phrase — «استشعر النعمة», «ابدأ التأمل», «التالي»), the handler, and `disabled` when needed.

| Variant | Classes | Use |
|---|---|---|
| Primary | `ah-btn ah-btn--primary` | 56px tall, `radius-button`, label 18px/600 `on-violet` on `violet`. Pressed: `violet-pressed`. Disabled: `hairline` fill, `text-muted` label. |
| Compact | add `ah-btn--sm` | 44px (`tap-min`), 14px label — only in rows of two or three. |
| Dialog | `ah-btn--dialog` | 44px, `radius-dialog-button` (14). |
| Quiet | `ah-btn ah-btn--quiet` | hairline outline, `text-body` label, weight 500. Secondary choices («ليس الآن»). |
| Text | `ah-btn ah-btn--text` | `gold-bright` 14px, no fill («أعد الاستشعار»). |
| Danger | `ah-btn ah-btn--danger` | Delete only — `danger` label with the word حذف. |

- Never put white text under 18px on `violet` (4.3:1 — large-text only); compact primaries rely on 600 weight and are used sparingly.
- Light theme: `violet` resolves to gold-ink `#7A5F12` (white on it 6.0:1).
- Haptic: light on press.
