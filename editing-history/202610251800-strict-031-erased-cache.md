# Keep the cache Map contract when clearing entries

为 Calcit 0.31.0 默认严格证明（calcit#2121）清理生态诊断的第一步。

- `clear-memof1-function!` 用 `&map:dissoc` 代替开放 `dissoc`，`swap!` 保留缓存的 `Map` 合同，消除 3 条 `W_RESET_ARG_TYPE_MISMATCH`。
- `memof1-call-unary` 暂时保留 `:js-ffi`：替代它的 `:erased-cache` feature 只在未发布的 calcit main 上存在，0.30.1 会报 `E_UNSCOPED_UNSAFE_COERCE`。等包含该 feature 的版本发布并升级依赖后再切换。

English summary: keep the cache Map contract when clearing entries. Switching the unary restore to `:erased-cache` waits for a Calcit release that ships that feature.
