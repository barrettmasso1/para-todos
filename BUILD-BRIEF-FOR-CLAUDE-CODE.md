# Build Brief — paratodosbcs.mx Landing Page

You're Claude Code. Build a bilingual landing page for **PARA TODOS** (legal name: **TODOS PARA TODOS A.C.**), a Mexican civil association convening a community conversation about whether the southern Pacific region of the Municipality of La Paz, BCS should explore forming its own municipality. Exploratory, transparent, listening-first.

## Brand naming rules (LOCKED — do not drift)

- **Public-facing brand name: "PARA TODOS"** (not "PARA TODOS A.C."). Use this in: header, footer, page titles, OG metadata, document downloads, button labels, almost everywhere.
- **Legal entity name: "TODOS PARA TODOS A.C."** Use this only in (a) the "convened by..." introduction in the "Who's behind this" section, (b) the privacy policy / data-controller line, and (c) any legal/factura context.
- Never write "PARA TODOS A.C." — that's the in-between form we replaced.

**Hard deadline:** Wednesday 2026-05-27 EOD — landing live at any URL so QR codes on Thursday's town hall handouts work. Town hall: Thursday 2026-05-28, 5:00 PM, Plaza Todos Santos.

This brief supersedes any prior handoff in this repo. All decisions below are LOCKED — do not re-litigate them. The open items at the end of this brief are the only things still requiring user input.

---

## Vita soft de-emphasis (locked decision)

The legal counsel firm's brand name is **not** displayed publicly on the site (revised from earlier drafts). The "Path A vs Path B" donor framing is also gone — the public sees one consistent message about tax-deductible receipts; the internal plumbing (which entity issues the factura at which time) is invisible to donors. Where any earlier draft of the page-copy source still names "Vita Insumos" or talks about "Path A / Path B," generalize to "our legal counsel" and remove the dual-path language.

The FAQ entry formerly titled "Who is Vita Insumos?" is now "Who handles the technical and legal side?" with this answer:

> "We've engaged Mexican legal counsel specialized in municipal law to guide the technical and legal process. Their work is overseen by the Para Todos Founding Committee. Contract terms and the detailed proposal are available for review by community members and donors; reach us at hola@paratodosbcs.mx."

Bilingual rendering required (Spanish version in the preview HTML — copy from there).

## Locked answers (no need to ask)

| Item | Decision |
|---|---|
| Domain | `paratodosbcs.mx` — already purchased via GoDaddy. DNS records to be added when deploy is ready. |
| Email | `hola@paratodosbcs.mx` via GoDaddy's bundled email (Microsoft 365 Essentials, part of the domain package). To be set up Wednesday. |
| Form/CRM | **Go High Level (GHL)**, not Tally. Barrett already runs GHL for other businesses — submissions land in his existing CRM with native automation. Use GHL embedded forms (script/iframe embed). |
| Analytics | **Vercel Web Analytics**, not Plausible. Free, native, zero setup, privacy-friendly. |
| Hosting | Vercel (free tier). |
| Repo | GitHub. Repo name: `paratodos-bcs`. |
| Vercel project name | `paratodos-bcs` (matches repo). |
| Notification email (form submissions) | `hola@paratodosbcs.mx` + cc/forward to `barrettmasso@me.com` so Barrett sees them on his phone immediately. GHL natively does this. |
| Donation flow v1 | **Two payment methods, NOT two paths.** (1) Card payment via Go High Level Payments — paste the GHL Payments link as the "Donate by card" button URL. (2) SPEI bank transfer — display CLABE + RFC + recipient name in a `bank-block` panel. Factura logistics handled internally (legal counsel issues factura for Path A donors during interim; TODOS PARA TODOS A.C. issues post-SAT). The donor sees ONE consistent message: "Tax-deductible receipt provided." No Path A / Path B language in the public UI. |
| Photographer | Real photos in 1–2 weeks. Launch with curated Unsplash placeholders (see `assets/image-spec.md`). |
| Logo | Circular artisan seal in `assets/brand/` — cardón cactus + sun + "PARA TODOS" arched top, no bottom text. |
| Signature figure ("3,500") | Hedge to "miles de firmas / thousands of signatures" with a footnote "(estimación pendiente del estudio cartográfico Etapa I / estimate pending Stage I cartographic study)". Don't quote a precise number until Vita confirms padrón electoral data. |

