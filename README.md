# Life Dashboard

A personal productivity dashboard for managing school, internships, work, and content creation — built as a mobile-first web app with real-time sync via Supabase.

## Features
- **Home** — Quick capture, weekly overview, habit tracker, and tasks split by morning / afternoon / evening
- **Schedule** — Day-by-day time block view, color-coded by area
- **Internships** — Kanban pipeline tracker with stats and next action highlight
- **Content** — Pipeline from idea to ready-to-post, plus an idea bank
- **Notes** — Tagged notes that surface as related notes inside each relevant tab

## Tech stack
- Vanilla HTML / CSS / JS — single file, no build step
- [Supabase](https://supabase.com) — real-time database and sync
- Hosted on [Netlify](https://netlify.com)

## Setup

### 1. Supabase
1. Create a free account at [supabase.com](https://supabase.com)
2. Create a new project
3. Go to the **SQL Editor** and run the full contents of `supabase-setup.sql`
4. Go to **Settings → API** and copy your Project URL and publishable key
5. Paste them into `life-dashboard.html` at the top of the `<script>` tag

### 2. Deploy to Netlify
1. Push this repo to GitHub
2. Go to [netlify.com](https://netlify.com) → New site → Import from GitHub
3. Select this repo, set publish directory to `/`, deploy
4. Add to iPhone home screen via Safari → Share → Add to Home Screen

## Local development
Just open `life-dashboard.html` in a browser — no server needed.
