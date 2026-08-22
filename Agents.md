# Memof Agent Guide

本仓库使用 canonical `calcit.cirru` 作为唯一 Calcit Snapshot，不再维护 `compact.cirru`。

开始任何 Snapshot 编辑或树操作前，先读取当前 CLI 指南：

```bash
calcit docs agents --full
```

常用验证：

```bash
caps --ci
yarn install --immutable
calcit calcit.cirru edit format
git diff --exit-code -- calcit.cirru
calcit calcit.cirru --check-only
calcit calcit.cirru js
yarn check-docs
```

升级细节、CLI 参数和类型迁移说明统一通过以下文档查询，不在本仓库重复维护：

```bash
calcit docs read upgrade --full
calcit docs read library-quality --full
```
