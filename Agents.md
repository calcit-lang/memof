Developer runs `cr js -w` to watch build JavaScript, and `yarn vite` to start a local server. LLMs edits program by running `cr` commands, and then triggers re-compiling.

要求查看 Calcit 命令行工具的用法:

```bash
cr docs agents --full
```

## LLM 执行效率优化（不重复 llms/Calcit.md）

- **先定位再修改**：先读结构/需求，再做最小变更，避免“改一处→报错→补救”式迭代。
- **缓存上下文**：记录你已经确认的定义位置与修改点，避免重复搜索相同目标。
- **优先局部替换**：只替换目标节点或小段结构，避免整段重写导致结构漂移。
- **拆分复杂改动**：把 UI 改动与逻辑改动拆开，减少单次变更影响面。
- **尽量复用已有组件/样式**：优先扩展已有样式/组件，而不是新增并重复实现。
- **检查生成代码风险点**：处理 `let`、map 结构、属性 map 的键值对等高风险结构时，先确认结构是否符合预期，再替换。
- **利用 diff 控制范围**：在多次修改后随时对比 diff，避免无关变更积累。
- **编译前自检**：对于复杂变更，先手动检查节点结构（比如嵌套列表、属性 map、函数参数形态）再编译。
- **输出稳定性优先**：避免频繁调整格式或样式细节，优先保证逻辑稳定与可读性。

## 常见错误与正确做法（结合本项目实践）

- **`let` 只保留最后一个表达式**：多个表达式需要包一层 `div`/`do`，否则前面的节点会被丢掉。
- **属性 map 必须是成对键值**：避免把 `:style` 与 `:inner-text` 写在同一个 pair 内；每个属性单独成对。
- **避免生成“可调用字符串”**：形如 `(<> ((str ...)))` 会变成调用结果，正确写法为 `<> $ str ...`。
- **列表 vs set**：`keys` 返回 set，拼接前先 `.to-list`，再 `concat`。
- **pairs 列表转 map**：不要用 `.to-map` 处理 list，改用 `pairs-map`。
- **函数调用与变量区分**：`week-start` 这类变量必须 is-leaf，避免成为单元素 list 导致被当做“函数调用”。
- **数值与单位风险**：CSS 属性如 `flex`, `font-weight`, `line-height`, `z-index` 若使用单纯数字，Respo 会自动拼接 `px` 单位。必须改为字符串形式，例如 `:flex "\"1"` 或 `:font-weight "\"300"`。
- **结构化编辑优先**：严禁直接编辑 `compact.cirru`，必须使用 `cr tree replace` 或 `cr edit def` 等命令。建议先通过 `cr query search 'keyword' -f 'ns/def'` 精确获得 node 路径。
- **性能优化准则**：对于动态生成的列表（如任务项），应将静态样式从内联 `:style` 提取到 `defstyle` 中，通过 `:class-name` 引用以提升虚拟 DOM 性能。
- **排序逻辑翻转**：翻转列表排序应直接修改 `sort` 函数所用比较器的返回分支（如将 `if ret 1 -1` 翻转为 `if ret -1 1`）。

## README 校验手段（可复用）

面向本仓库文档（尤其 `README.md`）的建议流程：

1. **先全量跑 `check-md`**，拿到失败块与行号。
2. **优先写 `cirru` 块**，失败后再降到 `cirru.no-run`，最后才用 `cirru.no-check`。
3. **把片段改成自包含**：每个代码块尽量包含 `ns ... :require`，避免依赖外部上下文。
4. **用本仓库入口做 query/eval**：以 `./compact.cirru` 为入口查询真实 API，避免文档写错符号。
5. **单块复现再回填 README**：先在临时 markdown 验证单块通过，再回填正式文档。

### 常用命令

全量校验 README：

```bash
cd /Users/jon.chen/repo/calcit-lang/calcit
./target/debug/cr demos/compact.cirru docs check-md /Users/jon.chen/repo/calcit-lang/memof/README.md --dep /Users/jon.chen/repo/calcit-lang/memof/
```

查询命名空间导出（确保 README API 名称准确）：

```bash
./target/debug/cr /Users/jon.chen/repo/calcit-lang/memof/compact.cirru query defs memof.once
./target/debug/cr /Users/jon.chen/repo/calcit-lang/memof/compact.cirru query defs memof.anchor
```

单块复现（推荐）：

```bash
# 先把目标代码块写到临时 markdown
./target/debug/cr demos/compact.cirru docs check-md .calcit-snippets/<name>.md --dep /Users/jon.chen/repo/calcit-lang/memof/
```

### 经验规则（本仓库）

- `no-check` 触发较多时，优先把顶层 `defn` 改成 `let` 内局部 `fn`，常可升级到 `cirru`/`no-run`。
- `anchor-state` 示例建议直接用 tag（如 `:s0`）做 path，减少类型告警。
- `identity-path` 若在片段上下文出现预处理告警，可单独成块并最小化表达式。
- 迭代时保留“模式升级顺序”：`cirru` → `cirru.no-run` → `cirru.no-check`。
