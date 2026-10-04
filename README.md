# lxgr's Homebrew tap

## Castagno

A tiny macOS menu bar app for Google Cast volume and playback controls. Requires macOS 13+ on Apple Silicon; Intel is not supported.

```sh
brew install --cask lxgr/tap/castagno
```

Castagno is ad hoc signed, not notarized. The cask runs a helper bundled in the checksum-verified release ZIP to remove `com.apple.quarantine` from `Castagno.app` only. It does not disable Gatekeeper globally or alter other apps.

For a manual installation, the same helper is available in [scripts/allow-castagno.sh](scripts/allow-castagno.sh):

```sh
sh scripts/allow-castagno.sh /Applications/Castagno.app
```

[Source, screenshots, and documentation](https://github.com/lxgr/castagno) · [Releases](https://github.com/lxgr/castagno/releases) · [MIT](LICENSE)