---

## Stack (final)

- **Framework:** Next.js 15 (App Router) + TypeScript
- **Styling:** Tailwind CSS **v4** (use `@import "tailwindcss";` in `globals.css`, no `tailwind.config.js` — v4 is config-by-CSS via `@theme`)
- **i18n:** `next-intl` with Spanish (`es`, default at `/`) and English (`en`, at `/en`). Persist user choice in localStorage; honor `Accept-Language` for first visit when localStorage is empty.
- **Fonts:** `next/font/google` — Fraunces (headings) + Inter (body). Self-hosted, no FOUT.
- **Forms:** Go High Level embedded forms (Barrett provides 3 embed snippets — see Open Items).
- **Analytics:** `@vercel/analytics` package, dropped into `app/layout.tsx`.
- **Hosting:** Vercel.

---

## Pre-staged assets (already in the repo)

These are in the `Para Todos` folder Barrett shared. Use them verbatim — do not regenerate.

**Full design system spec:** `DESIGN-SYSTEM.md` (at the project root). **Read it first** — it details palette, typography, texture, surface, line work, iconography conventions, photography direction, and what to throw out. This brief is the build instruction; the design system is the visual law.

| Path | Use |
|---|---|
| `assets/brand/logo-seal-1024.png` | Master seal (circular badge: cardón cactus + sun + arched text). Use at full size for hero / about / footer. |
| `assets/brand/logo-seal-512.png`, `256.png`, `128.png` | Pre-rendered seal at smaller sizes for `next/image` |
| `assets/brand/logo-seal-dark-512.png` | Seal on dark/espresso backgrounds |
| `assets/brand/logo-horizontal.png` | Header wordmark: seal + "Para Todos" serif lockup on sand bg |
| `assets/brand/logo-horizontal-light.png` | Header wordmark for dark backgrounds |
| `assets/brand/favicon-32.png` | `app/icon.png` (cardón silhouette, no text) |
| `assets/brand/favicon-source.png` | 256px source for further favicon sizes if needed |
| `assets/brand/apple-touch-icon-180.png` | `app/apple-icon.png` |
| `assets/brand/og-image.png` | Open Graph card for Spanish `/` route |
| `assets/brand/og-image-en.png` | Open Graph card for English `/en` route |
| `assets/documents/vita-insumos-proposal.pdf` | Section 9 download (1 MB, 6 pages, optimized) |
| `assets/documents/deck-es.pdf` + `deck-es.pptx` | Spanish 14-slide deck for Section 9 + town hall projection |
| `assets/documents/deck-en.pdf` + `deck-en.pptx` | English deck |
| `assets/image-spec.md` | Photography direction (artisan/Mexico — NOT corporate-coastal stock) |

**Obsolete files to IGNORE in `assets/brand/`** (older draft, do not reference): `favicon.svg`, `logo-icon.svg`, `logo-horizontal.svg`, `logo-horizontal-light.svg`, `logo-horizontal-preview.png`, `logo-icon-256.png`, `og-image.svg`. The current files use the new artisan-seal design system; the legacy SVGs are from an earlier corporate-coastal direction we abandoned.

---

## Brand palette (NEW — artisan, Mexico-grounded)

The previous Pacific-blue palette has been replaced. The new palette is sand + adobe + cactus + sky — pulled directly from Todos Santos: lime-washed adobe walls, agave fields, faded turquoise mission paint, sun-baked clay.

