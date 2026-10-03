## Memof for Calcit

A memoization and scoped-state library for Calcit applications. Its APIs cover
single-slot and keyed memoization, frame-managed cache lifecycles, and
identity-path based state.

### Docs

- [memof1-call / memof1-as](docs/memof1.md) — single-slot, keyed, and frame-managed memoization
- [anchor-state](docs/anchor.md) — hook-like scoped state and `identity-path`

Doc Cirru blocks are checked with `yarn check-docs` (`calcit.cirru` entry; `ns` imports shown as `;` comments in snippets).

### Develop

Install [Calcit](https://calcit-lang.org/) to run the demo:

```bash
calcit calcit.cirru
```

### Workflow

https://github.com/calcit-lang/calcit-workflow

### 中文说明

Memof 为 Calcit 应用提供记忆化与作用域状态能力，包括单槽位/按键缓存、
帧生命周期管理，以及基于 identity path 的状态定位。项目依赖固定到已发布
tag，并保持 Calcit runtime 与 JS procs 版本一致。

### 正式 Calcit 0.28 迁移进度

CLI/procs 已对齐正式 `0.28.0`，保留模块版本 `0.0.36`。修正
`StateAnchor`/`StateAnchorShape` 的 StructDef 声明，并让声明返回 Unit 的
入口和缓存生命周期函数显式返回 `&unit`；缓存操作和顺序保持不变。

已通过默认严格检查、全部三个业务 namespace 的 26 个公开定义、4 个附着测试、5 个定义示例、
现有 native/JS 入口、6 个 JS 缓存行为测试及 7 个文档 Cirru 示例。
原质量基线未变，仍有既有 Dynamic 和 unsafe 缓存边界，不声称零债务。
静态动态方法门禁为零；Anchor 示例和测试仍有原运行时 `.deref`/`.set!` 查找提示，
两者覆盖范围不同，不将静态零值解释为运行时全部静态化。

按维护者的收敛方向，CI 不再依赖迁移期 `fix --workflow strict --verify`
preset：它报告 core 的多容器泛型/spread/返回证明，以及 Anchor 旧动态实现边界。
这些诊断仍保留，不声称证明已完成或旧规则全生态清零。替代验收保留严格入口、
全部业务 namespace 公开定义、原质量基线、动态方法零门禁及原 native/JS/缓存/文档测试；
不放宽类型、质量预算，不新增编译器 proof、硬编码 fix 或验证框架。
跟踪：[core contains? 证明问题](https://github.com/calcit-lang/calcit/issues/1717)、
[Anchor 方法合同](https://github.com/calcit-lang/memof/issues/40)。
本模块没有前端资源部署，不额外添加 COS/CDN 配置。

### License

MIT
