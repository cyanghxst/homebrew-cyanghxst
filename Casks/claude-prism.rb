cask "claude-prism" do
  arch arm: "arm64", intel: "x64"

  version "1.1.6"
  sha256 arm:   "3dae0b581e3aa96aa48d7e6c2fed70d0a4c6dddb0b6035e4fa2f0742f4f2fbcf",
         intel: "cd942a395a83f7217b6b91c47ff219c2f1007749d0d03871603c6243a8e881f5"

  url "https://github.com/delibae/claude-prism/releases/download/v#{version}/ClaudePrism-macOS.dmg"
  name "ClaudePrism"
  desc "Offline-first scientific writing workspace powered by Claude"
  homepage "https://github.com/delibae/claude-prism"

  app "ClaudePrism.app"

  zap trash: [
    "~/Library/Application Support/ClaudePrism",
    "~/Library/Preferences/com.delibae.claude-prism.plist",
  ]
end
