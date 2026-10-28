
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |memof
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'memof.main/main!) (:mode :native) (:reload-fn 'memof.main/reload!) (:target :native)
      :feature-policy $ {}
      :modules $ []
      :type-slots $ {}
  :files $ {}
    'memof.anchor $ %{} 'FileEntry
      :defs $ {}
        '*anchor-states $ %{} 'CodeEntry
          :doc "|Global atom storing all anchor states, mapping paths to their values"
          :code $ quote $ defref *anchor-states ({})
          :examples $ []
          :schema $ quote $ Ref (Map Dynamic Dynamic)
        'StateAnchor $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def StateAnchor (impl-traits StateAnchorShape StateAnchorImpl)
          :examples $ []
          :schema $ quote StructDef
        'StateAnchorImpl $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defimpl StateAnchorImpl StateAnchorTrait
            .deref $ fn (self)
              hint-fn $ Fn (memof.anchor/StateAnchorShape K V)
                -> $ Option V
                :generics K V
              get
                deref $ :states self
                :path self
            .set! $ fn (self value)
              hint-fn $ Fn (memof.anchor/StateAnchorShape K V) V
                -> $ Map K V
                :generics K V
              swap! (:states self)
                fn (states key next-value)
                  hint-fn $ Fn (Map K V) K V $ -> (Map K V)
                  .assoc states key next-value
                :path self
                , value
          :examples $ []
          :schema $ quote Impl
        'StateAnchorShape $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct StateAnchorShape ([] 'K 'V) (:path 'K)
            :states $ quote $ Ref (Map K V)
          :examples $ []
          :schema $ quote StructDef
        'StateAnchorTrait $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait StateAnchorTrait
            .deref $ quote $ Fn (memof.anchor/StateAnchorShape K V)
              -> $ Option V
              :generics K V
            .set! $ quote $ Fn (memof.anchor/StateAnchorShape K V) V
              -> $ Map K V
              :generics K V
          :examples $ []
          :schema $ quote Trait
        'anchor-state $ %{} 'CodeEntry
          :doc "|Creates an anchor state for storing local state at a specific path. Similar to React Hooks internal state implementation."
          :code $ quote $ defn anchor-state (path) (StateAnchor :path path :states *anchor-states)
          :examples $ [] $ quote
            [] $ let
                *a $ anchor-state :example-path
              do (.set! *a 1) (.deref *a)
          :schema $ quote $ Fn Dynamic
            -> $ memof.anchor/StateAnchorShape Dynamic Dynamic
          :tests $ []
            %{} 'TestEntry (:name |retains-state-for-identity-path)
              :code $ quote $ do
                reset! memof.anchor/*anchor-states $ {}
                let
                    *a $ memof.anchor/anchor-state :path
                  is $
                    .deref *a
                    , .none?
                  is $ =
                    {} $ :path nil
                    .set! *a nil
                  match (.deref *a)
                    (:some value)
                      is $ nil? value
                    (:none) (is false)
                  is $ =
                    {} $ :path 1
                    .set! *a 1
                  match (.deref *a)
                    (:some value)
                      is $ = 1 value
                    (:none) (is false)
                let
                    *a $ memof.anchor/anchor-state :path
                  match (.deref *a)
                    (:some value)
                      is $ = 1 value
                    (:none) (is false)
              :tags $ #{} :core :unit
            %{} 'TestEntry (:name |typed-storage-aliases-and-watchers)
              :code $ quote $ let
                  states $ ref $ {} (|counter 1) (|other 9)
                  anchor $ memof.anchor/StateAnchor :path |counter :states states
                  alias $ memof.anchor/StateAnchor :path |counter :states states
                  *changes $ ref 0
                add-watch! states :count $ fn (new-state old-state)
                  assert= (Option :some 9) (.get new-state |other)
                  assert= (Option :some 9) (.get old-state |other)
                  swap! *changes inc
                  , &unit
                assert= (Option :some 1) (.deref alias)
                assert=
                  {} (|counter 2) (|other 9)
                  .set! anchor 2
                assert= 1 @*changes
                assert= (Option :some 2) (.deref alias)
                assert=
                  {} (|counter 3) (|other 9)
                  .set! alias 3
                assert= 2 @*changes
                assert= (Option :some 3) (.deref anchor)
                remove-watch! states :count
                , &unit
              :tags $ #{} :core :unit
        'identity-path $ %{} 'CodeEntry
          :doc "|Extracts the full path of a symbol in format \"<ns> / <def> / <sym>\". Used to generate unique identifiers for anchor states."
          :code $ quote $ defmacro identity-path (s0)
            &let
              s $ cond
                  symbol? s0
                  , s0
                (list? s0) (&list:nth s0 1)
                true $ raise $ str "|expected symbol, got: " s0
              assert "|expected a symbol" $ symbol? s
              &let
                edn $ &extract-code-into-edn s
                str
                  .unwrap $ get edn :ns
                  , "| / "
                    .unwrap $ get edn :at-def
                    , "| / " $ .unwrap $ get edn :val
          :examples $ [] $ quote
            [] $ identity-path s0
          :schema $ quote $ Macro Syntax
            -> $ Expr String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns memof.anchor
          :require $ calcit.test :refer $ is
    'memof.main $ %{} 'FileEntry
      :defs $ {}
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (println |Started.) &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (println |Reloaded!) &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns memof.main
    'memof.once $ %{} 'FileEntry
      :defs $ {}
        '*frame-keyed-call-caches $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *frame-keyed-call-caches ({})
          :examples $ []
          :schema $ quote $ Ref
            Map Fn $ Map Dynamic memof.once/MemoEntry
        '*keyed-call-caches $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *keyed-call-caches ({})
          :examples $ []
          :schema $ quote $ Ref
            Map Fn $ Map Dynamic memof.once/MemoEntry
        '*memo-frame-active? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *memo-frame-active? false
          :examples $ []
          :schema $ quote $ Ref Bool
        '*once-caches $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *once-caches ({})
          :examples $ []
          :schema $ quote $ Ref (Map Dynamic Dynamic)
        '*singleton-call-caches $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *singleton-call-caches ({})
          :examples $ []
          :schema $ quote $ Ref (Map Fn memof.once/MemoEntry)
        'MemoEntry $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct MemoEntry
            :args $ quote $ List Dynamic
            :value 'Dynamic
          :examples $ []
          :schema $ quote StructDef
        'begin-memof1-frame! $ %{} 'CodeEntry
          :doc "|Start a frame-managed keyed memoization frame for memof1-call-by. Call finish-memof1-frame! after all memoized calls for the frame."
          :code $ quote $ defn begin-memof1-frame! ()
            reset! *frame-keyed-call-caches $ {}
            reset! *memo-frame-active? true
            , &unit
          :examples $ [] $ quote (do memof.once/begin-memof1-frame! memof.once/finish-memof1-frame!)
          :schema $ quote $ Fn (-> Unit)
        'clear-memof1-function! $ %{} 'CodeEntry
          :doc "|Clear singleton, persistent keyed, and current-frame memo entries associated with one function identity."
          :code $ quote $ defn clear-memof1-function! (f) (swap! *singleton-call-caches &map:dissoc f) (swap! *keyed-call-caches &map:dissoc f) (swap! *frame-keyed-call-caches &map:dissoc f) &unit
          :examples $ [] $ quote
            let
                f $ fn (x) (+ x 1)
              memof.once/clear-memof1-function! f
          :schema $ quote $ Fn Fn (-> Unit)
        'finish-memof1-frame! $ %{} 'CodeEntry
          :doc "|Finish the current frame-managed keyed memoization frame and replace the persistent keyed cache with entries used in this frame."
          :code $ quote $ defn finish-memof1-frame! ()
            if @*memo-frame-active? $ reset! *keyed-call-caches @*frame-keyed-call-caches
            reset! *memo-frame-active? false
            reset! *frame-keyed-call-caches $ {}
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
        'memof1-as $ %{} 'CodeEntry
          :doc "|Memoize an expression by key. The expression is evaluated at most once for each key until the cache is reset."
          :code $ quote $ defmacro memof1-as (key v)
            let
                k $ gensym |k
                result $ gensym |result
              quasiquote $ &let (~k ~key)
                if (&map:contains? @*once-caches ~k)
                  .unwrap $ calcit.core/get @*once-caches ~k
                  &let (~result ~v)
                    swap! *once-caches
                      fn (cache key value)
                        hint-fn $ Fn (Map K V) K V
                          -> $ Map K V
                          :generics K V
                        .assoc cache key value
                      , ~k ~result
                    , ~result
          :examples $ []
          :schema $ quote $ Macro (Expr Dynamic) (Expr Dynamic)
            -> $ Expr Dynamic
          :tests $ []
            %{} 'TestEntry (:name |memoizes-expression-by-key)
              :code $ quote $ do
                reset! memof.once/*once-caches $ {}
                let
                    *calls $ ref 0
                  is $ &= 0 $ memof.once/memof1-as :key
                    do (swap! *calls inc) 0
                  is $ &= 0 $ memof.once/memof1-as :key
                    do (swap! *calls inc) 0
                  is $ &= 1 @*calls
              :tags $ #{} :core :unit
            %{} 'TestEntry (:name |method-write-preserves-lazy-falsey-results)
              :code $ quote $ do (memof.once/reset-memof1-caches!)
                let
                    cache 42
                    key :method-write
                    value false
                    *key-calls $ ref 0
                    *computations $ ref 0
                  assert= false $ memof.once/memof1-as
                    do (swap! *key-calls inc) key
                    do (swap! *computations inc) value
                  assert= false $ memof.once/memof1-as
                    do (swap! *key-calls inc) key
                    do (swap! *computations inc) true
                  assert= 2 @*key-calls
                  assert= 1 @*computations
                  assert= 42 cache
                  assert= nil $ memof.once/memof1-as :cached-nil $ do (swap! *computations inc) nil
                  assert= nil $ memof.once/memof1-as :cached-nil $ do (swap! *computations inc) 9
                  assert= 2 @*computations
              :tags $ #{} :core :unit
        'memof1-call $ %{} 'CodeEntry
          :doc "|Memoize a function call by function and its full argument list."
          :code $ quote $ defn memof1-call (f & args)
            let
                caches $ deref *singleton-call-caches
              match
                .and-then (read-singleton-entry caches f)
                  fn (entry)
                    if
                      &= args $ :args entry
                      Option :some entry
                      Option :none
                (:some entry) (:value entry)
                (:none)
                  let
                      ret $ f & args
                      cache-entry $ MemoEntry :args args :value ret
                    swap! *singleton-call-caches put-singleton-entry f cache-entry
                    , ret
          :examples $ []
          :schema $ quote $ Fn Fn & Dynamic (-> Dynamic) (:features :js-ffi)
          :tests $ []
            %{} 'TestEntry (:name |memoizes-matching-call)
              :code $ quote $ do
                reset! memof.once/*singleton-call-caches $ {}
                is $ &= 6 $ memof.once/memof1-call
                  fn (a b c) (+ a b c)
                  , 1 2 3
                is $ &= 6 $ memof.once/memof1-call
                  fn (a b c) (+ a b c)
                  , 1 2 3
              :tags $ #{} :core :unit
            %{} 'TestEntry (:name |reuses-same-callable-and-replaces-arguments)
              :code $ quote $ do (memof.once/reset-memof1-caches!)
                let
                    *calls $ ref 0
                    add3 $ fn (a b c) (swap! *calls inc) (+ a b c)
                  assert= 6 $ memof.once/memof1-call add3 1 2 3
                  assert= 6 $ memof.once/memof1-call add3 1 2 3
                  assert= 1 @*calls
                  assert= 7 $ memof.once/memof1-call add3 1 2 4
                  assert= 7 $ memof.once/memof1-call add3 1 2 4
                  assert= 2 @*calls
                  assert= 6 $ memof.once/memof1-call add3 1 2 3
                  assert= 3 @*calls
              :tags $ #{} :core :unit
            %{} 'TestEntry (:name |isolates-cache-by-callable)
              :code $ quote $ do (memof.once/reset-memof1-caches!)
                let
                    *inc-calls $ ref 0
                    *double-calls $ ref 0
                    f-inc $ fn (x) (swap! *inc-calls inc) (+ x 1)
                    f-double $ fn (x) (swap! *double-calls inc) (* x 2)
                  assert= 3 $ memof.once/memof1-call f-inc 2
                  assert= 4 $ memof.once/memof1-call f-double 2
                  assert= 3 $ memof.once/memof1-call f-inc 2
                  assert= 4 $ memof.once/memof1-call f-double 2
                  assert= 1 @*inc-calls
                  assert= 1 @*double-calls
              :tags $ #{} :core :unit
        'memof1-call-by $ %{} 'CodeEntry
          :doc "|Memoize a keyed function call. The cache identity is function, key, and full argument list. A nil key bypasses memoization. When a memo frame is active, entries are collected for that frame and inactive keys are pruned at finish-memof1-frame!."
          :code $ quote $ defn memof1-call-by (key f & args)
            if (nil? key) (f & args)
              let
                  cached-entry $ match (read-keyed-entry @*frame-keyed-call-caches f key)
                    (:some entry) (Option :some entry)
                    (:none) (read-keyed-entry @*keyed-call-caches f key)
                match cached-entry
                  (:some entry)
                    if
                      &= args $ :args entry
                      if @*memo-frame-active?
                        do (swap! *frame-keyed-call-caches put-keyed-entry f key entry) (:value entry)
                        :value entry
                      let
                          ret $ f & args
                          next-entry $ MemoEntry :args args :value ret
                        if @*memo-frame-active? (swap! *frame-keyed-call-caches put-keyed-entry f key next-entry) (swap! *keyed-call-caches put-keyed-entry f key next-entry)
                        , ret
                  (:none)
                    let
                        ret $ f & args
                        next-entry $ MemoEntry :args args :value ret
                      if @*memo-frame-active? (swap! *frame-keyed-call-caches put-keyed-entry f key next-entry) (swap! *keyed-call-caches put-keyed-entry f key next-entry)
                      , ret
          :examples $ [] $ quote
            [] $ let
                add3 $ fn (a b c) + a b c
              memof1-call-by :demo add3 1 2 3
          :schema $ quote $ Fn Dynamic Fn & Dynamic (-> Dynamic) (:features :js-ffi)
          :tests $ [] $ %{} 'TestEntry (:name |keyed-cache-and-nil-bypass)
            :code $ quote $ do
              reset! memof.once/*keyed-call-caches $ {}
              reset! memof.once/*frame-keyed-call-caches $ {}
              reset! memof.once/*memo-frame-active? false
              let
                  *calls $ ref 0
                  add3 $ fn (a b c) (swap! *calls inc) (+ a b c)
                is $ &= 6 $ memof.once/memof1-call-by :a add3 1 2 3
                is $ &= 6 $ memof.once/memof1-call-by :a add3 1 2 3
                is $ &= 6 $ memof.once/memof1-call-by nil add3 1 2 3
                is $ &= 2 @*calls
            :tags $ #{} :core :unit
        'memof1-call-unary $ %{} 'CodeEntry
          :doc "|Memoize one argument while preserving Fn<A,R> -> R. Reuses the existing function/argument single-slot cache; the trusted cache-return restoration stays inside Memof. Multi-argument callers continue using memof1-call."
          :code $ quote $ defn memof1-call-unary (f arg)
            unsafe-coerce (memof1-call f arg) 'R
          :examples $ []
          :schema $ quote $ Fn
            Fn A $ -> R
            , A (-> R) (:generics A R) (:features :erased-cache)
          :tests $ [] $ %{} 'TestEntry (:name |preserves-callback-return)
            :code $ quote $ is
              &= 3 $ memof.once/memof1-call-unary inc 2
            :tags $ #{} :unit
        'put-keyed-entry $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn put-keyed-entry (cache f key entry)
            let
                by-key $ if (contains? cache f)
                  .unwrap $ get cache f
                  assert-type (&{})
                    quote $ Map K memof.once/MemoEntry
              .assoc cache f $ .assoc by-key key entry
          :examples $ []
          :schema $ quote $ Fn
            Map Fn $ Map K memof.once/MemoEntry
            , Fn K memof.once/MemoEntry
              -> $ Map Fn $ Map K memof.once/MemoEntry
              :generics K
        'put-singleton-entry $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn put-singleton-entry (cache f entry) (.assoc cache f entry)
          :examples $ []
          :schema $ quote $ Fn (Map Fn memof.once/MemoEntry) Fn memof.once/MemoEntry
            -> $ Map Fn memof.once/MemoEntry
        'read-keyed-entry $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-keyed-entry (cache f key)
            match (get cache f)
              (:some by-key) (get by-key key)
              (:none) (Option :none)
          :examples $ []
          :schema $ quote $ Fn
            Map Fn $ Map K memof.once/MemoEntry
            , Fn K
              -> $ calcit.core/Option memof.once/MemoEntry
              :generics K
        'read-singleton-entry $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-singleton-entry (cache f) (get cache f)
          :examples $ []
          :schema $ quote $ Fn (Map Fn memof.once/MemoEntry) Fn
            -> $ calcit.core/Option memof.once/MemoEntry
        'reset-memof1-caches! $ %{} 'CodeEntry
          :doc "|Reset all memoization caches and leave frame-managed memoization inactive."
          :code $ quote $ defn reset-memof1-caches! ()
            reset! *singleton-call-caches $ {}
            reset! *keyed-call-caches $ {}
            reset! *frame-keyed-call-caches $ {}
            reset! *memo-frame-active? false
            reset! *once-caches $ {}
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns memof.once
          :require $ calcit.test :refer $ is
