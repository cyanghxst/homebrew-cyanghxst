cask "pica" do
    version "1.0.0"
    sha256 "4bdffabb81f2f8f2f7b02f64e8a18ce732682c8a12476c6ff40a96c124a0e55b"

    url "https://f6n9fvfeuhzxxji6.public.blob.vercel-storage.com/Pica.dmg"
    name "Pica"
    desc "Font management app for macOS"
    homepage "https://pica.joshpuckett.me/"

    app "Pica.app"

    zap trash: [
        "~/Library/Application Support/com.joshpuckett.Pica",
        "~/Library/Preferences/com.joshpuckett.Pica.plist",
    ]
end
