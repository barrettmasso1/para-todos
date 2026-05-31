#!/bin/bash
# Para Todos — production deploy to Vercel
# Usage:  bash deploy.sh
#
# This folder is a pure static site (index.html, en/, assets/, vercel.json).
# It is currently linked to the Vercel project recorded in .vercel/project.json.

set -e
cd "$(dirname "$0")"

echo "──────────────────────────────────────────────"
echo "  Para Todos — deploying static site to PROD"
echo "──────────────────────────────────────────────"
echo ""
echo "Linked project:"
cat .vercel/project.json 2>/dev/null || echo "  (not linked yet — vercel will prompt to link)"
echo ""
echo "Deploying..."
vercel --prod

echo ""
echo "──────────────────────────────────────────────"
echo "  Deploy finished."
echo ""
echo "  If paratodosbcs.mx did NOT update, the custom"
echo "  domain is on a DIFFERENT Vercel project. Fix:"
echo ""
echo "   1. vercel.com/dashboard → open the project that"
echo "      lists paratodosbcs.mx under Settings → Domains"
echo "   2. Note its exact project name"
echo "   3. Run:"
echo "        vercel link --yes --project <that-name>"
echo "        vercel --prod"
echo "──────────────────────────────────────────────"
