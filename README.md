## Memof for Calcit

A memoization and scoped-state library for Calcit applications. Its APIs cover
single-slot and keyed memoization, frame-managed cache lifecycles, and
identity-path based state.

### 使用者影响：Calcit 0.32.1

开发与 CI 配对正式 Calcit CLI / `@calcit/procs` **0.32.1**，同步官方同版 native/JS 定义测试 runner；消费者需重新生成 JS，旧工具链继续使用原配对 tag。本轮不修改 Snapshot 字节、公开签名、缓存命中/结果身份、Anchor Option、泛型合同及原质量预算；既有唯一 unsafe 缓存返回边界保留，不宣称全项目类型闭合。

候选声明为新的 patch 0.0.43，不覆盖已发布且配对 0.32.0 的 0.0.42。完成 CI、评审与真实消费者复核后才发布新 Git tag，不发布 npm；发布状态以实际 Git tag 为准。此次是 0.32.0 到 0.32.1 的配对维护，紧凑类型语法已在此前迁移。原生容器 `identical?` 的身份语义沿用，内容比较使用 `=`；不机械替换缓存所需身份比较。

保留完整 strict、全部定义、原逐定义质量门禁、动态方法零门禁、示例、原 native 入口、共享 native/JS 测试、JS 入口、keyed-cache 回归与文档检查。新解析出的 npm 版本须已发布至少 60 分钟，删除原 finger-vec 单包豁免；已有 immutable 锁版本不重新计算年龄。不新增迁移脚本、验证框架或编译器 fix 规则。本模块没有前端或 COS/CDN 部署。

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
