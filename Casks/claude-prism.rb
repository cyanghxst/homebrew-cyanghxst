cask "claude-prism" do
  version "1.1.6"

  on_arm do
    sha256 "3dae0b581e3aa96aa48d7e6c2fed70d0a4c6dddb0b6035e4fa2f0742f4f2fbcf"
  end
  on_intel do
    sha256 "cd942a395a83f7217b6b91c47ff219c2f1007749d0d03871603c6243a8e881f5"
  end

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