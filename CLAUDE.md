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
- Bilingual: homepages use `.es` / `.en` spans toggled by a JS switcher. **Blog posts** are separate per-language files that redirect via `data-es-url` / `data-en-url`.
- **Blog structure (do not change the convention):** each post is a folder with an `index.html` — `blog/<slug>/index.html` (Spanish) and `en/blog/<slug>/index.html` (English). Styles are **inline** in each file. Do NOT create flat `blog/<slug>.html` files or a shared `blog/style.css`. Indexes live at `blog/index.html` and `en/blog/index.html`, newest-first.
- **Hosting:** Vercel (free tier). **Deploy:** `bash deploy.sh` (runs `vercel --prod` from this folder). Requires the Vercel CLI logged in on your machine.
- **IMPORTANT — deploy vs git are separate.** The live site is published ONLY by `bash deploy.sh` from the local folder. Pushing to GitHub does NOT update the live site (no GitHub Actions / no auto-deploy). GitHub `master` is source control; treat it as the source of truth and keep it in sync, but remember a `git push` alone changes nothing live.
- **Custom domain:** paratodosbcs.mx
- **GitHub:** `github.com/barrettmasso1/para-todos` (remote `origin`, branch `master`). NOTE: repo history contains earlier personal content — keep the repo **private**.
- **Vercel project:** `paratodos-site` (see `.vercel/project.json`). If a deploy doesn't update the domain, the domain may be on a different project — see notes in `deploy.sh`.
- `.vercelignore` controls what is NOT served. Excludes editable deck sources (`.pptx`, `.key`, `-v2` PDFs), internal docs/scripts (`CLAUDE.md`, `deploy.sh`, handoff `.md` files), and — critically — `email-form1-welcome.html` (a GHL email template that **names the founders**; it must never be served). Do not un-ignore these.
- Form/CRM: Go High Level (GHL) embedded forms. Analytics: Vercel Web Analytics.

## Where things live

- `BUILD-BRIEF-FOR-CLAUDE-CODE.md` — original locked build brief (brand, decisions).
- `DESIGN-SYSTEM.md` — colors, type, components. `GHL-FORM-SPEC.md` — form spec.
- `content/` — canonical bilingual copy, strategy, decisions (internal, not deployed).
- `assets/documents/` — public PDFs (decks + proposal). `assets/brand/` — logo/favicons/OG.
- `archive/` — superseded snapshots (internal, not deployed).

## Current status (June 2026)

Site is live with a full bilingual blog: case-study posts (Los Cabos/Loreto, Playa del Carmen/Tulum/Bacalar, San Quintín, San Felipe) plus the post **"Más que Firmas / More Than Signatures"** (`blog/mas-que-firmas/`, `en/blog/more-than-signatures/`, dated June 18 2026, with downloadable PDFs). Homepage section 05 is an **event-registration** block ("El Camino a la Municipalización / The Road to Municipalization") using the existing GHL form. `.vercelignore` was hardened to stop serving internal/founder-naming files.

## The canonical workflow (keep everyone in sync)

The local folder `~/Documents/Claude/Projects/Para Todos` is the working copy that deploys, and it is a git clone of `origin/master`. Both Claude Code and the Claude desktop (Cowork) assistant operate against this same repo. To avoid divergence:

1. **Always `git pull origin master` before starting work.**
2. Make changes, verify, then **`git add -A` → `git commit` → `git push origin master`** when done.
3. To publish to the live site, **`bash deploy.sh`** from this folder (separate from pushing — see above).
4. One source of truth = GitHub `master`. Do not create long-lived feature branches or alternate structures; commit to `master`.

## Workflow notes

- Verify changes before deploying (open the HTML locally; run the anonymity grep over served files).
- Deploying (`deploy.sh`) and pushing to GitHub both publish — confirm with Barrett before either.
