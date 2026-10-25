<p align="center">
  <strong>English</strong> · <a href="README.zh-CN.md">简体中文</a>
</p>

# risingjerry Homebrew Tap

Official Homebrew Formulae and Casks for risingjerry projects.

## Install Agent Switch

Paste one command:

```bash
brew tap risingjerry/tap && brew trust --tap risingjerry/tap && brew install --cask risingjerry/tap/agent-switch
```

This installs:

- `Agent Switch.app` in `/Applications`;
- the `agent-switch` CLI and its bundled MCP server commands;
- Homebrew-managed updates through the same Tap.

Expected result:

```bash
agent-switch --version
open -a "Agent Switch"
```

The CLI prints `agent-switch 0.3.0`, and the native app opens from
`/Applications/Agent Switch.app`.

## Security

> [!WARNING]
> Agent Switch is currently ad-hoc signed and not Apple-notarized. The primary
> Alpha Cask deliberately removes Gatekeeper quarantine after installation.
> Review the [public source][source] and the checksums on the [GitHub
> Release][release] before installing.

## Upgrade

```bash
brew upgrade --cask risingjerry/tap/agent-switch
```

## Uninstall

```bash
brew uninstall --cask agent-switch
brew uninstall agent-switch-cli
```

Uninstalling does not delete `~/.config/agent-switch`, which can contain local
MCP definitions and credentials.

## Packages

| Package | Type | Purpose |
| --- | --- | --- |
| `agent-switch` | Cask | Native macOS application |
| `agent-switch-cli` | Formula | CLI backend required by the application |

## Documentation

See the [Agent Switch README][source] for the first-run MCP and credential
workflow.

## Support

Report reproducible problems in the [Agent Switch issue tracker][issues].

## License

[MIT](LICENSE) © 2026 risingjerry

[source]: https://github.com/risingjerry/agent-switch
[release]: https://github.com/risingjerry/agent-switch/releases/tag/v0.3.0
[issues]: https://github.com/risingjerry/agent-switch/issues
