#!/bin/bash
# Cloudflare Pages build only: strip the 8 game files over Pages' 25 MiB
# single-file limit before Astro copies public/ into dist/.
# The files stay in the repo, so Vercel (build command unchanged: npm run build)
# keeps serving them, and public/_redirects points Pages visitors at Vercel.
set -e
rm -f "public/games/Incredibox - Sprunki  _ Play Sprunki Games Online.html"
rm -f "public/games/Incredibox - Sprunki Play Sprunki Games Online.html"
rm -f "public/games/Incredibox - Sprunki Reanimated (but friendlier smh) _ Play Sprunki Games Online.html"
rm -f "public/games/Incredibox - Sprunki ketyomo mix _ Play Sprunki Games Online.html"
rm -f "public/games/Incredibox - Sprunki Babies _ Play Sprunki Games Online.html"
rm -f "public/games/Incredibox - Sprinkle (Sprunki Mod) _ Play Sprunki Games Online.html"
rm -f "public/games/Incredibox - Sprunkin' -  AYS (Sprunki FNF Mod) _ Play Sprunki Games Online.html"
rm -f "public/games/sprunki-maker.html"
npm run build
