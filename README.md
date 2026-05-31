# Para Todos — Landing Page Project

Folder for the `paratodosbcs.mx` build. Hand this folder to Claude Code via the BUILD-BRIEF below.

## Folder structure

```
Para Todos/
├── BUILD-BRIEF-FOR-CLAUDE-CODE.md   ← start here. Paste into Claude Code.
├── README.md                         ← this file
├── assets/
│   ├── brand/                        ← logo, favicons, OG cards (PNG + SVG)
│   ├── documents/
│   │   └── vita-insumos-proposal.pdf ← optimized 1 MB, 6 pages
│   └── image-spec.md                 ← Unsplash curation spec for hero + section imagery
└── content/                          ← canonical content (Spanish + English)
    ├── PAGE-COPY-SOURCE.md           ← verbatim copy for all 10 sections
    ├── LANDING-PAGE-COPY.md          ← extended version w/ tech notes
    ├── DECK-V2-MASTER.md             ← 14-slide community conversation deck
    ├── ONE-PAGER-HANDOUT.md          ← print-ready bilingual one-pager
    ├── FACILITATOR-GUIDE.md          ← INTERNAL — Sarai + Barrett's town hall playbook (DO NOT publish)
    ├── ANSWERS-LOCKED-2026-05-25.md  ← all strategic decisions locked
    ├── STRATEGY-v1-2026-05-25.md     ← full strategy doc
    ├── BUILD-LOG-2026-05-25.md       ← decisions + domain availability check
    ├── decisions-2026-05-25.md       ← Barrett's locked answers to 4 strategic Qs
    └── proposal-transcript-2026-04-16.md ← Vita Insumos proposal transcript
```

## How to start the build

1. Open Terminal.
2. `cd "/Users/Agent/Documents/Claude/Projects/Para Todos"`
3. Run `claude` (Claude Code CLI). If not installed: `npm install -g @anthropic-ai/claude-code` first.
4. Paste this opening message:

   > "Read `BUILD-BRIEF-FOR-CLAUDE-CODE.md` in this directory and build the landing page exactly as specified. Use the assets under `assets/` verbatim. Use the copy under `content/PAGE-COPY-SOURCE.md` verbatim (with the Section 3 signature-figure hedge applied). Ask me only about the items in the 'Open items only the user can resolve' list."

5. Claude Code will scaffold the Next.js app, wire next-intl, build the 10 sections, deploy to Vercel.

## Critical deadlines

| When | What |
|---|---|
| **Tonight (Mon)** | Hand brief to Claude Code, start build |
| **Tue–Wed** | Build out, GHL forms wired, first Vercel deploy |
| **Wed EOD** | Live at Vercel preview URL, QR code printed for handouts |
| **Thu 2026-05-28 5pm** | Town hall, Plaza Todos Santos |
| **Fri** | 48-hour anonymized town hall summary added to page |
| **Within 2 wks** | Real photographer photos swapped in, deck PDFs added |

## Open items I (Barrett) need to provide

1. Create 3 forms in Go High Level (Session Signup, Volunteer, Donation Intent — see brief for fields). Send embed snippets to Claude Code.
2. Activate `hola@paratodosbcs.mx` in GoDaddy's M365 panel.
3. WhatsApp number for the footer (or skip for v1).
4. Add the DNS records Claude Code provides into GoDaddy DNS Management.

## Brand quick-reference

- Ocean Deep `#1e3a5f` · Ocean Mid `#4a90b8` · Sand Cream `#f5e6d3` · Sunset Coral `#e07a5f` · Warm White `#fafaf7` · Charcoal `#2a2a2a`
- Fonts: Fraunces (headings) + Inter (body)
- Voice: exploratory, conditional, never "we will" about outcomes, never "secession/breakaway"
