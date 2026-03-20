cask "sideloadly" do
     version "0.60.0"
     sha256 "eb338cb3418454c7dbedca71a166d77aa5689ec9c7b8f3c63a25fe95d031e679"

     url "https://sideloadly.io/SideloadlySetup#{version}.dmg"
     name "Sideloadly"
     desc "Sideload your favorite games and apps on iOS, Apple Silicon Macs, and Apple TV without jailbreak."
     homepage "https://sideloadly.io"

     app "Sideloadly.app"
end
