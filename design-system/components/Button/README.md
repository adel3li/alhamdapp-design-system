# Button

One `primary` button per screen for the action the screen exists for; everything else is quiet or a gold text button.

**Consumer provides:** the label (an Arabic verb phrase — «استشعر النعمة», «ابدأ التأمل», «التالي»), the handler, and `disabled` when needed.

| Variant | Classes | Use |
|---|---|---|
| Primary | `ah-btn ah-btn--primary` | 56px tall, `radius-button`, label 18px/600 `on-primary` on `primary`. Pressed: `primary-pressed`. Disabled: `hairline` fill, `text-muted` label. |
| Compact | add `ah-btn--sm` | 44px (`tap-min`), 14px label — only in rows of two or three. |
| Dialog | `ah-btn--dialog` | 44px, `radius-dialog-button` (14). |
| Quiet | `ah-btn ah-btn--quiet` | hairline outline, `text-body` label, weight 500. Secondary choices («ليس الآن»). |
| Text | `ah-btn ah-btn--text` | `accent-text` 14px, no fill («أعد الاستشعار»). |
| Danger | `ah-btn ah-btn--danger` | Delete only — `danger` label with the word حذف. |

- Never put white text under 18px on `primary` (4.3:1 — large-text only); compact primaries rely on 600 weight and are used sparingly.
- نهار: `primary` is terracotta `#B9573B` (white on it 4.7:1; pressed `#8F4229` 7.0:1).
- Haptic: light on press.
