# AA1 Labs Homebrew Tap

```sh
brew tap AA1labs/tap
brew trust AA1labs/tap
brew install --cask raymate
```

Homebrew asks you to trust a tap outside its own repositories before it will read a cask from
it; the second line is that, once.

[RayMate](https://raymate.app) is an AI launcher for macOS: chat, quick prompts and on-device
dictation. Apple Silicon, macOS 12 or later. The app updates itself, so Homebrew installs it
and then leaves it alone.
