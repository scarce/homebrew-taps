# scarce taps

```bash
brew trust scarce/taps                   # once: Homebrew asks you to trust third-party taps
brew install --cask scarce/taps/sonata   # Sonata, the Solana leader schedule in your menu bar
```

- [Sonata](https://github.com/lgalabru/sonata) shows the Solana leader schedule in the macOS
  menu bar, with your validator's next tenure, what each tenure earned, and a song for every
  epoch. Every commit on its `main` that passes CI is released, and its release workflow moves
  `Casks/sonata.rb` here, so `brew upgrade --cask sonata` always brings the newest build.

Looking for Axel? It lives in [scarce/homebrew-axel](https://github.com/scarce/homebrew-axel):
`brew install scarce/axel/axel`.
