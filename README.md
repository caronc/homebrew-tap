<a href="https://brew.sh"><img src="https://brew.sh/assets/img/homebrew.svg" alt="Homebrew" width="96" align="right"></a>

# Homebrew Tap
[![Paypal](https://img.shields.io/badge/paypal-donate-green.svg)](https://www.paypal.com/donate/?hosted_button_id=CR6YF7KLQWQ5E)

[Homebrew](https://brew.sh) formulae for my projects.

## Add the Tap

```bash
brew tap caronc/tap
```

## Dateblock

[dateblock](https://github.com/caronc/dateblock) works like `sleep`, but
waits *until* a crontab-style time instead of *for* a number of seconds.

```bash
brew install dateblock
dateblock --help
```

Or in one step, without adding the tap first:

```bash
brew install caronc/tap/dateblock
```

## Updating and Removing

```bash
brew upgrade dateblock
brew uninstall dateblock
brew untap caronc/tap
```


## License

The formulae in this repository are under the [BSD 2-Clause License](LICENSE)
(the same as Homebrew's own). Each project keeps its own license.
