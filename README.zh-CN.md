<p align="center">
  <a href="README.md">English</a> · <strong>简体中文</strong>
</p>

# risingjerry Homebrew Tap

risingjerry 项目的 Homebrew 安装源。

## Fusebox

给 Claude Code、Codex 等 AI Agent 用的按需 MCP 和 Skill 管理工具。

```bash
brew tap risingjerry/tap && brew trust --tap risingjerry/tap
brew install risingjerry/tap/fusebox            # 命令行
brew install --cask risingjerry/tap/fusebox     # macOS App（可选）
fusebox --version
```

> [!WARNING]
> App 是临时签名，没有经过苹果公证；安装时会去掉 Gatekeeper 隔离标记。安装前可以先看[源码][fusebox]和[发布页][release]上的校验值。

升级：`brew upgrade fusebox && brew upgrade --cask fusebox`。
卸载：`brew uninstall --cask fusebox; brew uninstall fusebox`（不会删除 `~/.config/fusebox`，里面有你的 MCP 配置和密钥）。

## 软件包

| 名称 | 类型 | 用途 |
| --- | --- | --- |
| `fusebox` | Formula | `fusebox` 命令行（macOS 通用二进制） |
| `fusebox` | Cask | Fusebox.app（自带一份命令行） |
| `agent-switch`、`agent-switch-cli` | Cask、Formula | 已弃用：Fusebox 的旧名字 |

从 Agent Switch 迁移：先 `brew uninstall --cask agent-switch; brew uninstall agent-switch-cli`，再安装 Fusebox。如果没有 `~/.config/fusebox`，它会读取 `~/.config/agent-switch`。

## 许可

[MIT](LICENSE) © 2026 risingjerry

[fusebox]: https://github.com/risingjerry/fusebox
[release]: https://github.com/risingjerry/fusebox/releases/tag/v0.4.0
