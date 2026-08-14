# homebrew-tap

Homebrew casks for [@pmbrull](https://github.com/pmbrull)'s tools.

```bash
brew install --cask pmbrull/tap/onair
```

Homebrew expands `pmbrull/tap` to this repository.

| Cask | What it is |
|---|---|
| [`onair`](https://github.com/pmbrull/OnAir) | A macOS menu-bar app that sets your Slack status when your camera turns on, and puts the old one back when it turns off. |

Casks here are rendered by [`scripts/make-cask.sh`](https://github.com/pmbrull/OnAir/blob/main/scripts/make-cask.sh)
in the source repo, which hashes the published GitHub release asset rather than a local build — so
the `sha256` cannot drift from what users actually download.
