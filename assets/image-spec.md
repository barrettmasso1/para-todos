# Image Spec — Para Todos Landing Page (v2 — artisan direction)

Photographer is delivering real photos in 1–2 weeks. Until then, ship with Unsplash placeholders chosen against these criteria. **See `DESIGN-SYSTEM.md` for the full visual direction** — this doc is the practical extension for image slots.

## The aesthetic gate

Before picking any photo, ask: **would this look at home on the wall of Hotel San Cristóbal, La Esquina, or Doce Cuarenta?** If no, skip it.

**Yes — feels right:**
- Bougainvillea against weathered adobe walls
- Cardón silhouettes at golden hour against open sky
- Hand-painted signage on warped wooden doors
- Mercado scenes: terracotta clay pots, woven hats, dried chiles
- A dirt road at dusk with cactus and dust
- A wooden surfboard leaning against an adobe wall (NOT a surfer in action)
- La Esquina-style exteriors at golden hour — no people
- A pueblo street with potted bougainvillea, no cars in frame
- Empty beach at sunrise — wide, contemplative, soft light
- Pescadero farms with the Pacific in the distance
- Doors. Lots of weathered painted doors.
- Adobe walls peeling to reveal underlying clay
- Agave fields, blue agave, palmera silhouettes
- Old mission-bell or church facade details (texture/color, not religious focus)

**No — kills the vibe:**
- Drone shots of resorts or marinas
- Crowds, weddings, tourist group photos
- Bright clean tropical Caribbean imagery (turquoise water, white sand)
- Punta Lobos surfers mid-wave (too "lifestyle brand")
- Cabo San Lucas Arch (wrong region, over-photographed)
- Anything that looks like Hawaii, Tulum, or Costa Rica stock
- Cars, parking lots, modern condo developments
- People in athleisure or expensive resort wear
- Yoga / wellness retreat imagery

**Photo treatment (apply via CSS filters or pre-edit):**
- Push +5 yellow, +3 red in highlights (warmer)
- Drop contrast 8–10% from standard web crispness
- Grain is welcome — do NOT over-sharpen
- Slight desaturate (-5) on greens to read more "cactus / agave" than "tropical"

## Photo slots

### 1. HERO — Golden-hour landscape with character (replaces the coastal-sunrise direction)

- **Mood:** Vast, calm, ours. Cardón silhouette + low warm sun, OR a weathered pueblo street with bougainvillea at golden hour, OR a wide dirt road heading toward the Pacific with palms and cactus framing.
- **Composition:** Wide horizontal, room for headline overlay on the left third or full bottom.
- **Aspect:** 16:9 or wider. Used at full-width hero, ~1920×900.
- **Color palette in image:** Warm tones — terracotta, sand, agave green, faded sky blue. Should harmonize with `--terracotta` and `--cactus`.
- **Search starting points:**
  - [unsplash.com/s/photos/todos-santos](https://unsplash.com/s/photos/todos-santos)
  - [unsplash.com/s/photos/baja-california-sur](https://unsplash.com/s/photos/baja-california-sur)
  - [unsplash.com/s/photos/cardon-cactus](https://unsplash.com/s/photos/cardon-cactus)
  - [unsplash.com/s/photos/baja-desert-sunset](https://unsplash.com/s/photos/baja-desert-sunset)
- **Validated candidate:** "An aerial view of a small town in the desert" by Josh Withers — aerial of Todos Santos. [unsplash.com/photos/RK5X3z8O4a4](https://unsplash.com/photos/an-aerial-view-of-a-small-town-in-the-desert-RK5X3z8O4a4). Good but evaluate alternatives — a ground-level cactus+sky shot may carry the artisan vibe better than aerial.

### 2. SECTION 2 — "What is this?" accent

- **Mood:** Adobe + bougainvillea + warm shadow. The feeling of a quiet pueblo morning.
- **Aspect:** 4:5 or 1:1, ~800px.
- **Search:** [unsplash.com/s/photos/mexican-pueblo](https://unsplash.com/s/photos/mexican-pueblo), [unsplash.com/s/photos/adobe-wall](https://unsplash.com/s/photos/adobe-wall), [unsplash.com/s/photos/bougainvillea](https://unsplash.com/s/photos/bougainvillea)

### 3. SECTION 4 — Stages accent

- **Mood:** Working land. Pescadero farms with cactus + Pacific in the distance, OR a tiled azulejo wall, OR an artisan's hands working clay/wood (only with permission/release).
- **Aspect:** 16:9 horizontal.
- **Search:** [unsplash.com/s/photos/baja-farm](https://unsplash.com/s/photos/baja-farm), [unsplash.com/s/photos/agave-field](https://unsplash.com/s/photos/agave-field), [unsplash.com/s/photos/azulejo](https://unsplash.com/s/photos/azulejo)

### 4. SECTION 5 — Three ways to participate accent

- **Mood:** Hands, gathering, conversation — but **no identifiable faces** since we can't get releases. Hands holding ceramic cups at a wooden table. A group walking on a dirt road, backs to camera. Cafecito + agua glasses on a weathered tile counter.
- **Aspect:** 16:9 or 3:2.
- **Search:** [unsplash.com/s/photos/cafe-mexico](https://unsplash.com/s/photos/cafe-mexico), [unsplash.com/s/photos/mexican-cafe](https://unsplash.com/s/photos/mexican-cafe)

### 5. SECTION 6 — Who's behind this (background only)

- **Mood:** Subtle, textured, neutral. A faded adobe wall, an unbleached canvas, dust in golden afternoon light. Used as low-opacity background (15–25%) behind the Founding Committee block.
- **Aspect:** 16:9, will be desaturated in CSS.

### 6. SECTION 7 — Plaza Todos Santos / next session

- **Mood:** Plaza Todos Santos itself if a non-people shot exists. Otherwise: a Mexican plaza at dusk, amber sodium light, palm silhouettes, ironwork lamp posts.
- **Aspect:** 21:9 wide banner.
- **Search:** [unsplash.com/s/photos/plaza-mexico](https://unsplash.com/s/photos/plaza-mexico), [unsplash.com/s/photos/mexican-town-square](https://unsplash.com/s/photos/mexican-town-square)

## Selection checklist (apply to every photo)

- [ ] No identifiable faces (or only with photographer's signed release)
- [ ] No corporate branding / commercial signs / resort logos
- [ ] No Cabo San Lucas Arch (wrong region)
- [ ] No tropical-Caribbean color signatures (turquoise + white sand)
- [ ] Color palette doesn't clash with brand — warm tones preferred
- [ ] Light is soft (golden hour) or diffused, not harsh midday
- [ ] License is Unsplash standard (free for commercial use)
- [ ] Photographer name + Unsplash photo URL recorded in `public/images/CREDITS.md`

## Swap plan (when photographer delivers)

1. Drop new photos into `public/images/` with the same filenames (e.g., `hero.jpg`).
2. Commit + push. Vercel auto-deploys.
3. No code changes needed.

Keep this spec for V2 image direction so the photographer aligns to the same brief.
