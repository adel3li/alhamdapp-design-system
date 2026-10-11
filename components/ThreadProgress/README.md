# ThreadProgress

The wordmark's thread as a step indicator — replaces progress dots in onboarding and reflection.

**Consumer provides:** `step` (0-based) and `steps`; fill width = (step+1)/steps.

- `gold-bright` 7px dot fixed at the right end; 2px `hairline` track; `gold-deep` fill grows **leftward** from the dot (250ms ease-out-cubic).
- Pair with a «٣ من ٥» label in `text-muted` when space allows.