```css
/* Drop these into globals.css inside @theme for Tailwind v4 */
--color-sand:        #efe7d2;  /* warm cream, lime-washed adobe — primary background */
--color-sand-light:  #f7f1e0;  /* lighter cream for elevated surfaces */
--color-sand-dark:   #d9cfb4;  /* deeper sand for borders, dividers */
--color-terracotta:  #b85042;  /* sun-baked clay — brand mark, primary accent */
--color-sunset:      #d97a4a;  /* warm orange — CTAs, highlights */
--color-cactus:      #6d8a6e;  /* deep agave / cardón flesh — secondary accent */
--color-cactus-pale: #a8baa7;  /* soft sage — muted UI, backgrounds */
--color-sky:         #7ba6b8;  /* faded turquoise — like old Mexican church paint */
--color-sky-dark:    #4f7a8f;  /* deeper azulejo blue — headlines on light bg */
--color-espresso:    #3a2e26;  /* warm dark brown — body text */
--color-off-white:   #fbf6e9;  /* unbleached cotton, paper */
--color-ink:         #1f1813;  /* near-black with warm undertone */
```

**Contrast (verified):**
- `--terracotta` on `--sand` = 4.5:1 ✅ AA
- `--espresso` on `--sand` = 10:1 ✅ AAA
- `--sky-dark` on `--sand` = 4.8:1 ✅ AA
- `--sunset` on `--sand` = 2.7:1 — large text ≥24px or icon accents only
- `--cactus` on `--sand` = 3.4:1 — large text only

**Hierarchy:** Page bg = `--sand`. Cards = `--off-white` with 1px `--sand-dark` border (no shadows). Body text = `--espresso`. Headlines = `--sky-dark`. Primary accent (brand mark, CTAs) = `--terracotta`. Highlights = `--sunset`. Secondary accent = `--cactus`. Inverted/dark sections = `--espresso` bg with `--off-white` text.

**Background: near-solid with a subtle warm gradient — NOT grain.** An earlier draft applied an SVG-noise paper-grain overlay; the deployed preview showed it hurt body-text legibility. Final approach is solid `--sand-light` with two soft radial gradients (white highlight top, faint terracotta wash bottom-right). Apply this CSS to `<body>`:

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

**Do not** add SVG-turbulence noise globally. If a tactile-paper feel is wanted later, apply low-opacity (≤2%) properly-flattened grain only to specific surfaces (e.g., one card or hero block) — never under body text.

---

## Typography (NEW)

- **Headings & display: Fraunces** (variable, via `next/font/google`). Use `opsz: "9..144"`. Weight 600–700 for headlines, 400 italic for pull quotes.
- **Body: Inter**. 400 / 500 / 600. Slight tracking at small sizes (`letter-spacing: 0.01em`).
- **Hand-script accent (LIMITED USE): Caveat**. Load lazily. Use ONLY for:
  - The signed origin-story attribution ("— Sarai & Barrett") rendered as if hand-written
  - The tagline "Una conversación, no una propuesta / A conversation, not a proposal" in italic accent
  - Nowhere else.

**Bilingual side-by-side:** Spanish in Fraunces 500–600, English in Fraunces 400 italic right after, treated as a translation gloss not an equal voice.

---

## Texture, line work, surface (NEW)

The default Tailwind aesthetic is too clean for this brand. Apply these layered details:

1. **Warm-gradient background (no global grain)** — already specified in palette block above. Solid `--sand-light` + two radial gradients. Grain on body broke legibility in v1; do not add it back.
2. **Hand-drawn dividers, not lines.** Where you'd put an `<hr>`, render a thin SVG squiggle (3–4 bezier curves with slight irregularity) in `--cactus` or `--sky-dark` at 40% opacity, width ~120px. See `assets/brand/logo-horizontal.png` — the small squiggle between "A.C." and the tagline is the canonical shape.
3. **No corporate shadows.** Cards use 1px `--sand-dark` solid border. If elevation is needed, hairline border + position offset, never blurred drop-shadow.
4. **Asymmetric layouts.** Pull quotes can hang to the left of the column gutter. Image captions can run vertically up the side. Section headers can sit slightly off-axis. The goal is editorial, not landing-page.
5. **Display-numeral chrome.** Section numbers ("01" / "02" / "03") rendered in Fraunces 900 at 96–120px in `--terracotta` at 20% opacity, sitting behind the kicker line as background-layer typography.

