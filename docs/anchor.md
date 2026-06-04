# anchor-state

```cirru
; ns app.demo $ :require
    memof.anchor :refer $ anchor-state identity-path

let
    *a $ memof.anchor/anchor-state :s0
  do
    .set! *a 1
    , @*a
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
  , @*a
```

Path macro:

```cirru
; ns app.demo $ :require
    memof.anchor :refer $ identity-path

, memof.anchor/identity-path 's0
```
