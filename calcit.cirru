
{} (:package |memof)
  :configs $ {} (:compact-output? true) (:extension |.cljs) (:init-fn |memof.main/main!) (:local-storage-key |calcit-storage) (:output |src) (:port 6001) (:reload-fn |memof.main/reload!) (:storage-key |calcit.cirru) (:version |0.1.0)
    :modules $ [] |calcit-test/compact.cirru |lilac/compact.cirru
  :entries $ {}
  :files $ {}
    |memof.anchor $ %{} :FileEntry
      :defs $ {}
        |%state-anchor $ %{} :CodeEntry (:doc "|Record type for anchor state, implementing deref and set! interfaces for state access")
          :code $ %{} :Expr (:at 1696878779578) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1696878782326) (:by |yeKFqj7rX) (:text |defrecord!)
              |b $ %{} :Leaf (:at 1696878779578) (:by |yeKFqj7rX) (:text |%state-anchor)
              |h $ %{} :Expr (:at 1696878779578) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1696878789062) (:by |yeKFqj7rX) (:text |:deref)
                  |b $ %{} :Expr (:at 1696878796800) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696878797942) (:by |yeKFqj7rX) (:text |fn)
                      |b $ %{} :Expr (:at 1696878801497) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696878802042) (:by |yeKFqj7rX) (:text |self)
                      |h $ %{} :Expr (:at 1696878803804) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696878805456) (:by |yeKFqj7rX) (:text |tag-match)
                          |b $ %{} :Leaf (:at 1696878807083) (:by |yeKFqj7rX) (:text |self)
                          |h $ %{} :Expr (:at 1696878807722) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Expr (:at 1696878808475) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696878811555) (:by |yeKFqj7rX) (:text |:anchor)
                                  |b $ %{} :Leaf (:at 1696878814349) (:by |yeKFqj7rX) (:text |path)
                              |b $ %{} :Expr (:at 1696878843068) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696878843068) (:by |yeKFqj7rX) (:text |&map:get)
                                  |b $ %{} :Leaf (:at 1696879281224) (:by |yeKFqj7rX) (:text |@*anchor-states)
                                  |h $ %{} :Leaf (:at 1696878843068) (:by |yeKFqj7rX) (:text |path)
              |l $ %{} :Expr (:at 1696878789754) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1696878794541) (:by |yeKFqj7rX) (:text |:set!)
                  |b $ %{} :Expr (:at 1696878845141) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696878846780) (:by |yeKFqj7rX) (:text |fn)
                      |b $ %{} :Expr (:at 1696878847263) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696878850691) (:by |yeKFqj7rX) (:text |self)
                          |b $ %{} :Leaf (:at 1696879299790) (:by |yeKFqj7rX) (:text |v)
                      |h $ %{} :Expr (:at 1696878853565) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696878853565) (:by |yeKFqj7rX) (:text |tag-match)
                          |b $ %{} :Leaf (:at 1696878853565) (:by |yeKFqj7rX) (:text |self)
                          |h $ %{} :Expr (:at 1696878853565) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Expr (:at 1696878853565) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696878853565) (:by |yeKFqj7rX) (:text |:anchor)
                                  |b $ %{} :Leaf (:at 1696878853565) (:by |yeKFqj7rX) (:text |path)
                              |b $ %{} :Expr (:at 1696878853565) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696879293129) (:by |yeKFqj7rX) (:text |swap!)
                                  |b $ %{} :Leaf (:at 1696879288775) (:by |yeKFqj7rX) (:text |*anchor-states)
                                  |e $ %{} :Leaf (:at 1696879294564) (:by |yeKFqj7rX) (:text |&map:assoc)
                                  |h $ %{} :Leaf (:at 1696878853565) (:by |yeKFqj7rX) (:text |path)
                                  |l $ %{} :Leaf (:at 1696879298462) (:by |yeKFqj7rX) (:text |v)
          :examples $ []
        |*anchor-states $ %{} :CodeEntry (:doc "|Global atom storing all anchor states, mapping paths to their values")
          :code $ %{} :Expr (:at 1696877858802) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1696877862216) (:by |yeKFqj7rX) (:text |defatom)
              |b $ %{} :Leaf (:at 1696878630592) (:by |yeKFqj7rX) (:text |*anchor-states)
              |h $ %{} :Expr (:at 1696877858802) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1696877863330) (:by |yeKFqj7rX) (:text |{})
          :examples $ []
        |anchor-state $ %{} :CodeEntry (:doc "|Creates an anchor state for storing local state at a specific path. Similar to React Hooks internal state implementation.")
          :code $ %{} :Expr (:at 1767173289577) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text |defn)
              |V $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text |anchor-state)
              |X $ %{} :Expr (:at 1767173289577) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text |path)
              |Z $ %{} :Expr (:at 1767173289577) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text |%::)
                  |V $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text |%state-anchor)
                  |X $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text |:anchor)
                  |Z $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text |path)
          :examples $ []
            quote $ let
                *a $ anchor-state (identity-path |s0)
              do (.set! *a 1) @*a
            quote $ let
                *a $ anchor-state |unique-key
              do (.set! *a 100) @*a
        |identity-path $ %{} :CodeEntry (:doc "|Extracts the full path of a symbol in format \"<ns> / <def> / <sym>\". Used to generate unique identifiers for anchor states.")
          :code $ %{} :Expr (:at 1767173289577) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text |defmacro)
              |V $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text |identity-path)
              |X $ %{} :Expr (:at 1767173289577) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text |s0)
              |Z $ %{} :Expr (:at 1767173289577) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text |&let)
                  |V $ %{} :Expr (:at 1767173289577) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text |s)
                      |V $ %{} :Expr (:at 1767173289577) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text |cond)
                          |V $ %{} :Expr (:at 1767173289577) (:by |sync)
                            :data $ {}
                              |T $ %{} :Expr (:at 1767173289577) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text |symbol?)
                                  |V $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text |s0)
                              |V $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text |s0)
                          |X $ %{} :Expr (:at 1767173289577) (:by |sync)
                            :data $ {}
                              |T $ %{} :Expr (:at 1767173289577) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text |list?)
                                  |V $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text |s0)
                              |V $ %{} :Expr (:at 1767173289577) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text |nth)
                                  |V $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text |s0)
                                  |X $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text |1)
                          |Z $ %{} :Expr (:at 1767173289577) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text |true)
                              |V $ %{} :Expr (:at 1767173289577) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text |raise)
                                  |V $ %{} :Expr (:at 1767173289577) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text |str)
                                      |V $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text "|\"expected symbol, got: ")
                                      |X $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text |s0)
                  |X $ %{} :Expr (:at 1767173289577) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text |assert)
                      |V $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text "|\"expected a symbol")
                      |X $ %{} :Expr (:at 1767173289577) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text |symbol?)
                          |V $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text |s)
                  |Z $ %{} :Expr (:at 1767173289577) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text |&let)
                      |V $ %{} :Expr (:at 1767173289577) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text |edn)
                          |V $ %{} :Expr (:at 1767173289577) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text |&extract-code-into-edn)
                              |V $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text |s)
                      |X $ %{} :Expr (:at 1767173289577) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text |str)
                          |V $ %{} :Expr (:at 1767173289577) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text |:ns)
                              |V $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text |edn)
                          |X $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text "|\" / ")
                          |Z $ %{} :Expr (:at 1767173289577) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text |:at-def)
                              |V $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text |edn)
                          |b $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text "|\" / ")
                          |d $ %{} :Expr (:at 1767173289577) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text |:val)
                              |V $ %{} :Leaf (:at 1767173289577) (:by |sync) (:text |edn)
          :examples $ []
            quote $ identity-path s0
            quote $ identity-path (some-fn x)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1696876236656) (:by |yeKFqj7rX)
          :data $ {}
            |T $ %{} :Leaf (:at 1696876236656) (:by |yeKFqj7rX) (:text |ns)
            |b $ %{} :Leaf (:at 1696876236656) (:by |yeKFqj7rX) (:text |memof.anchor)
        :examples $ []
    |memof.main $ %{} :FileEntry
      :defs $ {}
        |*states $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1593964887828) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1606902761512) (:by |yeKFqj7rX) (:text |defatom)
              |j $ %{} :Leaf (:at 1594444352122) (:by |yeKFqj7rX) (:text |*states)
              |r $ %{} :Expr (:at 1593964887828) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1594444346719) (:by |yeKFqj7rX) (:text |memof/new-states)
                  |j $ %{} :Expr (:at 1593964923088) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1593964925204) (:by |yeKFqj7rX) (:text |{})
          :examples $ []
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1534483214794) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1534483214794) (:by |yeKFqj7rX) (:text |defn)
              |j $ %{} :Leaf (:at 1534483214794) (:by |yeKFqj7rX) (:text |main!)
              |r $ %{} :Expr (:at 1534483214794) (:by |yeKFqj7rX)
                :data $ {}
              |v $ %{} :Expr (:at 1534483219154) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1534483220269) (:by |yeKFqj7rX) (:text |println)
                  |j $ %{} :Leaf (:at 1610082148529) (:by |yeKFqj7rX) (:text "|\"Started.")
              |y $ %{} :Expr (:at 1607085881048) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1607085884242) (:by |yeKFqj7rX) (:text |run-tests)
          :examples $ []
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1534483216569) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1534483216569) (:by |yeKFqj7rX) (:text |defn)
              |j $ %{} :Leaf (:at 1534483216569) (:by |yeKFqj7rX) (:text |reload!)
              |r $ %{} :Expr (:at 1534483216569) (:by |yeKFqj7rX)
                :data $ {}
              |wT $ %{} :Expr (:at 1534483228056) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1534483228922) (:by |yeKFqj7rX) (:text |println)
                  |j $ %{} :Leaf (:at 1606902699156) (:by |yeKFqj7rX) (:text "|\"Reloaded!")
              |xD $ %{} :Expr (:at 1608008502978) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1608008504259) (:by |yeKFqj7rX) (:text |run-tests)
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1534483212338) (:by |yeKFqj7rX)
          :data $ {}
            |T $ %{} :Leaf (:at 1534483212338) (:by |yeKFqj7rX) (:text |ns)
            |j $ %{} :Leaf (:at 1534483212338) (:by |yeKFqj7rX) (:text |memof.main)
            |r $ %{} :Expr (:at 1534483679032) (:by |yeKFqj7rX)
              :data $ {}
                |T $ %{} :Leaf (:at 1534483683346) (:by |yeKFqj7rX) (:text |:require)
                |j $ %{} :Expr (:at 1534483683751) (:by |yeKFqj7rX)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1534483683939) (:by |yeKFqj7rX) (:text |[])
                    |j $ %{} :Leaf (:at 1592324262266) (:by |yeKFqj7rX) (:text |memof.core)
                    |r $ %{} :Leaf (:at 1534483751588) (:by |yeKFqj7rX) (:text |:as)
                    |v $ %{} :Leaf (:at 1594440797800) (:by |yeKFqj7rX) (:text |memof)
                |r $ %{} :Expr (:at 1607085887340) (:by |yeKFqj7rX)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1607085887668) (:by |yeKFqj7rX) (:text |[])
                    |j $ %{} :Leaf (:at 1607085890850) (:by |yeKFqj7rX) (:text |memof.test)
                    |r $ %{} :Leaf (:at 1607085891708) (:by |yeKFqj7rX) (:text |:refer)
                    |v $ %{} :Expr (:at 1607085892350) (:by |yeKFqj7rX)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1607085892544) (:by |yeKFqj7rX) (:text |[])
                        |j $ %{} :Leaf (:at 1607085894995) (:by |yeKFqj7rX) (:text |run-tests)
                |v $ %{} :Expr (:at 1608008903178) (:by |yeKFqj7rX)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1608008909677) (:by |yeKFqj7rX) (:text |[])
                    |j $ %{} :Leaf (:at 1608008912698) (:by |yeKFqj7rX) (:text |memof.alias)
                    |r $ %{} :Leaf (:at 1608008913364) (:by |yeKFqj7rX) (:text |:refer)
                    |v $ %{} :Expr (:at 1608008913547) (:by |yeKFqj7rX)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1608008913696) (:by |yeKFqj7rX) (:text |[])
                        |j $ %{} :Leaf (:at 1610081798047) (:by |yeKFqj7rX) (:text |reset-calling-caches!)
        :examples $ []
    |memof.once $ %{} :FileEntry
      :defs $ {}
        |*keyed-call-caches $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1650616415513) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1650616417980) (:by |yeKFqj7rX) (:text |defatom)
              |b $ %{} :Leaf (:at 1650616415513) (:by |yeKFqj7rX) (:text |*keyed-call-caches)
              |h $ %{} :Expr (:at 1650616415513) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1650616419613) (:by |yeKFqj7rX) (:text |{})
          :examples $ []
        |*once-caches $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1650966182707) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1650966186733) (:by |yeKFqj7rX) (:text |defatom)
              |b $ %{} :Leaf (:at 1650966182707) (:by |yeKFqj7rX) (:text |*once-caches)
              |h $ %{} :Expr (:at 1650966182707) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1650966188127) (:by |yeKFqj7rX) (:text |{})
          :examples $ []
        |*singleton-call-caches $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1650615650803) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1650615652172) (:by |yeKFqj7rX) (:text |defatom)
              |b $ %{} :Leaf (:at 1650615650803) (:by |yeKFqj7rX) (:text |*singleton-call-caches)
              |h $ %{} :Expr (:at 1650615650803) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1650615653628) (:by |yeKFqj7rX) (:text |{})
          :examples $ []
        |memof1-as $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1650966154846) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1650966224141) (:by |yeKFqj7rX) (:text |defmacro)
              |b $ %{} :Leaf (:at 1650966154846) (:by |yeKFqj7rX) (:text |memof1-as)
              |h $ %{} :Expr (:at 1650966154846) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1650966396933) (:by |yeKFqj7rX) (:text |key)
                  |b $ %{} :Leaf (:at 1650966207599) (:by |yeKFqj7rX) (:text |v)
              |l $ %{} :Expr (:at 1650966372089) (:by |yeKFqj7rX)
                :data $ {}
                  |D $ %{} :Leaf (:at 1650966373099) (:by |yeKFqj7rX) (:text |let)
                  |L $ %{} :Expr (:at 1650966375179) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Expr (:at 1650966376589) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1650966399852) (:by |yeKFqj7rX) (:text |k)
                          |b $ %{} :Expr (:at 1650966376589) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1650966376589) (:by |yeKFqj7rX) (:text |gensym)
                              |b $ %{} :Leaf (:at 1650966401497) (:by |yeKFqj7rX) (:text "|\"k")
                      |b $ %{} :Expr (:at 1650966381061) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1650966381061) (:by |yeKFqj7rX) (:text |result)
                          |b $ %{} :Expr (:at 1650966381061) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1650966381061) (:by |yeKFqj7rX) (:text |gensym)
                              |b $ %{} :Leaf (:at 1650966381061) (:by |yeKFqj7rX) (:text "|\"result")
                  |T $ %{} :Expr (:at 1650966613189) (:by |yeKFqj7rX)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1650966614925) (:by |yeKFqj7rX) (:text |quasiquote)
                      |T $ %{} :Expr (:at 1650966361750) (:by |yeKFqj7rX)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1650966362870) (:by |yeKFqj7rX) (:text |&let)
                          |L $ %{} :Expr (:at 1650966367033) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1650966392085) (:by |yeKFqj7rX) (:text |~k)
                              |b $ %{} :Leaf (:at 1650966395011) (:by |yeKFqj7rX) (:text |~key)
                          |T $ %{} :Expr (:at 1650966230374) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1650966233675) (:by |yeKFqj7rX) (:text |if)
                              |b $ %{} :Expr (:at 1650966234778) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1691526331556) (:by |yeKFqj7rX) (:text |&map:contains?)
                                  |b $ %{} :Leaf (:at 1650966243897) (:by |yeKFqj7rX) (:text |@*once-caches)
                                  |h $ %{} :Leaf (:at 1650966246225) (:by |yeKFqj7rX) (:text |~k)
                              |h $ %{} :Expr (:at 1650966247665) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1691526342439) (:by |yeKFqj7rX) (:text |&map:get)
                                  |b $ %{} :Leaf (:at 1650966251266) (:by |yeKFqj7rX) (:text |@*once-caches)
                                  |h $ %{} :Leaf (:at 1650966253419) (:by |yeKFqj7rX) (:text |~k)
                              |l $ %{} :Expr (:at 1650966262905) (:by |yeKFqj7rX)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1650966270144) (:by |yeKFqj7rX) (:text |&let)
                                  |L $ %{} :Expr (:at 1650966439232) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1650966442342) (:by |yeKFqj7rX) (:text |~result)
                                      |b $ %{} :Leaf (:at 1650966448040) (:by |yeKFqj7rX) (:text |~v)
                                  |T $ %{} :Expr (:at 1650966266905) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1650966296871) (:by |yeKFqj7rX) (:text |swap!)
                                      |b $ %{} :Leaf (:at 1650966301666) (:by |yeKFqj7rX) (:text |*once-caches)
                                      |h $ %{} :Leaf (:at 1650966303736) (:by |yeKFqj7rX) (:text |assoc)
                                      |l $ %{} :Leaf (:at 1650966306784) (:by |yeKFqj7rX) (:text |~k)
                                      |o $ %{} :Leaf (:at 1650966432776) (:by |yeKFqj7rX) (:text |~result)
                                  |b $ %{} :Leaf (:at 1650966436335) (:by |yeKFqj7rX) (:text |~result)
          :examples $ []
        |memof1-call $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1650615564143) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1650616062848) (:by |yeKFqj7rX) (:text |defn)
              |b $ %{} :Leaf (:at 1650617144257) (:by |yeKFqj7rX) (:text |memof1-call)
              |h $ %{} :Expr (:at 1650615564143) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1650615573321) (:by |yeKFqj7rX) (:text |f)
                  |X $ %{} :Leaf (:at 1650615617364) (:by |yeKFqj7rX) (:text |&)
                  |b $ %{} :Leaf (:at 1650615576180) (:by |yeKFqj7rX) (:text |args)
              |l $ %{} :Expr (:at 1650615629044) (:by |yeKFqj7rX)
                :data $ {}
                  |D $ %{} :Leaf (:at 1650616578729) (:by |yeKFqj7rX) (:text |&let)
                  |T $ %{} :Expr (:at 1650615659165) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1650615663653) (:by |yeKFqj7rX) (:text |caches)
                      |b $ %{} :Expr (:at 1650617484475) (:by |yeKFqj7rX)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1650617486124) (:by |yeKFqj7rX) (:text |deref)
                          |T $ %{} :Leaf (:at 1650617483730) (:by |yeKFqj7rX) (:text |*singleton-call-caches)
                  |X $ %{} :Expr (:at 1691526450963) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1691526454078) (:by |yeKFqj7rX) (:text |tag-match)
                      |b $ %{} :Expr (:at 1691526460731) (:by |yeKFqj7rX)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1691526461378) (:by |yeKFqj7rX) (:text |or)
                          |T $ %{} :Expr (:at 1691526456959) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1691526631494) (:by |yeKFqj7rX) (:text |&map:get)
                              |b $ %{} :Leaf (:at 1691526456959) (:by |yeKFqj7rX) (:text |caches)
                              |h $ %{} :Leaf (:at 1691526456959) (:by |yeKFqj7rX) (:text |f)
                          |b $ %{} :Expr (:at 1691526464804) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1691526465198) (:by |yeKFqj7rX) (:text |::)
                              |b $ %{} :Leaf (:at 1691526466437) (:by |yeKFqj7rX) (:text |:none)
                      |h $ %{} :Expr (:at 1691526467878) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Expr (:at 1691526472405) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1691526474264) (:by |yeKFqj7rX) (:text |:some)
                              |b $ %{} :Leaf (:at 1691526501712) (:by |yeKFqj7rX) (:text |m-args)
                              |h $ %{} :Leaf (:at 1691526500237) (:by |yeKFqj7rX) (:text |m-v)
                          |b $ %{} :Expr (:at 1691526480106) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1691526481494) (:by |yeKFqj7rX) (:text |if)
                              |b $ %{} :Expr (:at 1691526488212) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1691526488212) (:by |yeKFqj7rX) (:text |&=)
                                  |b $ %{} :Leaf (:at 1691526488212) (:by |yeKFqj7rX) (:text |args)
                                  |h $ %{} :Leaf (:at 1691526506139) (:by |yeKFqj7rX) (:text |m-args)
                              |h $ %{} :Leaf (:at 1691526508214) (:by |yeKFqj7rX) (:text |m-v)
                              |l $ %{} :Expr (:at 1691526523242) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1691526523242) (:by |yeKFqj7rX) (:text |&let)
                                  |b $ %{} :Expr (:at 1691526523242) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1691526523242) (:by |yeKFqj7rX) (:text |ret)
                                      |b $ %{} :Expr (:at 1691526523242) (:by |yeKFqj7rX)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1691526523242) (:by |yeKFqj7rX) (:text |f)
                                          |b $ %{} :Leaf (:at 1691526523242) (:by |yeKFqj7rX) (:text |&)
                                          |h $ %{} :Leaf (:at 1691526523242) (:by |yeKFqj7rX) (:text |args)
                                  |h $ %{} :Expr (:at 1691526523242) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1691526523242) (:by |yeKFqj7rX) (:text |swap!)
                                      |b $ %{} :Leaf (:at 1691526523242) (:by |yeKFqj7rX) (:text |*singleton-call-caches)
                                      |h $ %{} :Leaf (:at 1691526523242) (:by |yeKFqj7rX) (:text |assoc)
                                      |l $ %{} :Leaf (:at 1691526523242) (:by |yeKFqj7rX) (:text |f)
                                      |o $ %{} :Expr (:at 1691526523242) (:by |yeKFqj7rX)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1691526527089) (:by |yeKFqj7rX) (:text |::)
                                          |X $ %{} :Leaf (:at 1691526593687) (:by |yeKFqj7rX) (:text |:some)
                                          |b $ %{} :Leaf (:at 1691526523242) (:by |yeKFqj7rX) (:text |args)
                                          |h $ %{} :Leaf (:at 1691526523242) (:by |yeKFqj7rX) (:text |ret)
                                  |l $ %{} :Leaf (:at 1691526523242) (:by |yeKFqj7rX) (:text |ret)
                      |l $ %{} :Expr (:at 1691526532658) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Expr (:at 1691526533660) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1691526534249) (:by |yeKFqj7rX) (:text |:none)
                          |b $ %{} :Expr (:at 1691526538175) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1691526538175) (:by |yeKFqj7rX) (:text |&let)
                              |b $ %{} :Expr (:at 1691526538175) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1691526538175) (:by |yeKFqj7rX) (:text |ret)
                                  |b $ %{} :Expr (:at 1691526538175) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1691526538175) (:by |yeKFqj7rX) (:text |f)
                                      |b $ %{} :Leaf (:at 1691526538175) (:by |yeKFqj7rX) (:text |&)
                                      |h $ %{} :Leaf (:at 1691526538175) (:by |yeKFqj7rX) (:text |args)
                              |h $ %{} :Expr (:at 1691526538175) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1691526538175) (:by |yeKFqj7rX) (:text |swap!)
                                  |b $ %{} :Leaf (:at 1691526538175) (:by |yeKFqj7rX) (:text |*singleton-call-caches)
                                  |h $ %{} :Leaf (:at 1691526538175) (:by |yeKFqj7rX) (:text |assoc)
                                  |l $ %{} :Leaf (:at 1691526538175) (:by |yeKFqj7rX) (:text |f)
                                  |o $ %{} :Expr (:at 1691526538175) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1691526538175) (:by |yeKFqj7rX) (:text |::)
                                      |b $ %{} :Leaf (:at 1691526595522) (:by |yeKFqj7rX) (:text |:some)
                                      |h $ %{} :Leaf (:at 1691526538175) (:by |yeKFqj7rX) (:text |args)
                                      |l $ %{} :Leaf (:at 1691526538175) (:by |yeKFqj7rX) (:text |ret)
                              |l $ %{} :Leaf (:at 1691526538175) (:by |yeKFqj7rX) (:text |ret)
          :examples $ []
        |memof1-call-by $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1650616133179) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1650616133179) (:by |yeKFqj7rX) (:text |defn)
              |b $ %{} :Leaf (:at 1650617137723) (:by |yeKFqj7rX) (:text |memof1-call-by)
              |h $ %{} :Expr (:at 1650616134462) (:by |yeKFqj7rX)
                :data $ {}
                  |D $ %{} :Leaf (:at 1650619461690) (:by |yeKFqj7rX) (:text |key)
                  |T $ %{} :Leaf (:at 1650616134462) (:by |yeKFqj7rX) (:text |f)
                  |b $ %{} :Leaf (:at 1650616134462) (:by |yeKFqj7rX) (:text |&)
                  |h $ %{} :Leaf (:at 1650616134462) (:by |yeKFqj7rX) (:text |args)
              |l $ %{} :Expr (:at 1650622434889) (:by |yeKFqj7rX)
                :data $ {}
                  |D $ %{} :Leaf (:at 1650622436623) (:by |yeKFqj7rX) (:text |if)
                  |L $ %{} :Expr (:at 1650622437825) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1650622438246) (:by |yeKFqj7rX) (:text |nil?)
                      |b $ %{} :Leaf (:at 1650622442464) (:by |yeKFqj7rX) (:text |key)
                  |P $ %{} :Expr (:at 1650622443643) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1650622445779) (:by |yeKFqj7rX) (:text |f)
                      |b $ %{} :Leaf (:at 1650622445779) (:by |yeKFqj7rX) (:text |&)
                      |h $ %{} :Leaf (:at 1650622445779) (:by |yeKFqj7rX) (:text |args)
                  |T $ %{} :Expr (:at 1650616134462) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1650616575339) (:by |yeKFqj7rX) (:text |&let)
                      |b $ %{} :Expr (:at 1650616134462) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1650616134462) (:by |yeKFqj7rX) (:text |caches)
                          |b $ %{} :Leaf (:at 1650616411805) (:by |yeKFqj7rX) (:text |@*keyed-call-caches)
                      |h $ %{} :Expr (:at 1650616134462) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1650616134462) (:by |yeKFqj7rX) (:text |if)
                          |b $ %{} :Expr (:at 1650616134462) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1691526681240) (:by |yeKFqj7rX) (:text |&map:contains?)
                              |b $ %{} :Leaf (:at 1650616134462) (:by |yeKFqj7rX) (:text |caches)
                              |h $ %{} :Leaf (:at 1650616134462) (:by |yeKFqj7rX) (:text |f)
                          |h $ %{} :Expr (:at 1650616353153) (:by |yeKFqj7rX)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1650616572508) (:by |yeKFqj7rX) (:text |&let)
                              |L $ %{} :Expr (:at 1650616355427) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1650616356156) (:by |yeKFqj7rX) (:text |dict)
                                  |b $ %{} :Expr (:at 1650616360427) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1691526684505) (:by |yeKFqj7rX) (:text |&map:get)
                                      |b $ %{} :Leaf (:at 1650616371529) (:by |yeKFqj7rX) (:text |caches)
                                      |h $ %{} :Leaf (:at 1650616367603) (:by |yeKFqj7rX) (:text |f)
                              |T $ %{} :Expr (:at 1650616375142) (:by |yeKFqj7rX)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1650616376420) (:by |yeKFqj7rX) (:text |if)
                                  |L $ %{} :Expr (:at 1650616376893) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1691526688257) (:by |yeKFqj7rX) (:text |&map:contains?)
                                      |b $ %{} :Leaf (:at 1650616379900) (:by |yeKFqj7rX) (:text |dict)
                                      |h $ %{} :Leaf (:at 1650616380942) (:by |yeKFqj7rX) (:text |key)
                                  |T $ %{} :Expr (:at 1650616134462) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1650616454265) (:by |yeKFqj7rX) (:text |&let)
                                      |b $ %{} :Expr (:at 1650616134462) (:by |yeKFqj7rX)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1650616134462) (:by |yeKFqj7rX) (:text |pair)
                                          |b $ %{} :Expr (:at 1650616134462) (:by |yeKFqj7rX)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1691526690095) (:by |yeKFqj7rX) (:text |&map:get)
                                              |b $ %{} :Leaf (:at 1650616786798) (:by |yeKFqj7rX) (:text |dict)
                                              |h $ %{} :Leaf (:at 1650616384076) (:by |yeKFqj7rX) (:text |key)
                                      |h $ %{} :Expr (:at 1650616134462) (:by |yeKFqj7rX)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1650616134462) (:by |yeKFqj7rX) (:text |if)
                                          |b $ %{} :Expr (:at 1650616134462) (:by |yeKFqj7rX)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1691526700288) (:by |yeKFqj7rX) (:text |&=)
                                              |b $ %{} :Leaf (:at 1650616528460) (:by |yeKFqj7rX) (:text |args)
                                              |h $ %{} :Expr (:at 1650616134462) (:by |yeKFqj7rX)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1650616134462) (:by |yeKFqj7rX) (:text |first)
                                                  |b $ %{} :Leaf (:at 1650616134462) (:by |yeKFqj7rX) (:text |pair)
                                          |h $ %{} :Expr (:at 1650617323540) (:by |yeKFqj7rX)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1650617324955) (:by |yeKFqj7rX) (:text |last)
                                              |b $ %{} :Leaf (:at 1650617326455) (:by |yeKFqj7rX) (:text |pair)
                                          |l $ %{} :Expr (:at 1650616134462) (:by |yeKFqj7rX)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1650616448955) (:by |yeKFqj7rX) (:text |&let)
                                              |b $ %{} :Expr (:at 1650616134462) (:by |yeKFqj7rX)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1650616134462) (:by |yeKFqj7rX) (:text |ret)
                                                  |b $ %{} :Expr (:at 1650616134462) (:by |yeKFqj7rX)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1650616134462) (:by |yeKFqj7rX) (:text |f)
                                                      |b $ %{} :Leaf (:at 1650616134462) (:by |yeKFqj7rX) (:text |&)
                                                      |h $ %{} :Leaf (:at 1650616134462) (:by |yeKFqj7rX) (:text |args)
                                              |h $ %{} :Expr (:at 1650616134462) (:by |yeKFqj7rX)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1650616134462) (:by |yeKFqj7rX) (:text |swap!)
                                                  |b $ %{} :Leaf (:at 1650616472598) (:by |yeKFqj7rX) (:text |*keyed-call-caches)
                                                  |h $ %{} :Leaf (:at 1650616426303) (:by |yeKFqj7rX) (:text |assoc-in)
                                                  |l $ %{} :Expr (:at 1650616426982) (:by |yeKFqj7rX)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1650616428194) (:by |yeKFqj7rX) (:text |[])
                                                      |T $ %{} :Leaf (:at 1650616134462) (:by |yeKFqj7rX) (:text |f)
                                                      |b $ %{} :Leaf (:at 1650616431092) (:by |yeKFqj7rX) (:text |key)
                                                  |o $ %{} :Expr (:at 1650616134462) (:by |yeKFqj7rX)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1650616134462) (:by |yeKFqj7rX) (:text |[])
                                                      |b $ %{} :Leaf (:at 1650616134462) (:by |yeKFqj7rX) (:text |args)
                                                      |h $ %{} :Leaf (:at 1650616134462) (:by |yeKFqj7rX) (:text |ret)
                                              |l $ %{} :Leaf (:at 1650616134462) (:by |yeKFqj7rX) (:text |ret)
                                  |b $ %{} :Expr (:at 1650616458734) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1650616458734) (:by |yeKFqj7rX) (:text |&let)
                                      |b $ %{} :Expr (:at 1650616458734) (:by |yeKFqj7rX)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1650616458734) (:by |yeKFqj7rX) (:text |ret)
                                          |b $ %{} :Expr (:at 1650616458734) (:by |yeKFqj7rX)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1650616458734) (:by |yeKFqj7rX) (:text |f)
                                              |b $ %{} :Leaf (:at 1650616458734) (:by |yeKFqj7rX) (:text |&)
                                              |h $ %{} :Leaf (:at 1650616458734) (:by |yeKFqj7rX) (:text |args)
                                      |h $ %{} :Expr (:at 1650616458734) (:by |yeKFqj7rX)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1650616458734) (:by |yeKFqj7rX) (:text |swap!)
                                          |b $ %{} :Leaf (:at 1650616474342) (:by |yeKFqj7rX) (:text |*keyed-call-caches)
                                          |h $ %{} :Leaf (:at 1650616458734) (:by |yeKFqj7rX) (:text |assoc-in)
                                          |l $ %{} :Expr (:at 1650616458734) (:by |yeKFqj7rX)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1650616458734) (:by |yeKFqj7rX) (:text |[])
                                              |b $ %{} :Leaf (:at 1650616458734) (:by |yeKFqj7rX) (:text |f)
                                              |h $ %{} :Leaf (:at 1650616458734) (:by |yeKFqj7rX) (:text |key)
                                          |o $ %{} :Expr (:at 1650616458734) (:by |yeKFqj7rX)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1650616458734) (:by |yeKFqj7rX) (:text |[])
                                              |b $ %{} :Leaf (:at 1650616458734) (:by |yeKFqj7rX) (:text |args)
                                              |h $ %{} :Leaf (:at 1650616458734) (:by |yeKFqj7rX) (:text |ret)
                                      |l $ %{} :Leaf (:at 1650616458734) (:by |yeKFqj7rX) (:text |ret)
                          |l $ %{} :Expr (:at 1650616134462) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1650616567371) (:by |yeKFqj7rX) (:text |&let)
                              |b $ %{} :Expr (:at 1650616134462) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1650616134462) (:by |yeKFqj7rX) (:text |ret)
                                  |b $ %{} :Expr (:at 1650616134462) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1650616134462) (:by |yeKFqj7rX) (:text |f)
                                      |b $ %{} :Leaf (:at 1650616134462) (:by |yeKFqj7rX) (:text |&)
                                      |h $ %{} :Leaf (:at 1650616134462) (:by |yeKFqj7rX) (:text |args)
                              |h $ %{} :Expr (:at 1650616134462) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1650616134462) (:by |yeKFqj7rX) (:text |swap!)
                                  |b $ %{} :Leaf (:at 1650616475599) (:by |yeKFqj7rX) (:text |*keyed-call-caches)
                                  |h $ %{} :Leaf (:at 1650616477646) (:by |yeKFqj7rX) (:text |assoc-in)
                                  |l $ %{} :Expr (:at 1650616479005) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1650616479688) (:by |yeKFqj7rX) (:text |[])
                                      |T $ %{} :Leaf (:at 1650616134462) (:by |yeKFqj7rX) (:text |f)
                                      |b $ %{} :Leaf (:at 1650616480906) (:by |yeKFqj7rX) (:text |key)
                                  |o $ %{} :Expr (:at 1650616134462) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1650616134462) (:by |yeKFqj7rX) (:text |[])
                                      |b $ %{} :Leaf (:at 1650616134462) (:by |yeKFqj7rX) (:text |args)
                                      |h $ %{} :Leaf (:at 1650616134462) (:by |yeKFqj7rX) (:text |ret)
                              |l $ %{} :Leaf (:at 1650616134462) (:by |yeKFqj7rX) (:text |ret)
          :examples $ []
        |reset-memof1-caches! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1650619650968) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1650619650968) (:by |yeKFqj7rX) (:text |defn)
              |b $ %{} :Leaf (:at 1650619650968) (:by |yeKFqj7rX) (:text |reset-memof1-caches!)
              |h $ %{} :Expr (:at 1650619650968) (:by |yeKFqj7rX)
                :data $ {}
              |l $ %{} :Expr (:at 1650619655693) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1650619655693) (:by |yeKFqj7rX) (:text |reset!)
                  |b $ %{} :Leaf (:at 1650619722855) (:by |yeKFqj7rX) (:text |*singleton-call-caches)
                  |h $ %{} :Expr (:at 1650619655693) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1650619655693) (:by |yeKFqj7rX) (:text |{})
              |o $ %{} :Expr (:at 1650619655693) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1650619655693) (:by |yeKFqj7rX) (:text |reset!)
                  |b $ %{} :Leaf (:at 1650619724210) (:by |yeKFqj7rX) (:text |*keyed-call-caches)
                  |h $ %{} :Expr (:at 1650619655693) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1650619655693) (:by |yeKFqj7rX) (:text |{})
              |q $ %{} :Expr (:at 1650966833062) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1650966834907) (:by |yeKFqj7rX) (:text |reset!)
                  |b $ %{} :Leaf (:at 1650966841498) (:by |yeKFqj7rX) (:text |*once-caches)
                  |h $ %{} :Expr (:at 1650966842469) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1650966842803) (:by |yeKFqj7rX) (:text |{})
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1650615541989) (:by |yeKFqj7rX)
          :data $ {}
            |T $ %{} :Leaf (:at 1650615541989) (:by |yeKFqj7rX) (:text |ns)
            |b $ %{} :Leaf (:at 1650615541989) (:by |yeKFqj7rX) (:text |memof.once)
        :examples $ []
    |memof.test $ %{} :FileEntry
      :defs $ {}
        |*call-count $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1650622762927) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1650622764519) (:by |yeKFqj7rX) (:text |defatom)
              |b $ %{} :Leaf (:at 1650622762927) (:by |yeKFqj7rX) (:text |*call-count)
              |h $ %{} :Leaf (:at 1650622765619) (:by |yeKFqj7rX) (:text |0)
          :examples $ []
        |*states $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1607086104539) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1607086106571) (:by |yeKFqj7rX) (:text |defatom)
              |j $ %{} :Leaf (:at 1607086157836) (:by |yeKFqj7rX) (:text |*states)
              |r $ %{} :Expr (:at 1607086104539) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1607086108323) (:by |yeKFqj7rX) (:text |{})
          :examples $ []
        |add3 $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1650617235826) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1650617237260) (:by |yeKFqj7rX) (:text |defn)
              |b $ %{} :Leaf (:at 1650617235826) (:by |yeKFqj7rX) (:text |add3)
              |h $ %{} :Expr (:at 1650617235826) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1650617238509) (:by |yeKFqj7rX) (:text |a)
                  |b $ %{} :Leaf (:at 1650617239001) (:by |yeKFqj7rX) (:text |b)
                  |h $ %{} :Leaf (:at 1650617239656) (:by |yeKFqj7rX) (:text |c)
              |j $ %{} :Expr (:at 1650617244031) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1650617245825) (:by |yeKFqj7rX) (:text |println)
                  |b $ %{} :Leaf (:at 1650619583786) (:by |yeKFqj7rX) (:text "|\" ::: calling add3")
              |l $ %{} :Expr (:at 1650617240840) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1650617241746) (:by |yeKFqj7rX) (:text |+)
                  |b $ %{} :Leaf (:at 1650617255619) (:by |yeKFqj7rX) (:text |a)
                  |h $ %{} :Leaf (:at 1650617256132) (:by |yeKFqj7rX) (:text |b)
                  |l $ %{} :Leaf (:at 1650617256544) (:by |yeKFqj7rX) (:text |c)
          :examples $ []
        |add3-key $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1650619386332) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1650619388738) (:by |yeKFqj7rX) (:text |defn)
              |b $ %{} :Leaf (:at 1650619386332) (:by |yeKFqj7rX) (:text |add3-key)
              |h $ %{} :Expr (:at 1650619386332) (:by |yeKFqj7rX)
                :data $ {}
                  |b $ %{} :Leaf (:at 1650619391278) (:by |yeKFqj7rX) (:text |a)
                  |h $ %{} :Leaf (:at 1650619391513) (:by |yeKFqj7rX) (:text |b)
                  |l $ %{} :Leaf (:at 1650619392196) (:by |yeKFqj7rX) (:text |c)
              |j $ %{} :Expr (:at 1650622804347) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1650622804110) (:by |yeKFqj7rX) (:text |swap!)
                  |b $ %{} :Leaf (:at 1650622829391) (:by |yeKFqj7rX) (:text |*call-count)
                  |h $ %{} :Leaf (:at 1650622817209) (:by |yeKFqj7rX) (:text |inc)
              |l $ %{} :Expr (:at 1650619393293) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1650619395164) (:by |yeKFqj7rX) (:text |+)
                  |b $ %{} :Leaf (:at 1650619395564) (:by |yeKFqj7rX) (:text |a)
                  |h $ %{} :Leaf (:at 1650619395855) (:by |yeKFqj7rX) (:text |b)
                  |l $ %{} :Leaf (:at 1650619396424) (:by |yeKFqj7rX) (:text |c)
          :examples $ []
        |run-tests $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1607085848141) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1607085848141) (:by |yeKFqj7rX) (:text |defn)
              |j $ %{} :Leaf (:at 1607085848141) (:by |yeKFqj7rX) (:text |run-tests)
              |r $ %{} :Expr (:at 1607085848141) (:by |yeKFqj7rX)
                :data $ {}
              |t $ %{} :Expr (:at 1610108335241) (:by |yeKFqj7rX)
                :data $ {}
                  |D $ %{} :Leaf (:at 1610108338004) (:by |yeKFqj7rX) (:text |reset!)
                  |T $ %{} :Leaf (:at 1610108335610) (:by |yeKFqj7rX) (:text |*quit-on-failure?)
                  |j $ %{} :Leaf (:at 1610108339385) (:by |yeKFqj7rX) (:text |true)
              |z $ %{} :Expr (:at 1650617054731) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1650617216228) (:by |yeKFqj7rX) (:text |test-memof1-call)
              |zD $ %{} :Expr (:at 1650617054731) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1650619369736) (:by |yeKFqj7rX) (:text |test-memof1-call-by)
              |zP $ %{} :Expr (:at 1650966456050) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1650966459401) (:by |yeKFqj7rX) (:text |test-memof1-as)
              |zY $ %{} :Expr (:at 1696878952309) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1696878954538) (:by |yeKFqj7rX) (:text |test-anchor)
          :examples $ []
        |test-anchor $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1696878982846) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1696878982846) (:by |yeKFqj7rX) (:text |defn)
              |b $ %{} :Leaf (:at 1696878982846) (:by |yeKFqj7rX) (:text |test-anchor)
              |h $ %{} :Expr (:at 1696878982846) (:by |yeKFqj7rX)
                :data $ {}
              |l $ %{} :Expr (:at 1696878991088) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1696878991088) (:by |yeKFqj7rX) (:text |testing)
                  |b $ %{} :Leaf (:at 1696878996552) (:by |yeKFqj7rX) (:text "|\"anchor states")
                  |g $ %{} :Expr (:at 1696879021555) (:by |yeKFqj7rX)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1696879022631) (:by |yeKFqj7rX) (:text |let)
                      |T $ %{} :Expr (:at 1696879023040) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Expr (:at 1696879023523) (:by |yeKFqj7rX)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1696879025333) (:by |yeKFqj7rX) (:text |*a)
                              |T $ %{} :Expr (:at 1696879003420) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696879008332) (:by |yeKFqj7rX) (:text |anchor-state)
                                  |b $ %{} :Expr (:at 1696879011007) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696879014942) (:by |yeKFqj7rX) (:text |identity-path)
                                      |b $ %{} :Leaf (:at 1696906326632) (:by |yeKFqj7rX) (:text |s0)
                      |b $ %{} :Expr (:at 1696879046467) (:by |yeKFqj7rX)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1696879046983) (:by |yeKFqj7rX) (:text |is)
                          |T $ %{} :Expr (:at 1696879027379) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696879046022) (:by |yeKFqj7rX) (:text |=)
                              |b $ %{} :Leaf (:at 1696879033904) (:by |yeKFqj7rX) (:text |@*a)
                              |h $ %{} :Leaf (:at 1696879037305) (:by |yeKFqj7rX) (:text |nil)
                      |h $ %{} :Expr (:at 1696879038339) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696879051756) (:by |yeKFqj7rX) (:text |.set!)
                          |b $ %{} :Leaf (:at 1696879053351) (:by |yeKFqj7rX) (:text |*a)
                          |h $ %{} :Leaf (:at 1696879053752) (:by |yeKFqj7rX) (:text |1)
                      |l $ %{} :Expr (:at 1696879055159) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696879085435) (:by |yeKFqj7rX) (:text |is)
                          |b $ %{} :Expr (:at 1696879087323) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696879087323) (:by |yeKFqj7rX) (:text |=)
                              |b $ %{} :Leaf (:at 1696879087323) (:by |yeKFqj7rX) (:text |@*a)
                              |h $ %{} :Leaf (:at 1696879088396) (:by |yeKFqj7rX) (:text |1)
                  |k $ %{} :Expr (:at 1696879093292) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696879093292) (:by |yeKFqj7rX) (:text |let)
                      |b $ %{} :Expr (:at 1696879093292) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Expr (:at 1696879093292) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696879093292) (:by |yeKFqj7rX) (:text |*a)
                              |b $ %{} :Expr (:at 1696879093292) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696879093292) (:by |yeKFqj7rX) (:text |anchor-state)
                                  |b $ %{} :Expr (:at 1696879093292) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696879093292) (:by |yeKFqj7rX) (:text |identity-path)
                                      |b $ %{} :Leaf (:at 1696906328569) (:by |yeKFqj7rX) (:text |s0)
                      |o $ %{} :Expr (:at 1696879093292) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696879093292) (:by |yeKFqj7rX) (:text |is)
                          |b $ %{} :Expr (:at 1696879093292) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696879093292) (:by |yeKFqj7rX) (:text |=)
                              |b $ %{} :Leaf (:at 1696879093292) (:by |yeKFqj7rX) (:text |@*a)
                              |h $ %{} :Leaf (:at 1696879093292) (:by |yeKFqj7rX) (:text |1)
                  |l $ %{} :Expr (:at 1696879093292) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696879093292) (:by |yeKFqj7rX) (:text |let)
                      |b $ %{} :Expr (:at 1696879093292) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Expr (:at 1696879093292) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696879093292) (:by |yeKFqj7rX) (:text |*a)
                              |b $ %{} :Expr (:at 1696879093292) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696879093292) (:by |yeKFqj7rX) (:text |anchor-state)
                                  |b $ %{} :Expr (:at 1696879093292) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696879093292) (:by |yeKFqj7rX) (:text |identity-path)
                                      |b $ %{} :Leaf (:at 1696906346710) (:by |yeKFqj7rX) (:text |'s0)
                      |o $ %{} :Expr (:at 1696879093292) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696879093292) (:by |yeKFqj7rX) (:text |is)
                          |b $ %{} :Expr (:at 1696879093292) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696879093292) (:by |yeKFqj7rX) (:text |=)
                              |b $ %{} :Leaf (:at 1696879093292) (:by |yeKFqj7rX) (:text |@*a)
                              |h $ %{} :Leaf (:at 1696879093292) (:by |yeKFqj7rX) (:text |1)
                  |n $ %{} :Expr (:at 1696879093292) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696879093292) (:by |yeKFqj7rX) (:text |let)
                      |b $ %{} :Expr (:at 1696879093292) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Expr (:at 1696879093292) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696879093292) (:by |yeKFqj7rX) (:text |*a)
                              |b $ %{} :Expr (:at 1696879093292) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696879093292) (:by |yeKFqj7rX) (:text |anchor-state)
                                  |b $ %{} :Expr (:at 1696879093292) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696879093292) (:by |yeKFqj7rX) (:text |identity-path)
                                      |b $ %{} :Leaf (:at 1696906336612) (:by |yeKFqj7rX) (:text |s1)
                      |o $ %{} :Expr (:at 1696879093292) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696879093292) (:by |yeKFqj7rX) (:text |is)
                          |b $ %{} :Expr (:at 1696879093292) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696879093292) (:by |yeKFqj7rX) (:text |=)
                              |b $ %{} :Leaf (:at 1696879093292) (:by |yeKFqj7rX) (:text |@*a)
                              |h $ %{} :Leaf (:at 1696906338314) (:by |yeKFqj7rX) (:text |nil)
          :examples $ []
        |test-memof1-as $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1650966460076) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1650966495358) (:by |yeKFqj7rX) (:text |deftest)
              |b $ %{} :Leaf (:at 1650966460076) (:by |yeKFqj7rX) (:text |test-memof1-as)
              |l $ %{} :Expr (:at 1650966503251) (:by |yeKFqj7rX)
                :data $ {}
                  |D $ %{} :Leaf (:at 1650966504550) (:by |yeKFqj7rX) (:text |testing)
                  |L $ %{} :Leaf (:at 1650966523643) (:by |yeKFqj7rX) (:text "|\"memof1-as test")
                  |P $ %{} :Expr (:at 1650966525231) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1650966525231) (:by |yeKFqj7rX) (:text |reset!)
                      |b $ %{} :Leaf (:at 1650966525231) (:by |yeKFqj7rX) (:text |*call-count)
                      |h $ %{} :Leaf (:at 1650966525231) (:by |yeKFqj7rX) (:text |0)
                  |T $ %{} :Expr (:at 1650966534592) (:by |yeKFqj7rX)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1650966535166) (:by |yeKFqj7rX) (:text |is)
                      |T $ %{} :Expr (:at 1650966473689) (:by |yeKFqj7rX)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1650966533875) (:by |yeKFqj7rX) (:text |=)
                          |L $ %{} :Leaf (:at 1650966475417) (:by |yeKFqj7rX) (:text |0)
                          |T $ %{} :Expr (:at 1650966467782) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1650966572708) (:by |yeKFqj7rX) (:text |once/memof1-as)
                              |b $ %{} :Leaf (:at 1650966469354) (:by |yeKFqj7rX) (:text |0)
                              |h $ %{} :Expr (:at 1650966481714) (:by |yeKFqj7rX)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1650966482454) (:by |yeKFqj7rX) (:text |do)
                                  |L $ %{} :Expr (:at 1650966558488) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1650966558962) (:by |yeKFqj7rX) (:text |swap!)
                                      |b $ %{} :Leaf (:at 1650966561293) (:by |yeKFqj7rX) (:text |*call-count)
                                      |h $ %{} :Leaf (:at 1650966561940) (:by |yeKFqj7rX) (:text |inc)
                                  |T $ %{} :Leaf (:at 1650966471089) (:by |yeKFqj7rX) (:text |0)
                  |X $ %{} :Expr (:at 1650966540766) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1650966542910) (:by |yeKFqj7rX) (:text |is)
                      |b $ %{} :Expr (:at 1650966543310) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1650966544096) (:by |yeKFqj7rX) (:text |=)
                          |b $ %{} :Leaf (:at 1650966544745) (:by |yeKFqj7rX) (:text |1)
                          |h $ %{} :Leaf (:at 1650966550953) (:by |yeKFqj7rX) (:text |@*call-count)
                  |b $ %{} :Expr (:at 1650966534592) (:by |yeKFqj7rX)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1650966535166) (:by |yeKFqj7rX) (:text |is)
                      |T $ %{} :Expr (:at 1650966473689) (:by |yeKFqj7rX)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1650966533875) (:by |yeKFqj7rX) (:text |=)
                          |L $ %{} :Leaf (:at 1650966475417) (:by |yeKFqj7rX) (:text |0)
                          |T $ %{} :Expr (:at 1650966467782) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1650966576930) (:by |yeKFqj7rX) (:text |once/memof1-as)
                              |b $ %{} :Leaf (:at 1650966469354) (:by |yeKFqj7rX) (:text |0)
                              |h $ %{} :Expr (:at 1650966565776) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1650966565776) (:by |yeKFqj7rX) (:text |do)
                                  |b $ %{} :Expr (:at 1650966565776) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1650966565776) (:by |yeKFqj7rX) (:text |swap!)
                                      |b $ %{} :Leaf (:at 1650966565776) (:by |yeKFqj7rX) (:text |*call-count)
                                      |h $ %{} :Leaf (:at 1650966565776) (:by |yeKFqj7rX) (:text |inc)
                                  |h $ %{} :Leaf (:at 1650966565776) (:by |yeKFqj7rX) (:text |0)
                  |h $ %{} :Expr (:at 1650966552900) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1650966552900) (:by |yeKFqj7rX) (:text |is)
                      |b $ %{} :Expr (:at 1650966552900) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1650966552900) (:by |yeKFqj7rX) (:text |=)
                          |b $ %{} :Leaf (:at 1650966552900) (:by |yeKFqj7rX) (:text |1)
                          |h $ %{} :Leaf (:at 1650966552900) (:by |yeKFqj7rX) (:text |@*call-count)
          :examples $ []
        |test-memof1-call $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1650617061060) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1650617062450) (:by |yeKFqj7rX) (:text |deftest)
              |b $ %{} :Leaf (:at 1650617211744) (:by |yeKFqj7rX) (:text |test-memof1-call)
              |h $ %{} :Expr (:at 1650617063546) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1650617063546) (:by |yeKFqj7rX) (:text |testing)
                  |b $ %{} :Leaf (:at 1650617220973) (:by |yeKFqj7rX) (:text "|\"usage of memof1-call")
                  |h $ %{} :Expr (:at 1650617063546) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1650617063546) (:by |yeKFqj7rX) (:text |is)
                      |b $ %{} :Expr (:at 1650617063546) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1650617063546) (:by |yeKFqj7rX) (:text |=)
                          |b $ %{} :Expr (:at 1650617063546) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1650617301279) (:by |yeKFqj7rX) (:text |once/memof1-call)
                              |b $ %{} :Leaf (:at 1650617233726) (:by |yeKFqj7rX) (:text |add3)
                              |h $ %{} :Leaf (:at 1650617063546) (:by |yeKFqj7rX) (:text |1)
                              |l $ %{} :Leaf (:at 1650617063546) (:by |yeKFqj7rX) (:text |2)
                              |o $ %{} :Leaf (:at 1650617063546) (:by |yeKFqj7rX) (:text |3)
                          |h $ %{} :Leaf (:at 1650617063546) (:by |yeKFqj7rX) (:text |6)
                  |l $ %{} :Expr (:at 1650617063546) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1650617063546) (:by |yeKFqj7rX) (:text |is)
                      |b $ %{} :Expr (:at 1650617063546) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1650617063546) (:by |yeKFqj7rX) (:text |=)
                          |b $ %{} :Expr (:at 1650617063546) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1650617298411) (:by |yeKFqj7rX) (:text |once/memof1-call)
                              |b $ %{} :Leaf (:at 1650617233726) (:by |yeKFqj7rX) (:text |add3)
                              |h $ %{} :Leaf (:at 1650617063546) (:by |yeKFqj7rX) (:text |1)
                              |l $ %{} :Leaf (:at 1650617063546) (:by |yeKFqj7rX) (:text |2)
                              |o $ %{} :Leaf (:at 1650617063546) (:by |yeKFqj7rX) (:text |3)
                          |h $ %{} :Leaf (:at 1650617063546) (:by |yeKFqj7rX) (:text |6)
                  |q $ %{} :Expr (:at 1650617063546) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1650619687574) (:by |yeKFqj7rX) (:text |once/reset-memof1-caches!)
          :examples $ []
        |test-memof1-call-by $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1650619370844) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1650619377318) (:by |yeKFqj7rX) (:text |deftest)
              |b $ %{} :Leaf (:at 1650619370844) (:by |yeKFqj7rX) (:text |test-memof1-call-by)
              |h $ %{} :Expr (:at 1650619372140) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1650619372140) (:by |yeKFqj7rX) (:text |testing)
                  |b $ %{} :Leaf (:at 1650619372140) (:by |yeKFqj7rX) (:text "|\"usage of memof1-call")
                  |e $ %{} :Expr (:at 1650622755248) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1650622758171) (:by |yeKFqj7rX) (:text |reset!)
                      |b $ %{} :Leaf (:at 1650622762475) (:by |yeKFqj7rX) (:text |*call-count)
                      |h $ %{} :Leaf (:at 1650622767519) (:by |yeKFqj7rX) (:text |0)
                  |h $ %{} :Expr (:at 1650619372140) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1650619372140) (:by |yeKFqj7rX) (:text |is)
                      |b $ %{} :Expr (:at 1650619372140) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1650619372140) (:by |yeKFqj7rX) (:text |=)
                          |b $ %{} :Expr (:at 1650619372140) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1650619451319) (:by |yeKFqj7rX) (:text |once/memof1-call-by)
                              |X $ %{} :Leaf (:at 1650619472638) (:by |yeKFqj7rX) (:text "|\"a")
                              |b $ %{} :Leaf (:at 1650619385588) (:by |yeKFqj7rX) (:text |add3-key)
                              |h $ %{} :Leaf (:at 1650619372140) (:by |yeKFqj7rX) (:text |1)
                              |l $ %{} :Leaf (:at 1650619372140) (:by |yeKFqj7rX) (:text |2)
                              |o $ %{} :Leaf (:at 1650619372140) (:by |yeKFqj7rX) (:text |3)
                          |h $ %{} :Leaf (:at 1650619372140) (:by |yeKFqj7rX) (:text |6)
                  |j $ %{} :Expr (:at 1650622672953) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1650622672953) (:by |yeKFqj7rX) (:text |is)
                      |b $ %{} :Expr (:at 1650622672953) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1650622672953) (:by |yeKFqj7rX) (:text |=)
                          |b $ %{} :Expr (:at 1650622672953) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1650622672953) (:by |yeKFqj7rX) (:text |once/memof1-call-by)
                              |b $ %{} :Leaf (:at 1650622672953) (:by |yeKFqj7rX) (:text |nil)
                              |h $ %{} :Leaf (:at 1650622672953) (:by |yeKFqj7rX) (:text |add3-key)
                              |l $ %{} :Leaf (:at 1650622672953) (:by |yeKFqj7rX) (:text |1)
                              |o $ %{} :Leaf (:at 1650622672953) (:by |yeKFqj7rX) (:text |2)
                              |q $ %{} :Leaf (:at 1650622672953) (:by |yeKFqj7rX) (:text |3)
                          |h $ %{} :Leaf (:at 1650622672953) (:by |yeKFqj7rX) (:text |6)
                  |l $ %{} :Expr (:at 1650619372140) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1650619372140) (:by |yeKFqj7rX) (:text |is)
                      |b $ %{} :Expr (:at 1650619372140) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1650619372140) (:by |yeKFqj7rX) (:text |=)
                          |b $ %{} :Expr (:at 1650619372140) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1650619447067) (:by |yeKFqj7rX) (:text |once/memof1-call-by)
                              |X $ %{} :Leaf (:at 1650619478218) (:by |yeKFqj7rX) (:text "|\"b")
                              |b $ %{} :Leaf (:at 1650619441833) (:by |yeKFqj7rX) (:text |add3-key)
                              |h $ %{} :Leaf (:at 1650619372140) (:by |yeKFqj7rX) (:text |1)
                              |l $ %{} :Leaf (:at 1650619372140) (:by |yeKFqj7rX) (:text |2)
                              |o $ %{} :Leaf (:at 1650619372140) (:by |yeKFqj7rX) (:text |3)
                          |h $ %{} :Leaf (:at 1650619372140) (:by |yeKFqj7rX) (:text |6)
                  |m $ %{} :Expr (:at 1650619372140) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1650619372140) (:by |yeKFqj7rX) (:text |is)
                      |b $ %{} :Expr (:at 1650619372140) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1650619372140) (:by |yeKFqj7rX) (:text |=)
                          |b $ %{} :Expr (:at 1650619372140) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1650619447067) (:by |yeKFqj7rX) (:text |once/memof1-call-by)
                              |X $ %{} :Leaf (:at 1650619478218) (:by |yeKFqj7rX) (:text "|\"b")
                              |b $ %{} :Leaf (:at 1650619441833) (:by |yeKFqj7rX) (:text |add3-key)
                              |h $ %{} :Leaf (:at 1650619372140) (:by |yeKFqj7rX) (:text |1)
                              |l $ %{} :Leaf (:at 1650619372140) (:by |yeKFqj7rX) (:text |2)
                              |o $ %{} :Leaf (:at 1650619372140) (:by |yeKFqj7rX) (:text |3)
                          |h $ %{} :Leaf (:at 1650619372140) (:by |yeKFqj7rX) (:text |6)
                  |mD $ %{} :Expr (:at 1650622847453) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1650622847453) (:by |yeKFqj7rX) (:text |is)
                      |b $ %{} :Expr (:at 1650622847453) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1650622847453) (:by |yeKFqj7rX) (:text |=)
                          |b $ %{} :Leaf (:at 1650622850905) (:by |yeKFqj7rX) (:text |3)
                          |h $ %{} :Leaf (:at 1650622847453) (:by |yeKFqj7rX) (:text |@*call-count)
                  |mT $ %{} :Expr (:at 1650622679153) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1650622683144) (:by |yeKFqj7rX) (:text |swap!)
                      |b $ %{} :Leaf (:at 1650622701124) (:by |yeKFqj7rX) (:text |once/*keyed-call-caches)
                      |h $ %{} :Leaf (:at 1650622716257) (:by |yeKFqj7rX) (:text |dissoc)
                      |l $ %{} :Leaf (:at 1650622718583) (:by |yeKFqj7rX) (:text |add3-key)
                  |n $ %{} :Expr (:at 1650619372140) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1650619372140) (:by |yeKFqj7rX) (:text |is)
                      |b $ %{} :Expr (:at 1650619372140) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1650619372140) (:by |yeKFqj7rX) (:text |=)
                          |b $ %{} :Expr (:at 1650619372140) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1650619447067) (:by |yeKFqj7rX) (:text |once/memof1-call-by)
                              |X $ %{} :Leaf (:at 1650619478218) (:by |yeKFqj7rX) (:text "|\"b")
                              |b $ %{} :Leaf (:at 1650619441833) (:by |yeKFqj7rX) (:text |add3-key)
                              |h $ %{} :Leaf (:at 1650619372140) (:by |yeKFqj7rX) (:text |1)
                              |l $ %{} :Leaf (:at 1650619372140) (:by |yeKFqj7rX) (:text |2)
                              |o $ %{} :Leaf (:at 1650619372140) (:by |yeKFqj7rX) (:text |3)
                          |h $ %{} :Leaf (:at 1650619372140) (:by |yeKFqj7rX) (:text |6)
                  |o $ %{} :Expr (:at 1650622769958) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1650622775673) (:by |yeKFqj7rX) (:text |is)
                      |b $ %{} :Expr (:at 1650622776022) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1650622776158) (:by |yeKFqj7rX) (:text |=)
                          |b $ %{} :Leaf (:at 1650622778479) (:by |yeKFqj7rX) (:text |4)
                          |h $ %{} :Leaf (:at 1650622783926) (:by |yeKFqj7rX) (:text |@*call-count)
                  |q $ %{} :Expr (:at 1650619695308) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1650619695621) (:by |yeKFqj7rX) (:text |once/reset-memof1-caches!)
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1594475851792) (:by |yeKFqj7rX)
          :data $ {}
            |T $ %{} :Leaf (:at 1594475851792) (:by |yeKFqj7rX) (:text |ns)
            |j $ %{} :Leaf (:at 1594475851792) (:by |yeKFqj7rX) (:text |memof.test)
            |r $ %{} :Expr (:at 1594476805954) (:by |yeKFqj7rX)
              :data $ {}
                |T $ %{} :Leaf (:at 1594476806822) (:by |yeKFqj7rX) (:text |:require)
                |j $ %{} :Expr (:at 1594476807045) (:by |yeKFqj7rX)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1607079619733) (:by |yeKFqj7rX) (:text |calcit-test.core)
                    |r $ %{} :Leaf (:at 1594476814509) (:by |yeKFqj7rX) (:text |:refer)
                    |v $ %{} :Expr (:at 1594476814727) (:by |yeKFqj7rX)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1594476819019) (:by |yeKFqj7rX) (:text |deftest)
                        |r $ %{} :Leaf (:at 1594476820327) (:by |yeKFqj7rX) (:text |testing)
                        |v $ %{} :Leaf (:at 1594476820696) (:by |yeKFqj7rX) (:text |is)
                        |x $ %{} :Leaf (:at 1610084024944) (:by |yeKFqj7rX) (:text |*quit-on-failure?)
                |r $ %{} :Expr (:at 1594476875256) (:by |yeKFqj7rX)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1594476884203) (:by |yeKFqj7rX) (:text |memof.core)
                    |r $ %{} :Leaf (:at 1594476885670) (:by |yeKFqj7rX) (:text |:as)
                    |v $ %{} :Leaf (:at 1594476886437) (:by |yeKFqj7rX) (:text |memof)
                |t $ %{} :Expr (:at 1610083913938) (:by |yeKFqj7rX)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1610083946925) (:by |yeKFqj7rX) (:text |lilac.core)
                    |r $ %{} :Leaf (:at 1610083916856) (:by |yeKFqj7rX) (:text |:refer)
                    |v $ %{} :Expr (:at 1610083917005) (:by |yeKFqj7rX)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1610083920204) (:by |yeKFqj7rX) (:text |*in-dev?)
                        |r $ %{} :Leaf (:at 1610083923809) (:by |yeKFqj7rX) (:text |validate-lilac)
                |w $ %{} :Expr (:at 1650617077365) (:by |yeKFqj7rX)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1650617079091) (:by |yeKFqj7rX) (:text |memof.once)
                    |b $ %{} :Leaf (:at 1650617082186) (:by |yeKFqj7rX) (:text |:as)
                    |h $ %{} :Leaf (:at 1650617083437) (:by |yeKFqj7rX) (:text |once)
                |x $ %{} :Expr (:at 1696878958896) (:by |yeKFqj7rX)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1696878962792) (:by |yeKFqj7rX) (:text |memof.anchor)
                    |b $ %{} :Leaf (:at 1696878968871) (:by |yeKFqj7rX) (:text |:refer)
                    |h $ %{} :Expr (:at 1696878969178) (:by |yeKFqj7rX)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1696878971706) (:by |yeKFqj7rX) (:text |identity-path)
                        |b $ %{} :Leaf (:at 1696878978407) (:by |yeKFqj7rX) (:text |anchor-state)
        :examples $ []
  :users $ {}
    |yeKFqj7rX $ {} (:avatar nil) (:id |yeKFqj7rX) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