---

## Iconography (NEW)

Where the previous brief used coral letter badges (A/B/C, I/II/III, L/V/C):

- **Numeric badges:** Hand-rendered Fraunces 700 numerals (28–36px) on a `--terracotta` OUTLINED circle (1.5px stroke, no fill). More artisan, less corporate.
- **Section icons:** Where icons add real meaning (water, power, development), draw them as 2-tone line icons matching the seal's block-print style — thin, slightly imperfect, in `--terracotta` or `--cactus` on `--sand`. Don't use Heroicons / Material / Tabler defaults — they read SaaS.

---

## Voice & tone rules (enforce throughout — no drift)

- **NEVER** "we will [become a municipality / win the plebiscite / etc.]" — **always conditional**: "if the community decides," "if we pursue this path."
- **NEVER** use: breakaway, secession, split from, leave.
- **USE**: explore, consider, form, establish, create, decide.
- **Avoid "they" referring to La Paz.** Use "current structure" or "today's framework."
- **Cite the law specifically** when invoking legal pathways (article numbers build credibility).
- **Spanish primary, English secondary.** Spanish loads at `/`. Spanish typography slightly heavier weight than English when both shown side by side.

---

## Page structure — 10 sections, single-page scroll, anchored

All copy is verbatim from `content/PAGE-COPY-SOURCE.md` sections 1–10 — extract into `messages/es.json` and `messages/en.json` for next-intl. **Do not paraphrase or "improve" the wording.**

The 10 sections and their anchors:

1. `#hero` — Hero with bilingual headline + two CTAs
2. `#que-es` — The 60-second version
3. `#marco-legal` — The three legal gates
4. `#proceso` — The plan in stages + three commitments
5. `#participar` — Three ways to be part of this
6. `#quien` — Who's behind this + origin story
7. `#proxima-sesion` — Next session + signup form (anchor referenced from hero CTA)
8. `#preguntas` — FAQ accordion (9 questions, both languages)
9. `#documentos` — Documents section
10. `#contacto` — Footer

**Section 3 modification:** Where the source copy says "(aprox. 3,500 firmas en el escenario base)" / "(~3,500 signatures in the base scenario)", change to:

- ES: "(miles de firmas — estimación pendiente del estudio cartográfico de la Etapa I)"
- EN: "(thousands of signatures — estimate pending the Stage I cartographic study)"

This avoids being challenged on a number we haven't sourced.

**Section 6 photo placeholders:** Use circular avatars with initials "ST" and "BM" until photographer delivers headshots. Set up the component to swap to real `<Image>` instances with one line change.

**Section 9 (Documents):** Render as a card grid. Available now:
- ~~Vita Insumos Proposal (PDF) — public download~~ **REMOVED from public Documents.** Replace with a disabled card labeled "Legal & technical proposal — on request, hola@paratodosbcs.mx". The PDF still exists in `/documents/` but is **not** linked publicly. Available only when a donor or interested party emails for it. (See "Vita soft de-emphasis" decision below.)
- Deck completo (PDF ES) — `/documents/deck-es.pdf` ✅
- Deck completo (PDF EN) — `/documents/deck-en.pdf` ✅
- TODOS PARA TODOS A.C. — Estatutos — "Próximamente / Coming soon" (disabled card)
- Reporte de Etapa I — disabled
- Reporte financiero trimestral — disabled

