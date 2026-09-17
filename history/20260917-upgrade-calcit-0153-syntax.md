# Upgrade Calcit 0.15.3 and syntax rules

- Read the repository-required full Agent, upgrade, and library-quality guides before editing the Snapshot.
- Raise Calcit and `@calcit/procs` from 0.15.1 to 0.15.3 and prepare memof 0.0.34.
- Apply all four validated `surface-latest-v2` operations, replacing legacy `%{}` construction with the named `MemoEntry` constructor.
- Preserve the existing per-definition quality baseline and the reviewed JavaScript identity/cache boundary.
- Re-run public API, examples, definition tests, native/JavaScript behavior, Markdown, and keyed-cache regression checks.
