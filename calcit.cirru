
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |memof
  :entries $ {} $ :default
    {} (:description |)
      :init-fn 'memof.main/main!
      :mode :native
      :reload-fn 'memof.main/reload!
      :target :native
      :feature-policy $ {}
      :modules $ []
      :type-slots $ {}
  :files $ {}
    'memof.anchor $ %{} 'FileEntry
      :defs $ {}
        '*anchor-states $ %{} 'CodeEntry
          :doc "|Global atom storing all anchor states, mapping paths to their values"
          :code $ quote $ defatom *anchor-states ({})
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'Dynamic 'Dynamic
        'StateAnchor $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def StateAnchor (impl-traits StateAnchorShape StateAnchorImpl)
          :examples $ []
          :schema $ :: 'Enum
        'StateAnchorImpl $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defimpl StateAnchorImpl StateAnchorTrait
            .deref $ fn (self)
              &map:get @*anchor-states $ &struct:get self :path
            .set! $ fn (self v)
              swap! *anchor-states &map:assoc (&struct:get self :path) v
          :examples $ []
          :schema $ :: 'Impl
        'StateAnchorShape $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct StateAnchorShape (:path 'Dynamic)
          :examples $ []
          :schema $ :: 'Enum
        'StateAnchorTrait $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait StateAnchorTrait
            .deref $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] 'T
              :return 'T
            .set! $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] 'T 'T
              :return 'T
          :examples $ []
          :schema $ :: 'Trait
        'anchor-state $ %{} 'CodeEntry
          :doc "|Creates an anchor state for storing local state at a specific path. Similar to React Hooks internal state implementation."
          :code $ quote $ defn anchor-state (path)
            %{} StateAnchor $ :path path
          :examples $ [] $ quote
            [] $ let
                *a $ anchor-state :example-path
              do (.set! *a 1) (.deref *a)
          :schema $ :: 'Fn $ {} (:return 'Struct)
            :args $ [] 'Dynamic
          :tests $ [] $ %{} 'TestEntry
            :name |retains-state-for-identity-path
            :code $ quote $ do
              reset! memof.anchor/*anchor-states $ {}
              let
                  *a $ memof.anchor/anchor-state :path
                is $ &= nil $ .deref *a
                &trait-call memof.anchor/StateAnchorTrait :set! *a 1
                is $ &= 1 $ .deref *a
              let
                  *a $ memof.anchor/anchor-state :path
                is $ &= 1 $ .deref *a
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
                str (&map:get edn :ns) "| / " (&map:get edn :at-def) "| / " $ &map:get edn :val
          :examples $ [] $ quote
            [] $ identity-path s0
          :schema $ :: 'Macro $ {}
            :capabilities $ #{}
            :expansion $ :: 'Expr 'String
            :required $ [] 'Syntax
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns memof.anchor
          :require $ calcit.test :refer $ [] is
    'memof.main $ %{} 'FileEntry
      :defs $ {}
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (println |Started.)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (println |Reloaded!)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns memof.main
    'memof.once $ %{} 'FileEntry
      :defs $ {}
        '*frame-keyed-call-caches $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *frame-keyed-call-caches ({})
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'JsObject 'JsObject
        '*keyed-call-caches $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *keyed-call-caches ({})
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'JsObject 'JsObject
        '*memo-frame-active? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *memo-frame-active? false
          :examples $ []
          :schema $ :: 'Ref 'Bool
        '*once-caches $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *once-caches ({})
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'Dynamic 'Dynamic
        '*singleton-call-caches $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *singleton-call-caches ({})
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'JsObject 'JsObject
        'MemoEntry $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct MemoEntry
            :args $ :: 'List 'JsObject
            :value 'JsObject
          :examples $ []
          :schema $ :: 'StructDef
        'begin-memof1-frame! $ %{} 'CodeEntry
          :doc "|Start a frame-managed keyed memoization frame for memof1-call-by. Call finish-memof1-frame! after all memoized calls for the frame."
          :code $ quote $ defn begin-memof1-frame! ()
            reset! *frame-keyed-call-caches $ {}
            reset! *memo-frame-active? true
          :examples $ [] $ quote
            do memof.once/begin-memof1-frame! memof.once/finish-memof1-frame!
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'clear-memof1-function! $ %{} 'CodeEntry
          :doc "|Clear singleton, persistent keyed, and current-frame memo entries associated with one function identity."
          :code $ quote $ defn clear-memof1-function! (f)
            let
                typed-f $ unsafe-coerce f 'JsObject
              swap! *singleton-call-caches dissoc typed-f
              swap! *keyed-call-caches dissoc typed-f
              swap! *frame-keyed-call-caches dissoc typed-f
          :examples $ [] $ quote
            let
                f $ fn (x) (+ x 1)
              memof.once/clear-memof1-function! f
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Fn
            :features $ #{} :js-ffi
        'finish-memof1-frame! $ %{} 'CodeEntry
          :doc "|Finish the current frame-managed keyed memoization frame and replace the persistent keyed cache with entries used in this frame."
          :code $ quote $ defn finish-memof1-frame! ()
            if @*memo-frame-active? $ reset! *keyed-call-caches @*frame-keyed-call-caches
            reset! *memo-frame-active? false
            reset! *frame-keyed-call-caches $ {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'memof1-as $ %{} 'CodeEntry
          :doc "|Memoize an expression by key. The expression is evaluated at most once for each key until the cache is reset."
          :code $ quote $ defmacro memof1-as (key v)
            let
                k $ gensym |k
                result $ gensym |result
              quasiquote $ &let (~k ~key)
                if (&map:contains? @*once-caches ~k) (&map:get @*once-caches ~k)
                  &let (~result ~v) (swap! *once-caches assoc ~k ~result) ~result
          :examples $ []
          :schema $ :: 'Macro $ {}
            :capabilities $ #{}
            :expansion $ :: 'Expr 'Dynamic
            :required $ [] (:: 'Expr 'Dynamic) (:: 'Expr 'Dynamic)
          :tests $ [] $ %{} 'TestEntry
            :name |memoizes-expression-by-key
            :code $ quote $ do
              reset! memof.once/*once-caches $ {}
              let
                  *calls $ atom 0
                is $ &= 0 $ memof.once/memof1-as :key
                  do (swap! *calls inc) 0
                is $ &= 0 $ memof.once/memof1-as :key
                  do (swap! *calls inc) 0
                is $ &= 1 @*calls
            :tags $ #{} :core :unit
        'memof1-call $ %{} 'CodeEntry
          :doc "|Memoize a function call by function and its full argument list."
          :code $ quote $ defn memof1-call (f & args)
            let
                typed-f $ unsafe-coerce f 'JsObject
                typed-args $ unsafe-coerce args $ :: 'List 'JsObject
                caches $ deref *singleton-call-caches
              match
                read-singleton-entry caches typed-f
                (:some entry)
                  if
                    &= typed-args $ :args entry
                    unsafe-coerce (:value entry) 'Dynamic
                    let
                        ret $ f & args
                        cache-entry $ %{} MemoEntry (:args typed-args)
                          :value $ unsafe-coerce ret 'JsObject
                      swap! *singleton-call-caches put-singleton-entry typed-f $ unsafe-coerce cache-entry 'JsObject
                      , ret
                (:none)
                  let
                      ret $ f & args
                      cache-entry $ %{} MemoEntry (:args typed-args)
                        :value $ unsafe-coerce ret 'JsObject
                    swap! *singleton-call-caches put-singleton-entry typed-f $ unsafe-coerce cache-entry 'JsObject
                    , ret
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'Dynamic)
            :args $ [] 'Fn
            :features $ #{} :js-ffi
          :tests $ [] $ %{} 'TestEntry
            :name |memoizes-matching-call
            :code $ quote $ do
              reset! memof.once/*singleton-call-caches $ {}
              is $ &= 6 $ memof.once/memof1-call
                fn (a b c) (+ a b c)
                , 1 2 3
              is $ &= 6 $ memof.once/memof1-call
                fn (a b c) (+ a b c)
                , 1 2 3
            :tags $ #{} :core :unit
        'memof1-call-by $ %{} 'CodeEntry
          :doc "|Memoize a keyed function call. The cache identity is function, key, and full argument list. A nil key bypasses memoization. When a memo frame is active, entries are collected for that frame and inactive keys are pruned at finish-memof1-frame!."
          :code $ quote $ defn memof1-call-by (key f & args)
            if (nil? key) (f & args)
              let
                  typed-f $ unsafe-coerce f 'JsObject
                  typed-key $ unsafe-coerce key 'JsObject
                  typed-args $ unsafe-coerce args $ :: 'List 'JsObject
                  cached-entry $ match
                    read-keyed-entry @*frame-keyed-call-caches typed-f typed-key
                    (:some entry) (%some entry)
                    (:none)
                      read-keyed-entry @*keyed-call-caches typed-f typed-key
                match cached-entry
                  (:some raw-entry)
                    let
                        entry $ assert-type raw-entry 'memof.once/MemoEntry
                      if
                        &= typed-args $ :args entry
                        if @*memo-frame-active?
                          do
                            swap! *frame-keyed-call-caches put-keyed-entry typed-f typed-key $ unsafe-coerce entry 'JsObject
                            unsafe-coerce (:value entry) 'Dynamic
                          unsafe-coerce (:value entry) 'Dynamic
                        let
                            ret $ f & args
                            next-entry $ %{} MemoEntry (:args typed-args)
                              :value $ unsafe-coerce ret 'JsObject
                          if @*memo-frame-active?
                            swap! *frame-keyed-call-caches put-keyed-entry typed-f typed-key $ unsafe-coerce next-entry 'JsObject
                            swap! *keyed-call-caches put-keyed-entry typed-f typed-key $ unsafe-coerce next-entry 'JsObject
                          , ret
                  (:none)
                    let
                        ret $ f & args
                        next-entry $ %{} MemoEntry (:args typed-args)
                          :value $ unsafe-coerce ret 'JsObject
                      if @*memo-frame-active?
                        swap! *frame-keyed-call-caches put-keyed-entry typed-f typed-key $ unsafe-coerce next-entry 'JsObject
                        swap! *keyed-call-caches put-keyed-entry typed-f typed-key $ unsafe-coerce next-entry 'JsObject
                      , ret
          :examples $ [] $ quote
            [] $ let
                add3 $ fn (a b c) + a b c
              memof1-call-by :demo add3 1 2 3
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'Dynamic)
            :args $ [] 'Dynamic 'Fn
            :features $ #{} :js-ffi
          :tests $ [] $ %{} 'TestEntry
            :name |keyed-cache-and-nil-bypass
            :code $ quote $ do
              reset! memof.once/*keyed-call-caches $ {}
              reset! memof.once/*frame-keyed-call-caches $ {}
              reset! memof.once/*memo-frame-active? false
              let
                  *calls $ atom 0
                  add3 $ fn (a b c) (swap! *calls inc) (+ a b c)
                is $ &= 6 $ memof.once/memof1-call-by :a add3 1 2 3
                is $ &= 6 $ memof.once/memof1-call-by :a add3 1 2 3
                is $ &= 6 $ memof.once/memof1-call-by nil add3 1 2 3
                is $ &= 2 @*calls
            :tags $ #{} :core :unit
        'put-keyed-entry $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn put-keyed-entry (cache f key entry)
            let
                by-key $ if (contains? cache f)
                  unsafe-coerce (&map:get cache f) (:: 'Map 'JsObject 'JsObject)
                  assert-type (&{}) (:: 'Map 'JsObject 'JsObject)
                next-by-key $ assoc by-key key entry
              assoc cache f $ unsafe-coerce next-by-key 'JsObject
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'JsObject 'JsObject) 'JsObject 'JsObject 'JsObject
            :features $ #{} :js-ffi
            :return $ :: 'Map 'JsObject 'JsObject
        'put-singleton-entry $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn put-singleton-entry (cache f entry) (assoc cache f entry)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'JsObject 'JsObject) 'JsObject 'JsObject
            :return $ :: 'Map 'JsObject 'JsObject
        'read-keyed-entry $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-keyed-entry (cache f key)
            if (contains? cache f)
              let
                  by-key $ unsafe-coerce (&map:get cache f) (:: 'Map 'JsObject 'JsObject)
                if (contains? by-key key)
                  %some $ unsafe-coerce (&map:get by-key key) 'memof.once/MemoEntry
                  :: :none
              :: :none
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'JsObject 'JsObject) 'JsObject 'JsObject
            :features $ #{} :js-ffi
            :return $ :: 'Option 'memof.once/MemoEntry
        'read-singleton-entry $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-singleton-entry (cache f)
            if (contains? cache f)
              %some $ unsafe-coerce (&map:get cache f) 'memof.once/MemoEntry
              :: :none
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'JsObject 'JsObject) 'JsObject
            :features $ #{} :js-ffi
            :return $ :: 'Option 'memof.once/MemoEntry
        'reset-memof1-caches! $ %{} 'CodeEntry
          :doc "|Reset all memoization caches and leave frame-managed memoization inactive."
          :code $ quote $ defn reset-memof1-caches! ()
            reset! *singleton-call-caches $ {}
            reset! *keyed-call-caches $ {}
            reset! *frame-keyed-call-caches $ {}
            reset! *memo-frame-active? false
            reset! *once-caches $ {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns memof.once
          :require $ calcit.test :refer $ [] is
