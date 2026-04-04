# Sensey Homebrew Tap

## Setup

Since the releases are in a private repo, set your GitHub token first:

```bash
export HOMEBREW_GITHUB_API_TOKEN=$(gh auth token)
```

Or add it to your shell profile (`~/.zshrc`):

```bash
export HOMEBREW_GITHUB_API_TOKEN="ghp_your_token_here"
```

## Install

```bash
brew tap senseylabs/tap
brew install kagi-cli
```

## Usage

```bash
kagi login --dev        # Local development
kagi login              # Production
kagi setup              # Bind directory to project+env
kagi secret set KEY=VAL # Set a secret
kagi pull               # Download secrets as .env
kagi run -- npm start   # Run with secrets injected
```
