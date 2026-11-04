# BONES catalog maintenance

Creator/maintainer: BareBones Projects. Source of truth for editable seed records: `content.json`.

## Adding icons

1. Append a record to `content.json`'s `icons` array.
2. Assign the next unused stable `BN-NNN` identifier; do not recycle IDs.
3. Use a concise uppercase name and a descriptive spec ending in `/ 24PX GRID`.
4. If a contributor is known, add an attribution field to that record.
5. Validate with `python3 -m json.tool content.json >/dev/null` and review the diff.
6. Update the catalog version and changelog for a released batch.

The current HTML export does not load `content.json`; catalog additions are metadata only until data-driven rendering is implemented.
