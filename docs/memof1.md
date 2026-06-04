# memof1-call

```cirru
; ns app.demo $ :require
    memof.once :refer $ memof1-call memof1-call-by reset-memof1-caches!

let
    add3 $ fn (a b c) (+ a b c)
  do
    memof.once/memof1-call add3 1 2 3
    memof.once/memof1-call-by :a-unique-key add3 1 2 3
    , memof.once/reset-memof1-caches!
```

Clear cache for one function:

```cirru
; ns app.demo $ :require
    memof.once :as once

let
    f $ fn (x) (+ x 1)
  swap! memof.once/*keyed-call-caches dissoc f
```

```cirru
; ns app.demo $ :require
    memof.once :refer $ memof1-as

, memof.once/memof1-as |key (+ 1 2)
```
