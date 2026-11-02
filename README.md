## Memof for Calcit

A memoization and scoped-state library for Calcit applications. Its APIs cover
single-slot and keyed memoization, frame-managed cache lifecycles, and
identity-path based state.

### 使用者影响：Calcit 0.34.0

开发与 CI 配对正式 Calcit CLI / `@calcit/procs` **0.34.0**；消费者需同步工具链并重新生成 JS。
缓存命中、结果身份、Anchor Option 和泛型合同保持。候选为 0.0.44，完成 CI、评审与消费者复核后才发布 Git tag；发布状态以实际 tag 为准。

官方 revision 守卫事务只规范化 StateAnchorShape 与 MemoEntry 的类型声明；其余 25 个原定义、全部附加测试和元数据保持。
共享缓存保存任意调用方的键与结果，Anchor 同样承载异构状态；这些真实开放边界不适合机械换成有限 union。
唯一 unsafe 缓存返回信任边界和原逐定义质量预算保留，不以强转或不完整 union 宣称类型闭合。

沿用原完整 strict、全部定义、逐定义预算、动态方法零门禁、示例、native 入口、
官方同版 native/JS 共享测试、JS 入口、keyed-cache 与文档检查。
本地已通过全部 29 个定义、原附加测试 native/JS 各 9 项（无排除）、7 项 JS keyed-cache、5 个定义示例与8个文档代码块。
新解析的 npm 版本须已发布至少60分钟，无单包豁免。不新增测试框架或验证脚本；本模块没有前端部署，不发布 npm。

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

### 0.0.40：用户影响

本次仅将 CLI/procs 成对升级到正式 `0.30.1`，原 Snapshot、缓存/Anchor 合同和质量基线
不变。严格依赖消费者需同步工具链；发布状态以 GitHub Releases 为准。
CI 增加完整 strict workflow，保留原附着测试、JS 缓存测试、文档检查和逐定义质量门禁，
不增加检查脚本或放宽预算。剩余 Dynamic / unary unsafe 边界仍如实保留。

### 已发布 0.0.39：Anchor 迁移影响

Anchor `.deref` 改为 `Option<Dynamic>`，调用方必须处理 `:none` / `:some`；
明确存入 `nil` 会得到 `Option :some nil`，不再与缺失混淆。`.set!` 仍返回更新后的
共享 Map，不改成 Unit。升级后需要完整刷新或重启，不可跨热重载保留旧 Anchor 实例。
详见 [Anchor 文档](docs/anchor.md)。此合同已随正式 0.0.39 发布，不是本次新增破坏性变更。

0.0.39 的最低 CLI/procs 为正式 `0.30.0`，曾验证配对的 `0.30.1-alpha.4`。
缓存读取改用公开 `get` 的 Option 合同，避免 0.30.1 原语返回变化造成双层 Option，
包括 `memof1-as` 生成的代码；缓存命中、函数/结果 identity、惰性求值、frame 和 reset 语义不变。

缓存保存真实的 `Fn`、`List<Dynamic>` 和结果，不伪装成 `JsObject`；现有
`unsafe-coerce` 仍只有 `memof1-call-unary` 的一处缓存返回信任边界。
Anchor 使用 `StateAnchorShape<K,V>`，实际保存 `path: K` 和 `Ref<Map<K,V>>`，
trait/impl 的读写共享同一 K/V。公共 helper 连接的是原有异构全局存储，因此返回
`StateAnchorShape<Dynamic,Dynamic>`，不通过自由泛型假装其值已被收窄。

本地已通过配对 0.30.0 / 0.30.1-alpha.4 的全部定义检查、完整 strict workflow、
5 个附着测试与 JS 编译；0.30.0 原有 7 个 JS 缓存测试、8 个文档代码块通过。
Hestory 在 alpha.4 下临时接入此候选，完整 strict 和原有 10 个运行测试通过；
该证据不代表未发布依赖已可用于正式安装。经逐项审阅并获得授权，质量基线只迁移
`anchor-state` 的真实异构边界：schemaDynamic/unresolved 各 1→3，
全局各 10→12 / 7→9；unsafe 上限仍为 1，其他预算不变。

CI 保留现有严格检查和测试，不新增 proof 规则、迁移脚本或验证框架。
跟踪：[Anchor 合同](https://github.com/calcit-lang/memof/issues/40)、
[缓存迁移](https://github.com/calcit-lang/memof/issues/48)、
[核心 trait 模型讨论](https://github.com/calcit-lang/calcit/issues/2128)。
本模块没有前端部署，不添加 COS/CDN 配置。

### License

MIT
