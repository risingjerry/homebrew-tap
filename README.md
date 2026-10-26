<p align="center">
  <strong>English</strong> · <a href="README.zh-CN.md">简体中文</a>
</p>

# risingjerry Homebrew Tap

Homebrew formulae and casks for risingjerry projects.

## Fusebox

On-demand MCP servers and Skills for Claude Code, Codex and other AI agents.

```bash
brew tap risingjerry/tap && brew trust --tap risingjerry/tap
brew install risingjerry/tap/fusebox            # the CLI
brew install --cask risingjerry/tap/fusebox     # the macOS app (optional)
fusebox --version
```

> [!WARNING]
> The app is ad-hoc signed and not Apple-notarized; the cask removes the
> Gatekeeper quarantine flag after installation. Review the [source][fusebox]
> and the checksums on the [release][release] first.

Upgrade: `brew upgrade fusebox && brew upgrade --cask fusebox`.
Uninstall: `brew uninstall --cask fusebox; brew uninstall fusebox` (keeps
`~/.config/fusebox`, which holds your MCP definitions and secrets).

## Packages

| Package | Type | Purpose |
| --- | --- | --- |
| `fusebox` | Formula | `fusebox` CLI (universal macOS binary) |
| `fusebox` | Cask | Fusebox.app (includes its own copy of the CLI) |
| `agent-switch`, `agent-switch-cli` | Cask, Formula | Deprecated: the old name of Fusebox |

Moving from Agent Switch: `brew uninstall --cask agent-switch; brew uninstall agent-switch-cli`,
then install Fusebox. It reads `~/.config/agent-switch` if `~/.config/fusebox` does not exist.

## License

[MIT](LICENSE) © 2026 risingjerry

[fusebox]: https://github.com/risingjerry/fusebox
[release]: https://github.com/risingjerry/fusebox/releases/tag/v0.4.0
