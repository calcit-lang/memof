# anchor-state

`.deref` returns `Option<Dynamic>`: a missing path is `Option :none`, while
an explicitly stored `nil` is `Option :some nil`. Callers must handle the
Option instead of treating the result as the stored value or nullable data.
`.set!` still returns the updated shared state Map, not Unit.

Upgrade with a full reload/restart: anchors now carry their storage Ref as well
as their path. Do not retain old anchor instances across hot reload. The shared
state Ref and path identity remain unchanged.

```cirru
; ns app.demo $ :require
    memof.anchor :refer $ anchor-state identity-path

let
    *a $ memof.anchor/anchor-state :s0
  do
    .set! *a 1
    match (.deref *a)
      (:some value) $ println value
      (:none) $ println |missing
```

The same path reuses stored state:

```cirru
; ns app.demo $ :require
    memof.anchor :refer $ anchor-state

let
    *a $ memof.anchor/anchor-state :s0
  .set! *a 1

let
    *a $ memof.anchor/anchor-state :s0
  .deref *a
```

The last expression returns `Option :some 1`. Generic anchor shapes retain the
same `K` and `V` across path, `Ref<Map<K,V>>`, reads, and writes. The public
`anchor-state` helper uses the existing heterogeneous global store, so its key
and value boundary remains Dynamic; it does not promise a caller-chosen value
type.

Path macro:

```cirru
; ns app.demo $ :require
    memof.anchor :refer $ identity-path

, memof.anchor/identity-path 's0
```
