# Design System — Para Todos A.C.

**Aesthetic direction:** Old Mexico town meets progressive free-thinker / artist. Adobe walls, bougainvillea, weathered wood, agave silhouettes, hand-painted signage. Serious but warm. Grounded but progressive. The feeling of walking into La Esquina at golden hour.

NOT corporate-civic. NOT generic NGO. NOT coastal-resort.

---

## Palette

The brand lives in a warm, earthy palette pulled directly from Todos Santos itself: sun-baked adobe, agave fields, washed-turquoise mission walls, sun-low-on-the-Pacific orange.

```css
/* CSS custom properties for Tailwind v4 @theme */
--color-sand:        #efe7d2;  /* warm cream, lime-washed adobe — primary background */
--color-sand-light:  #f7f1e0;  /* lighter cream for hover/elevated surfaces */
--color-sand-dark:   #d9cfb4;  /* deeper sand, for borders, dividers */
--color-terracotta:  #b85042;  /* sun-baked clay, brand mark, primary accent */
--color-sunset:      #d97a4a;  /* warm orange, CTAs, highlights */
--color-cactus:      #6d8a6e;  /* deep agave / cardón flesh, secondary accent */
--color-cactus-pale: #a8baa7;  /* soft sage, for backgrounds, muted UI */
--color-sky:         #7ba6b8;  /* faded turquoise, like old Mexican church paint */
--color-sky-dark:    #4f7a8f;  /* deeper azulejo blue, for headlines on light bg */
--color-espresso:    #3a2e26;  /* warm dark brown, body text */
--color-off-white:   #fbf6e9;  /* unbleached cotton, paper */
--color-ink:         #1f1813;  /* darkest text, near-black with warm undertone */
```

**Hierarchy rules:**

- **Backgrounds:** `--sand` (default), `--off-white` (cards on sand), `--espresso` (inverted/dark sections).
- **Body text:** `--espresso` on light backgrounds, `--off-white` on dark.
- **Headlines:** `--sky-dark` on light, `--off-white` on dark.
- **Primary accent (brand mark, CTAs):** `--terracotta`.
- **Secondary accent (hover, supporting marks):** `--cactus`.
- **Highlights / energy (button hover, key callouts):** `--sunset`.
- **Surfaces / cards:** `--off-white` with a faint `--sand-dark` 1px border instead of shadows.

**Contrast check:**

