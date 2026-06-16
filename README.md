# homebrew-tap

Custom Homebrew tap for [mariodian](https://github.com/mariodian) apps.

## Usage

```
brew tap mariodian/tap
```

## Casks

| Cask | Description |
| --- | --- |
| `pincer` | Desktop monitoring for local AI agents |

### Install Pincer

```
brew install --cask mariodian/tap/pincer
```

## Formulae

| Formula | Description |
| --- | --- |
| `pincerd` | Headless Pincer monitoring daemon for local AI agents |

### Install Pincerd

```
brew install mariodian/tap/pincerd
```

`pincerd` runs as a background service. Before starting it, set `DAEMON_SECRET`:

```
brew services edit pincerd
```

Add your secret to the `EnvironmentVariables` section:

```xml
<key>DAEMON_SECRET</key>
<string>your-secret-here</string>
```

Then start the service:

```
brew services start pincerd
```

> Note: `pincerd` requires Apple Silicon (arm64).