The decks are also available as `.pptx` (`deck-es.pptx`, `deck-en.pptx`) for Sarai + Barrett to project at the Thursday town hall. Optionally surface those as secondary download links.

---

## Three GHL forms (embed targets)

Barrett creates these in his GHL account and gives you the 3 embed snippets. Each form should:

1. Tag submissions with a source identifier so GHL automations can branch on it.
2. Trigger a bilingual auto-reply email (configured inside GHL — not your concern here).
3. Submit without leaving the page (use GHL's iframe + postMessage pattern; show a "Gracias / Thanks" message in-place on success).

### Form 1: Session Signup (anchor `#proxima-sesion`)

Fields:
- Nombre / Name (required, text)
- Email (required, email)
- WhatsApp (optional, phone)
- Comunidad / Community (dropdown): Todos Santos / Pescadero / Cerritos / Las Tunas / Las Playitas / Elías Calles / Otro (free text)
- Idioma / Language (radio): Español / English / Both
- Future updates opt-in (checkbox, default checked)
- Hidden field: `source = town-hall-thursday-2026-05-28`

### Form 2: Volunteer / Get Involved (in Section 5)

Fields:
- Nombre / Name (required)
- Email (required)
- WhatsApp (optional)
- Ways to help (multi-select): Anfitrión / Session host, Recolector de firmas, Traductor, Diseñador-video-redes, Contabilidad-legal, Comité asesor, Outreach por sector (free text), Otro (free text)
- Comunidad + Idioma (same as Form 1)
- Hidden field: `source = volunteer-landing`

### Form 3: Donation Intent (kept as a fallback only — most donors flow directly through GHL Payments link or SPEI block without filling this form)

Fields:
- Nombre / Name (required)
- Email (required)
- WhatsApp (optional)
- Path (hidden field, value = `A` or `B`, set by which button opened the modal)
- Intended amount (dropdown): 50 / 500 / 5,000 / 50,000 / 500,000+ / Otro (free text)
- Anónimo / Anonymous? (checkbox)
- Recurring monthly (checkbox, future-state)
- Hidden field: `source = donation-intent-landing`

**Until Barrett provides the GHL embed snippets**, scaffold the form *containers* with placeholder `<div id="ghl-form-{1|2|3}">` and a comment `<!-- TODO: paste GHL embed snippet here -->`. The page can ship without the forms wired if needed, with the form sections showing a "Próximamente — registro abriendo / Coming soon — registration opening" message.

---

## SEO + Open Graph + social preview (P0 — do not skip)

`app/layout.tsx` and per-locale layouts must include:

```ts
// app/[locale]/layout.tsx
export const metadata = {
  metadataBase: new URL('https://paratodosbcs.mx'),
  title: {
    default: 'PARA TODOS — Nuestra Región, Nuestro Futuro',
    template: '%s · PARA TODOS',
  },
  description: 'Una conversación comunitaria sobre cómo se toman las decisiones que afectan al Pacífico Sur de BCS. Sesión: jueves 28 de mayo, 5pm, Plaza Todos Santos.',
  openGraph: {
    title: 'Nuestra Región, Nuestro Futuro — PARA TODOS',
    description: 'Una conversación sobre cómo se toman las decisiones que afectan nuestras comunidades del Pacífico Sur.',
    url: 'https://paratodosbcs.mx',
    siteName: 'PARA TODOS',
    locale: 'es_MX',
    type: 'website',
    images: [{ url: '/og-image.png', width: 1200, height: 630 }],
  },
  twitter: {
    card: 'summary_large_image',
    title: 'Nuestra Región, Nuestro Futuro',
    description: 'Una conversación sobre el futuro del Pacífico Sur de BCS.',
    images: ['/og-image.png'],
  },
  icons: {
    icon: '/favicon.svg',
    apple: '/apple-touch-icon-180.png',
  },
};
```

English variant at `/en` uses `og-image-en.png` and English strings.

Generate `app/sitemap.ts` and `app/robots.ts`. Sitemap includes `/` and `/en`. Robots allow all crawlers.

**Smoke-test the WhatsApp preview before declaring done.** Send the deployed URL to yourself in WhatsApp Web — the card should show the gradient hero image with "Nuestra Región, Nuestro Futuro" headline. If it doesn't, fix it before the town hall.

---

## Forms — GHL embed pattern (canonical)

GHL provides embed code like:

```html
<iframe
  src="https://api.leadconnectorhq.com/widget/form/{formId}"
  style="width:100%;height:600px;border:none;border-radius:12px;"
  id="ghl-form-{name}"
  data-layout='{"id":"INLINE"}'
  data-trigger-type="alwaysShow"
  data-deactivation-type="neverDeactivate"
  data-form-name="{name}"
></iframe>
<script src="https://link.msgsndr.com/js/form_embed.js"></script>
```

Wrap each embed in a styled container with the brand palette so the form blends into the page. GHL forms can be styled inside GHL (Barrett can pass our color tokens). Worst case: wrap with a bordered card and accept some visual mismatch — the function matters more than the chrome at v1.

---

## Deployment steps

1. `pnpm create next-app@latest paratodos-bcs --typescript --tailwind --app --src-dir --import-alias "@/*"`
2. Add dependencies: `next-intl`, `@vercel/analytics`, `lucide-react` (icons).
3. Copy assets from `assets/brand/` → `public/brand/` and `app/` (favicon + icons go in `app/`).
4. Copy Vita PDF → `public/documents/vita-insumos-proposal.pdf`.
5. Set up next-intl with `routing.ts`, middleware, `[locale]` layout.
6. Extract all copy from `content/PAGE-COPY-SOURCE.md` (sections 1–10) into `messages/es.json` + `messages/en.json` — with the Section 3 hedge applied.
7. Build the 10 sections as components under `app/[locale]/_sections/`.
8. Add language toggle in header (ES | EN, highlighted active, persists to localStorage).
9. Wire `@vercel/analytics` in root layout.
10. Set up `app/sitemap.ts`, `app/robots.ts`, full metadata as above.
11. `git init`, push to GitHub repo `paratodos-bcs` (ask Barrett to create the repo or use his `gh` CLI).
12. Connect repo to Vercel — auto-deploy on push to `main`.
13. Initial URL: `paratodos-bcs.vercel.app` or `paratodos-bcs-xxx.vercel.app`. **Hand that URL to Barrett.** Print QR codes pointing to it (NOT the custom domain — DNS may not have propagated by Thursday).
14. In Vercel project settings, add `paratodosbcs.mx` + `www.paratodosbcs.mx` as custom domains. Vercel shows the exact DNS records to add at GoDaddy:
    - `A` record `@` → `76.76.21.21`
    - `CNAME` record `www` → `cname.vercel-dns.com`
15. Add these at GoDaddy DNS Management. Propagation typically 30 min – 24 hr.

---

## Done when

Tick each item before declaring done:

- [ ] Site renders on mobile + desktop at the Vercel preview URL
- [ ] Spanish loads at `/` by default; `Accept-Language` honored on first visit
- [ ] English available at `/en` with header toggle (ES | EN), choice persists to localStorage
- [ ] All 10 sections present with verbatim copy from source (with the Section 3 hedge applied)
- [ ] All anchor links work (`#hero`, `#que-es`, ..., `#contacto`)
- [ ] Three GHL form containers in place (embeds pasted in if Barrett has provided them)
- [ ] Hero uses an Unsplash image matching `assets/image-spec.md` slot 1
- [ ] Other section accents use Unsplash images per spec
- [ ] Logo + favicon + apple-touch-icon present
- [ ] OG image (`og-image.png` ES, `og-image-en.png` EN) renders correctly when URL pasted into WhatsApp Web
- [ ] No Lorem Ipsum, no `placeholder.com`, no Next.js default page residue
- [ ] No console errors in browser devtools
- [ ] Vercel Web Analytics firing (verify in Vercel dashboard after a few page loads)
- [ ] Lighthouse mobile score ≥ 85 in Performance and Accessibility
- [ ] WCAG AA: all text passes contrast check (no `--sunset` or `--cactus` on `--sand` for body text — large display only)
- [ ] Body grain texture renders (subtle, not crunchy)
- [ ] Hand-drawn squiggle dividers render correctly in both ES and EN
- [ ] All form-input `<label>`s associated with their inputs; accordion FAQ keyboard-navigable
- [ ] Alt text on every image
- [ ] Tested on at least one real iPhone Safari + one real Android Chrome
- [ ] "Donate by card" button uses live GHL Payments URL (Barrett provides)
- [ ] SPEI/CLABE block shows real recipient + CLABE + RFC (Barrett provides once Mexican bank account is open)
- [ ] Vita proposal PDF is NOT linked publicly — only available via `hola@paratodosbcs.mx` request
- [ ] Footer shows last-updated date (use build-time timestamp)
- [ ] Privacy notice link present (simple stub page is fine — generic A.C. notice)
- [ ] QR code generated from the Vercel URL, given to Barrett for the printed handouts

---

## Open items only the user can resolve

Surface these to Barrett the first time you need them. Don't block the build — scaffold around them and Barrett provides them in parallel.

1. **GHL Payments link URL** — Barrett sets up a Donation product in Go High Level (or creates a Stripe-backed payment link via GHL) and pastes the URL. Swap into the "Donar con tarjeta / Donate by card" button on the donation section. Until provided, the button points at a placeholder URL.
2. **SPEI bank-transfer details** — once the Mexican bank account for TODOS PARA TODOS A.C. is open, Barrett provides recipient name + 18-digit CLABE + RFC. Drop them into the `.bank-block` panel. Until then, the block shows "[18 dígitos — pendiente]".
3. **GHL Sign-up form embed snippet** — Barrett creates the Town Hall Signup form in GHL (Form 1 in `GHL-FORM-SPEC.md`) and pastes the iframe embed code. Replace the current simulated form in `#proxima-sesion` with the embed. The simulated form is preview-only.
4. **Volunteer form embed snippet** (Form 2) — similar. Less urgent than Form 1.
5. **WhatsApp number for footer** — `+52 ...` Currently unknown. Use `mailto:hola@paratodosbcs.mx` as primary contact, omit WhatsApp until provided.
6. **GoDaddy email setup** — Barrett activates `hola@paratodosbcs.mx` in GoDaddy's M365 panel. Until then, form notifications route to `barrettmasso@me.com`.
7. **DNS records at GoDaddy** — once Vercel preview URL is live, give Barrett the exact A + CNAME records to add at GoDaddy. He pastes them in; propagation completes in parallel.

---

## Out of scope for v1

- Final cartographic map (waits for Vita Stage I)
- Founding Committee headshots (photographer, 1–2 weeks)
- Press release ES + EN (separate work, post-town-hall)
- Anchor donor outreach script (separate work)
- Live Stripe / SPEI payment integration (waits for Vita's payment details and TODOS PARA TODOS A.C. SAT registration)
- Public transparency dashboard with real-time donation counter (post-launch)
- WhatsApp Community group link (post-launch once invite is generated)

---

## Voice spot-check before pushing to prod

Read through the rendered site one final time and confirm:

- No occurrence of "we will become a new municipality" or similar predictive language
- No occurrence of "breakaway / secession / split / leave"
- Every mention of the legal pathway cites the article number
- Section 3's signature figure is hedged (no "3,500" precise figure)
- Section 6 doesn't promise outcomes — just frames the question
- FAQ #5 doesn't say "we promise"; it says "if the community decides not to continue, we stop"

Then ship.
