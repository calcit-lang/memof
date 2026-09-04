# Public anchor example method consistency

## 中文

- 将 `anchor-state` 的 attached example 中内部 `&trait-call ... :set!` 调用改为公开 `.set!` trait 方法。
- 示例现在统一通过公开 `.set!` 与 `.deref` 方法展示 `StateAnchor`，不改变实现或测试语义。

## English

- Replace the internal `&trait-call ... :set!` invocation in the attached `anchor-state` example with the public `.set!` trait method.
- The example now demonstrates `StateAnchor` consistently through the public `.set!` and `.deref` methods, without changing implementation or test semantics.
