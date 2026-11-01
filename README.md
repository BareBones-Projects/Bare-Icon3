# BARE_ICON3

BONES ICON PACKS v2.0 — a minimal glyph set published as a static site.
Assembled entirely in the browser by the BARE_ICON3 ZIP BUILDER.
No server code. No build step. No dependencies.

## STRUCTURE

    index.html          entry point — loads content.json at runtime
    content.json        ALL editable text and glyph data lives here
    assets/style.css    LOCKED stylesheet — geometry and color are fixed
    README.md           this file
    LICENSE             MIT
    .gitignore

## RUN

content.json is loaded with fetch(), so serve the folder over HTTP
with any static file server, for example:

    npx serve .
    busybox httpd -p 8000

Then open the printed URL in a browser.

## EDITING

- Edit content.json to change titles, labels and the glyph index.
- assets/style.css is LOCKED: black #0A0A0A, cyan #00E5FF, yellow #FFE600,
  left banner 300px static, center grid scrolls, right preview 360px static.
- Keep content.json valid JSON or the grid will not render.

## LICENSE

MIT — see LICENSE.
