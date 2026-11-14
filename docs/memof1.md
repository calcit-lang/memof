# memof1-call

## Typed calls with zero, one or two arguments

Use `memof1-call-nullary`, `memof1-call-unary` or `memof1-call-binary` to
preserve the callback's concrete return type `R`. The binary form accepts
two independently typed arguments. All three use the same single-slot cache as `memof1-call`,
including function identity, the complete argument list, clearing and reset.
缓存用实际执行的函数和完整参数列表查找结果。固定元数的入口用该函数签名恢复返回类型 `R`。
开放的宿主回调应先声明真实签名。
The variadic `memof1-call` remains available for calls of any arity.

```cirru
; ns app.demo $ :require
    memof.once :refer $ memof1-call-unary

, memof.once/memof1-call-unary inc 2
```

```cirru
; ns app.demo $ :require
    memof.once :refer $ memof1-call-nullary

let
    header $ fn ()
      hint-fn $ Fn $ -> String
      , |header
  memof.once/memof1-call-nullary header
```

```cirru
; ns app.demo $ :require
    memof.once :refer $ memof1-call-binary

let
    label $ fn (name active?)
      hint-fn $ Fn String Bool $ -> String
      if active? name |inactive
  memof.once/memof1-call-binary label |demo true
```

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
    memof.once :refer $ clear-memof1-function!

let
    f $ fn (x) (+ x 1)
  memof.once/clear-memof1-function! f
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
