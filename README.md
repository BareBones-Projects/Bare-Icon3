<img width="1280" height="640" alt="Bare-Icon3-social-preview" src="https://github.com/user-attachments/assets/515f7b6f-650c-4a8b-b949-dbba1b2be704" />

# BARE ICON3

BARE ICON3 is a static icon browser and a small, editable BONES glyph catalog maintained in `content.json`. The repository is prepared to run as a standalone site and to be embedded or linked from the BareBones main site.

## Project details

- **Project:** BARE ICON3 / BONES Icon Packs
- **Version:** 2.0 (catalog metadata)
- **Maintainer / creator:** BareBones Projects (repository organization)
- **License:** See [LICENSE](LICENSE)
- **Runtime:** Static HTML, CSS, and JSON; no build step or package install

## Run locally

From the repository root, run:

```bash
./serve.sh
```

Then open <http://localhost:8000>. Set `PORT` to use another port, for example `PORT=4173 ./serve.sh`. The script uses Python 3's standard-library HTTP server and serves the current directory. Stop it with Ctrl+C.

Alternatively, run `python3 -m http.server 8000` from the repository root.

## Files

| Path | Purpose |
| --- | --- |
| `index.html` | Default browser entry point for the generated icon browser |
| `catalog.html` | Searchable browser for the maintained `content.json` catalog |
| `b_index.html` | Preserved original exported artifact; currently identical to `index.html` |
| `assets/style.css` | Shared stylesheet / project styling source |
| `content.json` | Human-editable catalog seed and metadata |
| `serve.sh` | Local development server launcher |
| `LICENSE` | Project license |

## Catalog format and daily additions

Add catalog entries to the `icons` array in `content.json`. Keep IDs stable and unique, use the next `BN-NNN` value, and retain the existing uppercase naming and 24px grid spec conventions. Each record currently has:

```json
{ "id": "BN-013", "name": "EXAMPLE", "glyph": "✦", "spec": "STAR MARK / 24PX GRID" }
```

Validate JSON after each update with `python3 -m json.tool content.json >/dev/null`. Keep new artwork or source files in a descriptive subdirectory under `assets/`, and update the catalog's version/changelog when a batch is published. Avoid reusing or renumbering existing IDs.

**Catalog browser:** `catalog.html` reads `content.json` at runtime and provides a searchable view of the BONES records. The generated icon browser at `index.html` remains its own collection.

## Main-site integration

The site is static and can be hosted beneath a path or linked from the BareBones main site. Use `index.html` as the entry point and preserve the relative `assets/` path. If mounted at a subpath, configure the host to serve `index.html` for that directory. No backend, credentials, or build pipeline are required.

## Attribution

Created and maintained by BareBones Projects. Individual icon contributions should be credited in the relevant asset/catalog metadata when contributor details are available.
