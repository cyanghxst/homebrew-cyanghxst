cask "sideloadly" do
     version "0.60.0"
     sha256 "ec7fce3b99bf91f2933e7066ff6abc2c925f688ca3b54c8e7e3c959dc2850579"

     url "https://sideloadly.io/SideloadlySetup#{version}.dmg"
     name "Sideloadly"
     desc "Sideload your favorite games and apps on iOS, Apple Silicon Macs, and Apple TV without jailbreak."
     homepage "https://sideloadly.io"

     app "Sideloadly.app"
end
