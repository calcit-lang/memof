# Prepare memof for the 0.31 strict default

为 Calcit 0.31.0 默认严格证明（calcit#2121）清理剩余诊断。

- `memof1-call-unary` 只从类型擦除的缓存中恢复调用结果，不涉及宿主能力，词法 feature 从 `:js-ffi` 改为 `:erased-cache`，`unsafe-coerce` 成为声明的恢复点。
- `clear-memof1-function!` 用 `&map:dissoc` 代替开放 `dissoc`，`reset!`/`swap!` 保留缓存的 `Map` 合同。

English summary: restore the unary memo result through an `:erased-cache` adapter instead of `:js-ffi`, and keep the cache Map contract when clearing entries, so `fix --workflow strict --verify` reports no type diagnostics on Calcit 0.31.
