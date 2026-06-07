# CLAUDE.md — Para Todos

Context for Claude Code working in this repo. Read this first every session.

## What this is

**Para Todos** (legal entity: **TODOS PARA TODOS A.C.**) is a community organization for Todos Santos and the surrounding southern-Pacific region of the Municipality of La Paz, BCS, Mexico. It works on quality-of-life initiatives (streets, trash cleanup, water, power) and its current flagship effort is exploring whether the region should form its own **municipality**.

This repo is the bilingual (Spanish default / English) landing site, **paratodosbcs.mx**.

## Critical rules (do not break)

1. **Founders stay anonymous.** Public-facing materials must NEVER identify Barrett Masso or Sarai Torres as founders/leaders. The framing is "convened by your neighbors" — community-led, not personally attributed. Before publishing ANYTHING, grep all served files for `Barrett|Sarai|Masso|co-found|co-fundad` and confirm zero hits. (A hidden-but-still-in-source "Who's behind this" section and named PDF decks previously leaked this — fixed June 2026.)
2. **Brand naming.** Public name is **PARA TODOS**. Legal name **TODOS PARA TODOS A.C.** appears only in the privacy policy / data-controller line and legal/factura contexts. Never write "PARA TODOS A.C."
3. **Legal counsel is de-emphasized.** Do not display the counsel firm's brand publicly; refer to "our legal counsel." No "Path A / Path B" donor language — one consistent "tax-deductible receipt provided" message.
4. **`content/FACILITATOR-GUIDE.md` is INTERNAL** — never publish.

## How it's built & deployed

- Pure static site: `index.html` (Spanish, `/`), `en/index.html` (English, `/en`), `privacy.html`, `assets/`, `vercel.json`. No build step.
- Bilingual via `.es` / `.en` spans toggled by a small JS language switcher.
- **Hosting:** Vercel (free tier). **Deploy:** `bash deploy.sh` (runs `vercel --prod` from this folder). Requires the Vercel CLI logged in on your machine.
- **Custom domain:** paratodosbcs.mx
- **GitHub:** `github.com/barrettmasso1/para-todos` (remote `origin`, branch `master`). NOTE: repo history contains earlier personal content — keep the repo **private**.
- **Vercel project:** `paratodos-site` (see `.vercel/project.json`). If a deploy doesn't update the domain, the domain may be on a different project — see notes in `deploy.sh`.
- `.vercelignore` controls what is NOT served. Editable deck sources (`.pptx`, `.key`, `-v2` PDFs) are excluded so they aren't publicly downloadable. The site links only to `assets/documents/deck-en.pdf` and `deck-es.pdf` — keep those clean.
- Form/CRM: Go High Level (GHL) embedded forms. Analytics: Vercel Web Analytics.

## Where things live

- `BUILD-BRIEF-FOR-CLAUDE-CODE.md` — original locked build brief (brand, decisions).
- `DESIGN-SYSTEM.md` — colors, type, components. `GHL-FORM-SPEC.md` — form spec.
- `content/` — canonical bilingual copy, strategy, decisions (internal, not deployed).
- `assets/documents/` — public PDFs (decks + proposal). `assets/brand/` — logo/favicons/OG.
- `archive/` — superseded snapshots (internal, not deployed).

## Current status (June 2026)

Site is live. Most recent work removed all founder-identifying content from the served HTML and the two linked decks, renumbered the site sections to run 01–07, and excluded source decks from deployment. Next session: confirm a clean deploy is live and continue feature/content work as the municipality initiative evolves.

## Workflow notes

- Verify changes before deploying (open the HTML locally; run the anonymity grep).
- Deploying and pushing to GitHub publish publicly — confirm with Barrett before either.
