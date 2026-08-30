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

### License

MIT
