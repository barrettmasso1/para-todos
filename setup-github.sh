#!/bin/bash
# Para Todos — one-time GitHub setup + Vercel deploy
# Run this from the project folder:
#   bash ~/Documents/Claude/Projects/Para\ Todos/setup-github.sh

set -e
cd "$(dirname "$0")"
PROJECT_DIR="$(pwd)"

echo ""
echo "══════════════════════════════════════════════"
echo "  Para Todos — GitHub Setup + Vercel Deploy"
echo "══════════════════════════════════════════════"
echo ""

# ── 1. Deploy to Vercel (publishes the 5:30 PM time change) ──────────────────
echo "▶ Step 1: Deploying to Vercel..."
vercel --prod
echo "✓ Vercel deploy complete."
echo ""

# ── 2. Initialize git repo ───────────────────────────────────────────────────
echo "▶ Step 2: Initializing git..."
git init
git add .
git commit -m "Initial commit — Para Todos site"
echo "✓ Git initialized with first commit."
echo ""

# ── 3. Create GitHub repo and push ──────────────────────────────────────────
echo "▶ Step 3: Creating GitHub repo and pushing..."
# Uses GitHub CLI (gh). If not installed: brew install gh
gh repo create para-todos --public --description "Para Todos — Todos Santos municipio initiative" --source=. --remote=origin --push
echo ""
echo "✓ Pushed to GitHub."
echo ""

# ── Done ─────────────────────────────────────────────────────────────────────
echo "══════════════════════════════════════════════"
echo "  All done!"
echo ""
echo "  GitHub:  https://github.com/$(gh api user --jq .login 2>/dev/null)/para-todos"
echo "  Site:    https://paratodosbcs.mx"
echo ""
echo "  NEXT: For future updates from Claude Code or Cowork,"
echo "  just commit + push, then run: vercel --prod"
echo "══════════════════════════════════════════════"
echo ""
