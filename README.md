# homebrew-mytap

A private Homebrew tap for fonts, apps, and developer tools

## Install

```sh
brew tap cyanghxst/mytap https://github.com/cyanghxst/homebrew-mytap.git
brew install --cask font-sovana
```

> **Note:** This is a private tap. You must set up a GitHub personal access token before installing. See [Setup](#setup) below.

## Available Casks

| Cask          | Type | Description        |
| ------------- | ---- | ------------------ |
| `font-sovana` | Font | Sovana font family |

## Repo Structure

```
homebrew-mytap/
├── Casks/                  ← cask definitions (fonts, apps, tools)
│   └── font-sovana.rb
└── Formula/                ← source-based formulas (if needed)
```

Downloadable assets (zips, dmgs, pkgs) are stored as **GitHub Release assets**, not committed to the repo.

## Setup

### 1. Create a GitHub Personal Access Token

Go to **GitHub → Settings → Developer settings → Personal access tokens → Fine-grained tokens**.

- Repository access: Only this repo
- Permissions: Contents (read), Releases (read)

### 2. Export the token

Add to your `~/.zshrc`:

```sh
export HOMEBREW_GITHUB_API_TOKEN="ghp_your_token_here"
```

Then reload:

```sh
source ~/.zshrc
```

### 3. Tap the repo

```sh
brew tap cyanghxst/mytap https://github.com/cyanghxst/homebrew-mytap.git
```

### 4. Install a cask

```sh
brew install --cask font-sovana
```

## Adding a New Cask

### 1. Prepare the asset

Zip or package your files and generate a hash:

```sh
shasum -a 256 MyAsset.zip
```

### 2. Create a GitHub Release

```sh
gh release create <tag> ./MyAsset.zip \
  --repo cyanghxst/homebrew-mytap \
  --title "Asset Name vX.X.X" \
  --notes "Description"
```

Use descriptive tags like `font-sovana-1.0.0` or `my-app-2.1.0`.

### 3. Create the cask file

Add a new `.rb` file in `Casks/`. Fonts use the `font-` prefix.

```ruby
cask "font-example" do
  version "1.0.0"
  sha256 "your_hash_here"

  url "https://github.com/cyanghxst/homebrew-mytap/releases/download/font-example-#{version}/Example.zip",
      header: "Authorization: token #{ENV.fetch("HOMEBREW_GITHUB_API_TOKEN", "")}"
  name "Example Font"
  desc "An example font family"
  homepage "https://example.com"

  font "Example-Regular.ttf"
end
```

### 4. Push and install

```sh
git add Casks/font-example.rb
git commit -m "Add font-example cask"
git push origin main

brew install --cask font-example
```

## Common Commands

| Command                          | Description      |
| -------------------------------- | ---------------- |
| `brew tap cyanghxst/mytap <url>` | Add the tap      |
| `brew install --cask <name>`     | Install a cask   |
| `brew upgrade --cask <name>`     | Upgrade a cask   |
| `brew uninstall --cask <name>`   | Uninstall a cask |
| `brew untap cyanghxst/mytap`     | Remove the tap   |

## Updating a Cask

1. Upload the new asset to a new GitHub Release with an updated tag
2. Update `version` and `sha256` in the cask file
3. Push to main
