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

## Frame-managed keyed memoization

`memof1-call-by` accepts a key before the function and its arguments. When a
memo frame is active, calls are reused inside the frame and the cache is
replaced at `finish-memof1-frame!`, so keys not used by the current frame are
pruned. This is useful for rebuilding a tree where keyed entries can disappear
between renders. A `nil` key always bypasses memoization.

```cirru
; ns app.demo $ :require
    memof.once :refer $ begin-memof1-frame! finish-memof1-frame! memof1-call-by

let
    build-item $ fn (x) (+ x 1)
  do
    memof.once/begin-memof1-frame!
    let
        first-item $ memof.once/memof1-call-by :first build-item 1
        second-item $ memof.once/memof1-call-by :second build-item 2
      memof.once/finish-memof1-frame!
      , [] first-item second-item
```

Use `reset-memof1-caches!` when the owning lifecycle is reset. A frame should
be finished after all memoized calls for that frame have completed.

```cirru
; ns app.demo $ :require
    memof.once :refer $ memof1-as

, memof.once/memof1-as |key (+ 1 2)
```