- `--terracotta` (#b85042) on `--sand` (#efe7d2) = 4.5:1 ✅ AA
- `--espresso` (#3a2e26) on `--sand` (#efe7d2) = 10:1 ✅ AAA
- `--sky-dark` (#4f7a8f) on `--sand` (#efe7d2) = 4.8:1 ✅ AA
- `--sunset` (#d97a4a) on `--sand` (#efe7d2) = 2.7:1 — large text only (≥24px) or icon accents.
- `--cactus` (#6d8a6e) on `--sand` (#efe7d2) = 3.4:1 — large text only.

---

## Typography

Two fonts only. Both loaded via `next/font/google` (self-hosted).

**Headings & display: Fraunces**
- Variable. Use `opsz: "9..144"` and `wght: 300..900`.
- Optical-size axis is the key: at large sizes Fraunces shows its characterful flourishes (curved descenders, soft serifs); at small sizes it tightens up. This is the warm, slightly playful, modern-humanist quality that fits "progressive artistic free-thinker."
- Use weight 600–700 for headlines, 400 italic for pull quotes.

**Body: Inter**
- 400 regular, 500 medium, 600 semibold.
- Tracking slightly loose at small sizes (`letter-spacing: 0.01em`) for comfort.

**Optional accent: Caveat** (hand-script) — load lazily, use ONLY for:
- The signed origin-story attribution ("— Sarai & Barrett") rendered as if hand-written
- Small marginalia / "Una conversación, no una propuesta" tagline in italic accent
- Nothing else — Caveat is salt, not seasoning.

**Size scale:**

| Use | Size | Weight | Font |
|---|---|---|---|
| Hero headline | clamp(48px, 7vw, 88px) | 600 | Fraunces |
| Section headline | clamp(32px, 5vw, 56px) | 600 | Fraunces |
| Card title | 22–28px | 600 | Fraunces |
| Kicker / overline | 12px (uppercase, letterspaced 0.16em) | 600 | Inter |
| Body | 16–18px | 400 | Inter |
| Pull quote | 22–28px | 400 italic | Fraunces |
| Signature accent | 24–32px | regular | Caveat |
| Caption / fine | 13–14px | 400 | Inter |

**Bilingual side-by-side displays:** Spanish runs in Fraunces 500–600, English in Fraunces 400 italic right after — same line if it fits, otherwise stacked. This treats English as a translation gloss, not an equal voice, which is the right register for the project.

---

## Texture, surface, line work

The default Tailwind / shadcn aesthetic is too clean for this brand. Layer in:

**1. Near-solid background with a subtle warm gradient — NOT grain.** An earlier draft used SVG noise as a paper-grain overlay; it hurt body-text legibility on the deployed preview. The final approach is a solid `--sand-light` base layered with two soft radial gradients: a faint white highlight at the top (lit-from-above feel) and an even fainter terracotta wash at the bottom-right (warmth, never noise). Background is fixed to the viewport so it stays consistent on scroll.

```css
body {
  background-color: var(--color-sand-light);
  background-image:
    radial-gradient(ellipse 90% 60% at 50% -10%,
      rgba(255, 255, 255, 0.45) 0%, rgba(255, 255, 255, 0) 60%),
    radial-gradient(ellipse 80% 50% at 100% 100%,
      rgba(184, 80, 66, 0.04) 0%, rgba(184, 80, 66, 0) 70%);
  background-attachment: fixed;
}
```

If a tactile-paper feel is wanted later, apply a very low-opacity (≤2%) properly-flattened grain image only to specific surfaces (e.g., a hero block or a single card) — never globally over body text.

**2. Hand-drawn dividers, not lines.** Replace the standard `<hr>` with a thin SVG squiggle — three or four bezier curves with slight irregularity. Color: `--cactus` or `--sky-dark` at 40% opacity. Width: ~120px.

**3. No corporate shadows.** Cards use a thin 1px solid border in `--sand-dark` (`#d9cfb4`). If elevation is needed, use a 1px hairline + offset position, never blurred drop-shadow.

**4. Asymmetric layouts.** Standard 12-column grid, but allow content to break out — pull quotes can hang to the left of the column, image captions can run vertically up the gutter, section headers can sit slightly off-axis. The goal is editorial, not landing-page.

**5. Numerals + section markers.** Section numbers (01 / 02 / …) hand-rendered in Fraunces 900 at 96px+ as background-layer typography behind kickers. They function as decorative chrome.

---

## The brand mark (logo)

Replace the generic disc-and-horizon emblem with a **circular artisan seal**:

- Outer ring: 1.5px line in `--terracotta`.
- Inside the ring: a hand-drawn illustration of a **cardón cactus + low sun**, rendered in 2-color block-print style (terracotta + cactus green on sand).
- Arched text along the top inside the ring: "PARA TODOS A.C." in Inter 600 uppercase, letterspaced.
- Bottom inside the ring: a small horizontal flourish + "PACÍFICO SUR · BCS" in tiny caps.
- Slightly imperfect line weight on the illustration — the look of a small mezcal label, a coffee shop's letterpress card, a roastery's product stamp. **Hand-cut, not vector-cleaned-to-death.**

For favicon: simplify the seal to just the cardón silhouette (no text, since it'd be illegible at 16px).

---

## Iconography

Where the previous version used emojis or coral letter badges (A/B/C, I/II/III, L/V/C), replace with:

- **Numeric badges:** Hand-rendered numerals (Fraunces 700, 28px) on a terracotta-outlined circle (not a solid coral square). More artisan, less corporate.
- **Section icons:** Where icons add real meaning (water, power, development, etc.), draw them as 2-tone line icons matching the seal style — thin, slightly imperfect. Cactus for "local," sun for "growth," wave for "Pacific," tile/azulejo for "structure." All in `--terracotta` or `--cactus` on `--sand`.

---

## Imagery direction (photography)

Replace the photo brief in `assets/image-spec.md` with:

**Yes — feels right:**
- Bougainvillea against weathered adobe walls
- Cardón silhouettes at golden hour
- Hand-painted signage on warped wooden doors
- The textile colors in a mercado (terracotta clay pots, woven hats)
- A dirt road at dusk with cactus and dust
- A wooden surfboard leaning against an adobe wall (NOT a surfer in action)
- La Esquina exterior at golden hour, no people
- A pueblo street with potted bougainvillea, no cars
- Empty beach at sunrise — wide, contemplative
- Pescadero farms with the Pacific in distance

**No — kills the vibe:**
- Drone shots of resorts
- Crowds, weddings, tourist photos
- Bright clean tropical Caribbean imagery
- Punta Lobos surfers mid-wave (too "lifestyle brand")
- Cabo San Lucas Arch (wrong region, over-photographed)
- Anything that looks like Hawaii or Tulum stock
- Cars, parking lots, modern resorts

**Photo treatment:**
- Slightly warmer color grade (push +5 yellow, +3 red in the highlights)
- Lower contrast than typical web photography — let the dust and softness come through
- Grain acceptable, even welcome
- Never sharpened to web-app crispness

When in doubt: would this photo look out of place hanging on the wall of Hotel San Cristobal, La Esquina, or Doce Cuarenta? If yes, skip it.

---

## Layout principles

- **Mobile-first** still applies — but mobile design should retain the editorial breathing. Don't compress.
- **Max content width: 64rem (1024px).** Beyond that, the eye loses anchor. Headlines can break out wider; body text stays disciplined.
- **Vertical rhythm:** 8px baseline. Section padding: 96–128px top/bottom on desktop, 64–80px mobile.
- **No carousels. No popups. No exit-intent modals. No floating chat bubbles.**
- **One CTA per section maximum.** The page shouldn't feel like a funnel.

---

## Tone-of-voice + visual marriage

Where the copy says "*This is a conversation, not a proposal*" — render that line in **Fraunces italic + Caveat hand-script alternation**, e.g.:

> ***Esto es una conversación,*** *no una propuesta.*

The italic carries the seriousness; the script carries the warmth.

Where the page introduces the three commitments (stage-gated funding / open books / community veto) — render each commitment header in **Fraunces 700**, then add a tiny hand-drawn icon (a key, an open book, a raised hand) above it. Not stock icons — hand-traced.

Where the page lists the three legal gates — render the numerals as **large display Fraunces ("01" "02" "03") in `--terracotta` 30% opacity, behind the gate title in `--espresso`**. Editorial layered typography.

---

## What gets thrown out

Specifically NOT in the new design:

- Pacific-blue / corporate-navy as a primary color
- Pure-white surfaces
- Solid coral squares as icon backgrounds
- Material-Design shadows
- Stock business iconography
- Centered hero with two side-by-side button CTAs in primary colors
- Tabular FAQs with chevrons
- Stat cards with rounded corners on a clean white background

If a design choice could appear unchanged on a SaaS marketing page, it doesn't belong here.
