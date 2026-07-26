
{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `cr query` to inspect and `cr edit`/`cr tree` to modify. Run `cr docs agents --full` first. Manual edits must follow format and schema conventions, then run `cr edit format`.") (:package |memof)
  :configs $ {} (:init-fn |memof.main/main!) (:reload-fn |memof.main/reload!) (:version |0.0.25)
    :modules $ [] |calcit-test/compact.cirru |lilac/compact.cirru
  :entries $ {}
  :files $ {}
    |memof.anchor $ %{} :FileEntry
      :defs $ {}
        |%state-anchor $ %{} :CodeEntry (:doc "|Record type for anchor state, implementing deref and set! interfaces for state access") (:schema :dynamic)
          :code $ quote
            defimpl %state-anchor :anchor
              .deref $ fn (self)
                &map:get @*anchor-states $ &record:get self :path
              .set! $ fn (self v)
                swap! *anchor-states &map:assoc (&record:get self :path) v
          :examples $ []
        |%state-anchor0 $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstruct %state-anchor0 $ :path :dynamic
          :examples $ []
        |*anchor-states $ %{} :CodeEntry (:doc "|Global atom storing all anchor states, mapping paths to their values") (:schema :dynamic)
          :code $ quote
            defatom *anchor-states $ {}
          :examples $ []
        |anchor-state $ %{} :CodeEntry (:doc "|Creates an anchor state for storing local state at a specific path. Similar to React Hooks internal state implementation.") (:schema :dynamic)
          :code $ quote
            defn anchor-state (path)
              %{} (impl-traits %state-anchor0 %state-anchor) (:path path)
          :examples $ []
            quote $ let
                *a $ anchor-state (identity-path |s0)
              do (.set! *a 1) @*a
            quote $ let
                *a $ anchor-state |unique-key
              do (.set! *a 100) @*a
        |identity-path $ %{} :CodeEntry (:doc "|Extracts the full path of a symbol in format \"<ns> / <def> / <sym>\". Used to generate unique identifiers for anchor states.") (:schema :dynamic)
          :code $ quote
            defmacro identity-path (s0)
              &let
                s $ cond
                    symbol? s0
                    , s0
                  (list? s0) (nth s0 1)
                  true $ raise (str "|expected symbol, got: " s0)
                assert "|expected a symbol" $ symbol? s
                &let
                  edn $ &extract-code-into-edn s
                  str (:ns edn) "| / " (:at-def edn) "| / " $ :val edn
          :examples $ []
            quote $ identity-path s0
            quote $ identity-path (some-fn x)
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote (ns memof.anchor)
    |memof.main $ %{} :FileEntry
      :defs $ {}
        |*states $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defatom *states $ memof/new-states ({})
          :examples $ []
        |main! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn main! () (println |Started.) (run-tests)
          :examples $ []
        |reload! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn reload! () (println |Reloaded!) (run-tests)
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns memof.main $ :require ([] memof.core :as memof)
            [] memof.test :refer $ [] run-tests
            [] memof.alias :refer $ [] reset-calling-caches!
    |memof.once $ %{} :FileEntry
      :defs $ {}
        |*frame-keyed-call-caches $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defatom *frame-keyed-call-caches $ {}
          :examples $ []
        |*keyed-call-caches $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defatom *keyed-call-caches $ {}
          :examples $ []
        |*memo-frame-active? $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote (defatom *memo-frame-active? false)
          :examples $ []
        |*once-caches $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defatom *once-caches $ {}
          :examples $ []
        |*singleton-call-caches $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defatom *singleton-call-caches $ {}
          :examples $ []
        |begin-memof1-frame! $ %{} :CodeEntry (:doc "|Start a frame-managed keyed memoization frame for memof1-call-by. Call finish-memof1-frame! after all memoized calls for the frame.")
          :code $ quote
            defn begin-memof1-frame! ()
              reset! *frame-keyed-call-caches $ {}
              reset! *memo-frame-active? true
          :examples $ []
            quote $ do memof.once/begin-memof1-frame! memof.once/finish-memof1-frame!
          :schema $ :: :fn
            {} (:return :unit)
              :args $ []
        |finish-memof1-frame! $ %{} :CodeEntry (:doc "|Finish the current frame-managed keyed memoization frame and replace the persistent keyed cache with entries used in this frame.")
          :code $ quote
            defn finish-memof1-frame! ()
              if @*memo-frame-active? $ reset! *keyed-call-caches @*frame-keyed-call-caches
              reset! *memo-frame-active? false
              reset! *frame-keyed-call-caches $ {}
          :examples $ []
          :schema $ :: :fn
            {} (:return :unit)
              :args $ []
        |memof1-as $ %{} :CodeEntry (:doc "|Memoize an expression by key. The expression is evaluated at most once for each key until the cache is reset.")
          :code $ quote
            defmacro memof1-as (key v)
              let
                  k $ gensym |k
                  result $ gensym |result
                quasiquote $ &let (~k ~key)
                  if (&map:contains? @*once-caches ~k) (&map:get @*once-caches ~k)
                    &let (~result ~v) (swap! *once-caches assoc ~k ~result) ~result
          :examples $ []
          :schema $ :: :macro
            {} (:return :any)
              :args $ [] :any :any
        |memof1-call $ %{} :CodeEntry (:doc "|Memoize a function call by function and its full argument list.")
          :code $ quote
            defn memof1-call (f & args)
              &let
                caches $ deref *singleton-call-caches
                tag-match
                  or (&map:get caches f) (:: :none)
                  (:some m-args m-v)
                    if (&= args m-args) m-v $ &let
                      ret $ f & args
                      swap! *singleton-call-caches assoc f $ :: :some args ret
                      , ret
                  (:none)
                    &let
                      ret $ f & args
                      swap! *singleton-call-caches assoc f $ :: :some args ret
                      , ret
          :examples $ []
          :schema $ :: :fn
            {} (:rest :any) (:return :any)
              :args $ [] :fn
        |memof1-call-by $ %{} :CodeEntry (:doc "|Memoize a keyed function call. The cache identity is function, key, and full argument list. A nil key bypasses memoization. When a memo frame is active, entries are collected for that frame and inactive keys are pruned at finish-memof1-frame!.")
          :code $ quote
            defn memof1-call-by (key f & args)
              if (nil? key) (f & args)
                &let
                  cached-pair $ or
                    get-in @*frame-keyed-call-caches $ [] f key
                    get-in @*keyed-call-caches $ [] f key
                  if (some? cached-pair)
                    if
                      &= args $ first cached-pair
                      if @*memo-frame-active?
                        &let
                          ret $ last cached-pair
                          swap! *frame-keyed-call-caches assoc-in ([] f key) cached-pair
                          , ret
                        last cached-pair
                      &let
                        ret $ f & args
                        if @*memo-frame-active?
                          &let
                            result $ identity ret
                            swap! *frame-keyed-call-caches assoc-in ([] f key) ([] args ret)
                            , ret
                          &let
                            result $ identity ret
                            swap! *keyed-call-caches assoc-in ([] f key) ([] args ret)
                            , ret
                    &let
                      ret $ f & args
                      if @*memo-frame-active?
                        &let
                          result $ identity ret
                          swap! *frame-keyed-call-caches assoc-in ([] f key) ([] args ret)
                          , ret
                        &let
                          result $ identity ret
                          swap! *keyed-call-caches assoc-in ([] f key) ([] args ret)
                          , ret
          :examples $ []
            quote $ memof.once/memof1-call-by :demo add3 1 2 3
          :schema $ :: :fn
            {} (:rest :any) (:return :any)
              :args $ [] :any :fn
        |reset-memof1-caches! $ %{} :CodeEntry (:doc "|Reset all memoization caches and leave frame-managed memoization inactive.")
          :code $ quote
            defn reset-memof1-caches! ()
              reset! *singleton-call-caches $ {}
              reset! *keyed-call-caches $ {}
              reset! *frame-keyed-call-caches $ {}
              reset! *memo-frame-active? false
              reset! *once-caches $ {}
          :examples $ []
          :schema $ :: :fn
            {} (:return :unit)
              :args $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote (ns memof.once)
    |memof.test $ %{} :FileEntry
      :defs $ {}
        |*call-count $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote (defatom *call-count 0)
          :examples $ []
        |*states $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defatom *states $ {}
          :examples $ []
        |add3 $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn add3 (a b c) (println "| ::: calling add3") (+ a b c)
          :examples $ []
        |add3-key $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn add3-key (a b c) (swap! *call-count inc) (+ a b c)
          :examples $ []
        |run-tests $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn run-tests () (reset! *quit-on-failure? true) (test-memof1-call) (test-memof1-call-by) (test-memof1-frame) (test-memof1-as) (test-anchor)
          :examples $ []
        |test-anchor $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn test-anchor () $ testing "|anchor states"
              let
                  *a $ anchor-state (identity-path s0)
                is $ = @*a nil
                .set! *a 1
                is $ = @*a 1
              let
                  *a $ anchor-state (identity-path s0)
                is $ = @*a 1
              let
                  *a $ anchor-state (identity-path 's0)
                is $ = @*a 1
              let
                  *a $ anchor-state (identity-path s1)
                is $ = @*a nil
          :examples $ []
        |test-memof1-as $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            deftest test-memof1-as $ testing "|memof1-as test" (reset! *call-count 0)
              is $ = 0
                once/memof1-as 0 $ do (swap! *call-count inc) 0
              is $ = 1 @*call-count
              is $ = 0
                once/memof1-as 0 $ do (swap! *call-count inc) 0
              is $ = 1 @*call-count
          :examples $ []
        |test-memof1-call $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            deftest test-memof1-call $ testing "|usage of memof1-call"
              is $ = (once/memof1-call add3 1 2 3) 6
              is $ = (once/memof1-call add3 1 2 3) 6
              once/reset-memof1-caches!
          :examples $ []
        |test-memof1-call-by $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            deftest test-memof1-call-by $ testing "|usage of memof1-call" (reset! *call-count 0)
              is $ = (once/memof1-call-by |a add3-key 1 2 3) 6
              is $ = (once/memof1-call-by nil add3-key 1 2 3) 6
              is $ = (once/memof1-call-by |b add3-key 1 2 3) 6
              is $ = (once/memof1-call-by |b add3-key 1 2 3) 6
              is $ = 3 @*call-count
              swap! once/*keyed-call-caches dissoc add3-key
              is $ = (once/memof1-call-by |b add3-key 1 2 3) 6
              is $ = 4 @*call-count
              once/reset-memof1-caches!
          :examples $ []
        |test-memof1-frame $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            deftest test-memof1-frame $ testing |memof1-call-by_frame_reuses_and_prunes
              do (once/reset-memof1-caches!) (reset! *call-count 0) (once/begin-memof1-frame!)
                is $ = (once/memof1-call-by :a add3-key 1 2 3) 6
                is $ = (once/memof1-call-by :a add3-key 1 2 3) 6
                is $ = (once/memof1-call-by :a add3-key 2 2 3) 7
                once/finish-memof1-frame!
                is $ = 2 @*call-count
                once/begin-memof1-frame!
                is $ = (once/memof1-call-by :a add3-key 2 2 3) 7
                is $ = (once/memof1-call-by :b add3-key 1 2 3) 6
                once/finish-memof1-frame!
                is $ = 3 @*call-count
                once/begin-memof1-frame!
                is $ = (once/memof1-call-by :b add3-key 1 2 3) 6
                once/finish-memof1-frame!
                is $ = (once/memof1-call-by :a add3-key 1 2 3) 6
                is $ = 4 @*call-count
                is $ = (once/memof1-call-by nil add3-key 1 2 3) 6
                is $ = (once/memof1-call-by nil add3-key 1 2 3) 6
                is $ = 6 @*call-count
                , once/reset-memof1-caches!
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns memof.test $ :require
            calcit-test.core :refer $ deftest testing is *quit-on-failure?
            memof.core :as memof
            lilac.core :refer $ *in-dev? validate-lilac
            memof.once :as once
            memof.anchor :refer $ identity-path anchor-state
